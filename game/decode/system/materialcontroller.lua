MaterialController = {}
function MaterialController:Create(cbox)
end
function MaterialController:Init(cbox)
end
function MaterialController:ShutDown()
end
function MaterialController:SetByIndex()
  local ByIndexSet = self.ByIndexSet
  if self.Entity ~= nil then
    SetMaterialOverrideByIdx(self.Entity, self.Index)
  end
  ByIndexSet(self)
end
function MaterialController:ResetByIndex()
  local ByIndexReset = self.ByIndexReset
  if self.Entity ~= nil then
    ResetMaterialOverrideByIdx(self.Entity, self.Index)
  end
  ByIndexReset(self)
end
function MaterialController:SetParameter()
  local ParameterSet = self.ParameterSet
  self.R = self.R or 0
  self.G = self.G or 0
  self.B = self.B or 0
  self.Time = self.Time or 0
  if 0 >= self.Time then
    self.Time = 0.1
  end
  if self.Entity ~= nil then
    ChangeMaterialParameter(self.Entity, self.Index, self.ParameterName, self.R, self.G, self.B, self.Time)
  end
  ParameterSet(self)
end
export = MaterialController
MaterialController = nil
