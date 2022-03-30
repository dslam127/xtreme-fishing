local yield = settings.startup["xtreme-fishing-yieldpercycle"].value

-- add more fish results to the farm cycle recipe
local mresults = {
  { type = "item", name = "raw-cod", amount_min = 0, amount_max = yield, probability = 0.20 },	
  { type = "item", name = "raw-pufferfish", amount_min = 0, amount_max = yield, probability = 0.15 },
  { type = "item", name = "raw-clownfish", amount_min = 0, amount_max = yield, probability = 0.20 }
}
for _,v in ipairs(mresults) do 
  table.insert(data.raw.recipe["af_fish"].results, v)
end