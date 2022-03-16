-- change the fish farm recipe require less water (always get 1 raw fish and maybe something more)
local recipe = table.deepcopy(data.raw["recipe"]["af_fish"])
recipe.ingredients = {
  { type="fluid", name = "water", amount = settings.startup["xtreme-fishing-waterpercycle"].value }
}
recipe.results = {
  { type = "item", name = "raw-fish", amount = 1, probability = 0.30 },	
  { type = "item", name = "raw-salmon", amount = 1, probability = 0.20 },
  { type = "item", name = "raw-flounder", amount = 1, probability = 0.25 },
  { type = "item", name = "raw-crab", amount = 1, probability = 0.15 },
  { type = "item", name = "raw-squid", amount = 1, probability = 0.10 }
}
data:extend({recipe})