LuaLibStateless = {}
function LuaLibStateless:Clone(box)
  local clone = {}
  for k, v in pairs(box) do
    clone[k] = v
  end
  return clone, box
end
