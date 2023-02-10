function SetData()
	players = {}
	for _, player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
		table.insert( players, player )
end

	
	local name = GetPlayerName(PlayerId())
	local id = GetPlayerServerId(PlayerId())
	--Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', '~y~AltisCity ~t~| ~g~Discord: w5yD9Mp~t~ | ~b~ID: ' .. id .. ' ~t~| ~b~Nom: ~b~' .. name .. " ~t~| ~r~Joueurs: " .. #players .. "/80")
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', "~p~Szerver~w~ Név | ~y~ID: "..id.."")
end

Citizen.CreateThread(function() 
	while true do
		Citizen.Wait(100)
		SetData()
	end
end)

Citizen.CreateThread(function()
	AddTextEntry('PM_PANE_LEAVE', '~r~Lecsatlakozás~s~')
	AddTextEntry('PM_PANE_QUIT', '~r~Kilépés~s~')
	AddTextEntry('PM_SCR_MAP', '~r~Térkép~s~')
	AddTextEntry('PM_SCR_GAM', '~o~Játék~s~')
	AddTextEntry('PM_SCR_INF', '~y~Információ~s~')
	AddTextEntry('PM_SCR_SET', '~g~Beállítások~s~')
	AddTextEntry('PM_SCR_STA', '~b~Statisztika~s~')
	AddTextEntry('PM_SCR_GAL', '~p~Galéria~s~')
	AddTextEntry('PM_SCR_RPL', '~m~Szerkesztö~s~ ∑')
  end)
