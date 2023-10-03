LuaLibCore = {}
function LuaLibCore:GetProjectName()
  local fullStackStr = System:GetCurrentCallstack()
  local regexp = "%(domino%\\user%\\[[%w%s%]*%\\]-([%w%s]+)%.[%w%s]+%.lua"
  _, _, name = string.find(fullStackStr, regexp)
  if name == nil then
    System:Warning("Cannot get Project Name from lua call stack")
  end
  return name
end
function LuaLibCore:ThrowError(box, msg, errorAnchorControl, errorAnchorData)
  assert(box)
  if self:IsPlugged(box, errorAnchorControl) then
    errorAnchorData = msg
    errorAnchorControl(box)
    return true
  else
    System:Warning(msg)
  end
  return false
end
function LuaLibCore:IsPlugged(box, ...)
  assert(box)
  for i = 1, select("#", ...) do
    local arg = select(i, ...)
    if box[arg] ~= DummyFunction then
      return true
    end
  end
  return false
end
function LuaLibCore:AssertNotNil(arg, pinName, msg)
  local boxName = LuaLibCore:GetCurrentBoxName()
  local errMsg = msg or "Param is nil."
  if arg == nil then
    LuaLibCore:ShowErrorMessage(boxName, pinName, errMsg)
    return false
  end
  return true
end
function LuaLibCore:DataError(pinName, msg)
  local boxName = LuaLibCore:GetCurrentBoxName()
  local errMsg = msg or "Data connected is invalid. Ask a DT to provide more info."
  LuaLibCore:ShowErrorMessage(boxName, pinName, errMsg)
end
function LuaLibCore:IsCloUsable(clo)
  local rc = true
  local errMsg
  if clo == nil then
    errMsg = "CLO is nil."
    rc = false
  elseif IsCLOValidForDomino(clo) == 0 then
    if IsEntityValid(clo, 1) == 1 then
      errMsg = "Entity <" .. clo .. "> is not a CLO, must be one."
    else
      errMsg = "CLO <" .. clo .. "> is invalid OR not loaded OR its 'Is Monitored' parameter is not checked."
    end
    rc = false
  end
  return rc, errMsg
end
function LuaLibCore:IsEntityUsable(entity)
  local rc = true
  local errMsg
  if entity == nil then
    errMsg = "Entity is nil."
    rc = false
  elseif IsEntityValid(entity, 0) == 0 then
    if IsCLOValidForDomino(entity) == 1 then
      errMsg = "ID <" .. entity .. "> comes from a CLO, it must be an Entity."
    else
      errMsg = "Entity <" .. entity .. "> is invalid or not loaded."
    end
    rc = false
  end
  return rc, errMsg
end
function LuaLibCore:VerifyDataInputEntity(entity, pinName, isClo)
  local rc, errMsg
  local boxName = LuaLibCore:GetCurrentBoxName()
  local clo = isClo or false
  if type(entity) == "table" then
    LuaLibCore:ShowErrorMessage(boxName, pinName, "PROGRAMMER ERROR:  VerifyDataInputEntity was passed a list instead of an entity.")
    rc = false
  else
    if clo == true then
      rc, errMsg = LuaLibCore:IsCloUsable(entity)
    else
      rc, errMsg = LuaLibCore:IsEntityUsable(entity)
    end
    if not rc then
      LuaLibCore:ShowErrorMessage(boxName, pinName, errMsg)
    end
  end
  return rc
end
function LuaLibCore:VerifyDataInputEntityList(entityList, pinName)
  local rc, errMsg
  local areAllValid = true
  local boxName = LuaLibCore:GetCurrentBoxName()
  if entityList == nil then
    areAllValid = false
  elseif type(entityList) ~= "table" then
    LuaLibCore:ShowErrorMessage(boxName, pinName, "PROGRAMMER ERROR:  VerifyDataInputEntityList was passed a " .. type(entityList) .. " instead of a list.")
    areAllValid = false
  elseif table.getn(entityList) == 0 then
    LuaLibCore:ShowErrorMessage(boxName, pinName, "The size of the list is 0 (zero).")
    areAllValid = false
  else
    for k, v in ipairs(entityList) do
      rc, errMsg = LuaLibCore:IsEntityUsable(v)
      if not rc then
        errMsg = errMsg .. " List index = " .. string.format("%.0f", k) .. "."
        LuaLibCore:ShowErrorMessage(boxName, pinName, errMsg)
        areAllValid = false
      end
    end
  end
  return areAllValid
end
function LuaLibCore:ShowErrorMessage(boxName, pinName, errMsg)
  CDominoManager_GetInstance():TraceError(errMsg .. [[

Box = ]] .. boxName .. [[

Data Anchor = ]] .. pinName .. "\n")
end
function LuaLibCore:GetCurrentBoxName()
  local fullStackStr = System:GetCurrentCallstack()
  local regexp = "domino%\\system%\\([^%\\]+)%.lua line "
  _, _, name = string.find(fullStackStr, regexp)
  if name == nil then
    local regexp = "domino%\\system%\\lists%\\([^%\\]+)%.lua line "
    _, _, name = string.find(fullStackStr, regexp)
  end
  if name == nil then
    name = "<Couldn't get boxName>"
  end
  return name
end
