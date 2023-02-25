CreateThread(function() 
    if AndiyScripts.Use_Menu then
        if AndiyScripts.Use_OX_Lib_V3 then
            for k,v in pairs(AndiyScripts.CommandMenu) do
                lib.addCommand(k, {help = v.help_string , restricted = v.permission}, function(source, args)
                    TriggerClientEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyYeasUseMenu', source)
                end)
            end
        else
            lib.addCommand(v.permission, k, function(source, args)
                TriggerClientEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyYeasUseMenu', source)
            end)
        end
    else
        for k,v in pairs(AndiyScripts.Commands) do
            if AndiyScripts.Use_OX_Lib_V3 then
                lib.addCommand(k, {help = v.help_string , restricted = v.permission}, function(source, args)
                    local data = v.get_position_type
                    TriggerClientEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu', source, data)
                end)
            else
                lib.addCommand(v.permission, k, function(source, args)
                    local data = v.get_position_type
                    TriggerClientEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu', source, data)
                end, {help = v.help_string})
            end
        end
    end
end)