MusicComponentController = {}
function MusicComponentController:Create(cbox)
end
function MusicComponentController:Init(cbox)
end
function MusicComponentController:ShutDown()
end
function MusicComponentController:Play3DSong()
  local Object = self.Object
  if Object ~= nil then
    PlayMusicComponentSong(Object)
  end
  self:Out(self)
end
function MusicComponentController:Stop3DSong()
  local Object = self.Object
  if Object ~= nil then
    StopMusicComponentSong(Object)
  end
  self:Out(self)
end
export = MusicComponentController
MusicComponentController = nil
