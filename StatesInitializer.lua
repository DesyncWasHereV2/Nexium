return function(states)
    local defaultStates = loadstring(game:HttpGet("https://raw.githubusercontent.com/DesyncWasHereV2/Nexium/main/States.lua"))()

    for key, default in pairs(defaultStates) do
        if not states[key] then
            print("[StatesInitializer] Missing state:", key, "- Adding default.")
            states[key] = default
        else
            for subKey, subDefault in pairs(default) do
                if states[key][subKey] == nil then
                    print(string.format("[StatesInitializer] Missing subKey '%s' in state '%s' - Adding default.", subKey, key))
                    states[key][subKey] = subDefault
                end
            end
        end
    end

    -- Final print to confirm structure
    print("[StatesInitializer] Final States Table:", states)
    for k, v in pairs(states) do
        print("  ", k, "=", v)
    end
end
