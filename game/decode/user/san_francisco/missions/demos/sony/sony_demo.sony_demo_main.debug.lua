export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RemoveLoadingScreen.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:LoadResource("soundbinary/3423363972.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1175536646.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3314628716.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Sony_Demo_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main"
  self.PlayerEntity = nil
  self.box_PlaySound_v2_14 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_14
  l0._graph = self
  l0._name = "box_PlaySound_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|230022669"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_12 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_12
  l0._graph = self
  l0._name = "box_PlaySound_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|541865064"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1209478072"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_3_PostOut
  self.box_Teleport_To_SpawnPoint_4 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_4
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1496558696"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_4_TeleportDone
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1803182215"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RemoveLoadingScreenBox_8 = cbox:CreateBox("domino/System/RemoveLoadingScreen.lua")
  l0 = self.box_RemoveLoadingScreenBox_8
  l0._graph = self
  l0._name = "box_RemoveLoadingScreenBox_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1832293471"
  l0.Out = self.f_box_RemoveLoadingScreenBox_8_Out
  l0.LoadingScreenAlreadyRemoved = DummyFunction
  l0.LoadingScreenRemoved = DummyFunction
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|2058067278"
  l0.PreOut = self.f_box_CinematicPrep_5_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionController_v4_11 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_11
  l0._graph = self
  l0._name = "box_MissionController_v4_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|2098590962"
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1056276851", "1056276851", "Sony_Demo_Main", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_Show_Or_Hide_All_UI_9_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = "/fullscreen/Logo_Ubi_Dedsec.bik"
  l0.VideoDbObject = nil
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
  l0._name = "box_BinkVideoPlayer_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1655952483"
  l0.Started = self.f_box_BinkVideoPlayer_v3_7_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_box_BinkVideoPlayer_v3_7_Finished
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1787039299", "1787039299", "Sony_Demo_Main", "box_Show_Or_Hide_All_UI_9.Hidden", "box_BinkVideoPlayer_v3_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Show_Or_Hide_All_UI_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_14
  l0.SoundId = "soundbinary/3423363972.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1585486558", "1585486558", "Sony_Demo_Main", "box_Show_Or_Hide_All_UI_9.Out", "box_PlaySound_v2_14.Play", clone, l0)
  l0:Play()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 18
  l0.Minute = 45
  l0._graph = self
  l0._name = "box_SetTimeOfDay_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|2076626349"
  l0.Out = self.f_box_SetTimeOfDay_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|38831410", "38831410", "Sony_Demo_Main", "box_Get_Player_ID_1.Out", "box_SetTimeOfDay_2.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1632097026"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_10_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1371849011", "1371849011", "Sony_Demo_Main", "box_CinematicPrep_3.PostOut", "box_Show_Or_Hide_All_UI_10.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_13_Out_0()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1142210600", "1142210600", "Sony_Demo_Main", "box_Ordered_Output_13.Out", "box_CinematicPrep_3.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_12
  l0.SoundId = "soundbinary/1175536646.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|213910632", "213910632", "Sony_Demo_Main", "box_Ordered_Output_13.Out", "box_PlaySound_v2_12.Play", clone, l0)
  l0:Play()
end
function export:f_box_Teleport_To_SpawnPoint_4_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_RemoveLoadingScreenBox_8
  l0.SkipPostFx = 1
  l0 = self.box_Teleport_To_SpawnPoint_4
  l1 = self.box_RemoveLoadingScreenBox_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1934441250", "1934441250", "Sony_Demo_Main", "box_Teleport_To_SpawnPoint_4.TeleportDone", "box_RemoveLoadingScreenBox_8.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_10_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|313535888", "313535888", "Sony_Demo_Main", "box_Show_Or_Hide_All_UI_10.Shown", "box_MissionController_v4_11.Succeed", clone, l0)
  l0:Succeed()
end
function export:f_box_BinkVideoPlayer_v3_7_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1493582491"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1911225020", "1911225020", "Sony_Demo_Main", "box_BinkVideoPlayer_v3_7.Finished", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_BinkVideoPlayer_v3_7_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/3314628716.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1447331122", "1447331122", "Sony_Demo_Main", "box_BinkVideoPlayer_v3_7.Started", "box_PlaySound_v2_6.Play", clone, l0)
  l0:Play()
end
function export:f_box_RemoveLoadingScreenBox_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|534595190"
  l0.Out = self.f_box_Show_Or_Hide_All_UI_9_Out
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_9_Hidden
  l0 = self.box_RemoveLoadingScreenBox_8
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|506231458", "506231458", "Sony_Demo_Main", "box_RemoveLoadingScreenBox_8.Out", "box_Show_Or_Hide_All_UI_9.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CinematicPrep_5_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_4
  l0.SpawnPoint = "9223372050796888034"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_CinematicPrep_5
  l1 = self.box_Teleport_To_SpawnPoint_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1208568362", "1208568362", "Sony_Demo_Main", "box_CinematicPrep_5.PreOut", "box_Teleport_To_SpawnPoint_4.In", l0, l1)
  l1:In()
end
function export:f_box_SetTimeOfDay_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Main|1831708033", "1831708033", "Sony_Demo_Main", "box_SetTimeOfDay_2.Out", "box_CinematicPrep_5.PreCinematic", clone, l0)
  l0:PreCinematic()
end
_compilerVersion = 4
