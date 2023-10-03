CinemaZoneState = {}
function CinemaZoneState:Create(cbox)
  self.NotRemovableEntity = {}
end
function CinemaZoneState:Init(cbox)
end
function CinemaZoneState:ShutDown()
end
function CinemaZoneState:CleanZone()
  if self.TargetZone ~= nil then
    local lastIndex = self._DynamicAnchors.NotRemovableEntity - 1
    ClearCinemaZoneNotRemovableEntityList(self.TargetZone)
    for i = 0, lastIndex do
      if self.NotRemovableEntity[i] ~= nil then
        RegisterCinemaZoneNotRemovableEntity(self.TargetZone, self.NotRemovableEntity[i])
      end
    end
    self.RemoveBreakable = self.RemoveBreakable or 1
    self.RemoveCharacter = self.RemoveCharacter or 0
    self.RemoveVehicle = self.RemoveVehicle or 1
    self.RemoveWeapon = self.RemoveWeapon or 1
    self.RemoveDeadBody = self.RemoveDeadBody or 1
    self.RemoveRigidPhysObject = self.RemoveRigidPhysObject or 0
    self.StopDialog = self.StopDialog or 1
    self.SceneEntity = self.SceneEntity or "0"
    SendCinemaZoneCleanupEvent(self.TargetZone, self.SceneEntity, self.RemoveBreakable, self.RemoveCharacter, self.RemoveVehicle, self.RemoveWeapon, self.RemoveDeadBody, self.RemoveRigidPhysObject, self.StopDialog)
  end
  self:Out()
end
export = CinemaZoneState
CinemaZoneState = nil
