OnceOnly = {}
function OnceOnly:Create(cbox)
end
function OnceOnly:Init(cbox)
  self.used = nil
end
function OnceOnly:ShutDown()
end
function OnceOnly:In(index)
  if self.used == nil then
    self.used = 1
    self:Out()
  end
end
function OnceOnly:Reset()
  self.used = nil
  self:ResetOut()
end
export = OnceOnly
OnceOnly = nil
