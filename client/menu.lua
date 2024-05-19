RegisterNetEvent('S45_SimpleSpawn:UberMenu', function()
  TriggerEvent('nh-context:sendMenu', {
    {
      id = 1,
      header = '============ Uber Menu ===========',
      txt = ''
    },
    {
      id = 2,
      header = '================================',
      txt = ''
    },
    {
      id = 3,
      header = 'Airport',
      txt = 'Get a Uber to the Airport',
      params = {
        event = 'S45_SimpleSpawn:UberRequest',
        args = {
          locName = 'airport'
        }
      }
    },
    {
      id = 4,
      header = 'Sandy',
      txt = 'Get a Uber to Sandy Shores',
      params = {
        event = 'S45_SimpleSpawn:UberRequest',
        args = {
          locName = 'sandy'
        }
      }
    },
    {
      id = 5,
      header = 'Grapeseed',
      txt = 'Get a Uber to Grapeseed',
      params = {
        event = 'S45_SimpleSpawn:UberRequest',
        args = {
          locName = 'grapeseed'
        }
      }
    },
    {
      id = 6,
      header = 'Paleto Bay',
      txt = 'Get a Uber to Paleto Bay',
      params = {
        event = 'S45_SimpleSpawn:UberRequest',
        args = {
          locName = 'paleto'
        }
      }
    },
    {
      id = 7,
      header = 'Los Santos',
      txt = 'Get a Uber to Los Santos',
      params = {
        event = 'S45_SimpleSpawn:UberRequest',
        args = {
          locName = 'los_santos'
        },
      }
    }
  })
end)