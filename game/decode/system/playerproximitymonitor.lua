PlayerProximityMonitor = {}
function PlayerProximityMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PlayerProximityMonitor:Init(cbox)
  self.playerInstanceID = nil
  self.jumperInstanceID = nil
  self.droneInstanceID = nil
end
function PlayerProximityMonitor:ShutDown()
  self:UnregisterCallback(self)
end
function PlayerProximityMonitor:Enable()
  local instance = CScriptCallbackSystem_GetInstance()
  self:UnregisterCallback(self)
  self.PlayerID = GetLocalPlayerEntityId()
  self.playerInRadius = 0
  self.jumperInRadius = 0
  self.droneInRadius = 0
  self.lastSentEnter = -1
  self.lastRCSentEnter = -1
  self.CheckDistance3D = self.CheckDistance3D or 0
  self.CheckNow = self.CheckNow or 0
  self.MonitorConnectedJumper = self.MonitorConnectedJumper or 1
  self.MonitorConnectedDrone = self.MonitorConnectedDrone or 1
  if self.PlayerID ~= nil and LuaLibCore:VerifyDataInputEntity(self.TargetEntity, "TargetEntity") and self.Radius ~= nil then
    self:Enabled()
    self.playerInstanceID = CProximityManager_GetInstance():AddLuaProximityEntry(self.Radius, self.PlayerID, self.TargetEntity, self.CheckDistance3D, self, "Event_PlayerEnterRadius", "Event_PlayerExitRadius", self.CheckNow)
    if self.MonitorConnectedJumper == 1 then
      if self.callidIsJumperConnected == nil then
        self.callidIsJumperConnected = instance:RegisterNoEntityCallback("ToyCarIsConnected", self, "Event_JumperConnected")
      end
      if self.callidIsJumperDisconnected == nil then
        self.callidIsJumperDisconnected = instance:RegisterNoEntityCallback("ToyCarIsDisconnected", self, "Event_JumperDisconnected")
      end
      local toyCarStatus = GetToyCarStatus()
      if toyCarStatus == 2 then
        self:RegisterJumperDetection()
      end
    end
    if self.MonitorConnectedDrone == 1 then
      if self.callidIsDroneConnected == nil then
        self.callidIsDroneConnected = instance:RegisterNoEntityCallback("FlyingDroneIsConnected", self, "Event_DroneConnected")
      end
      if self.callidIsDroneDisconnected == nil then
        self.callidIsDroneDisconnected = instance:RegisterNoEntityCallback("FlyingDroneIsDisconnected", self, "Event_DroneDisconnected")
      end
      local droneStatus = GetFlyingDroneStatus()
      if droneStatus == 2 then
        self:RegisterDroneDetection()
      end
    end
  end
end
function PlayerProximityMonitor:Disable()
  self:UnregisterCallback(self)
  self:Disabled()
end
function PlayerProximityMonitor:UnregisterCallback()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.TargetEntity ~= nil and self.Radius ~= nil then
    if self.playerInstanceID ~= nil and self.PlayerID ~= nil then
      CProximityManager_GetInstance():RemoveProximityEntry(self.playerInstanceID)
      self.playerInstanceID = nil
    end
    if self.jumperInstanceID ~= nil and self.toyCarId ~= nil then
      CProximityManager_GetInstance():RemoveProximityEntry(self.jumperInstanceID)
      self.jumperInstanceID = nil
    end
    if self.droneInstanceID ~= nil and self.droneId ~= nil then
      CProximityManager_GetInstance():RemoveProximityEntry(self.droneInstanceID)
      self.droneInstanceID = nil
    end
  end
  if self.MonitorConnectedJumper == 1 then
    if self.callidIsJumperConnected ~= nil then
      instance:RemoveNoEntityCallback("ToyCarIsConnected", self.callidIsJumperConnected)
      self.callidIsJumperConnected = nil
    end
    if self.callidIsJumperDisconnected ~= nil then
      instance:RemoveNoEntityCallback("ToyCarIsDisconnected", self.callidIsJumperDisconnected)
      self.callidIsJumperDisconnected = nil
    end
  end
  if self.MonitorConnectedDrone == 1 then
    if self.callidIsDroneConnected ~= nil then
      instance:RemoveNoEntityCallback("FlyingDroneIsConnected", self.callidIsDroneConnected)
      self.callidIsDroneConnected = nil
    end
    if self.callidIsDroneDisconnected ~= nil then
      instance:RemoveNoEntityCallback("FlyingDroneIsDisconnected", self.callidIsDroneDisconnected)
      self.callidIsDroneDisconnected = nil
    end
  end
