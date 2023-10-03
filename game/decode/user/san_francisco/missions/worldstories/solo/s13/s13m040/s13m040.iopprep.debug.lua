export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3381059633.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3035919121.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4257003710.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1619773489.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3203099314.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOPPrep"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep"
  self.Out = DummyFunction
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|92692976"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|93890292"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_20 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_20
  l0._graph = self
  l0._name = "box_PlaySound_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|157039051"
  l0.Out = self.f_box_PlaySound_v2_20_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Network_Surfing_Controller_6 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_6
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|311923418"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_6_Deactivated
  self.box_Timer_v2_17 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|358070906"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|389036045"
  l0.PreOut = self.f_box_CinematicPrep_5_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|476952844"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_16 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_16
  l0._graph = self
  l0._name = "box_PlaySound_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|613546910"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Player_PostFX_Controller_11 = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_11
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|665741259"
  l0.Played = DummyFunction
  l0.Stopped = DummyFunction
  self.box_Network_Surfing_Controller_26 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_26
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1025542323"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_26_Deactivated
  self.box_Player_PostFX_Controller_22 = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_22
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1092658471"
  l0.Played = DummyFunction
  l0.Stopped = DummyFunction
  self.box_PlaySound_v2_14 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_14
  l0._graph = self
  l0._name = "box_PlaySound_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1623090125"
  l0.Out = self.f_box_PlaySound_v2_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_9 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_9
  l0._graph = self
  l0._name = "box_PlaySound_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1867741465"
  l0.Out = self.f_box_PlaySound_v2_9_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_10 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_10
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1935404863"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_10_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_10_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_PlaySound_v2_8 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_8
  l0._graph = self
  l0._name = "box_PlaySound_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|2146368961"
  l0.Out = self.f_box_PlaySound_v2_8_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PostIOP()
  local l0
  l0 = self.box_PlaySound_v2_14
  l0.SoundId = "soundbinary/3035919121.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|2103919745", "2103919745", "IOPPrep", "PostIOP", "box_PlaySound_v2_14.Play", self, l0)
  l0:Play()
end
function export:PreIOP()
  local l0
  l0 = self.box_PlaySound_v2_8
  l0.SoundId = "soundbinary/3381059633.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|792577311", "792577311", "IOPPrep", "PreIOP", "box_PlaySound_v2_8.Play", self, l0)
  l0:Play()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_20
  l0.SoundId = "soundbinary/4257003710.bnk"
  l0 = self.box_Timer_v2_12
  l1 = self.box_PlaySound_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1490619512", "1490619512", "IOPPrep", "box_Timer_v2_12.TimeElapsed", "box_PlaySound_v2_20.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_9
  l0.SoundId = "soundbinary/3203099314.bnk"
  l0 = self.box_PlaySound_v2_20
  l1 = self.box_PlaySound_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1075429224", "1075429224", "IOPPrep", "box_PlaySound_v2_20.Out", "box_PlaySound_v2_9.Play", l0, l1)
  l1:Play()
end
function export:f_box_Network_Surfing_Controller_6_Deactivated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372059535128794"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = nil
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0._name = "box_BinkVideoPlayer_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1304111505"
  l0.Started = self.f_box_BinkVideoPlayer_v3_1_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0 = self.box_Network_Surfing_Controller_6
  l1 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1779398411", "1779398411", "IOPPrep", "box_Network_Surfing_Controller_6.Deactivated", "box_BinkVideoPlayer_v3_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1318031698"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_4_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_Timer_v2_17
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1273197973", "1273197973", "IOPPrep", "box_Timer_v2_17.TimeElapsed", "box_SetActionMap_v2_4.Push", l0, l1)
  l1:Push()
end
function export:f_box_CinematicPrep_5_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372059535128795"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = nil
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0._name = "box_BinkVideoPlayer_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|521170276"
  l0.Started = self.f_box_BinkVideoPlayer_v3_2_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_box_BinkVideoPlayer_v3_2_Finished
  l0 = self.box_CinematicPrep_5
  l1 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1192910606", "1192910606", "IOPPrep", "box_CinematicPrep_5.PreOut", "box_BinkVideoPlayer_v3_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_BinkVideoPlayer_v3_2_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_16
  l0.SoundId = "soundbinary/4257003710.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|335868859", "335868859", "IOPPrep", "box_BinkVideoPlayer_v3_2.Finished", "box_PlaySound_v2_16.Play", clone, l0)
  l0:Play()
end
function export:f_box_BinkVideoPlayer_v3_2_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1751404427"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|96114762", "96114762", "IOPPrep", "box_BinkVideoPlayer_v3_2.Started", "box_Ordered_Output_15.In", clone, l0)
  l0:In()
end
function export:f_box_Network_Surfing_Controller_26_Deactivated()
  local l0
  self = self._graph
  l0 = self.box_Network_Surfing_Controller_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|270736187", "270736187", "IOPPrep", "box_Network_Surfing_Controller_26.Deactivated", "Out", l0, self)
  self:Out()
