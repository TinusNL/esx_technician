ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_technician:PayMoney')
AddEventHandler('esx_technician:PayMoney', function(CurrentJob)
    xPlayer = ESX.GetPlayerFromId(source)
    PlayerCoords = xPlayer.getCoords(true)
    JobCoords = vector3(CurrentJob.X, CurrentJob.Y, CurrentJob.Z)
    PlayerJob = xPlayer.getJob()


    if Vdist2(PlayerCoords, JobCoords) <= 1.5 then
        if PlayerJob.name == "technician" then
            if Config.MoneyType == true then
                xPlayer.addMoney(Config.MoneyAmount)
            else
                xPlayer.addAccountMoney('bank', Config.MoneyAmount)
            end
        end
    end
end)