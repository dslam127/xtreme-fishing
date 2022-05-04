-- allow seedling to be used as a fuel
data.raw.item["seedling"].fuel_category = "chemical"
data.raw.item["seedling"].fuel_value = "325kJ"
data.raw.item["seedling"].emissions_multiplier = 0.8

-- simple function to replace an ingredient in a recipe
local replace_ingredient = function(recipe, ingredient, to)
  if data.raw.recipe[recipe].ingredients then
    for k, v in pairs(data.raw.recipe[recipe].ingredients) do
      if v.name and string.find(v.name, ingredient) then
        v["name"] = to
      end
    end
  end
end

local recipes_fert_ing = { "biomass", "advanced-fertiliser", "seedling-mk3", "wood-mk3" }

if mods["Krastorio2"] then

  -- allow greentec growing recipes in krastorio greenhouse
  if data.raw["assembling-machine"]["kr-greenhouse"] ~= nil then
    table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "organic-farm")
  end
  
  -- replace K2 fertilizer icon with Gt icon
  data.raw.item["fertilizer"].icon = "__GreenTec__/graphics/icons/fertiliser.png"
  data.raw.item["fertilizer"].icon_mipmaps = 4
  data.raw.item["fertilizer"].icon_size = 64
  
  -- simply use K2 fertilzer intead of having multiple
  data.raw.recipe["gt-fertiliser"].results = nil
  data.raw.recipe["gt-fertiliser"].result = "fertilizer"
  data.raw.recipe["gt-fertiliser"].result_count = 10
  
  -- use K2 fertilizer as ingredient vs Gt fertiliser (see list above)
  for i = 1, 4 do
    replace_ingredient(recipes_fert_ing[i], "gt-fertiliser", "fertilizer")
  end
  
  -- change amount of refined fuel required, clean up mod code
  data.raw.recipe["bio-fuel"].ingredients = {
    { type = "item", name = "purified-fuel", amount = 15 },
    { type = "fluid", name = "biomass", amount = 50 },
    { type = "fluid", name = "nitrogen", amount = 100 }
  }
  
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