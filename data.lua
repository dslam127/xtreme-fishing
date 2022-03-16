require("prototypes.entity.fish_farm")

require("prototypes.entity.fish")

require("prototypes.recipe.farm_cycle")

if mods["more-fish"] then
  require("prototypes.mods.more_fish")
end

if mods["factorio-cooked-fish"] then
  require("prototypes.mods.cooked_fish")
end

if mods["Fish_Lube"] then
  require("prototypes.mods.fish_lube")
end

-- Pipes from abandoned mod "Plumbing", thank you Adamo!
require("prototypes.entity.adamo-pipes")