-- change the fish farm recipe require less water (always get 1 raw fish and maybe something more)
local recipe = data.raw.recipe["af_fish"]
local value = settings.startup["xtreme-fishing-waterpercycle"].value
local yield = settings.startup["xtreme-fishing-yieldpercycle"].value
recipe.energy_required = 60
recipe.ingredients = {
  { type="fluid", name = "water", amount = value }
}
recipe.results = {
  { type = "item", name = "raw-fish", amount_min = 0, amount_max = yield, probability = 0.30 },	
  { type = "item", name = "raw-salmon", amount_min = 0, amount_max = yield, probability = 0.20 },
  { type = "item", name = "raw-tropical", amount_min = 0, amount_max = yield, probability = 0.25 },
  { type = "item", name = "raw-crab", amount_min = 0, amount_max = yield, probability = 0.15 },
  { type = "item", name = "raw-squid", amount_min = 0, amount_max = yield, probability = 0.10 }
}