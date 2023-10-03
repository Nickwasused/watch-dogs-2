LuaLibAI = {}
function LuaLibAI:GetAffiliationID(affiliation, defaultAffiliation)
  if affiliation == "SFPD" then
    return 1
  elseif affiliation == "CorruptCop" then
    return 2
  elseif affiliation == "OPD" then
    return 3
  elseif affiliation == "AFI" then
    return 4
  elseif affiliation == "P_8" then
    return 5
  elseif affiliation == "Emergency" then
    return 8
  elseif affiliation == "T_13" then
    return 9
  elseif affiliation == "Boys" then
    return 11
  elseif affiliation == "Ridaz" then
    return 12
  elseif affiliation == "UZulu" then
    return 13
  elseif affiliation == "Bratva" then
    return 14
  elseif affiliation == "Wolves" then
    return 17
  end
  local default = defaultAffiliation or 1
  return default
end
