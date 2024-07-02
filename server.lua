RegisterNetEvent('rapina:completata')
AddEventHandler('rapina:completata', function (guadagno)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.addAccountMoney('money', guadagno)
    end
end)

lib.callback.register('crystal:rapine:poliziainservizio', function(source)

	local cops = 0
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			cops = cops + 1
		end
	end
	return cops
end)