end
function PlayerProximityMonitor:RegisterJumperDetection()
  self.toyCarId = GetToyCarId()
  if self.toyCarId ~= nil and self.TargetEntity ~= nil and self.Radius ~= nil then
    self.jumperInstanceID = CProximityManager_GetInstance():AddLuaProximityEntry(self.Radius, self.toyCarId, self.TargetEntity, self.CheckDistance3D, self, "Event_JumperEnterRadius", "Event_JumperExitRadius", self.CheckNow)
  end
end
function PlayerProximityMonitor:RegisterDroneDetection()
  self.droneId = GetFlyingDroneId()
  if self.droneId ~= nil and self.TargetEntity ~= nil and self.Radius ~= nil then
    self.droneInstanceID = CProximityManager_GetInstance():AddLuaProximityEntry(self.Radius, self.droneId, self.TargetEntity, self.CheckDistance3D, self, "Event_DroneEnterRadius", "Event_DroneExitRadius", self.CheckNow)
  end
end
function PlayerProximityMonitor:UnregisterJumperDetection()
  if self.jumperInstanceID ~= nil and self.toyCarId ~= nil then
    CProximityManager_GetInstance():RemoveProximityEntry(self.jumperInstanceID)
    self.jumperInstanceID = nil
  end
end
function PlayerProximityMonitor:UnregisterDroneDetection()
  if self.droneInstanceID ~= nil and self.droneId ~= nil then
    CProximityManager_GetInstance():RemoveProximityEntry(self.droneInstanceID)
    self.droneInstanceID = nil
  end
end
function PlayerProximityMonitor:Event_JumperConnected()
  self:RegisterJumperDetection()
end
function PlayerProximityMonitor:Event_JumperDisconnected()
  self.jumperInRadius = 0
  self:UnregisterJumperDetection()
  if self.droneInRadius == 0 then
    self:SendRCExitOutput()
  end
  if self.playerInRadius == 0 and self.droneInRadius == 0 then
    self:SendExitOutput()
  end
end
function PlayerProximityMonitor:Event_DroneConnected()
  self:RegisterDroneDetection()
end
function PlayerProximityMonitor:Event_DroneDisconnected()
  self.droneInRadius = 0
  self:UnregisterDroneDetection()
  if self.jumperInRadius == 0 then
    self:SendRCExitOutput()
  end
  if self.playerInRadius == 0 and self.jumperInRadius == 0 then
    self:SendExitOutput()
  end
end
function PlayerProximityMonitor:Event_PlayerEnterRadius()
  self.playerInRadius = 1
  if self.jumperInRadius == 0 and self.droneInRadius == 0 then
    self:SendEnterOutput()
  end
end
function PlayerProximityMonitor:Event_PlayerExitRadius()
  self.playerInRadius = 0
  if self.jumperInRadius == 0 and self.droneInRadius == 0 then
    self:SendExitOutput()
  end
end
function PlayerProximityMonitor:Event_JumperEnterRadius()
  self.jumperInRadius = 1
  self:SendRCEnterOutput()
  if self.playerInRadius == 0 then
    self:SendEnterOutput()
  end
end
function PlayerProximityMonitor:Event_JumperExitRadius()
  self.jumperInRadius = 0
  if self.droneInRadius == 0 then
    self:SendRCExitOutput()
  end
  if self.playerInRadius == 0 and self.droneInRadius == 0 then
    self:SendExitOutput()
  end
end
function PlayerProximityMonitor:Event_DroneEnterRadius()
  self.droneInRadius = 1
  self:SendRCEnterOutput()
  if self.playerInRadius == 0 and self.jumperInRadius == 0 then
    self:SendEnterOutput()
  end
end
function PlayerProximityMonitor:Event_DroneExitRadius()
  self.droneInRadius = 0
  if self.jumperInRadius == 0 then
    self:SendRCExitOutput()
  end
  if self.playerInRadius == 0 and self.jumperInRadius == 0 then
    self:SendExitOutput()
  end
end
function PlayerProximityMonitor:SendEnterOutput()
  if self.lastSentEnter ~= 1 then
    self.lastSentEnter = 1
    self:EnterRadius()
  end
end
function PlayerProximityMonitor:SendExitOutput()
  if self.lastSentEnter ~= 0 then
    self.lastSentEnter = 0
    self:ExitRadius()
  end
end
function PlayerProximityMonitor:SendRCEnterOutput()
  if self.lastRCSentEnter ~= 1 then
    self.lastRCSentEnter = 1
    self:RCEnterRadius()
  end
end
function PlayerProximityMonitor:SendRCExitOutput()
  if self.lastRCSentEnter ~= 0 then
    self.lastRCSentEnter = 0
    self:RCExitRadius()
  end
end
export = PlayerProximityMonitor
PlayerProximityMonitor = nil
