export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M050_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main"
  self.out = DummyFunction
  self.CaptainStressing_out = DummyFunction
  self.SpawnCaptain_out = DummyFunction
  self.PlayerEntity = nil
  self.captain = nil
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|222470828"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_CinematicPrep_8 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|391081665"
  l0.PreOut = self.f_box_CinematicPrep_8_PreOut
  l0.PostOut = DummyFunction
  self.box_PhoneCommunicationController_7 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_7
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|746454238"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|868435863"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = self.f_box_CLOController_4_BhvTriggered
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1455459247"
  l0.Started = self.f_box_PlaySequence_v5_1_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_Teleport_To_SpawnPoint_9 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_9
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1919951574"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_9_TeleportDone
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|2118562010"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0._name = "box_Get_Player_ID_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|2037937041"
  l0.Out = self.f_box_Get_Player_ID_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|450212121", "450212121", "S16M050_SCR_Main", "In", "box_Get_Player_ID_3.In", self, l0)
  l0:In()
end
function export:In_CaptainReact()
  local l0
  self:OnEnter_box_CLOController_4()
  l0 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1213917108", "1213917108", "S16M050_SCR_Main", "In_CaptainReact", "box_CLOController_4.TriggerBhv", self, l0)
  l0:TriggerBhv()
end
function export:SpawnCaptain()
  local l0
  self:OnEnter_box_CLOController_4()
  l0 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1888982429", "1888982429", "S16M050_SCR_Main", "SpawnCaptain", "box_CLOController_4.Activate", self, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_5_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1906146759", "1906146759", "S16M050_SCR_Main", "box_MultipleOR_5.Out", "out", l0, self)
  self:out()
end
function export:f_box_CinematicPrep_8_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_9
  l0.SpawnPoint = "9223372050031117779"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_CinematicPrep_8
  l1 = self.box_Teleport_To_SpawnPoint_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|452662969", "452662969", "S16M050_SCR_Main", "box_CinematicPrep_8.PreOut", "box_Teleport_To_SpawnPoint_9.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_4_BhvTriggered()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l0.Seconds = 10
  l0 = self.box_CLOController_4
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|26552369", "26552369", "S16M050_SCR_Main", "box_CLOController_4.BhvTriggered", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_4
  self.Captain_Out = l0.UserID
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1984278943", "1984278943", "S16M050_SCR_Main", "box_CLOController_4.OnUserInPlace", "SpawnCaptain_out", l0, self)
  self:SpawnCaptain_out()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|2134202323", "2134202323", "S16M050_SCR_Main", "box_PlaySequence_v5_1.Finished", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|992998756", "992998756", "S16M050_SCR_Main", "box_PlaySequence_v5_1.Skipped", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_1_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_7
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825625"
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_PhoneCommunicationController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|182388616", "182388616", "S16M050_SCR_Main", "box_PlaySequence_v5_1.Started", "box_PhoneCommunicationController_7.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Teleport_To_SpawnPoint_9_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372057386122773"
  l0.SequenceFile = "sequences/ScriptedEvents/s16_m050_beautyshot_recording.seq"
  l0 = self.box_Teleport_To_SpawnPoint_9
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1555139232", "1555139232", "S16M050_SCR_Main", "box_Teleport_To_SpawnPoint_9.TeleportDone", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1383277759", "1383277759", "S16M050_SCR_Main", "box_Get_Player_ID_3.Out", "box_CinematicPrep_8.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\s16m050_scr.domino|@S16M050_SCR_Main|1975489892", "1975489892", "S16M050_SCR_Main", "box_Timer_v2_10.TimeElapsed", "CaptainStressing_out", l0, self)
  self:CaptainStressing_out()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_CLOController_4()
  local l0
  l0 = self.box_CLOController_4
  l0.CLO = "9223372047604766072"
end
function export:out()
end
function export:CaptainStressing_out()
end
function export:SpawnCaptain_out()
end
_compilerVersion = 4
