local sounds = require ("__base__.prototypes.entity.sounds")

-- rename fish to coincide with more-fishes
local crab = table.deepcopy(data.raw["capsule"]["af-crab"])
crab.name = "raw-crab"
crab.icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-crab.png"
crab.icon_mipmaps = 4
crab.icon_size = 64
local tropical = table.deepcopy(data.raw["capsule"]["af-tropical"])
tropical.name = "raw-tropical"
tropical.icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-tropical.png"
tropical.icon_mipmaps = 4
tropical.icon_size = 64
local squid = table.deepcopy(data.raw["capsule"]["af-squid"])
squid.name = "raw-squid"
squid.icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-squid.png"
squid.icon_mipmaps = 4
squid.icon_size = 64
local salmon = table.deepcopy(data.raw["capsule"]["af-salmon"])
salmon.name = "raw-salmon"
salmon.icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-salmon.png"
salmon.icon_mipmaps = 4
salmon.icon_size = 64

data:extend({
  crab,
  tropical,
  squid,
  {
    type = "fish",
    name = "crab",
    icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-crab.png",
    icon_size = 64,
    icon_mipmaps = 4,
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
    name = "tropical",
    icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-tropical.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    minable = {mining_time = 0.4, result = "raw-tropical", count = 5},
    mined_sound = sounds.mine_fish,
    max_health = 20,
    subgroup = "creatures",
    order = "b-a-tropical",
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
      order = "x-tropical",
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
    icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-squid.png",
    icon_size = 64,
    icon_mipmaps = 4,
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
  },
  --------------- jellyfish ---------------
  {
    type = "capsule",
    name = "raw-jellyfish",
    icon = "__xtreme-fishing__/graphics/icons/" .. "fish/jellyfish.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "raw-resource",
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = 80}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      }
    },
    order = "h[raw-fish][jellyfish]",
    stack_size = 100
  },
  {
    type = "fish",
    name = "jellyfish",
    icon = "__xtreme-fishing__/graphics/icons/" .. "fish/jellyfish.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    minable = {mining_time = 0.4, result = "raw-jellyfish", count = 5},
    mined_sound = sounds.mine_fish,
    max_health = 20,
    subgroup = "creatures",
    order = "b-a-jellyfish",
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
      icon = "__xtreme-fishing__/graphics/icons/" .. "fish/af-salmon.png",
      icon_size = 64,
      icon_mipmaps = 4,
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