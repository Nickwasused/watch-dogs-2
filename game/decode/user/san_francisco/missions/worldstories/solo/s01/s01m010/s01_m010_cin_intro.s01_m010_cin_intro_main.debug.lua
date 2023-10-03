export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2436309365.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S01_M010_CIN_Intro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main"
  self.Out = DummyFunction
  self.TS_Sitara = DummyFunction
  self.PlayerEntity = nil
  self.box_Teleport_To_SpawnPoint_6 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_6
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|189961059"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_6_TeleportDone
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|234262152"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_2_PostOut
  self.box_PlaySound_v2_8 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_8
  l0._graph = self
  l0._name = "box_PlaySound_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|374336764"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_3 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_3
  l0._graph = self
  l0._name = "box_Timer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|514465332"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|585917725"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_FreeFormTextController_7 = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self.box_FreeFormTextController_7
  l0._graph = self
  l0._name = "box_FreeFormTextController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|693721049"
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self.box_PlaySequence_v5_4 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_4
  l0._graph = self
  l0._name = "box_PlaySequence_v5_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|1086312228"
  l0._DynamicAnchors = {
    SPOut = {"Text_01", "TS_Sitara"}
  }
  l0.Started = self.f_box_PlaySequence_v5_4_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_4_Finished
  l0.SPOut.Text_01 = self.f_box_PlaySequence_v5_4_SPOut__Text_01_
  l0.SPOut.TS_Sitara = self.f_box_PlaySequence_v5_4_SPOut__TS_Sitara_
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
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|2019056113", "2019056113", "S01_M010_CIN_Intro_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_6_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_4
  l0.SceneEntity = "9223372059397415943"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M010_Intro_JimmySiscaOprah/s01_m010_intro_jimmysiscaoprah.seq"
  l0 = self.box_Teleport_To_SpawnPoint_6
  l1 = self.box_PlaySequence_v5_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|1576865632", "1576865632", "S01_M010_CIN_Intro_Main", "box_Teleport_To_SpawnPoint_6.TeleportDone", "box_PlaySequence_v5_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_2_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|2021648503", "2021648503", "S01_M010_CIN_Intro_Main", "box_CinematicPrep_2.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_Timer_v2_3_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_3
  l1 = self.box_CinematicPrep_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|489946601", "489946601", "S01_M010_CIN_Intro_Main", "box_Timer_v2_3.TimeElapsed", "box_CinematicPrep_2.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_6
  l0.SpawnPoint = "9223372056499384724"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_CinematicPrep_1
  l1 = self.box_Teleport_To_SpawnPoint_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|324421523", "324421523", "S01_M010_CIN_Intro_Main", "box_CinematicPrep_1.PreOut", "box_Teleport_To_SpawnPoint_6.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_4_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_3
  l0.Seconds = 2
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_Timer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|1621965597", "1621965597", "S01_M010_CIN_Intro_Main", "box_PlaySequence_v5_4.Finished", "box_Timer_v2_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_4_SPOut__Text_01_()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeFormTextController_7
  l0.FreeFormText = "FreeFormTextDB.9223372070165474114"
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_FreeFormTextController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|1700099009", "1700099009", "S01_M010_CIN_Intro_Main", "box_PlaySequence_v5_4.SPOut", "box_FreeFormTextController_7.Open", l0, l1)
  l1:Open()
end
function export:f_box_PlaySequence_v5_4_SPOut__TS_Sitara_()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|164481768", "164481768", "S01_M010_CIN_Intro_Main", "box_PlaySequence_v5_4.SPOut", "TS_Sitara", l0, self)
  self:TS_Sitara()
end
function export:f_box_PlaySequence_v5_4_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_8
  l0.SoundId = "soundbinary/2436309365.bnk"
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_PlaySound_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_cin_intro.domino|@S01_M010_CIN_Intro_Main|851802245", "851802245", "S01_M010_CIN_Intro_Main", "box_PlaySequence_v5_4.Started", "box_PlaySound_v2_8.Play", l0, l1)
  l1:Play()
end
function export:Out()
end
function export:TS_Sitara()
end
_compilerVersion = 4
