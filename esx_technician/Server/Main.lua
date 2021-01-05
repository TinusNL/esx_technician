ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_technician:PayMoney')
AddEventHandler('esx_technician:PayMoney', function()
    xPlayer = ESX.GetPlayerFromId(source)
    PlayerJob = xPlayer.getJob()

    if PlayerJob.name == "technician" then
        if Config.MoneyType == true then
            xPlayer.addMoney(Config.MoneyAmount)
        else
            xPlayer.addAccountMoney('bank', Config.MoneyAmount)
        end
    end
end)
