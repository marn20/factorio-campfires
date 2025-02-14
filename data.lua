-- Make sure prototypes/fuel-categories.lua is loaded before entities.lua and items.lua
local fuelCategories = require("prototypes.fuel-categories")

local armor = require("prototypes.armor")
local recipes = require("prototypes.recipes")
local campfire = require("prototypes.entities")
local items = require("prototypes.items")

data:extend(fuel-categories)
data:extend(armor)
data:extend(recipes)
data:extend(campfire)
data:extend(items)

log(serpent.block(data.raw["item"]["wood"]))  -- Debugging output for wood
log(serpent.block(data.raw["item"]["coal"]))  -- Debugging output for coal
log(serpent.block(data.raw["item"]["nuclear-fuel"]))  -- Debugging output for nuclear fuel
