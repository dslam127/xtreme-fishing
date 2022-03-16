-- more realistic crafting requirements
-- removed fluid requirement (fills with water via pipes after construction)
local recipe = table.deepcopy(data.raw["recipe"]["af_fish_farm"])
recipe.category = "crafting"
recipe.ingredients = {
  { type = "item", name = "wood", amount = 75 },                -- wood for netting (wood->fiber->rope->fishing net)
  { type = "item", name = "pipe", amount = 20 },                -- pipes for water movement
  { type = "item", name = "iron-gear-wheel", amount = 50 },     -- gears to move the net
  { type = "item", name = "electronic-circuit", amount = 10 },  -- electronics control the machine
  { type = "item", name = "concrete", amount = 100 },           -- concrete to line the sides like a pool
}
data:extend({recipe})