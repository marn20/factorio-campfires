--items.lua
--author: marn20

local m20_campfire = {
    type = "item",
    name = "campfire-furnace",
    icon = "__testmod__/graphics/icons/campfire-64.png",
    icon_size = 64,
    subgroup = "smelting-machine",
    -- moet orders nog begrijpen, maar op default klopt die
    order = "a[stone-furnace]-a[campfire-furnace]",
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

-- ensure only wood & coal work for campfire-fuel, and nuclear fuel for nuclear-campfire-fuel
-- local wood = data.raw["item"]["wood"]
-- local coal = data.raw["item"]["coal"]
-- local nuclear_fuel = data.raw["item"]["nuclear-fuel"]

-- if wood then wood.fuel_category = "campfire-fuel" end
-- if coal then coal.fuel_category = "campfire-fuel" end
-- if nuclear_fuel then nuclear_fuel.fuel_category = "nuclear-campfire-fuel" end

if data.raw["item"]["wood"] then
    data.raw["item"]["wood"].fuel_category = "campfire-fuel"
end

if data.raw["item"]["coal"] then
    data.raw["item"]["coal"].fuel_category = "campfire-fuel"
end

if data.raw["item"]["nuclear-fuel"] then
    data.raw["item"]["nuclear-fuel"].fuel_category = "nuclear-campfire-fuel"
end


return{m20_campfire, m20_nuclearCampfire}


