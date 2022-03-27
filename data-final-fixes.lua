-- fix pipes not showing up with Krastorio 2
if mods["Krastorio2"] then
  if settings.startup["xtreme-fishing-enablepipes"].value == true  then
    table.insert(data.raw.technology["kr-basic-fluid-handling"].effects, { type = "unlock-recipe", recipe = "stone-pipe" })
    table.insert(data.raw.technology["kr-basic-fluid-handling"].effects, { type = "unlock-recipe", recipe = "stone-pipe-to-ground" })
    table.insert(data.raw.technology["kr-basic-fluid-handling"].effects, { type = "unlock-recipe", recipe = "copper-pipe" })
    table.insert(data.raw.technology["kr-basic-fluid-handling"].effects, { type = "unlock-recipe", recipe = "copper-pipe-to-ground" })
    table.insert(data.raw.technology["concrete"].effects, { type = "unlock-recipe", recipe = "concrete-pipe" })
    table.insert(data.raw.technology["concrete"].effects, { type = "unlock-recipe", recipe = "concrete-pipe-to-ground" })
  end
end
