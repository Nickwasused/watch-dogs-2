FlyingDroneController = {}
function FlyingDroneController:Create(cbox)
end
function FlyingDroneController:Init(cbox)
end
function FlyingDroneController:ShutDown()
  self:MakeConnectAvailable()
end
function FlyingDroneController:CallBack()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  CallBackFlyingDrone(self.PlayerPawn)
  self:CalledBack()
end
function FlyingDroneController:MakeAvailable()
  SetFlyingDroneAvailable(1)
  self:Available()
end
function FlyingDroneController:MakeUnavailable()
  SetFlyingDroneAvailable(0)
  self:Unavailable()
end
function FlyingDroneController:MakeCallBackAvailable()
  MakeRCEntityCallBackAvailable(1)
  self:CallBackAvailable()
end
function FlyingDroneController:MakeCallBackUnavailable()
  MakeRCEntityCallBackAvailable(0)
  self:CallBackUnavailable()
end
function FlyingDroneController:MakeDisconnectAvailable()
  MakeRCEntityDisconnectAvailable(1)
  self:DisconnectAvailable()
end
function FlyingDroneController:MakeDisconnectUnavailable()
  MakeRCEntityDisconnectAvailable(0)
  self:DisconnectUnavailable()
end
function FlyingDroneController:Connect()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  ConnectToFlyingDrone(self.PlayerPawn)
  self:Connected()
end
function FlyingDroneController:Disconnect()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  DisconnectFromFlyingDrone(self.PlayerPawn)
  self:Disconnected()
end
function FlyingDroneController:MakeConnectAvailable()
  SetFlyingDroneCannotDeploy(0)
  self:ConnectAvailable()
end
function FlyingDroneController:MakeConnectUnavailable()
  SetFlyingDroneCannotDeploy(1)
  self:ConnectUnavailable()
end
function FlyingDroneController:Destroy()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  ForceDestroyFlyingDrone(self.PlayerPawn)
  self:Destroyed()
end
export = FlyingDroneController
FlyingDroneController = nil
