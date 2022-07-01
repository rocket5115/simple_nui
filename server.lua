RegisterServerEvent('chatMsg', function(data)
    local _source = source
    TriggerClientEvent('chat:addMessage', -1, {
        multiline = true,
        color = {255, 0, 0},
        args = {GetPlayerName(_source), data}
    })
end)