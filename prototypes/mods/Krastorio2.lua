local add_fertilizer_from = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["fertilizer"])
  if recipe ~= nil then
    recipe.name = "fertilizer-from-" .. fish
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "biomass" then 
        v[element] = "raw-" .. fish
        v["amount"] = 5
      end
    end
    recipe.results = nil
    recipe.result = "fertilizer"
    recipe.result_count = 5
    recipe.localised_name = "Fertilizer from " .. fish
  end
  return recipe
end

--[[ deprecated: now that fish can be converted to fertilizer
local add_wood_from = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["kr-grow-wood-plus"])
  if recipe ~= nil then
    recipe.name = "kr-grow-wood-" .. fish
    recipe.icon = "__xtreme-fishing__/graphics/icons/recipe/wood-plus-plus.png"
    recipe.icon_size = 64
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "fertilizer" then 
        v[element] = "raw-" .. fish
        v["amount"] = 10
      end
    end
    recipe.result_count = 120
    recipe.localised_name = "Wood from " .. fish
  end
  return recipe
end
--]]

local add_first_aid = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["first-aid-kit"])
  if recipe ~= nil then
    recipe.name = "first-aid-kit-" .. fish
    recipe.icon = "__Krastorio2Assets__/icons/items/first-aid-kit.png"
    recipe.icon_size = 64
    recipe.icon_mipmaps = 4
    recipe.enabled = "true"
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "biomass" then 
        v[element] = "raw-" .. fish
      end
    end
    recipe.localised_name = "First aid kit"
  end
  return recipe
end

local add_biomthanol_from = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["biomethanol"])
  if recipe ~= nil then
    recipe.name = "biomethanol-" .. fish
    recipe.icon = "__Krastorio2Assets__/icons/fluids/biomethanol.png"
    recipe.icon_size = 64
    recipe.icon_mipmaps = nil
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "wood" then 
        v[element] = "raw-" .. fish
        v["amount"] = 10
      end
    end
    recipe.localised_name = "Biomethanol from " .. fish
  end
  return recipe
end

-- create recipes for each fish
for fish,t in pairs(data.raw.fish) do
  if fish ~= "fish" then
    data:extend({
      add_fertilizer_from(fish),
--      add_wood_from(fish),
      add_first_aid(fish),
      add_biomthanol_from(fish)
    })
  else
    data:extend({
      add_fertilizer_from(fish),
--      add_wood_from(fish),
      add_biomthanol_from(fish)
    })    
  end
  
  table.insert(data.raw.technology["kr-bio-processing"].effects, { type = "unlock-recipe", recipe = "fertilizer-from-" .. fish})
--  table.insert(data.raw.technology["kr-bio-processing"].effects, { type = "unlock-recipe", recipe = "kr-grow-wood-" .. fish })
  table.insert(data.raw.technology["kr-gas-power-station"].effects, { type = "unlock-recipe", recipe = "biomethanol-" .. fish }) -- changed from kr-advanced-chemistry
end

-- pipe stack size based on settings
data.raw.item["kr-steel-pipe"].stack_size = settings.startup["xtreme-fishing-pipestacksize"].value
data.raw.item["kr-steel-pipe-to-ground"].stack_size = settings.startup["xtreme-fishing-ugpipestacksize"].value