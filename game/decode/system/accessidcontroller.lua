AccessIdController = {}
function AccessIdController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function AccessIdController:Init(cbox)
end
function AccessIdController:ShutDown()
end
function AccessIdController:BlockAccessId()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if LuaLibCore:AssertNotNil(self.AccessId, "AccessId") then
    BlockAccessId(self.Player, self.AccessId)
  end
  self:AddedDisabledAccessId()
end
function AccessIdController:UnblockAccessId()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if LuaLibCore:AssertNotNil(self.AccessId, "AccessId") then
    UnblockAccessId(self.Player, self.AccessId)
  end
  self:RemovedDisabledAccessId()
end
function AccessIdController:HasAccessId()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if LuaLibCore:AssertNotNil(self.AccessId, "AccessId") then
    if HasAccessId(self.Player, self.AccessId) ~= 0 then
      self:Has()
    else
      self:HasNOT()
    end
  end
end
export = AccessIdController
AccessIdController = nil
