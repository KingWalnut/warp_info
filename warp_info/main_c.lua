
RegisterNetEvent('warp_info:Vulture')
AddEventHandler('warp_info:Vulture', function(firstname, lastname)
  local randomitempull = math.random(1, #Config.reciepeItems)
  local itemName = Config.reciepeItems[randomitempull]
  TriggerEvent("vorp:TipRight", "Reciepe: ".. itemName, 20000)
  local message = itemName
  TriggerServerEvent("Telegram:SendMessage", firstname, lastname, message, GetPlayerServerIds())
end)




RegisterNetEvent('warp_info:Vulture2')
AddEventHandler('warp_info:Vulture2', function()
  local randomitempull = math.random(1, #Config.reciepeItems2)
  local itemName = Config.reciepeItems2[randomitempull]
  TriggerEvent("vorp:TipRight", "Reciepe: ".. itemName, 20000)   
end)

RegisterNetEvent('warp_info:Vulture3')
AddEventHandler('warp_info:Vulture3', function()
  local randomitempull = math.random(1, #Config.reciepeItems3)
  local itemName = Config.reciepeItems3[randomitempull]
  TriggerEvent("vorp:TipRight", "Reciepe: ".. itemName, 20000)   
end)


function GetPlayerServerIds()
    local players = {}

    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, GetPlayerServerId(i))
        end
    end

    return players
end





