EntityName = {}
function EntityName:Create(cbox)
end
function EntityName:Init(cbox)
end
function EntityName:ShutDown()
end
function EntityName:Long()
  local Out = self.Out
  if self.Entity ~= nil then
    self.Name = GetEntityName(self.Entity)
  else
    self.Name = "invalid id"
  end
  Out(self)
end
function EntityName:Short()
  local Out = self.Out
  if self.Entity ~= nil then
    local name = GetEntityName(self.Entity)
    local i = 0
    local j = 0
    while true do
      i = string.find(name, "%.", i + 1)
      if i == nil then
        break
      end
      j = i
    end
    if j ~= 0 then
      j = j + 1
    end
    self.Name = string.sub(name, j, -1)
  else
    self.Name = "invalid id"
  end
  Out(self)
end
export = EntityName
EntityName = nil
