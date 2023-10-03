export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01_M010_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main"
  self.Out = DummyFunction
  self.Started = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySequence_v5_21 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_21
  l0._graph = self
  l0._name = "box_PlaySequence_v5_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|325056410"
  l0.Started = self.f_box_PlaySequence_v5_21_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_21_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_21_Finished
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|774531570"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_17_OnUserInPlace
  self.box_Timer_v2_20 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_20
  l0._graph = self
  l0._name = "box_Timer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|804484576"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_27 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_27
  l0._graph = self
  l0._name = "box_PlaySequence_v5_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|926796982"
  l0._DynamicAnchors = {
    EntityIn = {"Guard1", "Guard2"}
  }
  l0.Started = self.f_box_PlaySequence_v5_27_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_14 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_14
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1004249622"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_14_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1074883241"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_18_OnUserInPlace
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1676853869"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_OnceOnly_v3_19 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_19
  l0._graph = self
  l0._name = "box_OnceOnly_v3_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1709552307"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_19_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_24 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_24
  l0._graph = self
  l0._name = "box_CinematicPrep_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1890360088"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_24_PostOut
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
  l0 = self.box_TriggerMonitor_v2_14
  l0.Trigger = "9223372056214731106"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1567073562", "1567073562", "S01_M010_SCR_Main", "In", "box_TriggerMonitor_v2_14.Enable", self, l0)
  l0:Enable()
end
function export:MainAdmiration()
  local l0
  l0 = self.box_PlaySequence_v5_21
  l0.SceneEntity = "9223372048794053450"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_SCR_MainAdmiration/s01_m010_scr_mainadmiration.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|662259463", "662259463", "S01_M010_SCR_Main", "MainAdmiration", "box_PlaySequence_v5_21.Start", self, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_21_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_19()
  l0 = self.box_PlaySequence_v5_21
  l1 = self.box_OnceOnly_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|718305810", "718305810", "S01_M010_SCR_Main", "box_PlaySequence_v5_21.Finished", "box_OnceOnly_v3_19.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_21_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_19()
  l0 = self.box_PlaySequence_v5_21
  l1 = self.box_OnceOnly_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1334781228", "1334781228", "S01_M010_SCR_Main", "box_PlaySequence_v5_21.Skipped", "box_OnceOnly_v3_19.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_21_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1939979439", "1939979439", "S01_M010_SCR_Main", "box_PlaySequence_v5_21.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_CLOController_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  l1 = self.box_PlaySequence_v5_27
  l1.EntityIn.Guard1 = l0.UserID
  l0 = self.box_CLOController_18
  l0.CLO = "9223372063918069240"
  l0 = self.box_CLOController_17
  l1 = self.box_CLOController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|2083168617", "2083168617", "S01_M010_SCR_Main", "box_CLOController_17.OnUserInPlace", "box_CLOController_18.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_20_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_24
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_20
  l1 = self.box_CinematicPrep_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|842758874", "842758874", "S01_M010_SCR_Main", "box_Timer_v2_20.TimeElapsed", "box_CinematicPrep_24.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_27_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|2106760994"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_16_Popped
  l0 = self.box_PlaySequence_v5_27
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1298733277", "1298733277", "S01_M010_SCR_Main", "box_PlaySequence_v5_27.Started", "box_SetActionMap_v2_16.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_TriggerMonitor_v2_14_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1873122809", "1873122809", "S01_M010_SCR_Main", "box_TriggerMonitor_v2_14.Enter", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_18_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_18
  l1 = self.box_PlaySequence_v5_27
  l1.EntityIn.Guard2 = l0.UserID
  l1.SceneEntity = "9223372063954153094"
  l1.SequenceFile = "sequences/san_francisco/WorldStories/S01/s01_m010_scr_deadguards.seq"
  l0 = self.box_CLOController_18
  l1 = self.box_PlaySequence_v5_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1235973133", "1235973133", "S01_M010_SCR_Main", "box_CLOController_18.OnUserInPlace", "box_PlaySequence_v5_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_15_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1857844596", "1857844596", "S01_M010_SCR_Main", "box_MultipleOR_15.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_OnceOnly_v3_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  l0.CLO = "9223372063918069229"
  l0 = self.box_OnceOnly_v3_19
  l1 = self.box_CLOController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|408873347", "408873347", "S01_M010_SCR_Main", "box_OnceOnly_v3_19.Out", "box_CLOController_17.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CinematicPrep_24_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_CinematicPrep_24
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|261123663", "261123663", "S01_M010_SCR_Main", "box_CinematicPrep_24.PostOut", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetActionMap_v2_16_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_SCR.domino|@S01_M010_SCR_Main|1292140006", "1292140006", "S01_M010_SCR_Main", "box_SetActionMap_v2_16.Popped", "box_Timer_v2_20.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_OnceOnly_v3_19()
end
function export:Out()
end
function export:Started()
end
_compilerVersion = 4
