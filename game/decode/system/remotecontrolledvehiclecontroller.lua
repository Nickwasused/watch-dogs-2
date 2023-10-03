RemoteControlledVehicleController = {}
function RemoteControlledVehicleController:Create(cbox)
end
function RemoteControlledVehicleController:Init(cbox)
end
function RemoteControlledVehicleController:ShutDown()
end
function RemoteControlledVehicleController:ForceUserOutOfRC()
  self.UserEntity = self.UserEntity or GetLocalPlayerEntityId()
  if self.UserEntity ~= nil and (self.RCEntity == nil or self.UserEntity == GetRCUser(self.RCEntity)) then
    ForceUserOutOfRC(self.UserEntity)
  end
  self:Out()
  self:UserForcedOutOfRC()
end
function RemoteControlledVehicleController:SetCanExit()
  MakeRCEntityDisconnectAvailable(self.CanExit)
  self:Out()
  self:CanExitChanged()
end
export = RemoteControlledVehicleController
RemoteControlledVehicleController = nil
