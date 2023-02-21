CreateThread(function() 
    if AndiyScripts.Use_Menu then
        for k,v in pairs(AndiyScripts.CommandMenu) do
            ESX.RegisterCommand(k, v.permission, function(xPlayer, args, showError)
                xPlayer.triggerEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyYeasUseMenu')
            end, false, {help = v.help_string})
        end
    else
        for k,v in pairs(AndiyScripts.Commands) do
            ESX.RegisterCommand(k, v.permission, function(xPlayer, args, showError)
                local data = v.get_position_type
                xPlayer.triggerEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu', data)
            end, false, {help = v.help_string})
        end
    end
end)