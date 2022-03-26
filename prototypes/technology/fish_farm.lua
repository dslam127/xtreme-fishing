-- remove chemical science requirement (add this as a setting in the future?)
local index = 0
if data.raw.technology["af_fish_farm"].unit.ingredients ~= nil then
  for i,ingredient in ipairs(data.raw.technology["af_fish_farm"].unit.ingredients) do
    if ingredient[1] == "chemical-science-pack" then
      index = i
    end
  end
end
if index ~= 0 then
  table.remove(data.raw.technology["af_fish_farm"].unit.ingredients, index)
end
