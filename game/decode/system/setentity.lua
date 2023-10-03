SetEntity = {}
function SetEntity:Create(cbox)
end
function SetEntity:FromEntity()
  local Out = self.Out
  local targetEntity = self.Entity
  self.Target = targetEntity
  Out(self)
end
export = SetEntity
SetEntity = nil
