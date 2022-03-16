data:extend({
    {
      type = "recipe",
      name = "lubrification-salmon",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      icon = "__Advanced_Fishing__/graphics/fishes/salmon.png",
      icon_size = 128,
      ingredients = {
        {type = "item", name = "raw-salmon", amount = 1}
      },
      results = {
        { type = "fluid", name = "lubricant", amount = settings.startup["xtreme-fishing-fishlube"].value}
      },
      subgroup = "fluid-recipes",
      crafting_machine_tint = {
        primary = {
          a = 1,
          b = 0.223,
          g = 0.72299999999999995,
          r = 0.26800000000000002
        },
        quaternary = {
          a = 1,
          b = 0.127,
          g = 0.39500000000000002,
          r = 1
        },
        secondary = {
          a = 1,
          b = 0.38600000000000003,
          g = 0.79300000000000006,
          r = 0.43200000000000003
        },
        tertiary = {
          a = 1,
          b = 0.396,
          g = 0.471,
          r = 0.64700000000000006
        }
      }
    },
    {
      type = "recipe",
      name = "lubrification-flounder",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      icon = "__Advanced_Fishing__/graphics/fishes/tropical.png",
      icon_size = 128,
      ingredients = {
        {type = "item", name = "raw-flounder", amount = 1}
      },
      results = {
        { type = "fluid", name = "lubricant", amount = settings.startup["xtreme-fishing-fishlube"].value}
      },
      subgroup = "fluid-recipes",
      crafting_machine_tint = {
        primary = {
          a = 1,
          b = 0.223,
          g = 0.72299999999999995,
          r = 0.26800000000000002
        },
        quaternary = {
          a = 1,
          b = 0.127,
          g = 0.39500000000000002,
          r = 1
        },
        secondary = {
          a = 1,
          b = 0.38600000000000003,
          g = 0.79300000000000006,
          r = 0.43200000000000003
        },
        tertiary = {
          a = 1,
          b = 0.396,
          g = 0.471,
          r = 0.64700000000000006
        }
      }
    },
    {
      type = "recipe",
      name = "lubrification-squid",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      icon = "__Advanced_Fishing__/graphics/fishes/squid.png",
      icon_size = 128,
      ingredients = {
        {type = "item", name = "raw-squid", amount = 1}
      },
      results = {
        { type = "fluid", name = "light-oil", amount = settings.startup["xtreme-fishing-squid_oil"].value}
      },
      subgroup = "fluid-recipes",
      crafting_machine_tint = {
        primary = {
          a = 1,
          b = 0.26100000000000003,
          g = 0.64199999999999999,
          r = 1
        },
        quaternary = {
          a = 1,
          b = 0.271,
          g = 0.49399999999999995,
          r = 1
        },
        secondary = {
          a = 1,
          b = 0.37599999999999998,
          g = 0.72199999999999998,
          r = 1
        },
        tertiary = {
          a = 1,
          b = 0.57599999999999998,
          g = 0.65899999999999999,
          r = 0.85399999999999991
        }
      }  
    },
    {
      type = "recipe",
      name = "lubrification-crab",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      icon = "__Advanced_Fishing__/graphics/fishes/crab.png",
      icon_size = 128,
      ingredients = {
        {type = "item", name = "raw-crab", amount = 2},
        {type = "fluid", name = "lubricant", amount = 100}
      },
      results = {
        { type = "item", name = "plastic-bar", amount = settings.startup["xtreme-fishing-crab_plastic"].value}
      },
      subgroup = "fluid-recipes",
      crafting_machine_tint = {
        primary = {
          a = 1,
          b = 1,
          g = 1,
          r = 1
        },
        quaternary = {
          a = 1,
          b = 0,
          g = 0,
          r = 0
        },
        secondary = {
          a = 1,
          b = 0.771,
          g = 0.771,
          r = 0.771
        },
        tertiary = {
          a = 1,
          b = 0.76200000000000001,
          g = 0.66500000000000004,
          r = 0.76799999999999997
        }
      } 
    }
})

