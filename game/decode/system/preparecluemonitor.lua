PrepareClueMonitor = {}
function PrepareClueMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PrepareClueMonitor:Init(cbox)
  self.callidClue = nil
  self.CheckNow = false
end
function PrepareClueMonitor:ShutDown()
  self:UnregisterCallback()
end
function PrepareClueMonitor:UnregisterCallback()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  if self.callidClue ~= nil then
    scriptCallbackSystem:RemoveNoEntityCallback("OnClueDiscovered", self.callidClue)
    self.callidClue = nil
  end
end
function PrepareClueMonitor:Enable()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  self.callidClue = scriptCallbackSystem:RegisterNoEntityCallback("OnClueDiscovered", self, "Event_OnClueDiscovered")
  if self.CheckNow == 1 then
    self:CheckNowFunction()
  end
  self:Enabled()
end
function PrepareClueMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function PrepareClueMonitor:CheckNowFunction()
  if LuaLibCore:VerifyDataInputEntityList(self.ClueList, "ClueList") then
    self.count = 0
    for i, v in ipairs(self.ClueList) do
      if CheckClueState(v) == 1 then
        self.count = self.count + 1
      end
    end
    if self.count == #self.ClueList then
      self:DiscoveredAllClues()
    end
  elseif self.Clue ~= nil and LuaLibCore:VerifyDataInputEntity(self.Clue, "Clue") then
    self.ClueOut = self.Clue
    if CheckClueState(self.Clue) == 1 then
      self:DiscoveredClue()
    else
      self:UndiscoveredClue()
    end
  end
end
function PrepareClueMonitor:Event_OnClueDiscovered(entity)
  if self.Clue == nil and self.ClueList == nil then
    self.ClueOut = entity
    self:DiscoveredClue()
  elseif self.ClueList ~= nil then
    for i, v in ipairs(self.ClueList) do
      if v == entity then
        self.ClueOut = entity
        self:DiscoveredClue()
      end
    end
    self:CheckNowFunction()
  elseif self.Clue == entity then
    self.ClueOut = entity
    self:DiscoveredClue()
  end
end
export = PrepareClueMonitor
PrepareClueMonitor = nil
