IsAWinner = nil

exports("StartGame", function()
    IsAWinner = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
    })
    local result = Citizen.Await(IsAWinner)
    return result
end)

RegisterNUICallback("didWin",function(data, cb)
    SetNuiFocus(false, false)
    IsAWinner:resolve(data.success)
    cb('ok')
end)

AddEventHandler('onClientResourceStop', function(resName)
    if resName == GetCurrentResourceName() then
        SetNuiFocus(false, false)
        SendNUIMessage({
            action = "close",
        })
    end
end)

RegisterCommand("wordle", function()
    local didWin = exports.wordle:StartGame()
    print("Wordle Won: ", didWin)
end)