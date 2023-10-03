StopMetaSequence = {}
function StopMetaSequence:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function StopMetaSequence:Stop()
  local out = self.Out
  if LuaLibCore:AssertNotNil(self.ID, "ID") then
    GetSequenceManager():StopMetaSequence(self.ID)
  end
  out(self)
end
export = StopMetaSequence
StopMetaSequence = nil