end
function export:f_box_Show_Or_Hide_All_UI_24_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1555489532"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1522013196", "1522013196", "IOPPrep", "box_Show_Or_Hide_All_UI_24.Hidden", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_BinkVideoPlayer_v3_1_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1917136119"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|2135453129", "2135453129", "IOPPrep", "box_BinkVideoPlayer_v3_1.Started", "box_Ordered_Output_19.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_4_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|462077652", "462077652", "IOPPrep", "box_SetActionMap_v2_4.Pushed", "box_SecurityCamController_7.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_Show_Or_Hide_All_UI_25_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1495874817", "1495874817", "IOPPrep", "box_Show_Or_Hide_All_UI_25.Shown", "box_Network_Surfing_Controller_26.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Player_PostFX_Controller_11
  l0.SequenceName = "blackscreen_loop_nofade"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|2089413078", "2089413078", "IOPPrep", "box_Ordered_Output_13.Out", "box_Player_PostFX_Controller_11.StartPostFX", clone, l0)
  l0:StartPostFX()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|936926471", "936926471", "IOPPrep", "box_Ordered_Output_13.Out", "box_Network_Surfing_Controller_6.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Player_PostFX_Controller_22
  l0.SequenceName = "blackscreen_loop_nofade"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1215053575", "1215053575", "IOPPrep", "box_Ordered_Output_23.Out", "box_Player_PostFX_Controller_22.StopPostFX", clone, l0)
  l0:StopPostFX()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1381406034"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_25_Shown
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1811415933", "1811415933", "IOPPrep", "box_Ordered_Output_23.Out", "box_Show_Or_Hide_All_UI_25.Show", clone, l0)
  l0:Show()
end
function export:f_box_SetActionMap_v2_3_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|2142363205", "2142363205", "IOPPrep", "box_SetActionMap_v2_3.Popped", "Out", clone, self)
  self:Out()
end
function export:f_box_PlaySound_v2_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1160642876"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_24_Hidden
  l0 = self.box_PlaySound_v2_14
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|135899613", "135899613", "IOPPrep", "box_PlaySound_v2_14.Out", "box_Show_Or_Hide_All_UI_24.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1610966068"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_3_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|92942377", "92942377", "IOPPrep", "box_Ordered_Output_15.Out", "box_SetActionMap_v2_3.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_18
  l0.SoundId = "soundbinary/1619773489.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1337154078", "1337154078", "IOPPrep", "box_Ordered_Output_15.Out", "box_PlaySound_v2_18.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1566425466"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_PlaySound_v2_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|689497799", "689497799", "IOPPrep", "box_PlaySound_v2_9.Out", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|959336437", "959336437", "IOPPrep", "box_Ordered_Output_19.Out", "box_Timer_v2_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_21
  l0.SoundId = "soundbinary/1619773489.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1790025379", "1790025379", "IOPPrep", "box_Ordered_Output_19.Out", "box_PlaySound_v2_21.Play", clone, l0)
  l0:Play()
end
function export:f_box_Security_Camera_Monitor_10_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l0.Seconds = 1
  l0 = self.box_Security_Camera_Monitor_10
  l1 = self.box_Timer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1212664927", "1212664927", "IOPPrep", "box_Security_Camera_Monitor_10.Disabled", "box_Timer_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_10_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_10()
  l0 = self.box_Security_Camera_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1071369290", "1071369290", "IOPPrep", "box_Security_Camera_Monitor_10.OnEndAccessCamera", "box_Security_Camera_Monitor_10.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SecurityCamController_7_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_7()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|324765193", "324765193", "IOPPrep", "box_SecurityCamController_7.CanExitSet", "box_SecurityCamController_7.SetInitialTarget", clone, l0)
  l0:SetInitialTarget()
end
function export:f_box_SecurityCamController_7_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_10()
  l0 = self.box_Security_Camera_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|534051161", "534051161", "IOPPrep", "box_SecurityCamController_7.EnterForced", "box_Security_Camera_Monitor_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SecurityCamController_7_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_7()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1263359007", "1263359007", "IOPPrep", "box_SecurityCamController_7.InitialTargetSet", "box_SecurityCamController_7.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_PlaySound_v2_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySound_v2_8
  l1 = self.box_CinematicPrep_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|1946806611", "1946806611", "IOPPrep", "box_PlaySound_v2_8.Out", "box_CinematicPrep_5.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:OnEnter_box_Security_Camera_Monitor_10()
  local l0
  l0 = self.box_Security_Camera_Monitor_10
  l0.CameraEntity = self.Camera
end
function export:OnEnter_box_SecurityCamController_7()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = self.Target
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@IOPPrep|2007648800"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_7_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_7_EnterForced
  l0.InitialTargetSet = self.f_box_SecurityCamController_7_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
