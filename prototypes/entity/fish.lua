local sounds = require ("__base__.prototypes.entity.sounds")

-- rename fish to coincide with more-fishes
local crab = table.deepcopy(data.raw["capsule"]["af-crab"])
crab.name = "raw-crab"
local flounder = table.deepcopy(data.raw["capsule"]["af-tropical"])
flounder.name = "raw-flounder"
local squid = table.deepcopy(data.raw["capsule"]["af-squid"])
squid.name = "raw-squid"
local salmon = table.deepcopy(data.raw["capsule"]["af-salmon"])
salmon.name = "raw-salmon"

data:extend({
  crab,
  flounder,
  squid,
  {
    type = "fish",
    name = "crab",
    icon = "__Advanced_Fishing__/graphics/fishes/crab.png",
    icon_size = 128,
    flags = {"placeable-neutral", "not-on-map"},
    minable = {mining_time = 0.4, result = "raw-crab", count = 5},
    mined_sound = sounds.mine_fish,
    max_health = 20,
    subgroup = "creatures",
    order = "b-a-crab",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
    pictures =
    {
      {
        filename = "__base__/graphics/entity/fish/fish-1.png",
        priority = "extra-high",
        width = 22,
        height = 36
      },
      {
        filename = "__base__/graphics/entity/fish/fish-2.png",
        priority = "extra-high",
        width = 32,
        height = 32
      }
    },
    autoplace =
    {
      order = "x-crab",
      tile_restriction = { 
        "water-shallow",
        "water",
        "water-green",
        "water-mud"
      },
      peaks =
      {
        {
          influence = 0.01,
          min_influence = 0,
          water_optimal = 0.624,
          water_range = 0.124,
          water_max_range = 0.124,
        }
      }
    }
  },
  {
    type = "fish",
    name = "flounder",
    icon = "__Advanced_Fishing__/graphics/fishes/tropical.png",
    icon_size = 128,
    flags = {"placeable-neutral", "not-on-map"},
    minable = {mining_time = 0.4, result = "raw-flounder", count = 5},
    mined_sound = sounds.mine_fish,
    max_health = 20,
    subgroup = "creatures",
    order = "b-a-flounder",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
    pictures =
    {
      {
        filename = "__base__/graphics/entity/fish/fish-1.png",
        priority = "extra-high",
        width = 22,
        height = 36
      },
      {
        filename = "__base__/graphics/entity/fish/fish-2.png",
        priority = "extra-high",
        width = 32,
        height = 32
      }
    },
    autoplace =
    {
      order = "x-flounder",
      peaks =
      {
        {
          influence = 0.01,
          min_influence = 0,
          water_optimal = 0.624,
          water_range = 0.124,
          water_max_range = 0.124,
        }
      }
    }
  },
  {
    type = "fish",
    name = "squid",
    icon = "__Advanced_Fishing__/graphics/fishes/squid.png",
    icon_size = 128,
    flags = {"placeable-neutral", "not-on-map"},
    minable = {mining_time = 0.4, result = "raw-squid", count = 5},
    mined_sound = sounds.mine_fish,
    max_health = 20,
    subgroup = "creatures",
    order = "b-a-squid",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
    pictures =
    {
      {
        filename = "__base__/graphics/entity/fish/fish-1.png",
        priority = "extra-high",
        width = 22,
        height = 36
      },
      {
        filename = "__base__/graphics/entity/fish/fish-2.png",
        priority = "extra-high",
        width = 32,
        height = 32
      }
    },
    autoplace =
    {
      order = "x-squid",
      tile_restriction = { 
        "deepwater",
        "deepwater-green"
      },
      peaks =
      {
        {
          influence = 0.01,
          min_influence = 0,
          water_optimal = 0.624,
          water_range = 0.124,
          water_max_range = 0.124,
        }
      }
    }
  }
})

if not mods["more-fish"] then
  data:extend({
    salmon,
    {
      type = "fish",
      name = "salmon",
      icon = "__Advanced_Fishing__/graphics/fishes/salmon.png",
      icon_size = 128,
      flags = {"placeable-neutral", "not-on-map"},
      minable = {mining_time = 0.4, result = "raw-salmon", count = 5},
      mined_sound = sounds.mine_fish,
      max_health = 20,
      subgroup = "creatures",
      order = "b-a-crab",
      collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
      selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
      pictures =
      {
        {
          filename = "__base__/graphics/entity/fish/fish-1.png",
          priority = "extra-high",
          width = 22,
          height = 36
        },
        {
          filename = "__base__/graphics/entity/fish/fish-2.png",
          priority = "extra-high",
          width = 32,
          height = 32
        }
      },
      autoplace =
      {
        order = "x-salmon",
        peaks =
        {
          {
            influence = 0.01,
            min_influence = 0,
            water_optimal = 0.624,
            water_range = 0.124,
            water_max_range = 0.124,
          }
        }
      }
    }
  })
end