local add_biomass_from = function(fish)
  local recipe = table.deepcopy(data.raw.recipe["biomass"])
  if recipe ~= nil then
    recipe.name = "biomass-from-" .. fish
    local element = 1
    for _,v in pairs(recipe.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then 
        v[element] = "raw-" .. fish
      end
    end
    recipe.localised_name = "Biomass from " .. fish
  end
  return recipe
end

local add_fried = function(fish)
  local recipe = {
    type = "recipe",
    name = "fried-" .. fish,
    category = "smelting",
    subgroup = "green-smelting",
    order = "a[fried-" .. fish .. "]",
    energy_required = 2,
    ingredients = {{ "raw-" .. fish, 1 }},
    result = "fried-fish",
    emissions_multiplier = 0.5,
    enabled = true,
  }
  return recipe
end

for fish,t in pairs(data.raw.fish) do
  if fish ~= "fish" then
    if settings.startup["fried-fish"].value == true then
      data:extend({
        add_fried(fish)
      })
    end
    data:extend({
      add_biomass_from(fish)
    })
    
    table.insert(data.raw.technology["advanced-biotechnology"].effects, { type = "unlock-recipe", recipe = "biomass-from-" .. fish })
  end
end

if mods["Krastorio2"] then

  -- allow greentec growing recipes in krastorio greenhouse
  if data.raw["assembling-machine"]["kr-greenhouse"] ~= nil then
    table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "organic-farm")
  end

end

if mods["SeaTorio"] then
  
  -- allow greentec growing recipes in cheap greenhouse
  if data.raw["assembling-machine"]["cheap-greenhouse"] ~= nil then
    table.insert(data.raw["assembling-machine"]["cheap-greenhouse"].crafting_categories, "organic-farm")
  end
  
  -- allow greentec coking recipes in foundry
  if data.raw["assembling-machine"]["foundry"] ~= nil then
    table.insert(data.raw["assembling-machine"]["foundry"].crafting_categories, "coal-smelting")
  end
  if data.raw["assembling-machine"]["electric-foundry"] ~= nil then
    table.insert(data.raw["assembling-machine"]["electric-foundry"].crafting_categories, "coal-smelting")
  end
  
end