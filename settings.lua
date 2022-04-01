data:extend({
  {
    type = "bool-setting",
    name = "xtreme-fishing-enablepipes",
    setting_type = "startup",
    default_value = true,
    order = "a[pipes]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-ugpipestart",
    setting_type = "startup",
    default_value = 11,
    minimum_value = 1,
    maximum_value = 101,
    order = "a[pipes-start]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-ugpipeinterval",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 0,
    maximum_value = 16,
    order = "a[pipes-interval]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-waterpercycle",
    setting_type = "startup",
    default_value = 250,
    minimum_value = 50,
    maximum_value = 500,
    order = "ab[farm-water]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-yieldpercycle",
    setting_type = "startup",
    default_value = 40,
    minimum_value = 1,
    maximum_value = 100,
    order = "ab[farm-yield]",
  },
  {
    type = "string-setting",
    name = "xtreme-fishing-puffer_type",
    setting_type = "startup",
    hidden = true,
    default_value = "coal",
    allow_blank = false,
    auto_trim = true,
    order = "ac[puffer-type]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-puffer_yield",
    setting_type = "startup",
    hidden = true,
    default_value = 6,
    minimum_value = 1,
    maximum_value = 100,
    order = "ac[puffer-yield]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-squid_oil",
    setting_type = "startup",
    hidden = true,
    default_value = 10,
    minimum_value = 5,
    maximum_value = 100,
    order = "ad[fishlube-squid]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-puffer_gas",
    setting_type = "startup",
    hidden = true,
    default_value = 10,
    minimum_value = 5,
    maximum_value = 100,
    order = "ad[fishlube-puffer]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-crab_plastic",
    setting_type = "startup",
    hidden = true,
    default_value = 2,
    minimum_value = 1,
    maximum_value = 10,
    order = "ad[fishlube-crabplastic]",
  },
  {
    type = "int-setting",
    name = "xtreme-fishing-fishlube",
    setting_type = "startup",
    hidden = true,
    default_value = 10,
    minimum_value = 5,
    maximum_value = 100,
    order = "ad[fishlube]",
  },
  {
    type = "string-setting",
    name = "xtreme-fishing-crab_catalyst",
    setting_type = "startup",
    hidden = true,
    default_value = "lubricant",
    allowed_values = { "lubricant", "petroleum-gas", "steam", "sulfuric-acid" },
    order = "ad[fishlube-crabcatalyst]",
  }
})

-- pufferfish settings (cooked fish)
if mods["factorio-cooked-fish"] then
  data.raw["string-setting"]["xtreme-fishing-puffer_type"].hidden = false
  data.raw["int-setting"]["xtreme-fishing-puffer_yield"].hidden = false
end

-- fish lube settings
if mods["Fish_Lube"] then
  data.raw["int-setting"]["xtreme-fishing-squid_oil"].hidden = false
  data.raw["int-setting"]["xtreme-fishing-puffer_gas"].hidden = false
  data.raw["int-setting"]["xtreme-fishing-crab_plastic"].hidden = false
  data.raw["int-setting"]["xtreme-fishing-fishlube"].hidden = false
  data.raw["int-setting"]["xtreme-fishing-fishlube"].hidden = false
  data.raw["string-setting"]["xtreme-fishing-crab_catalyst"].hidden = false
end