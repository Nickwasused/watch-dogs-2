StanceControlController = {}
function StanceControlController:Create(cbox)
end
function StanceControlController:Init(cbox)
end
function StanceControlController:ShutDown()
end
function StanceControlController:SetDefaults()
  if self.OasisID == nil then
    param1 = "-1"
  else
    param1 = self.OasisID.id
  end
  if self.Priority == nil then
    self.Priority = "Normal"
  end
  if self.Duration == nil then
    self.Duration = 7
  end
end
function StanceControlController:AddStanceControl()
  local Added = self.Added
  self:SetDefaults()
  AddStanceControlHelper(self.OasisID.id, self.Priority, self.Duration)
  Added(self)
end
function StanceControlController:RemoveAllStanceControl()
  local Removed = self.Removed
  RemoveAllStanceControlHelper()
  Removed(self)
end
export = StanceControlController
StanceControlController = nil
