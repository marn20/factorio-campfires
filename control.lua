-- control.lua
-- runtime scripting

script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved            
    -- if they're currently controlling the character
    if player.controller_type == defines.controllers.character then
      -- and wearing our armor
      if player.get_inventory(defines.inventory.character_armor).get_item_count("fire-armor") >= 1 then
        -- create the fire where they're standing
        player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"}
      end
    end
  end
)

-- faster movement with fast-armor
script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved            
    -- if they're currently controlling the character
    if player.controller_type == defines.controllers.character then
      -- and wearing our armor
      if player.get_inventory(defines.inventory.character_armor).get_item_count("fast-armor") >= 1 then
        -- move very fast
        player.character_running_speed_modifier = 0.9
      else
        player.character_running_speed_modifier = 0
      end
    end
  end
)

