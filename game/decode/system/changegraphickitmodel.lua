ChangeGraphicKitModelBox = {}
function ChangeGraphicKitModelBox:Create(cbox)
end
function ChangeGraphicKitModelBox:Init(cbox)
end
function ChangeGraphicKitModelBox:ShutDown()
end
function ChangeGraphicKitModelBox:Change()
  local Out = self.Out
  local Changed = self.Changed
  local Failed = self.Failed
  self.ChosenModel = ""
  if self.Collection == nil then
    self.Collection = ""
  end
  if self.Model == nil then
    self.Model = ""
  end
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    self.ChosenModel = ChangeGraphicKitModel(self.Entity, self.Collection, self.Model)
    if self.ChosenModel ~= "" then
      Changed(self)
    else
      Failed(self)
    end
  end
  Out(self)
end
export = ChangeGraphicKitModelBox
ChangeGraphicKitModelBox = nil
