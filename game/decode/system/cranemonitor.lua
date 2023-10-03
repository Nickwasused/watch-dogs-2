CraneMonitor = {}
function CraneMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function CraneMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidCraneRopeBroken = nil
  self.IsPlayerOnPlatform = nil
end
function CraneMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function CraneMonitor:Enable()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    local isBroken = IsCraneRopeBroken(self.Entity)
    self.IsPlayerOnPlatform = IsPawnOnCranePlatform(self.Entity, GetLocalPlayerEntityId())
    if isBroken == 1 then
      self:RopeBroken()
    else
      self:RopeIntact()
      if self.callidCraneRopeBroken == nil then
        instance = CScriptCallbackSystem_GetInstance()
        self.callidCraneRopeBroken = instance:RegisterMissionEventCallback(self.Entity, self, "Event_CraneRopeBreached", "dominoCraneRopeBreached", self.missionId)
      end
    end
  end
  self:Out()
  self:Enabled()
end
function CraneMonitor:Disable()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    self._type.UnregisterCallback(self)
  end
  self:Out()
  self:Disabled()
end
function CraneMonitor:CheckRopeState()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    self.IsPlayerOnPlatform = IsPawnOnCranePlatform(self.Entity, GetLocalPlayerEntityId())
    local isBroken = IsCraneRopeBroken(self.Entity)
    if isBroken == 1 then
      self:RopeBroken()
    else
      self:RopeIntact()
    end
  end
  self:Out()
end
function CraneMonitor:UnregisterCallback()
  if self.Entity ~= nil and self.callidCraneRopeBroken ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Entity, self.callidCraneRopeBroken)
    self.callidCraneRopeBroken = nil
  end
end
function CraneMonitor:Event_CraneRopeBreached(event)
  self._type.UnregisterCallback(self)
  self.IsPlayerOnPlatform = IsPawnOnCranePlatform(self.Entity, GetLocalPlayerEntityId())
  self:RopeBroken()
end
export = CraneMonitor
CraneMonitor = nil
