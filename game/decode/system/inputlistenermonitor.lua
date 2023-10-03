InputListenerMonitor = {}
function InputListenerMonitor:Create(cbox)
end
function InputListenerMonitor:Init(cbox)
  self.callidRegisterSignal = nil
end
function InputListenerMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function InputListenerMonitor:Enable()
  self._type.UnregisterCallback(self)
  self.Player = self.Player or GetLocalPlayerEntityId()
  self.callidRegisterSignal = CDominoManager_GetInstance():RegisterDominoInputListenerSignal(self.Player, self, "Event_EventReceived", self.Input)
  self:Out()
  self:Enabled()
end
function InputListenerMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Out()
  self:Disabled()
end
function InputListenerMonitor:UnregisterCallback()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.callidRegisterSignal ~= nil then
    CDominoManager_GetInstance():UnregisterDominoInputListenerSignal(self.Player, self.callidRegisterSignal, self.Input)
    self.callidRegisterSignal = nil
  end
end
function InputListenerMonitor:Event_EventReceived(eventSignal, numAxis, XAxisValue, YAxisValue, ZAxisValue)
  if eventSignal == self.Input then
    self:InputReceived()
  end
end
export = InputListenerMonitor
InputListenerMonitor = nil
