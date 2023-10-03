LightController = {}
function LightController:Create(cbox)
end
function LightController:Init(cbox)
end
function LightController:ShutDown()
end
function LightController:Enable()
  local Enabled = self.Enabled
  local Out = self.Out
  SetEnableLight(self.LightEntity, 1)
  Out(self)
  Enabled(self)
end
function LightController:Disable()
  local Disabled = self.Disabled
  local Out = self.Out
  SetEnableLight(self.LightEntity, 0)
  Out(self)
  Disabled(self)
end
function LightController:Set()
  local IsSet = self.IsSet
  local Out = self.Out
  if self.SetEnabled ~= nil then
    SetEnableLight(self.LightEntity, self.SetEnabled)
  end
  Out(self)
  IsSet(self)
end
function LightController:Toggle()
  local Toggled = self.Toggled
  local Out = self.Out
  if GetEnableLight(self.LightEntity) == 1 then
    SetEnableLight(self.LightEntity, 0)
  else
    SetEnableLight(self.LightEntity, 1)
  end
  Out(self)
  Toggled(self)
end
export = LightController
LightController = nil
