ToyCarController = {}
function ToyCarController:Create(cbox)
end
function ToyCarController:Init(cbox)
end
function ToyCarController:ShutDown()
  self:MakeAvailable()
end
function ToyCarController:CallBack()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  CallBackToyCar(self.PlayerPawn)
  self:CalledBack()
end
function ToyCarController:MakeAvailable()
  SetToyCarAvailable(1)
  self:Available()
end
function ToyCarController:MakeUnavailable()
  SetToyCarAvailable(0)
  self:Unavailable()
end
function ToyCarController:MakeCallBackAvailable()
  MakeRCEntityCallBackAvailable(1)
  self:CallBackAvailable()
end
function ToyCarController:MakeCallBackUnavailable()
  MakeRCEntityCallBackAvailable(0)
  self:CallBackUnavailable()
end
function ToyCarController:MakeDisconnectAvailable()
  MakeRCEntityDisconnectAvailable(1)
  self:DisconnectAvailable()
end
function ToyCarController:MakeDisconnectUnavailable()
  MakeRCEntityDisconnectAvailable(0)
  self:DisconnectUnavailable()
end
function ToyCarController:Connect()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  ConnectToToyCar(self.PlayerPawn)
  self:Connected()
end
function ToyCarController:Disconnect()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  DisconnectFromToyCar(self.PlayerPawn)
  self:Disconnected()
end
function ToyCarController:MakeConnectAvailable()
  SetToyCarCannotDeploy(0)
  self:ConnectAvailable()
end
function ToyCarController:MakeConnectUnavailable()
  SetToyCarCannotDeploy(1)
  self:ConnectUnavailable()
end
function ToyCarController:Destroy()
  self.PlayerPawn = self.PlayerPawn or GetLocalPlayerEntityId()
  ForceDestroyToycar(self.PlayerPawn)
  self:Destroyed()
end
function ToyCarController:DestroyUncontrolledRC()
  ForceDestroyRCEntity(self.RCEntity)
  self:DestroyedUncontrolledRC()
end
export = ToyCarController
ToyCarController = nil
