--items.lua
--author: marn20

local m20_campfire = {
    type = "item",
    name = "campfire-furnace",
    icon = "__testmod__/graphics/icons/campfire-64.png",
    icon_size = 64,
    subgroup = "smelting-machine",
    -- moet orders nog begrijpen, maar op default klopt die
    -- order = "a[stone-furnace]-z[campfire-furnace]",
    stack_size = 50,
    place_result = "campfire-furnace",
    --localised_name = "Campfire"
    --localised_name = "item-name.campfire-furnace" -- force locale usage
}

local m20_nuclearCampfire = {
    type = "item",
    name = "nuclear-campfire",
    icon = "__testmod__/graphics/icons/nuclear-campfire-64.png",
    icon_size = 64,
    subgroup = "smelting-machine",
    -- order = ???? - hij moet ofwel direct rechts van de gewone, ofwel na de elektrische
    stack_size = 10,
    place_result = "nuclear-campfire"

}

return{m20_campfire, m20_nuclearCampfire}


