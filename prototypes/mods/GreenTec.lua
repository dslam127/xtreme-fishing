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

for fish,t in pairs(data.raw.fish) do
  if fish ~= "fish" then
    data:extend({
      add_biomass_from(fish)
    })
    
    table.insert(data.raw.technology["advanced-biotechnology"].effects, { type = "unlock-recipe", recipe = "biomass-from-" .. fish })
  end
end