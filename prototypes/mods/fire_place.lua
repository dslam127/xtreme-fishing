-- allow cooked fish to be made in the campfire (note: removes ability to cook fish in forge)
for fish,v in pairs(data.raw.fish) do
  
  if mods["factorio-cooked-fish"] then
    data.raw.recipe["cooked-" .. fish .. "-recipe"].category = "cooking"
  end
  
  if mods["GreenTec"] and settings.startup["fried-fish"].value == true then
    data.raw.recipe["fried-" .. fish].category = "cooking"
  end
    
end

-- add match item and recipe which allows campfire to burn without producing any results
data:extend({
  {
    type = "item",
    name = "match",
    icon = "__xtreme-fishing__/graphics/entity/" .. "match.png",
    icon_size = 64,
    subgroup = "tool",
    order = "b[repair]-b[match]",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "match",
    category = "crafting",
    enabled = true,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
      { type = "item", name = "coal", amount = 1 }
    },
    result = "match",
    result_count = 100
  },
  { -- a stack of matches will keep a campfire burning for 24hrs
    type = "recipe",
    name = "light-campfire",
    icon = "__xtreme-fishing__/graphics/icons/" .. "recipe/light-campfire.png",
    icon_size = 256,
    category = "burning",
    enabled = true,
    energy_required = 864,
    ingredients = {
      { type = "item", name = "match", amount = 1 }
    },
    results = { },
    subgroup = "intermediate-product",
    order = "z[light-campfire]"
  }
})
  
