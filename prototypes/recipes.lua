-- recipes.lua
-- Author: marn20

-- from wiki, to be removed
local fireArmorRecipe = {
    type = "recipe",
    name = "fire-armor",
    enabled = true,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 200},
        {type = "item", name = "steel-plate", amount = 50}
    },
    results = {
        {type = "item", name = "fire-armor", amount = 1}
    }
}

local fastArmorRecipe = {
    type = "recipe",
    name = "fast-armor",
    enabled = true,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "exoskeleton-equipment", amount = 10},
        {type = "item", name = "iron-plate", amount = 50},
        {type = "item", name = "copper-plate", amount = 2}
    },
    results = {
        {type = "item", name = "fast-armor", amount = 1}
    }
}

local m20_campfireRecipe = {
    type = "recipe",
    name = "campfire-furnace",
    enabled = true,
    energy_required = 7,
    ingredients = {
        {type = "item", name = "wood", amount = 10},
        {type = "item", name = "stone", amount = 10},
        {type = "item", name = "coal", amount = 5},
    },
    results = {
        {type = "item", name = "campfire-furnace", amount = 1}
    }
}

return {fireArmorRecipe, fastArmorRecipe, m20_campfireRecipe}
