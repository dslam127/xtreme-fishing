-- dynamically create recipes for other fish types
for fish,value in pairs(data.raw.fish) do
  local recipe_from_water = table.deepcopy(data.raw.recipe["fish-from-water"])
  if recipe_from_water ~= nil and fish ~= "fish" then
    recipe_from_water.name = fish .. "-from-water"
    recipe_from_water.icon = data.raw.fish[fish].icon
    recipe_from_water.icon_size = data.raw.fish[fish].icon_size
    recipe_from_water.icon_mipmaps = data.raw.fish[fish].icon_mipmaps
    recipe_from_water.results = {
      { type = "item", name = "raw-" .. fish, amount_min = 3, amount_max = 7 },
      { type = "fluid", name = "water", amount = 400, catalyst_amount = 400 }
    }
    recipe_from_water.order = "b[" .. fish .. "-from-water]"
    recipe_from_water.localised_name = fish .. " from water"
    
    data:extend({recipe_from_water})
  end
  
  local recipe_heavy_oil_production = table.deepcopy(data.raw.recipe["heavy-oil-production"])
  if recipe_heavy_oil_production ~= nil and fish ~= "fish" then
    recipe_heavy_oil_production.name = "heavy-oil-production-" .. fish
    local element = 1
    for _,v in pairs(recipe_heavy_oil_production.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then v[element] = "raw-" .. fish end
    end
    recipe_heavy_oil_production.order = "a[heavy-oil-production-" .. fish .. "]"
    recipe_heavy_oil_production.localised_name = "Heavy Oil Production (" .. fish .. ")"
    
    data:extend({recipe_heavy_oil_production})
    table.insert(data.raw.technology["kr-steam-engine"].effects, { type = "unlock-recipe", recipe = "heavy-oil-production-" .. fish })
  end
  
  local recipe_dissolver = table.deepcopy(data.raw.recipe["dissolver"])
  if recipe_dissolver ~= nil and fish ~= "fish" then
    recipe_dissolver.name = "dissolver-" .. fish
    local element = 1
    for _,v in pairs(recipe_dissolver.ingredients) do
      if v.name then element = 'name' end
      if v[element] == "raw-fish" then v[element] = "raw-" .. fish end
    end
    recipe_dissolver.order = "c[dissolver-" .. fish .. "]"
    recipe_dissolver.localised_name = "Dissolver (" .. fish .. ")"
    
    data:extend({recipe_dissolver})
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