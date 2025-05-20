local WorldOrder = {
    ["World 1"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld']['World']",
        PathExplorer = "Workspace.Worlds.The Overworld.FastTravel.Spawn",
        Order = 1
    },
    ["Basic Spawn"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld']['World']",
        PathExplorer = "Workspace.Worlds.The Overworld.FastTravel.Spawn",
        Order = 2
    },
    ["Floating Island"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Floating Island']",
        PathExplorer = "Workspace.Worlds.The Overworld.Islands.Floating Island.Island.Portal.Spawn",
        Order = 3
    },
    ["Outer Space"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Outer Space']",
        PathExplorer = "Workspace.Worlds.The Overworld.Islands.Outer Space.Island.Portal.Spawn",
        Order = 4
    },
    ["Twilight"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Twilight']",
        PathExplorer = "Workspace.Worlds.The Overworld.Islands.Twilight.Island.Portal.Spawn",
        Order = 5
    },
    ["The Void"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['The Void']",
        PathExplorer = "Workspace.Worlds.The Overworld.Islands.The Void.Island.Portal.Spawn",
        Order = 6
    },
    ["Zen"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['The Overworld'].Islands['Zen']",
        PathExplorer = "Workspace.Worlds.The Overworld.Islands.Zen.Island.Portal.Spawn",
        Order = 7
    },
    ["World 2"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise']['World']",
        PathExplorer = "Workspace.Worlds.Minigame Paradise.FastTravel.Spawn",
        Order = 8
    },
    ["Minigame Spawn"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise']['World']",
        PathExplorer = "Workspace.Worlds.Minigame Paradise.FastTravel.Spawn",
        Order = 9
    },
    ["Dice Island"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Dice Island']",
        PathExplorer = "Workspace.Worlds.Minigame Paradise.Islands.Dice Island.Island.Portal.Spawn",
        Order = 10
    },
    ["Minecart Forest"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Minecart Forest']",
        PathExplorer = "Workspace.Worlds.Minigame Paradise.Islands.Minecart Forest.Island.Portal.Spawn",
        Order = 11
    },
    ["Robot Factory"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Robot Factory']",
        PathExplorer = "Workspace.Worlds.Minigame Paradise.Islands.Robot Factory.Island.Portal.Spawn",
        Order = 12
    },
    ["Hyperwave Island"] = {
        PathGui = "game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.WorldMap.Worlds['Minigame Paradise'].Islands['Hyperwave Island']",
        PathExplorer = "Workspace.Worlds.Minigame Paradise.Islands.Hyperwave Island.Island.Portal.Spawn",
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
