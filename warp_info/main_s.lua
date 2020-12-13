local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()


VorpInv.RegisterUsableItem("someshit", function(data)

    VorpInv.subItem(data.source, "someshit", 1)
    local Character = VorpCore.getUser(data.source).getUsedCharacter
    local sender1 = Character.firstname 
    local sender2 = Character.lastname
    TriggerClientEvent('warp_info:Vulture', data.source, sender1, sender2)
end)

VorpInv.RegisterUsableItem("someshit2", function(data)

    VorpInv.subItem(data.source, "someshit2", 1)
    TriggerClientEvent('warp_info:Vulture2', data.source)
end)


VorpInv.RegisterUsableItem("someshit3", function(data)

    VorpInv.subItem(data.source, "someshit3", 1)
    TriggerClientEvent('warp_info:Vulture3', data.source)
end)

