return function(states)
    local defaultStates = loadstring(game:HttpGet("https://raw.githubusercontent.com/DesyncWasHereV2/Nexium/main/States.lua"))()

    for key, default in pairs(defaultStates) do
        if not states[key] then
            states[key] = default
        else
            for subKey, subDefault in pairs(default) do
                if not states[key][subKey] then
                    states[key][subKey] = subDefault
                end
            end
        end
    end
end
