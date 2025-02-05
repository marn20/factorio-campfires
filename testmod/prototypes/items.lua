--items.lua
--author: marn20

local m20_campfire = {
    type = "item",
    name = "campfire-furnace",
    icon = "__testmod__/graphics/icons/campfire-64.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "b[steel-furnace]-a[campfire-furnace]",
    stack_size = 50,
    place_result = "campfire-furnace"
}

return{m20_campfire}


