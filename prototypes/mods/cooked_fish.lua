local create_cooked_fish_recipe = function(fish, result, amount)
  local recipe = {
    type = "recipe",
    name = "cooked-" .. fish .. "-recipe",
    category = "smelting",
    energy_required = 8,
    enabled = true,
    ingredients = {{ "raw-" .. fish, 1 }},
    result = result,
    result_count = amount,
    localised_name = result.localised_name
  }
  return recipe
end

-- simplified code
for f,v in pairs(data.raw.fish) do
  if (f == "pufferfish") then
    data:extend({ 
      create_cooked_fish_recipe(f, settings.startup["xtreme-fishing-puffer_type"].value, settings.startup["xtreme-fishing-puffer_yield"].value)
    })
  else
    data:extend({
      create_cooked_fish_recipe(f, "cooked-fish", 1)
    })
  end
end

