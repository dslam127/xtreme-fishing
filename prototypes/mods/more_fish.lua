-- add more fish results to the farm cycle recipe
local mresults = {
  {type = "item", name = "raw-cod", amount = 1, probability=0.20},	
  {type = "item", name = "raw-pufferfish", amount = 1, probability=0.15},
  {type = "item", name = "raw-clownfish", amount = 1, probability=0.20}
}
for _,v in ipairs(mresults) do 
  table.insert(data.raw.recipe["af_fish"].results, v)
end