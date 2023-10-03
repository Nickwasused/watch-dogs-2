export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/2023657118.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1643593712.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S09M040A_VID_Mosaic02-OS_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main"
  self.EndVideo = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|288208258"
  l0.PreOut = self.f_box_CinematicPrep_2_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|622455985"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_7 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_7
  l0._graph = self
  l0._name = "box_PlaySound_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|762451922"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1094774952"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1565576594"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1955057790"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_3_PostOut
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
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1253337485", "1253337485", "S09M040A_VID_Mosaic02-OS_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372049192219022"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_Mosaic02-OS_VID/s09_mosaic02-os_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|687730755", "687730755", "S09M040A_VID_Mosaic02-OS_Main", "box_Ordered_Output_5.Out", "box_PlaySequence_v5_1.Start", clone, l0)
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
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/1643593712.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|2117489148", "2117489148", "S09M040A_VID_Mosaic02-OS_Main", "box_Ordered_Output_5.Out", "box_PlaySound_v2_6.Play", clone, l0)
  l0:Play()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|100404495"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_CinematicPrep_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1989833262", "1989833262", "S09M040A_VID_Mosaic02-OS_Main", "box_CinematicPrep_2.PreOut", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|834152242"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|752705661", "752705661", "S09M040A_VID_Mosaic02-OS_Main", "box_OnceOnly_v3_4.Out", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|107589059", "107589059", "S09M040A_VID_Mosaic02-OS_Main", "box_Ordered_Output_8.Out", "box_CinematicPrep_3.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_7
  l0.SoundId = "soundbinary/2023657118.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1542617333", "1542617333", "S09M040A_VID_Mosaic02-OS_Main", "box_Ordered_Output_8.Out", "box_PlaySound_v2_7.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1473357146", "1473357146", "S09M040A_VID_Mosaic02-OS_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|258434633", "258434633", "S09M040A_VID_Mosaic02-OS_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040A_VID_Mosaic02-OS.domino|@S09M040A_VID_Mosaic02-OS_Main|1453732852", "1453732852", "S09M040A_VID_Mosaic02-OS_Main", "box_CinematicPrep_3.PostOut", "EndVideo", l0, self)
  self:EndVideo()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:EndVideo()
end
_compilerVersion = 4
