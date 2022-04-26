-- different amounts and yields based on mods
if mods["modmashsplinterfishing"] then
  data.raw["int-setting"]["xtreme-fishing-yieldpercycle"].default_value = 40
  data.raw["int-setting"]["xtreme-fishing-waterpercycle"].default_value = 250
elseif mods["SeaTorio"] then
  data.raw["int-setting"]["xtreme-fishing-yieldpercycle"].default_value = 25
  data.raw["int-setting"]["xtreme-fishing-waterpercycle"].default_value = 500
end

-- pipes extend further in krastorio by default
if mods["Krastorio2"] then
  data.raw["int-setting"]["xtreme-fishing-ugpipestart"].default_value = 19
  data.raw["int-setting"]["xtreme-fishing-ugpipeinterval"].default_value = 4
end

-- hide AF settings
data.raw["bool-setting"]["bigger-nuclear-cell-stacks"].hidden = true
data.raw["bool-setting"]["bigger-cargo"].hidden = true

-- disable GreenTec cooked fish if cooked fish is installed
if mods["GreenTec"] and mods["factorio-cooked-fish"] then
  data.raw["bool-setting"]["fried-fish"].default_value = false
end