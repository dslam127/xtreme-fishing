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

-- update images for modmashsplinterfishing
if mods["more-fish"] then

  data.raw["fish"]["cod"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/codfish.png"
  data.raw["fish"]["cod"].icon_size = 64
  data.raw["fish"]["cod"].icon_mipmaps = 4

  data.raw["fish"]["pufferfish"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/pufferfish.png"
  data.raw["fish"]["pufferfish"].icon_size = 64
  data.raw["fish"]["pufferfish"].icon_mipmaps = 4

  data.raw["fish"]["clownfish"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/clownfish.png"
  data.raw["fish"]["clownfish"].icon_size = 64
  data.raw["fish"]["clownfish"].icon_mipmaps = 4

  data.raw["fish"]["salmon"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/salmon.png"
  data.raw["fish"]["salmon"].icon_size = 64
  data.raw["fish"]["salmon"].icon_mipmaps = 4

  data.raw["capsule"]["raw-cod"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/codfish.png"
  data.raw["capsule"]["raw-cod"].icon_size = 64
  data.raw["capsule"]["raw-cod"].icon_mipmaps = 4

  data.raw["capsule"]["raw-pufferfish"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/pufferfish.png"
  data.raw["capsule"]["raw-pufferfish"].icon_size = 64
  data.raw["capsule"]["raw-pufferfish"].icon_mipmaps = 4
  
  data.raw["capsule"]["raw-clownfish"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/clownfish.png"
  data.raw["capsule"]["raw-clownfish"].icon_size = 64
  data.raw["capsule"]["raw-clownfish"].icon_mipmaps = 4
  
  data.raw["capsule"]["raw-salmon"].icon = "__xtreme-fishing__/graphics/icons/" .. "fish/salmon.png"
  data.raw["capsule"]["raw-salmon"].icon_size = 64
  data.raw["capsule"]["raw-salmon"].icon_mipmaps = 4
  
end
