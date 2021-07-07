Citizen.CreateThread(function()

    for MainCommand,Details in pairs(Config.Commands) do
        TriggerEvent('chat:addSuggestion', '/' .. MainCommand, Details.helptext, Details.Parameters)
        for _,allias in pairs(Details.Allias) do
            RegisterCommand(allias, function(source,args,raw)
               arguments = ''
               for _,v in pairs(args) do
                arguments = arguments .. ' ' .. v
               end
                ExecuteCommand(MainCommand .. ' ' .. arguments)
            end)
            TriggerEvent('chat:addSuggestion', '/' .. allias, Details.helptext, Details.Parameters)
        end
    end
end)