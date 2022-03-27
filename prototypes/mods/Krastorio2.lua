--[[ use fish as fertilizer in the wood/fertilizer recipe
  - uses 10x more fish than fertilizer but results in 50% more wood
--]]
for fish,t in pairs(data.raw.fish) do
  local recipe = table.deepcopy(data.raw.recipe["kr-grow-wood-plus"])
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
  
  data:extend({recipe})
  table.insert(data.raw.technology["kr-bio-processing"].effects, { type = "unlock-recipe", recipe = "kr-grow-wood-" .. fish })
end