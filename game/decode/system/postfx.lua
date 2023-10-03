PostFx = {}
function PostFx:Create(cbox)
end
function PostFx:Init(cbox)
end
function PostFx:ShutDown()
end
function PostFx:Enable()
  local Out = self.Out
  local Enabled = self.Enabled
  if self.PostFxName ~= nil then
    EnablePostFx(self.PostFxName)
    Out(self)
    Enabled(self)
  end
end
function PostFx:Disable()
  local Out = self.Out
  local Disabled = self.Disabled
  if self.PostFxName ~= nil then
    DisablePostFx(self.PostFxName)
    Out(self)
    Disabled(self)
  end
end
export = PostFx
PostFx = nil
