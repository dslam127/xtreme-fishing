require("prototypes.entity.fish_farm")
require("prototypes.technology.fish_farm")

require("prototypes.entity.fish")

require("prototypes.recipe.farm_cycle")

-- Pipes from abandoned mod "Plumbing", thank you Adamo!
if settings.startup["xtreme-fishing-enablepipes"].value == true then
  require("prototypes.entity.adamo-pipes")
end

-- check for mods and make additional modifications --

if mods["more-fish"] then
  require("prototypes.mods.more_fish")
end

if mods["factorio-cooked-fish"] then
  require("prototypes.mods.cooked_fish")
end

if mods["Fish_Lube"] then
  require("prototypes.mods.fish_lube")
end

if mods["modmashsplinterfishing"] then
  require("prototypes.mods.modmashsplinterfishing")
end

if mods["Krastorio2"] then
  require("prototypes.mods.Krastorio2")
end

if mods["SeaTorio"] then
  require("prototypes.mods.SeaTorio")
end

if mods["space-exploration"] then
  require("prototypes.mods.space_exploration")
end
