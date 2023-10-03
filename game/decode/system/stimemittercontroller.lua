StimEmitterState = {}
function StimEmitterState:Create(cbox)
end
function StimEmitterState:Init(cbox)
end
function StimEmitterState:ShutDown()
end
function StimEmitterState:SetEnabled()
  local Out = self.Out
  local Enabled = self.Enabled
  if self.StimEmitter ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.StimEmitter, "CStimsEmitterComponent", "Enable")
    Out(self)
    Enabled(self)
  end
end
function StimEmitterState:SetDisabled()
  local Out = self.Out
  local Disabled = self.Disabled
  if self.StimEmitter ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.StimEmitter, "CStimsEmitterComponent", "Disable")
    Out(self)
    Disabled(self)
  end
end
export = StimEmitterState
StimEmitterState = nil
