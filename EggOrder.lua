local EggsOrder = {
    ["Common Egg"] = 1,
    ["Spotted Egg"] = 2,
    ["Iceshard Egg"] = 3,
    ["Spikey Egg"] = 4,
    ["Magma Egg"] = 5,
    ["Crystal Egg"] = 6,
    ["Lunar Egg"] = 7,
    ["Void Egg"] = 8,
    ["Hell Egg"] = 9,
    ["Nightmare Egg"] = 10,
    ["Rainbow Egg"] = 11,
    ["Showman Egg"] = 12,
    ["Mining Egg"] = 13,
    ["Cyber Egg"] = 14,
    ["Game Egg"] = 15,
    ["Underworld Egg"] = 16,
    ["200M Egg"] = 17,
    ["Infinity Egg"] = 18
}

local sorted_eggs = {}
for name, order in pairs(EggsOrder) do
    table.insert(sorted_eggs, {name = name, order = order})
end

table.sort(sorted_eggs, function(a, b)
    return a.order < b.order
end)

local sorted_eggs_Order = {}
for _, egg in ipairs(sorted_eggs) do
    table.insert(sorted_eggs_Order, egg.name)
end

return sorted_eggs_Order, EggsOrder
