local PotionsOrder = {
    ["Lucky Evolved"] = { Order = 1, UseId = 6, OrderId = "Lucky"},
    ["Speed Evolved"] = { Order = 2, UseId = 6, OrderId = "Speed"},
    ["Coins Evolved"] = { Order = 3, UseId = 6, OrderId = "Coins"},
    ["Mythic Evolved"] = { Order = 4, UseId = 6, OrderId = "Mythic"},
    ["Tickets Evolved"] = { Order = 5, UseId = 6, OrderId = "Tickets"},
    ["Lucky V"] = { Order = 6, UseId = 5, OrderId = "Lucky"},
    ["Speed V"] = { Order = 7, UseId = 5, OrderId = "Speed"},
    ["Coins V"] = { Order = 8, UseId = 5, OrderId = "Coins"},
    ["Mythic V"] = { Order = 9, UseId = 5, OrderId = "Mythic"},
    ["Tickets V"] = { Order = 10, UseId = 5, OrderId = "Tickets"}
}

local sorted_potions = {}
for name, data in pairs(PotionsOrder) do
    table.insert(sorted_potions, {name = name, order = data.Order, UseId = data.UseId})
end

table.sort(sorted_potions, function(a, b)
    return a.order < b.order
end)

local sorted_potions_order = {}
for _, potion in ipairs(sorted_potions) do
    table.insert(sorted_potions_order, potion.name)
end

return sorted_potions_order, PotionsOrder
