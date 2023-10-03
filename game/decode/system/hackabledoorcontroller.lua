HackableDoorController = {}
function HackableDoorController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function HackableDoorController:Init(cbox)
  self.isDisabled = false
end
function HackableDoorController:ShutDown()
  if self.IsDisabled then
    SendSimpleEntityEvent(self.Entity, "EnableActionNodesByScript")
    self.isDisabled = false
  end
end
function HackableDoorController:EnableAiAccess()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.combinedHackableList) do
      SendSimpleEntityEvent(v, "EnableActionNodesByScript")
      self.isDisabled = false
    end
  end
  self:AiAccessEnabled()
end
function HackableDoorController:DisableAiAccess()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.combinedHackableList) do
      SendSimpleEntityEvent(v, "DisableActionNodesByScript")
      self.isDisabled = true
    end
  end
  self:AiAccessDisabled()
end
function HackableDoorController:VerifyAndCombineData()
  self.combinedHackableList = {}
  if self.EntityList ~= nil then
    if LuaLibCore:VerifyDataInputEntityList(self.EntityList, "EntityList") then
      for i, v in ipairs(self.EntityList) do
        table.insert(self.combinedHackableList, self.EntityList[i])
      end
    else
      return false
    end
  end
  if self.Entity ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
      table.insert(self.combinedHackableList, self.Entity)
    else
      return false
    end
  end
  return true
end
export = HackableDoorController
HackableDoorController = nil
