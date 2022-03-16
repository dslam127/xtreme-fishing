-- remove old fish items
function remove_item(name)
  data.raw["item"][name] = nil
  data.raw["recipe"][name] = nil
  data.raw["capsule"][name] = nil
end

remove_item('af-crab')
remove_item('af-tropical')
remove_item('af-squid')
remove_item('af-salmon')