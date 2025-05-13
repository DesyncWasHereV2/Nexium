return function(states)
    local defaultStates = loadstring(game:HttpGet("https://raw.githubusercontent.com/DesyncWasHereV2/Nexium/main/States.lua"))()
    local patched = false

    print("[StatesInitializer] Starting state patch process...")

    for key, default in pairs(defaultStates) do
        if not states[key] then
            print(string.format("[StatesInitializer] Missing state '%s' - Adding default.", key))
            states[key] = default
            patched = true
        else
            for subKey, subDefault in pairs(default) do
                if states[key][subKey] == nil then
                    print(string.format("[StatesInitializer] Missing subKey '%s' in state '%s' - Adding default.", subKey, key))
                    states[key][subKey] = subDefault
                    patched = true
                end
            end
        end
    end

    print("[StatesInitializer] Patch process completed.")
    return patched
end
