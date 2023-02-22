CreateThread(function() 
    if AndiyScripts.Use_Menu then
        for k,v in pairs(AndiyScripts.CommandMenu) do
            lib.addCommand(v.permission, k, function(source, args)
                TriggerClientEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyYeasUseMenu', source)
            end)
        end
    else
        for k,v in pairs(AndiyScripts.Commands) do
            lib.addCommand(v.permission, k, function(source, args)
                local data = v.get_position_type
                TriggerClientEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu', source, data)
            end, {help = v.help_string})
        end
    end
end)