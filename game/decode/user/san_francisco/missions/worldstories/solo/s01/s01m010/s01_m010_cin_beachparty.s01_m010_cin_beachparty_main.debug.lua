export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01_M010_CIN_BeachParty_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main"
  self.Out = DummyFunction
  self.VentilationShaftEscape_CIN_Finish = DummyFunction
  self.VentilationShaftEscape_CIN_Started = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|314461960"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1126410487"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1186427815"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_4 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_4
  l0._graph = self
  l0._name = "box_PlaySequence_v5_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1585345907"
  l0.Started = self.f_box_PlaySequence_v5_4_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_4_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_4_Finished
  self.box_PlaySequence_v5_8 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_8
  l0._graph = self
  l0._name = "box_PlaySequence_v5_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1715076881"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_8_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_8_Finished
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1912962260"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_9 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_9
  l0._graph = self
  l0._name = "box_OnceOnly_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1981874415"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_9_Out
  l0.ResetOut = DummyFunction
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1198775791", "1198775791", "S01_M010_CIN_BeachParty_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|130646946", "130646946", "S01_M010_CIN_BeachParty_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|713410241", "713410241", "S01_M010_CIN_BeachParty_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1243118714"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_OnceOnly_v3_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1773538778", "1773538778", "S01_M010_CIN_BeachParty_Main", "box_OnceOnly_v3_6.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|893672916", "893672916", "S01_M010_CIN_BeachParty_Main", "box_OnceOnly_v3_3.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_8
  l0.SceneEntity = "9223372067778522001"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/s01_m010_outro-fs_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1576050907", "1576050907", "S01_M010_CIN_BeachParty_Main", "box_Ordered_Output_5.Out", "box_PlaySequence_v5_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|999695141", "999695141", "S01_M010_CIN_BeachParty_Main", "box_Ordered_Output_5.Out", "VentilationShaftEscape_CIN Finish", clone, self)
  self:VentilationShaftEscape_CIN_Finish()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|2125824676", "2125824676", "S01_M010_CIN_BeachParty_Main", "box_Ordered_Output_11.Out", "box_OnceOnly_v3_9.In", clone, l0)
  l0:In(1)
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1618719522"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|2081631640", "2081631640", "S01_M010_CIN_BeachParty_Main", "box_Ordered_Output_11.Out", "box_MissionMusicController_10.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_PlaySequence_v5_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1019509775", "1019509775", "S01_M010_CIN_BeachParty_Main", "box_PlaySequence_v5_4.Finished", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_4_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|46425292", "46425292", "S01_M010_CIN_BeachParty_Main", "box_PlaySequence_v5_4.Skipped", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_4_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1486318486", "1486318486", "S01_M010_CIN_BeachParty_Main", "box_PlaySequence_v5_4.Started", "VentilationShaftEscape_CIN Started", l0, self)
  self:VentilationShaftEscape_CIN_Started()
end
function export:f_box_PlaySequence_v5_8_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1355296748"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_PlaySequence_v5_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|768139269", "768139269", "S01_M010_CIN_BeachParty_Main", "box_PlaySequence_v5_8.Finished", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_8_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_PlaySequence_v5_8
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1890514927", "1890514927", "S01_M010_CIN_BeachParty_Main", "box_PlaySequence_v5_8.Skipped", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_4
  l0.SceneEntity = "9223372051267532202"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_VentilationShaftEscape_CIN/s01_ventilationshaftescape_cin.seq"
  l0 = self.box_CinematicPrep_1
  l1 = self.box_PlaySequence_v5_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|1500380925", "1500380925", "S01_M010_CIN_BeachParty_Main", "box_CinematicPrep_1.PreOut", "box_PlaySequence_v5_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372049587983035"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BeachParty-FS_VID/s01_beachparty-fs_vid.seq"
  l0 = self.box_OnceOnly_v3_9
  l1 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BeachParty.domino|@S01_M010_CIN_BeachParty_Main|406848751", "406848751", "S01_M010_CIN_BeachParty_Main", "box_OnceOnly_v3_9.Out", "box_PlaySequence_v5_2.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_6()
end
function export:OnEnter_box_OnceOnly_v3_3()
end
function export:OnEnter_box_OnceOnly_v3_9()
end
function export:Out()
end
function export:VentilationShaftEscape_CIN_Finish()
end
function export:VentilationShaftEscape_CIN_Started()
end
_compilerVersion = 4
