export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v2.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[7] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_7_Unloaded
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Shown = self.f_10_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_13_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_11_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[3] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_3_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_6_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Shown = self.f_12_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_14_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_4_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_8_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
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
  l0 = self[2]
  l0.LayerName = "Test_S13M10_Main"
  l0:Load()
end
function export:f_7_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.9223372046425794692"
  l0._graph = self
  l0.Out = DummyFunction
  l0:TerminateMission()
end
function export:f_10_Shown()
  local l0
  self = self._graph
  l0 = self[3]
  l0.InteractionScriptEntity = "9223372046566095242"
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_13_MessageRequested()
  local l0
  self = self._graph
  l0 = self[14]
  l0.MapPoint = "9223372046566095248"
  l0:Hide()
end
function export:f_11_Hidden()
  local l0
  self = self._graph
  l0 = self[12]
  l0.MapPoint = "9223372046566095248"
  l0:Show()
end
function export:f_3_InteractionFinished()
  local l0
  self = self._graph
  l0 = self[11]
  l0.MapPoint = "9223372046566095246"
  l0:Hide()
end
function export:f_6_MessageRequested()
  local l0
  self = self._graph
  l0 = self[8]
  l0.InteractionScriptEntity = "9223372046566095244"
  l0:Enable()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0.MissionName = "MissionList.9223372046425794692"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0:ShowNewObjective()
end
function export:f_12_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046566095036"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.TextSet = DummyFunction
  l0:Disable()
end
function export:f_14_Hidden()
  local l0
  self = self._graph
  l0 = self[7]
  l0.LayerName = "Test_S13M10_Main"
  l0:Unload()
end
function export:f_4_MessageRequested()
  local l0
  self = self._graph
  l0 = self[10]
  l0.MapPoint = "9223372046566095246"
  l0:Show()
end
function export:f_8_InteractionFinished()
  local l0
  self = self._graph
  l0 = self[13]
  l0.MissionName = "MissionList.9223372046425794692"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Upload",
    id = "203690"
  }
  l0:ShowMissionComplete()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = self[6]
  l0.MissionName = "MissionList.9223372046425794692"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Upload",
    id = "203690"
  }
  l0:ShowNewObjective()
end
_compilerVersion = 4
