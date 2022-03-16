-- rename fish to coincide with more-fishes
local crab = table.deepcopy(data.raw["capsule"]["af-crab"])
crab.name = "raw-crab"
local flounder = table.deepcopy(data.raw["capsule"]["af-tropical"])
flounder.name = "raw-flounder"
local squid = table.deepcopy(data.raw["capsule"]["af-squid"])
squid.name = "raw-squid"
local salmon = table.deepcopy(data.raw["capsule"]["af-salmon"])
salmon.name = "raw-salmon"

data:extend({
  crab,
  flounder,
  squid
})

if not mods["more-fish"] then
  data:extend({salmon})
end