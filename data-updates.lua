-- remove old fish items
function remove_item(name)
  data.raw["item"][name] = nil
  data.raw["recipe"][name] = nil
  data.raw["capsule"][name] = nil
end

remove_item('af-crab')
remove_item('af-tropical')
remove_item('af-squid')
remove_item('af-salmon')

local fish_icons = {
  cod = "codfish.png",
  pufferfish = "pufferfish.png",
  clownfish = "clownfish.png", 
  salmon = "salmon.png",
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
