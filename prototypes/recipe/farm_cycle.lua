-- change the fish farm recipe require less water (always get 1 raw fish and maybe something more)
local recipe = table.deepcopy(data.raw["recipe"]["af_fish"])
local value = settings.startup["xtreme-fishing-waterpercycle"].value
local yield = settings.startup["xtreme-fishing-yieldpercycle"].value
recipe.ingredients = {
  { type="fluid", name = "water", amount = value }
}
recipe.results = {
  { type = "item", name = "raw-fish", amount = yield, probability = 0.30 },	
  { type = "item", name = "raw-salmon", amount = yield, probability = 0.20 },
  { type = "item", name = "raw-tropical", amount = yield, probability = 0.25 },
  { type = "item", name = "raw-crab", amount = yield, probability = 0.15 },
  { type = "item", name = "raw-squid", amount = yield, probability = 0.10 }
}
data:extend({recipe})