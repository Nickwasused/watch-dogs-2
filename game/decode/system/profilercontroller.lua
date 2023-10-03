ProfilerController = {}
function ProfilerController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ProfilerController:Init(cbox)
end
function ProfilerController:ShutDown()
end
function ProfilerController:SetProfilerOn()
  SetProfilerOn(GetLocalPlayerEntityId(), 1)
  self:ProfilerSetOn()
end
function ProfilerController:SetProfilerOff()
  SetProfilerOn(GetLocalPlayerEntityId(), 0)
  self:ProfilerSetOff()
end
function ProfilerController:DisableProfiler()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.PlayerEntity, "PlayerEntity") then
    SetProfilerDisabled(self.PlayerEntity, 1)
  end
  self:ProfilerDisabled()
end
function ProfilerController:ReenableProfiler()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.PlayerEntity, "PlayerEntity") then
    SetProfilerDisabled(self.PlayerEntity, 0)
  end
  self:ProfilerReenabled()
end
function ProfilerController:DisableAutoActivationInCameras()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.PlayerEntity, "PlayerEntity") then
    SetProfilerAutoActivationInCamerasDisabled(self.PlayerEntity, 1)
  end
  self:AutoActivationInCamerasDisabled()
end
function ProfilerController:ReenableAutoActivationInCameras()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.PlayerEntity, "PlayerEntity") then
    SetProfilerAutoActivationInCamerasDisabled(self.PlayerEntity, 0)
  end
  self:AutoActivationInCamerasReenabled()
end
export = ProfilerController
ProfilerController = nil
