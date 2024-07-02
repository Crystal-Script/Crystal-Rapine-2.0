ESX = exports["es_extended"]:getSharedObject()

local rapineAttive = {}

    for k, v in pairs(Config.rapine) do
        local blip = AddBlipForCoord(v.position.x, v.position.y, v.position.z)
        SetBlipSprite(blip, v.blip)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, v.blipScale)
        SetBlipColour(blip, v.blipColor)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.blipText)
        EndTextCommandSetBlipName(blip)
    end

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    for k, v in pairs(Config.rapine) do
        local distSq = Vdist2(playerCoords.x, playerCoords.y, playerCoords.z, v.position.x, v.position.y, v.position.z)
        local maxDistanceSq = v.maxdistance * v.maxdistance

            exports['crystal_lib']:CRYSTAL().gridsystem({ 
               pos = v.position, -- posizione del marker
               rot = vector3(90.0, 90.0, 90.0), -- rotazione del marker
               scale = vector3(0.8, 0.8, 0.8), -- grandezza del marker
               textureName = 'marker', -- nome della texture del marker.ytd
               msg = 'Premi [E] per iniziare una rapina', -- messagio che compare se sarai sopra al marker
               action = function () -- funzione da eseguire se premuto il tasto settato
                        if IsPedArmed(PlayerPedId(), 4) then
                            if not rapineAttive[k] then
                                lib.callback('crystal:rapine:poliziainservizio', false, function(polizia)
                                    print(polizia)
                                    if polizia >= v.poliziotti then
                                        if Config.dispatch == op then
                                             local job = "police" -- Jobs that will recive the alert
                                             local text = "Rapina in corso" -- Main text alert
                                             local coords = GetEntityCoords(PlayerPedId()) -- Alert coords
                                             local id = GetPlayerServerId(PlayerId()) -- Player that triggered the alert
                                             local title = "Rapina" -- Main title alert
                                             local panic = false -- Allow/Disable panic effect
                                            
                                             TriggerServerEvent('Opto_dispatch:Server:SendAlert', job, title, text, coords, panic, id)
                                        elseif Config.dispatch == 'custom' then
                                            --- inserisci export del tuo dispatch
                                        end
                                                    
                                        rapineAttive[k] = true
                                        startCountdown(v, k)
                                    else
                                        ESX.ShowNotification(Config.locales['no-poliziotti'], 'error')
                                    end
                                end)
                            end
                        else
                            ESX.ShowNotification('Non sei armato', 'error')
                        end
               end
            })

        if rapineAttive[k] then
            if distSq >= maxDistanceSq then
                rapineAttive[k] = false
                ESX.ShowNotification(Config.locales['rapina-annullata'] .. v.label .. ', rapina annullata', 'error')
                break
            end
        end
    end

function startCountdown(v, key)
    ESX.ShowNotification(Config.locales['rapina-iniziata'] .. v.label .. ' iniziata')
    local countdownActive = true
    local timer = v.duratarapina

    Citizen.CreateThread(function()
        while timer > 0 and countdownActive do
            Citizen.Wait(1000)
            timer = timer - 1
        end

        countdownActive = false

        if timer == 0 then
            if rapineAttive[key] then
                ESX.ShowNotification(Config.locales['rapina-completata'] .. v.label .. Config.locales['completata'])
                TriggerServerEvent('rapina:completata', v.guadagno)
                Citizen.Wait(v.tempoprossimarapina)
                rapineAttive[key] = false
            end
        end
    end)

    Citizen.CreateThread(function()
        while countdownActive do
            Wait(0)
            if rapineAttive[key] then
                drawText("Tempo rimasto: " .. timer, 0.5, 0.96, 0.5, 255, 255, 255, 255)
            end
        end
    end)
end

function drawText(text, x, y, scale, r, g, b, a)
    SetTextFont(4)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end
