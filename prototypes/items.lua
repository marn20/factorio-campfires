--items.lua
--author: marn20

local m20_campfire = {
    type = "item",
    name = "campfire-furnace",
    icon = "__testmod__/graphics/icons/campfire-64.png",
    icon_size = 64,
    subgroup = "smelting-machine",
    order = "b[steel-furnace]-z[campfire-furnace]",
    stack_size = 50,
    place_result = "campfire-furnace",
    --localised_name = "Campfire"
    --localised_name = "item-name.campfire-furnace" -- force locale usage
}

return{m20_campfire}


