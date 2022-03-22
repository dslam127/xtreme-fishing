local create_fish_fluid_recipe = function(fish, fluid_result, yield)
  local recipe = {
    type = "recipe",
    name = fish .. "-lubification",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    icon = "__xtreme-fishing__/graphics/icons/recipe/" .. fish .. "-lube.png",
    icon_size = 64,
    ingredients = {
      { type = "item", name = "raw-" .. fish, amount = 1 }
    },
    results = {
      { type = "fluid", name = fluid_result, amount = yield }
    },
    subgroup = "fluid-recipes",
    localised_name = fish .. " " .. fluid_result,
    localised_description = "Squeeze all the " .. fluid_result .. " you can from " .. fish
  }
  -- use base colors for chemistry tinting
  if (fluid_result == "light-oil") then
    recipe.crafting_machine_tint = data.raw.recipe["heavy-oil-cracking"].crafting_machine_tint
  elseif (fluid_result == "petroleum-gas") then
    recipe.crafting_machine_tint = data.raw.recipe["light-oil-cracking"].crafting_machine_tint
  elseif (fluid_result == "lubricant") then
    recipe.crafting_machine_tint = data.raw.recipe["lubricant"].crafting_machine_tint
  else
    recipe.crafting_machine_tint = data.raw.recipe["plastic-bar"].crafting_machine_tint
  end
  return recipe
end

local create_fish_item_recipe = function(fish, item_result, yield)
  local recipe = {
    type = "recipe",
    name = fish .. "-lubification",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    icon = "__xtreme-fishing__/graphics/icons/recipe/" .. fish .. "-lube.png",
    icon_size = 64,
    ingredients = {
      { type = "fluid", name = settings.startup["xtreme-fishing-crab_catalyst"].value, amount = 100 },
      { type = "item", name = "raw-" .. fish, amount = 1 }
    },
    results = {
      { type = "item", name = item_result, amount = yield }
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint = data.raw.recipe["plastic-bar"].crafting_machine_tint,
    localised_name = fish .. " " .. item_result,
    localised_description = "Extract all the " .. item_result .. " you can from " .. fish
  }
  return recipe
end

-- three specialized fish and one generic profile
for fish, value in pairs(data.raw.fish) do
  if (data.raw.recipe[fish .. "-lubification"] == nil) then -- check for existing recipe
    if (fish == "crab") then -- crab
      data:extend({
        create_fish_item_recipe(fish, "plastic-bar", settings.startup["xtreme-fishing-crab_plastic"].value)
      })
      table.insert(data.raw.technology["plastics"].effects, { type = "unlock-recipe", recipe = fish .. "-lubification" })
    elseif (fish == "squid") then -- squid
      data:extend({
        create_fish_fluid_recipe(fish, "light-oil", settings.startup["xtreme-fishing-squid_oil"].value)
      })
      table.insert(data.raw.technology["oil-processing"].effects, { type = "unlock-recipe", recipe = fish .. "-lubification" })
    elseif (fish == "pufferfish") then -- pufferfish
      data:extend({
        create_fish_fluid_recipe(fish, "petroleum-gas", settings.startup["xtreme-fishing-puffer_gas"].value)
      })
      table.insert(data.raw.technology["oil-processing"].effects, { type = "unlock-recipe", recipe = fish .. "-lubification" })
    else
      data:extend({
        create_fish_fluid_recipe(fish, "lubricant", settings.startup["xtreme-fishing-fishlube"].value)
      })
      table.insert(data.raw.technology["lubricant"].effects, { type = "unlock-recipe", recipe = fish .. "-lubification" })
    end
  else
    data.raw.recipe[fish .. "-lubification"].icon = "__xtreme-fishing__/graphics/icons/" .. "recipe/fish-lube.png"
    data.raw.recipe[fish .. "-lubification"].icon_size = 64
    data.raw.recipe[fish .. "-lubification"].icon_mipmaps = nil
    data.raw.recipe[fish .. "-lubification"].results = {
      { type = "fluid", name = "lubricant", amount = settings.startup["xtreme-fishing-fishlube"].value }
    }
  end
end