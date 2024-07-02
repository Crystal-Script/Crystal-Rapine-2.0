ESX = exports["es_extended"]:getSharedObject()

local rapineAttive = {}

Citizen.CreateThread(function()
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

    while true do
        Wait(0)

        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local playerArmed = IsPedArmed(playerPed, 4)

        for k, v in pairs(Config.rapine) do
            local distSq = Vdist2(playerCoords.x, playerCoords.y, playerCoords.z, v.position.x, v.position.y, v.position.z)
            local maxDistanceSq = v.maxdistance * v.maxdistance

            DrawMarker(20, v.position.x, v.position.y, v.position.z, 0.0, 90.0, 0.0, 0.0, 0.0, 0.0, 0.6, 0.6, 0.6, 255, 255, 255, 100, false, false, 0, true, false, false, false)

            if distSq < 2.0 then
                ESX.ShowHelpNotification(Config.locales['start-rapina'])
                if playerArmed then
                    if IsControlJustPressed(0, 38) and not rapineAttive[k] then
                        lib.callback('crystal:rapine:poliziainservizio', false, function(polizia)
                            print(polizia)
                            if polizia >= v.poliziotti then
                                rapineAttive[k] = true
                                startCountdown(v, k)
                            else
                                ESX.ShowNotification(Config.locales['no-poliziotti'], 'error')
                            end
                        end)
                    end
                end
            end

            if rapineAttive[k] then
                if distSq >= maxDistanceSq then
                    rapineAttive[k] = false
                    ESX.ShowNotification(Config.locales['rapina-annullata'] .. v.label .. ', rapina annullata', 'error')
                    break
                end
            end
        end
    end
end)

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
