export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  self.Out = DummyFunction
  self.Finished = DummyFunction
  self.EntityToDelete = nil
  self.LocalPawn = nil
  self.PlayerVehicle = nil
  self.DistanceToEntity = 0
  self.ListIndex = 0
  self.EntitiesToDelete = {}
  self.bForced = 0
  self.ListLength = 0
  self.EntityToCopy = nil
  self.DeletedEntities = {}
  self.bPlayerDead = 0
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
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_23_Out_0()
  self = self._graph
  self:Out()
end
function export:f_23_Out_1()
  self = self._graph
  self:Finished()
end
function export:Out()
end
function export:Finished()
end
_compilerVersion = 4
