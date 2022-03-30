-- various fish recipes from SeaTorio mod
local add_from_water = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["fish-from-water"])
  if recipe ~= nil then
    recipe.name = fish .. "-from-water"
    recipe.icon = data.raw.fish[fish].icon
    recipe.icon_size = data.raw.fish[fish].icon_size
    recipe.icon_mipmaps = data.raw.fish[fish].icon_mipmaps
    recipe.results = {
      { type = "item", name = "raw-" .. fish, amount_min = 3, amount_max = 7 },
      { type = "fluid", name = "water", amount = 400, catalyst_amount = 400 }
    }
    recipe.order = "b[" .. fish .. "-from-water]"
    recipe.localised_name = fish .. " from water"    
  end
  return recipe
end

local add_heavy_oil_production = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["heavy-oil-production"])
  if recipe ~= nil then
    recipe.name = "heavy-oil-production-" .. fish
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then v[element] = "raw-" .. fish end
    end
    recipe.order = "a[heavy-oil-production-" .. fish .. "]"
    recipe.localised_name = "Heavy Oil Production (" .. fish .. ")"
  end
  return recipe
end

local add_dissolver = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["dissolver"])
  if recipe ~= nil then
    recipe.name = "dissolver-" .. fish
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then v[element] = "raw-" .. fish end
    end
    recipe.order = "c[dissolver-" .. fish .. "]"
    recipe.localised_name = "Dissolver (" .. fish .. ")"
  end
  return recipe
end

-- add recipes for each fish (excluding "fish")
for fish,value in pairs(data.raw.fish) do
  if fish ~= "fish" then
    data:extend({
      add_from_water(fish),
      add_heavy_oil_production(fish),
      add_dissolver(fish)
    })
    
    table.insert(data.raw.technology["kr-steam-engine"].effects, { type = "unlock-recipe", recipe = "heavy-oil-production-" .. fish })
    table.insert(data.raw.technology["kr-basic-fluid-handling"].effects, { type = "unlock-recipe", recipe = "dissolver-" .. fish })
  end
end

-- lock copper pipes behind copper tech
if settings.startup["xtreme-fishing-enablepipes"].value == true then
  data.raw.recipe["copper-pipe"].enabled = false
  data.raw.recipe["copper-pipe-to-ground"].enabled = false
  table.insert(data.raw.technology["copper-processing"].effects, { type = "unlock-recipe", recipe = "copper-pipe" })
  table.insert(data.raw.technology["copper-processing"].effects, { type = "unlock-recipe", recipe = "copper-pipe-to-ground" })
end