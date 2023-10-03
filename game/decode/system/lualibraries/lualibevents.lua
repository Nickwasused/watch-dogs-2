LuaLibEvents = {}
function LuaLibEvents:GroupRegisterEvent(box, functionCallback, group, eventNameFilter)
  assert(box)
  functionCallback = functionCallback or ""
  eventNameFilter = eventNameFilter or ""
  if group ~= nil and box["callid" .. functionCallback] == nil then
    box["callid" .. functionCallback] = CEntityGroupManager_GetInstance():RegisterScriptEvent(group, eventNameFilter, box, functionCallback)
  end
end
function LuaLibEvents:GroupUnregisterEvent(box, functionCallback, group)
  assert(box)
  functionCallback = functionCallback or ""
  if group ~= nil and box["callid" .. functionCallback] ~= nil then
    CEntityGroupManager_GetInstance():UnregisterScriptEvent(group, box["callid" .. functionCallback])
    box["callid" .. functionCallback] = nil
  end
end
function LuaLibEvents:GroupSendRegisteredEvent(group, object, event)
  local dm = assert(CDominoManager_GetInstance())
  assert(group)
  for _, e in ipairs(GetEntitiesInGroup(group)) do
    dm:SendRegisteredEventToEntity(e, object, event)
  end
end
function LuaLibEvents:RegisterEvent(box, functionCallback, entity, eventNameFilter)
  assert(box)
  functionCallback = functionCallback or ""
  eventNameFilter = eventNameFilter or ""
  if entity ~= nil and box["callid" .. functionCallback] == nil then
    box["callid" .. functionCallback] = CScriptCallbackSystem_GetInstance():RegisterEventCallback(entity, box, functionCallback, eventNameFilter)
  end
end
function LuaLibEvents:UnregisterEvent(box, functionCallback, entity)
  assert(box)
  functionCallback = functionCallback or ""
  if entity ~= nil and box["callid" .. functionCallback] ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(entity, box["callid" .. functionCallback])
    box["callid" .. functionCallback] = nil
  end
end
function LuaLibEvents:RegisterMissionEvent(box, functionCallback, entity, eventNameFilter, missionIdRef)
  assert(box)
  functionCallback = functionCallback or ""
  eventNameFilter = eventNameFilter or ""
  if entity ~= nil and box["callid" .. functionCallback] == nil then
    box["callid" .. functionCallback] = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(entity, box, functionCallback, eventNameFilter, missionIdRef)
  end
end
function LuaLibEvents:UnregisterMissionEvent(box, functionCallback, entity)
  assert(box)
  functionCallback = functionCallback or ""
  if entity ~= nil and box["callid" .. functionCallback] ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(entity, box["callid" .. functionCallback])
    box["callid" .. functionCallback] = nil
  end
end
function LuaLibEvents:RegisterGenericEvent(box, functionCallback, eventNameFilter)
  assert(box)
  assert(functionCallback)
  assert(eventNameFilter)
  if box["callid" .. functionCallback] == nil then
    box["callid" .. functionCallback] = CScriptCallbackSystem_GetInstance():RegisterGenericCallback(box, functionCallback, eventNameFilter)
  end
end
function LuaLibEvents:UnregisterGenericEvent(box, functionCallback, eventNameFilter)
  assert(box)
  assert(functionCallback)
  assert(eventNameFilter)
  if box["callid" .. functionCallback] ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveGenericCallback(eventNameFilter, box["callid" .. functionCallback])
    box["callid" .. functionCallback] = nil
  end
end
function LuaLibEvents:RegisterMessageListener(box, functionCallback, eventNameFilter)
  assert(box)
  assert(functionCallback)
  assert(eventNameFilter)
  if box["callid" .. functionCallback] == nil then
    box["callid" .. functionCallback] = CScriptCallbackSystem_GetInstance():RegisterMessageListener(eventNameFilter, box, functionCallback)
  end
end
function LuaLibEvents:UnregisterMessageListener(box, functionCallback)
  assert(box)
  assert(functionCallback)
  if box["callid" .. functionCallback] ~= nil then
    CScriptCallbackSystem_GetInstance():UnregisterMessageListener(box["callid" .. functionCallback])
    box["callid" .. functionCallback] = nil
  end
end
function LuaLibEvents:RegisterSpawnListener(box, entity, functionCallback)
  assert(box)
  assert(functionCallback)
  assert(eventNameFilter)
  if box["callid" .. functionCallback] == nil then
    box["callid" .. functionCallback] = CScriptCallbackSystem_GetInstance():RegisterOnSpawnCallback(entity, box, functionCallback)
  end
end
function LuaLibEvents:UnregisterSpawnListener(box, entity, functionCallback)
  assert(box)
  assert(functionCallback)
  if box["callid" .. functionCallback] ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(entity, box["callid" .. functionCallback])
    box["callid" .. functionCallback] = nil
  end
end
