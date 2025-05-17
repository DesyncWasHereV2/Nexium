local Potions = {
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

local SortedPotions = {}
for name, data in pairs(Potions) do
    table.insert(SortedPotions, { Name = name, Data = data })
end

table.sort(SortedPotions, function(a, b)
    return a.Data.Order < b.Data.Order
end)

local NewPotionsTable = {}
for _, entry in ipairs(SortedPotions) do
    NewPotionsTable[entry.Name] = entry.Data
end

return NewPotionsTable
