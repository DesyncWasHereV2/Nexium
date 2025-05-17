local PotionsOrder = {
    ["Lucky Evolved"] = { Order = 1, UseId = 6 },
    ["Speed Evolved"] = { Order = 2, UseId = 6 },
    ["Coins Evolved"] = { Order = 3, UseId = 6 },
    ["Mythic Evolved"] = { Order = 4, UseId = 6 },
    ["Tickets Evolved"] = { Order = 5, UseId = 6 },
    ["Lucky V"] = { Order = 6, UseId = 5 },
    ["Speed V"] = { Order = 7, UseId = 5 },
    ["Coins V"] = { Order = 8, UseId = 5 },
    ["Mythic V"] = { Order = 9, UseId = 5 },
    ["Tickets V"] = { Order = 10, UseId = 5 }
}

local sorted_potions = {}
for name, data in pairs(PotionsOrder) do
    table.insert(sorted_potions, {name = name, order = data.Order, UseId = data.UseId})
end

table.sort(sorted_potions, function(a, b)
    return a.order < b.order
end)

local sorted_potions_order = {}
for name, potion in pairs(sorted_potions) do
    table.insert(sorted_potions_order, name)
end

return sorted_potions_order
