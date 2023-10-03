export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkMonitor.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[21] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_21_Out
  l0.ResetOut = DummyFunction
  self[3] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_3_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[1]
  l0._graph = self
  l0.NewBeatStarted = self.f_1_NewBeatStarted
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[18] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[18]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[14] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = self.f_14_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_14_EnterRadius
  l0.ExitRadius = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[20]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_20_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.MessageCompleted = DummyFunction
  self[25] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.TagIsOwned = self.f_25_TagIsOwned
  l0.Has = self.f_25_Has
  l0.HasNOT = self.f_25_HasNOT
  self[7] = cbox:CreateBox("domino/System/PerkMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.Has = DummyFunction
  l0.HasNot = self.f_7_HasNot
  l0.NewPerkUnlocked = DummyFunction
  l0.PerkUnlocked = DummyFunction
  self[15] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[19] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_19_EnterRadius
  l0.ExitRadius = self.f_19_ExitRadius
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[4]
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
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_4()
  l0 = self[4]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:StartNewBeat()
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346279"
  l0:StartCommunication()
end
function export:f_1_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[1]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[16]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M020.Objectives.Objective010",
    item = "Objective",
    id = "354135"
  }
  l0:ShowNewObjective()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.MapPoint = "9223372047225920191"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0:Hide()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372070876763795"
  l0.Radius = 50
  l0.CheckNow = 1
  l0:Enable()
end
function export:f_14_Enabled()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:HasProgressionTag()
end
function export:f_14_EnterRadius()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(0)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_20_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_25_Has()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_25_HasNOT()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Enable()
end
function export:f_25_TagIsOwned()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Disable()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:In(0)
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:End()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:HideNotification()
end
function export:f_7_HasNot()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Display()
end
function export:f_19_EnterRadius()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:HasPerk()
end
function export:f_19_ExitRadius()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372046887583453"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372047225920191"
  l0.Radius = 14
  l0.CheckDistance3D = 1
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.ProgressionTag = "ProgressionTag.9223372049350067672"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_RCEnvSkillCheck",
    item = "Description",
    id = "693271"
  }
  l0.Duration = -1
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372048421346281"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
