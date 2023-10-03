ProfilingPathController = {}
function ProfilingPathController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ProfilingPathController:Init(cbox)
end
function ProfilingPathController:ShutDown()
end
function ProfilingPathController:ShowPath()
  local Out = self.Out
  local Shown = self.Shown
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    ShowProfilingPath(self.Entity)
  end
  Out(self)
  Shown(self)
end
function ProfilingPathController:HidePath()
  local Out = self.Out
  local Hidden = self.Hidden
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    HideProfilingPath(self.Entity)
  end
  Out(self)
  Hidden(self)
end
export = ProfilingPathController
ProfilingPathController = nil
