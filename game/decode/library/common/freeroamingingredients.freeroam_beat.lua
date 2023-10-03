export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LayerMonitor.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self.NewBeatStarted = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[4] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/LayerMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_5_Loaded
  l0.Unloaded = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:FromCheckpoint()
  local l0
  l0 = self[2]
  l0:Input(1)
end
function export:StartNewBeat()
  local l0
  l0 = self[4]
  l0.CheckpointList = self.Checkpoint
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_3_Out_1()
  self = self._graph
  self:NewBeatStarted()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.ProgressionLayer = self.ProgressionLayer
end
function export:NewBeatStarted()
end
_compilerVersion = 4