table.insert(data.raw["technology"]["lubricant"].effects, {type = "unlock-recipe", recipe = "lubrification-salmon"})
table.insert(data.raw["technology"]["lubricant"].effects, {type = "unlock-recipe", recipe = "lubrification-flounder"})
table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "lubrification-squid"})
table.insert(data.raw["technology"]["plastics"].effects, {type = "unlock-recipe", recipe = "lubrification-crab"})

-- change the exorbant amount to only 10 lubricant from fish
local recipe = table.deepcopy(data.raw["recipe"]["fish-lubification"])
recipe.results = {{ type = "fluid", name = "lubricant", amount = 10 }}
data:extend({recipe})
 

-- had to separate these due to game crash without more-fish mod
if mods["more-fish"] then
  data:extend({
    {
      type = "recipe",
      name = "lubrification-cod",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      icon = "__more-fish__/graphics/icons/Raw_Cod_JE4_BE2.png",
      icon_size = 160,
      ingredients = {
        {type = "item", name = "raw-cod", amount = 1}
      },
      results = {
        { type = "fluid", name = "lubricant", amount = settings.startup["xtreme-fishing-fishlube"].value }
      },
      subgroup = "fluid-recipes",
      crafting_machine_tint = {
        primary = {
          a = 1,
          b = 0.223,
          g = 0.72299999999999995,
          r = 0.26800000000000002
        },
        quaternary = {
          a = 1,
          b = 0.127,
          g = 0.39500000000000002,
          r = 1
        },
        secondary = {
          a = 1,
          b = 0.38600000000000003,
          g = 0.79300000000000006,
          r = 0.43200000000000003
        },
        tertiary = {
          a = 1,
          b = 0.396,
          g = 0.471,
          r = 0.64700000000000006
        }
      }
    },
    {
      type = "recipe",
      name = "lubrification-clownfish",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      icon = "__more-fish__/graphics/icons/Tropical_Fish_JE2_BE2.png",
      icon_size = 160,
      ingredients = {
        { type = "item", name = "raw-clownfish", amount = 1 }
      },
      results = {
        { type = "fluid", name = "lubricant", amount = settings.startup["xtreme-fishing-fishlube"].value }
      },
      subgroup = "fluid-recipes",
      crafting_machine_tint = {
        primary = {
          a = 1,
          b = 0.223,
          g = 0.72299999999999995,
          r = 0.26800000000000002
        },
        quaternary = {
          a = 1,
          b = 0.127,
          g = 0.39500000000000002,
          r = 1
        },
        secondary = {
          a = 1,
          b = 0.38600000000000003,
          g = 0.79300000000000006,
          r = 0.43200000000000003
        },
        tertiary = {
          a = 1,
          b = 0.396,
          g = 0.471,
          r = 0.64700000000000006
        }
      }
    },
    {
      type = "recipe",
      name = "lubrification-pufferfish",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      icon = "__more-fish__/graphics/icons/Pufferfish_(item)_JE5_BE2.png",
      icon_size = 160,
      ingredients = {
        { type = "item", name = "raw-pufferfish", amount = 1 }
      },
      results = {
        { type = "fluid", name = "petroleum-gas", amount = settings.startup["xtreme-fishing-puffer_gas"].value }
      },
      subgroup = "fluid-recipes",
      crafting_machine_tint = {
        primary = {
          a = 1,
          b = 0.78000000000000007,
          g = 0.596,
          r = 0.76400000000000006
        },
        quaternary = {
          a = 1,
          b = 0.29,
          g = 0.73399999999999999,
          r = 1
        },
        secondary = {
          a = 1,
          b = 0.84399999999999995,
          g = 0.55100000000000007,
          r = 0.76200000000000001
        },
        tertiary = {
          a = 1,
          b = 0.596,
          g = 0.77300000000000004,
          r = 0.89499999999999993
        }
      }
    },
  })

  table.insert(data.raw["technology"]["lubricant"].effects, {type = "unlock-recipe", recipe = "lubrification-cod"})
  table.insert(data.raw["technology"]["lubricant"].effects, {type = "unlock-recipe", recipe = "lubrification-clownfish"})
  table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "lubrification-pufferfish"})
end