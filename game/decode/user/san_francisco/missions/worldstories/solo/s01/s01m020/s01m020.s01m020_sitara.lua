export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.Entity_Sitara = nil
  self.Sitara_S01M010 = nil
  self.Entity_Horatio = nil
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
  self[1] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[1]
  l0._graph = self
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = self.f_1_AutomaticCLOUnspawned
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self[1]
  l0.CLO = "9223372047464636836"
  l0:UnspawnAutomaticCLO()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.Sitara_S01M010 = l0.UserID
  self:Out()
end
function export:f_1_AutomaticCLOUnspawned()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = "9223372062859881706"
  l0:Activate()
end
function export:Out()
end
_compilerVersion = 4
