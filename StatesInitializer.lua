return function(states)
    local defaultStates = loadstring(game:HttpGet("https://raw.githubusercontent.com/DesyncWasHereV2/Nexium/main/States.lua"))()
    print("[StatesInitializer] Starting state patch process...")

    local patched = false

    for key, default in pairs(defaultStates) do
        if states[key] == nil then
            warn(string.format("[StatesInitializer] Missing state '%s' → adding default.", key))
            states[key] = default
            patched = true
        else
            for subKey, subDefault in pairs(default) do
                if states[key][subKey] == nil then
                    warn(string.format(
                        "[StatesInitializer] Missing subKey '%s' in '%s' → adding default.",
                        subKey, key
                    ))
                    states[key][subKey] = subDefault
                    patched = true
                end
            end
        end
    end

    print("[StatesInitializer] Patch process completed.")
    return patched
end
