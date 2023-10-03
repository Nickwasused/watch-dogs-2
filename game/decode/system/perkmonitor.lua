PerkMonitor = {}
function PerkMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PerkMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidPerkAdded = nil
  self.Player = nil
end
function PerkMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PerkMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidPerkAdded ~= nil then
    instance:RemoveCallback(GetLocalPlayerEntityId(), self.callidPerkAdded)
    self.callidPerkAdded = nil
    self.Player = nil
  end
end
function PerkMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidPerkAdded == nil then
    self.callidPerkAdded = instance:RegisterMissionEventCallback(GetLocalPlayerEntityId(), self, "Event_OnPerkAdded", "OnPerkAddedToPlayer", self.missionId)
  end
  self:Enabled()
end
function PerkMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function PerkMonitor:HasPerk()
  if LuaLibCore:AssertNotNil(self.PerkDB, "PerkDB") then
    if GetPlayerHasPerkWithDbObj(self.PerkDB) == 1 then
      self:Has()
    else
      self:HasNot()
    end
  end
end
function PerkMonitor:Event_OnPerkAdded(event)
  if self.PerkDB ~= nil and GetPlayerHasPerkWithDbObj(self.PerkDB) == 1 then
    self:PerkUnlocked()
    self._type.UnregisterCallback(self)
  end
  self:NewPerkUnlocked()
end
export = PerkMonitor
PerkMonitor = nil
