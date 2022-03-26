if script.active_mods["repair-fish"] then
  script.on_event(defines.events.on_player_used_capsule, function(event)
    if event.item.name == "raw-crab" then
      local player = game.get_player(event.player_index)
      local selected = player.selected
      if selected and selected.health then
        selected.health = selected.health + 80
      end
    end
    if event.item.name == "raw-flounder" then
      local player = game.get_player(event.player_index)
      local selected = player.selected
      if selected and selected.health then
        selected.health = selected.health + 80
      end
    end
    if event.item.name == "raw-salmon" then
      local player = game.get_player(event.player_index)
      local selected = player.selected
      if selected and selected.health then
        selected.health = selected.health + 80
      end
    end
    if event.item.name == "raw-squid" then
      local player = game.get_player(event.player_index)
      local selected = player.selected
      if selected and selected.health then
        selected.health = selected.health + 80
      end
    end
  end)
end