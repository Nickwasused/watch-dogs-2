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
  self._name = "S09M060-VID_Mosaic04-OS_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main"
  self.EndVideo = DummyFunction
  self.VideoStarted = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|182301518"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1057660504"
  l0.PreOut = self.f_box_CinematicPrep_2_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_1 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1070795183"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1153069498"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1290603040"
  l0.Started = self.f_box_PlaySequence_v5_3_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_3_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|455113618", "455113618", "S09M060-VID_Mosaic04-OS_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1621109036"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_CinematicPrep_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1845260512", "1845260512", "S09M060-VID_Mosaic04-OS_Main", "box_CinematicPrep_2.PreOut", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|2147420058"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0 = self.box_OnceOnly_v3_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|252533836", "252533836", "S09M060-VID_Mosaic04-OS_Main", "box_OnceOnly_v3_5.Out", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1967516358", "1967516358", "S09M060-VID_Mosaic04-OS_Main", "box_PlaySequence_v5_3.Finished", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|326346875", "326346875", "S09M060-VID_Mosaic04-OS_Main", "box_PlaySequence_v5_3.Skipped", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_3_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|525716983", "525716983", "S09M060-VID_Mosaic04-OS_Main", "box_PlaySequence_v5_3.Started", "VideoStarted", l0, self)
  self:VideoStarted()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372049192219229"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_Mosaic04-OS_VID/s09_mosaic04-os_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|1909969159", "1909969159", "S09M060-VID_Mosaic04-OS_Main", "box_Ordered_Output_4.Out", "box_PlaySequence_v5_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/1643593712.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|750255942", "750255942", "S09M060-VID_Mosaic04-OS_Main", "box_Ordered_Output_4.Out", "box_PlaySound_v2_6.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|770464339", "770464339", "S09M060-VID_Mosaic04-OS_Main", "box_Ordered_Output_7.Out", "EndVideo", clone, self)
  self:EndVideo()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_1
  l0.SoundId = "soundbinary/2023657118.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060-VID_Mosaic04-OS.domino|@S09M060-VID_Mosaic04-OS_Main|126903267", "126903267", "S09M060-VID_Mosaic04-OS_Main", "box_Ordered_Output_7.Out", "box_PlaySound_v2_1.Play", clone, l0)
  l0:Play()
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:EndVideo()
end
function export:VideoStarted()
end
_compilerVersion = 4
