local math = require("__flib__.math")

-- add roe and fishfood to ingredient list, values vary based on water setting
local value = settings.startup["xtreme-fishing-waterpercycle"].value

data.raw["recipe"]["af_fish"].ingredients = {
  { type = "fluid", name = "water", amount = value },
	{ type = "item", name = "roe", amount = math.round(value / 25)},
	{ type = "item", name = "fishfood", amount = math.round(value / 2.5)}
}
