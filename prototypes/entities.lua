-- entities.lua
--Author: marn20

local m20_campfire = table.deepcopy(data.raw["furnace"]["steel-furnace"])

-- Change the internal name
m20_campfire.name = "campfire-furnace"

-- Change the icon to the new image
m20_campfire.icon = "__testmod__/graphics/icons/campfire-64.png"
m20_campfire.icon_size = 64  -- Make sure the size matches your actual image

-- (Optional) Change the crafting speed or other properties
m20_campfire.crafting_speed = 0.75  -- Slower than a steel furnace
m20_campfire.energy_usage = "90kW"  -- Adjust energy usage
m20_campfire.minable = {mining_time = 1, result = "campfire-furnace"}

-- Define the collision and selection boxes for placement, niet aanzitten als niet nodig is
-- m20_campfire.collision_box = {{-0.5, -0.5}, {1.5, 1.5}} -- Standard collision box size for furnaces
-- m20_campfire.selection_box = {{-0.5, -0.5}, {0.5, 1.0}} -- Define the area you can select // {-links ,+rechts ,-boven +onder}

-- Ensure it's placeable in the world
m20_campfire.flags = {"placeable-neutral", "player-creation"}  -- "player-creation" is important for player placement

-- Define the entity as a furnace
m20_campfire.type = "furnace"

-- Make sure you can place it by using the item
m20_campfire.placeable_by = {item = "campfire-furnace", count = 1}

-- Add a working sound and animation properties (optional)
m20_campfire.animations = data.raw["furnace"]["steel-furnace"].animations


return {m20_campfire}






































-- blatant copy of early 3x3 electric furnaces to be changed later
--[[
electricstone.animation.layers =
{
  {
    filename = "__Early-3x3-Electric-Furnaces__/graphics/entity/primitive-electric-furnace/primitive-electric-furnace-base.png",
    priority = "high",
    width = 129,
    height = 100,
    frame_count = 1,
    shift = {0.421875, 0},
    hr_version = {
      filename = "__Early-3x3-Electric-Furnaces__/graphics/entity/primitive-electric-furnace/hr-primitive-electric-furnace-base.png",
      priority = "high",
      width = 239,
      height = 219,
      frame_count = 1,
      shift = util.by_pixel(0.75, 5.75),
      scale = 0.5
    }
  },
  {
    filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
    priority = "high",
    width = 129,
    height = 100,
    frame_count = 1,
    shift = {0.421875, 0},
    draw_as_shadow = true,
    hr_version = {
      filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
      priority = "high",
      width = 227,
      height = 171,
      frame_count = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(11.25, 7.75),
      scale = 0.5
    }
  }
}
]]--

-- no idea what this does
-- campfire.working_visualisations = data.raw["furnace"]["electric-furnace"].working_visualisations


-- electronic-test-object *****************************
-- see entities.lua in exampleMods folder on pc







