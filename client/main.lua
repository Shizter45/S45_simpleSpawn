
-- Spawn Logic --
AddEventHandler('onClientGameTypeStart', function()
  exports.spawnmanager:setAutoSpawnCallback(function()
    exports.spawnmanager:spawnPlayer({
      x = Config.Locations['airport'].main.x,
      y = Config.Locations['airport'].main.y,
      z = Config.Locations['airport'].main.z,
      model = 'a_m_m_bevhills_02'
    }, function()
      TriggerEvent('chat:addMessage', {
        args = {'Welcome To Shizter45 Development Server'}
      })
    end)
  end)

  exports.spawnmanager:setAutoSpawn(true)
  exports.spawnmanager:forceRespawn()
end)

RegisterCommand('spawn', function()
  SetEntityCoords(PlayerPedId(), Config.Locations['airport'].main.x,Config.Locations['airport'].main.y, Config.Locations['airport'].main.z, true, false, false, false)
  SetEntityHeading(PlayerPedId(), heading)
end)

-- Logic For Spawn/Uber
CreateThread(function()
  while not NetworkIsSessionStarted() do
    Wait(500)
	end
    
  while true do
    Wait(0)
    for k, v in pairs(Config.Locations) do
      uberMark = v.uber
      DrawMarker(1, uberMark.x, uberMark.y, uberMark.z-1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 1.0, 139,195,74, 128, false, false, 2, false, nil, nil, false)

      -- Check if player is in the marker
      while #(GetEntityCoords(PlayerPedId()) - uberMark) <= 2.0 do
        Wait(1)
        showHelp('Press ~g~[E]~w~ to get uber Ride')
        DrawMarker(1, uberMark.x, uberMark.y, uberMark.z-1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 1.0, 139,195,74, 128, false, false, 2, false, nil, nil, false)
        if IsControlJustReleased(0, 38) then
          TriggerEvent('S45_SimpleSpawn:UberMenu')
        end
      end
    end
  end
end)

RegisterNetEvent('S45_SimpleSpawn:UberRequest', function(data)
  local location = Config.Locations[data.locName]
  if not location then
    print('location not found')
  else
    local coords = location.main
    local heading = location.mainHead
    SetEntityCoords(PlayerPedId(), coords, true, false, false, false)
    SetEntityHeading(PlayerPedId(), heading)
  end
end)
