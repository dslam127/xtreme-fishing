-- remove old fish items
function hide_item(name)
  if data.raw["item"][name] ~= nil then
    data.raw["item"][name].flags = { "hidden" }
  end
  if data.raw["capsule"][name] ~= nil then
    data.raw["capsule"][name].flags = { "hidden" }
  end
  if data.raw["recipe"][name] ~= nil then
    data.raw["recipe"][name].enabled = false
    data.raw["recipe"][name].hidden = true
    data.raw["recipe"][name].hide_from_player_crafting = true
    data.raw["recipe"][name].hide_from_stats = true
  end
end

hide_item('af-crab')
hide_item('af-tropical')
hide_item('af-squid')
hide_item('af-salmon')

local fish_icons = {
  cod = "codfish.png",
  pufferfish = "pufferfish.png",
  clownfish = "clownfish.png", 
  salmon = "af-salmon.png",
}

-- update fish icons
for f,s in pairs(data.raw.fish) do
  for t,i in pairs(fish_icons) do
    if (f == t) then
      data.raw.fish[f].icon = "__xtreme-fishing__/graphics/icons/fish/" .. i
      data.raw.fish[f].icon_size = 64
      data.raw.fish[f].icon_mipmaps = 4
    end
    -- always yield 5 when fishing
    data.raw.fish[f].minable["count"] = 5
  end
end

-- update capsule icons
for c,s in pairs(data.raw.capsule) do
  for t,i in pairs(fish_icons) do
    if (c == "raw-" .. t) then
      data.raw.capsule[c].icon = "__xtreme-fishing__/graphics/icons/fish/" .. i
      data.raw.capsule[c].icon_size = 64
      data.raw.capsule[c].icon_mipmaps = 4
    end
  end
end
