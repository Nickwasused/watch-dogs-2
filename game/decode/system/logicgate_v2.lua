Gate = {}
function Gate:Create(cbox)
end
function Gate:Init(cbox)
end
function Gate:ShutDown()
end
function Gate:In()
  if self.initStateOpen == nil then
    self.initStateOpen = 1
  end
  if self.checkOnce == nil then
    self.checkOnce = 1
    self.open = self.initStateOpen
  end
  if self.open == 1 then
    self:Out()
  end
end
function Gate:Open()
  if self.checkOnce == nil then
    self.checkOnce = 1
  end
  self.open = 1
  self:Opened()
end
function Gate:Close()
  if self.checkOnce == nil then
    self.checkOnce = 1
  end
  self.open = 0
  self:Closed()
end
export = Gate
Gate = nil
