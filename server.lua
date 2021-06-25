ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterNetEvent('batop:BuyCagoule')
AddEventHandler('batop:BuyCagoule', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('cagoule', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:BuyGHB')
AddEventHandler('batop:BuyGHB', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('ghb', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:BuyLockPick')
AddEventHandler('batop:BuyLockPick', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 750
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('lockpick', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:BuyTorche')
AddEventHandler('batop:BuyTorche', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 750
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('torcheplasma', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:Couteau')
AddEventHandler('batop:Couteau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNIFE', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:Machette')
AddEventHandler('batop:Machette', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_MACHETE', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:Batte')
AddEventHandler('batop:Batte', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_BAT', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:Poing')
AddEventHandler('batop:Poing', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNUCKLE', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:Petoire')
AddEventHandler('batop:Petoire', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_SNSPISTOL', 100)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:Pistolet')
AddEventHandler('batop:Pistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 45000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_PISTOL', 100)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('batop:Chargeur')
AddEventHandler('batop:Chargeur', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('clip', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)