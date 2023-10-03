DeadBodyUnspawnController = {}
function DeadBodyUnspawnController:Create(cbox)
end
function DeadBodyUnspawnController:Init(cbox)
end
function DeadBodyUnspawnController:ShutDown()
end
function DeadBodyUnspawnController:AllowUnspawn()
  local Allowed = self.UnspawnAllowed
  local Out = self.Out
  if self.Entity ~= nil then
    SetPersistentWithMissionLayerOnDeath(self.Entity, 1)
    Allowed(self)
    Out(self)
  end
end
function DeadBodyUnspawnController:PreventUnspawn()
  local Prevented = self.UnspawnPrevented
  local Out = self.Out
  if self.Entity ~= nil then
    SetPersistentWithMissionLayerOnDeath(self.Entity, 0)
    Prevented(self)
    Out(self)
  end
end
export = DeadBodyUnspawnController
DeadBodyUnspawnController = nil
