EntityLoadingMonitor = {}
function EntityLoadingMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function EntityLoadingMonitor:Init(cbox)
  self.combinedEntityList = {}
  if self.AutoDisable == nil then
    self.AutoDisable = 0
  end
end
function EntityLoadingMonitor:ShutDown()
  self:UnregisterCallback()
end
function EntityLoadingMonitor:UnregisterCallback()
  self.combinedEntityList = {}
  if self.callidAllLoaded ~= nil then
    CDominoManager_GetInstance():UnregisterEntityListForGameplayReadyCallback(self.callidAllLoaded)
  end
  self.callidAllLoaded = nil
end
function EntityLoadingMonitor:Enable()
  self:UnregisterCallback()
  if self.Entity ~= nil then
    table.insert(self.combinedEntityList, self.Entity)
  end
  if self.EntityList ~= nil then
    for i, v in ipairs(self.EntityList) do
      if self.EntityList[i] ~= nil then
        table.insert(self.combinedEntityList, self.EntityList[i])
      end
    end
  end
  if table.getn(self.combinedEntityList) == 0 then
    LuaLibCore:DataError("Entity / EntityList", "No entities found.")
  else
    local isAllLoaded = false
    if self.AutoDisable == 1 then
      isAllLoaded = true
      for i, v in ipairs(self.combinedEntityList) do
        if v ~= nil and IsEntityValid(v, 1) == 0 then
          isAllLoaded = false
          break
        end
      end
    end
    if self.AutoDisable == 1 and isAllLoaded then
      self:Event_OnAllEntitiesGameplayReady()
    elseif self.callidAllLoaded == nil then
      self.callidAllLoaded = CDominoManager_GetInstance():RegisterEntityListForGameplayReadyCallback(self.combinedEntityList, self, "Event_OnAllEntitiesGameplayReady")
    end
  end
  self:Enabled()
end
function EntityLoadingMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function EntityLoadingMonitor:Event_OnAllEntitiesGameplayReady()
  self:AllLoaded()
  if self.AutoDisable == 1 then
    self:Disable()
  end
end
export = EntityLoadingMonitor
EntityLoadingMonitor = nil
