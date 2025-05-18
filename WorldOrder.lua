local WorldOrder = {
    ["World 1"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld']['World']",
        Order = 1
    },
    ["Basic Spawn"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld']['World']",
        Order = 2
    },
    ["Floating Island"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Floating Island']",
        Order = 3
    },
    ["Outer Space"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Outer Space']",
        Order = 4
    },
    ["Twilight"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Twilight']",
        Order = 5
    },
    ["The Void"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['The Void']",
        Order = 6
    },
    ["Zen"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Zen']",
        Order = 7
    },
    ["World 2"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise']['World']",
        Order = 8
    },
    ["Minigame Spawn"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise']['World']",
        Order = 9
    },
    ["Dice Island"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Dice Island']",
        Order = 10
    },
    ["Minecart Forest"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Minecart Forest']",
        Order = 11
    },
    ["Robot Factory"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Robot Factory']",
        Order = 12
    },
    ["Hyperwave Island"] = {
        Path = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Hyperwave Island']",
        Order = 13
    }
}

local sorted_worlds = {}
for name, data in pairs(WorldOrder) do
    table.insert(sorted_worlds, {name = name, order = data.Order, Path = data.Path})
end

table.sort(sorted_worlds, function(a, b)
    return a.order < b.order
end)

local sorted_world_Order = {}
for _, world in pairs(sorted_worlds) do
    table.insert(sorted_world_Order, world.name)
end

return sorted_world_Order, WorldOrder
