-- extends various recipes in space exploration that use or provide fish
local add_specimen = function(fish) 
  local recipe = table.deepcopy(data.raw.recipe["se-specimen-fish"])
  if recipe ~= nil then
    recipe.name = "se-specimen-" .. fish
    local element = 1
    for _,v in pairs(recipe.results) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then 
        v[element] = "raw-" .. fish
      end
    end
    recipe.localised_name = "Microgravity " .. fish .. " growth"
  end
  return recipe
end

local add_medpack = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["se-medpack"])
  if recipe ~= nil then
    recipe.name = "se-medpack-" .. fish
    if mods["Krastorio2"] then
      recipe.ingredients = {
        { "wood", 2 },
        { "raw-" .. fish, 1 },
        { "biomass", 1 },
        { "first-aid-kit", 1 }
      }
    else
      recipe.ingredients = {
        { "raw-" .. fish, 5 },
        { "wood", 5 },
        { "iron-plate", 1}
      }
    end
    recipe.localised_name = "Medpack"
  end
  return recipe
end

local add_bio_sludge_from = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["se-bio-sludge-from-fish"])
  if recipe ~= nil then
    recipe.name = "se-bio-sludge-from-" .. fish
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then 
        v[element] = "raw-" .. fish
      end
    end
    recipe.localised_name = "Biosludge from " .. fish
  end
  return recipe
end

local add_lifesupport_canister = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["se-lifesupport-canister-fish"])
  if recipe ~= nil then
    recipe.name = "se-lifesupport-canister-" .. fish
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then 
        v[element] = "raw-" .. fish
      end
    end
    recipe.localised_name = "Lifesupport canister"
  end
  return recipe
end

-- for each modded fish extend recipes and insert tech (exclude "fish")
for fish,t in pairs(data.raw.fish) do
  if fish ~= nil and fish ~= "fish" then
    data:extend({
      add_specimen(fish),
      add_medpack(fish),
      add_bio_sludge_from(fish),
      add_lifesupport_canister(fish)
    })
    table.insert(data.raw.technology["se-space-growth-facility"].effects, { type = "unlock-recipe", recipe = "se-specimen-" .. fish })
    table.insert(data.raw.technology["se-medpack"].effects, { type = "unlock-recipe", recipe = "se-medpack-" .. fish })
    table.insert(data.raw.technology["se-space-biochemical-laboratory"].effects, { type = "unlock-recipe", recipe = "se-bio-sludge-from-" .. fish })
    table.insert(data.raw.technology["se-lifesupport-facility"].effects, { type = "unlock-recipe", recipe = "se-lifesupport-canister-" .. fish })
  end
end