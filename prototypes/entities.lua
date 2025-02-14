-- entities.lua
--Author: marn20

-- campfire
local m20_campfire = table.deepcopy(data.raw["furnace"]["steel-furnace"])
m20_campfire.name = "campfire-furnace"
m20_campfire.icon = "__testmod__/graphics/icons/campfire-64.png"
m20_campfire.icon_size = 64
m20_campfire.crafting_speed = 0.75  -- Slower than a steel furnace
m20_campfire.energy_usage = "90kW"  -- Adjust energy usage
m20_campfire.minable = {mining_time = 0.75, result = "campfire-furnace"}
m20_campfire.flags = {"placeable-neutral", "player-creation"}  -- "player-creation" is important for player placement
m20_campfire.type = "furnace"
m20_campfire.placeable_by = {item = "campfire-furnace", count = 1} -- Make sure you can place it by using the item
m20_campfire.animations = data.raw["furnace"]["steel-furnace"].animations -- Add a working sound and animation properties (optional)
m20_campfire.energy_source = {
  type = "burner",
  fuel_category = "campfire-fuel", -- from prototypes/fuel-categories.lua
  effectivity = 1,
  fuel_inventory_size = 3
}

-- nuclear campfire
local m20_nuclearCampfire = table.deepcopy(data.raw["furnace"]["steel-furnace"]) --either this or nuclear reactor
m20_nuclearCampfire.name = "nuclear-campfire"
m20_nuclearCampfire.icon = "__testmod__/graphics/icons/nuclear-campfire-64.png"
m20_nuclearCampfire.icon_size = 64
m20_nuclearCampfire.crafting_speed = 1.25
m20_nuclearCampfire.energy_usage = "80kW"  -- play a little with the numbers later
m20_nuclearCampfire.minable = {mining_time = 1, result = "nuclear-campfire"}
m20_nuclearCampfire.flags = {"placeable-neutral", "player-creation"}
m20_nuclearCampfire.type = "furnace"
m20_nuclearCampfire.placeable_by = {item = "nuclear-campfire", count = 1}
m20_nuclearCampfire.animations = data.raw["furnace"]["steel-furnace"].animations
m20_campfire.energy_source = {
  type = "burner",
  fuel_category = "nuclear-campfire-fuel", -- from prototypes/fuel-categories.lua
  effectivity = 1,
  fuel_inventory_size = 2
}



return {m20_campfire, m20_nuclearCampfire}









