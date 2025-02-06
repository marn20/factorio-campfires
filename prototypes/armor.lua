--data.lua
--Author: marn20

-- copy the table that defines the heavy armor item into the fireArmor variable
-- It is important to note that data.raw only exists during the data loading stage of the game. 
--   During the control stage, when the game is running and being played, you cannot read this data; 
--   instead you read processed values through the API from the various types like LuaEntityPrototype.

local fireArmor = table.deepcopy(data.raw["armor"]["heavy-armor"]) 
local fastArmor = table.deepcopy(data.raw["armor"]["power-armor-mk2"])

fireArmor.name = "fire-armor"
fastArmor.name = "fast-armor"

fireArmor.icons = {
  {
    icon = fireArmor.icon,
    icon_size = fireArmor.icon_size,
    tint = {r=1, g=0, b=0, a=0.3}
  },
}
fastArmor.icons = {
  {
    icon = fastArmor.icon,
    icon_size = fastArmor.icon_size,
    tint = {r=0, g=0, b=200, a=0.3}
  },
}

fireArmor.resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 10
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 30
  },
  {
    type = "acid",
    decrease = 5,
    percent = 30
  },
  {
    type = "fire",
    decrease = 0,
    percent = 100
  }
}

fastArmor.resistances = {
  {
    type = "physical",
    decrease = 0,
    percent = 100
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 30
  },
  {
    type = "acid",
    decrease = 5,
    percent = 30
  },
  {
    type = "fire",
    decrease = 10,
    percent = 60
  }
}

return {fireArmor, fastArmor}
