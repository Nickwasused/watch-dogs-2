export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/Cinematic.Cinematic.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.LayerMain = "S18M020_Main"
  self[11] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = self.f_11_Enabled
  l0.Disabled = self.f_11_Disabled
  l0.TagIsOwned = self.f_11_TagIsOwned
  l0.Has = self.f_11_Has
  l0.HasNOT = self.f_11_HasNOT
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.MessageCompleted = DummyFunction
  self[13] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[13]
  l0._graph = self
  l0.Attached = self.f_13_Attached
  self[3] = cbox:CreateBox("domino/Library/common/Cinematic.Cinematic.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Finished = self.f_3_Finished
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[10]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_10_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[1] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[1]
  l0._graph = self
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[4]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[4]
  l0:Input(0)
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_11_Enabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Parent = "9223372048440014102"
  l0.Child = "9223372048498406863"
  l0:Attach()
end
function export:f_11_Has()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_11_HasNOT()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_11_TagIsOwned()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:HasProgressionTag()
end
function export:f_13_Attached()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Show()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M020.Objectives.Objective010",
    item = "Objective",
    id = "542922"
  }
  l0:ShowNewObjective()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = self.LayerMain
  l0:Load()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372055811005796"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S18/s18_mid_cin.seq"
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:Start()
end
function export:f_10_Hidden()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:End()
end
function export:f_12_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Hide()
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.ProgressionTag = "ProgressionTag.9223372048440014106"
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.MapPoint = "9223372048498406863"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = self.LayerMain
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
