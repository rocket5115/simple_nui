local on = false

function display(bool)
    on = bool
    SetNuiFocus(on, on)
    SendNUIMessage({
        status = on,
    })
end

RegisterNUICallback('exit', function(data)
    display(false)
end)

RegisterNUICallback('accept', function(data)
    display(false)
    TriggerServerEvent('chatMsg', data.data)
end)

RegisterCommand('nui', function(source, args)
    display(not on)
end)