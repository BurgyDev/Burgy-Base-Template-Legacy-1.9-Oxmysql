ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent("BGD_Creator:save")
AddEventHandler("BGD_Creator:save", function(playerInfo)
    local src = source
    local player = ESX.GetPlayerFromId(src)

    MySQL.Sync.execute('UPDATE users SET firstname = @firstname, lastname = @lastname, dateofbirth = @dateofbirth, sex = @sex, height = @height WHERE identifier = @identifier', {
		['@identifier'] = player.identifier,
		['@firstname'] = playerInfo.firstName,
		['@lastname'] = playerInfo.lastName,
		['@dateofbirth'] = playerInfo.dateOfBirth,
		['@sex'] = playerInfo.sex,
		['@height'] = playerInfo.height
	})
end)

RegisterServerEvent("BGD_Creator:setPlayerToBucket")
AddEventHandler("BGD_Creator:setPlayerToBucket", function(id)
    SetPlayerRoutingBucket(source, id)
end)

RegisterServerEvent("BGD_Creator:setPlayerToNormalBucket")
AddEventHandler("BGD_Creator:setPlayerToNormalBucket", function()
    SetPlayerRoutingBucket(source, 0)
end)

RegisterServerEvent("esx_skin:save")
AddEventHandler("esx_skin:save", function(skin)
    local src = source 
    local xPlayer = ESX.GetPlayerFromId(src)

    MySQL.Async.execute('UPDATE users SET skin = @skin WHERE identifier = @identifier', {
        ['@skin'] = json.encode(skin), 
        ['@identifier'] = xPlayer.identifier
    })
end)
