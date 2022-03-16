data:extend({
  {
    type = "recipe",
    name = "cooked-crab",
    category = "smelting",
    energy_required = 16,
    enabled = true,
    ingredients = {
      { "raw-crab", 1 }
    },
    result = "cooked-fish"
  },
  {
    type = "recipe",
    name = "cooked-flounder",
    category = "smelting",
    energy_required = 16,
    enabled = true,
    ingredients = {
      { "raw-flounder", 1 }
    },
    result = "cooked-fish"
  },
  {
    type = "recipe",
    name = "cooked-squid",
    category = "smelting",
    energy_required = 8,
    enabled = true,
    ingredients = {
      { "raw-squid", 1 }
    },
    result = "cooked-fish"
  }
})
-- salmon is already part of cooked-fish mod

if mods["more-fish"] then
  data:extend({
    {
      type = "recipe",
      name = "cooked-pufferfish",
      category = "smelting",
      energy_required = 4,
      enabled = true,
      ingredients = {
        { "raw-pufferfish", 1 }
      },
      result = settings.startup["xtreme-fishing-puffer_type"].value,
      result_count = settings.startup["xtreme-fishing-puffer_yield"].value
    },
    {
      type = "recipe",
      name = "cooked-clownfish",
      category = "smelting",
      energy_required = 16,
      enabled = true,
      ingredients = {
        { "raw-clownfish", 1 }
      },
      result = "cooked-fish"
    }
  })
end

