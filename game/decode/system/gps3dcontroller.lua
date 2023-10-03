GPS3DController = {}
function GPS3DController:Create(cbox)
end
function GPS3DController:Init(cbox)
end
function GPS3DController:ShutDown()
end
function GPS3DController:Enable()
  local Enabled = self.Enabled
  self.Player = self.Player or GetLocalPlayerId()
  if self.Target ~= nil then
    SetGPS3DTarget(self.Player, self.Target)
  end
  if self.Path ~= nil then
    if self.PathType == "Race" then
      AddOrRemoveRacePath(self.Player, self.Path, 1)
    elseif self.PathType == "Custom" then
      AddOrRemoveCustomPath(self.Player, self.Path, 1)
    else
      AddOrRemoveAdditionalPath(self.Player, self.Path, 1)
    end
  end
  Enabled(self)
end
function GPS3DController:Disable()
  local Disabled = self.Disabled
  self.Player = self.Player or GetLocalPlayerId()
  if self.Target ~= nil then
    ClearGPS3DTarget(self.Player)
  end
  if self.Path ~= nil then
    if self.PathType == "Race" then
      AddOrRemoveRacePath(self.Player, self.Path, 0)
    elseif self.PathType == "Custom" then
      AddOrRemoveCustomPath(self.Player, self.Path, 0)
    else
      AddOrRemoveAdditionalPath(self.Player, self.Path, 0)
    end
  end
  Disabled(self)
end
function GPS3DController:AddTarget()
  local TargetAdded = self.TargetAdded
  self.Player = self.Player or GetLocalPlayerId()
  if self.Target ~= nil and self.Index ~= nil then
    AddTarget(self.Player, self.Target, self.Index)
  end
  TargetAdded(self)
end
function GPS3DController:RemoveTarget()
  local TargetRemoved = self.TargetRemoved
  self.Player = self.Player or GetLocalPlayerId()
  if self.Target ~= nil then
    RemoveTarget(self.Player, self.Target)
  end
  TargetRemoved(self)
end
export = GPS3DController
GPS3DController = nil
