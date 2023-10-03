export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerRcID.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M040_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main"
  self.Out = DummyFunction
  self.JimmyFree = DummyFunction
  self.PlayerEntity = nil
  self.NPC_Miranda = nil
  self.Escape_Car = nil
  self.RC_ID = nil
  self.JimmySiska = nil
  self.box_AISquadStateController_31 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_31
  l0._graph = self
  l0._name = "box_AISquadStateController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|151375945"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_31_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_HackableController_v2_21 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_21
  l0._graph = self
  l0._name = "box_HackableController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|200518175"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_21_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_19 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_19
  l0._graph = self
  l0._name = "box_Timer_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|220290247"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_28 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_28
  l0._graph = self
  l0._name = "box_MultipleOR_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|468028647"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_28_Out
  self.box_Network_Surfing_Controller_30 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_30
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|589957040"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_30_Deactivated
  self.box_CinematicPrep_16 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_16
  l0._graph = self
  l0._name = "box_CinematicPrep_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1015381108"
  l0.PreOut = self.f_box_CinematicPrep_16_PreOut
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_7 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_7
  l0._graph = self
  l0._name = "box_HackableController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1057130760"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_7_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySequence_v5_36 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_36
  l0._graph = self
  l0._name = "box_PlaySequence_v5_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1077895937"
  l0._DynamicAnchors = {
    EntityIn = {"Jimmy"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_36_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_36_Finished
  self.box_CinematicPrep_29 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_29
  l0._graph = self
  l0._name = "box_CinematicPrep_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1154447561"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_29_PostOut
  self.box_HackableController_v2_15 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_15
  l0._graph = self
  l0._name = "box_HackableController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1238478515"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_15_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1276668260"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_41 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_41
  l0._graph = self
  l0._name = "box_OnceOnly_v3_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1288381987"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_41_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_12 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_12
  l0._graph = self
  l0._name = "box_PlaySequence_v5_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1357441900"
  l0._DynamicAnchors = {
    EntityIn = {"Jimmy"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_12_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_12_Finished
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1359284157"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_CinematicPrep_39 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_39
  l0._graph = self
  l0._name = "box_CinematicPrep_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1486795405"
  l0.PreOut = self.f_box_CinematicPrep_39_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_10 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_10
  l0._graph = self
  l0._name = "box_OnceOnly_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1511643923"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_10_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_4 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_4
  l0._graph = self
  l0._name = "box_HackableController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1629316746"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_4_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1766459734"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_14 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1892175620"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_OnceOnly_v3_2 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_2
  l0._graph = self
  l0._name = "box_OnceOnly_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1993815153"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_2_Out
  l0.ResetOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:SetJimmyFree()
  local l0
  l0 = self.box_CinematicPrep_16
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|828123600", "828123600", "S02M040_SCR_Main", "SetJimmyFree", "box_CinematicPrep_16.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:SetJimmyFree_RC()
  local l0
  l0 = self.box_Network_Surfing_Controller_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|612221088", "612221088", "S02M040_SCR_Main", "SetJimmyFree_RC", "box_Network_Surfing_Controller_30.Deactivate", self, l0)
  l0:Deactivate()
end
function export:f_box_VisibilityController_v2_24_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|139086636", "139086636", "S02M040_SCR_Main", "box_VisibilityController_v2_24.Shown", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AISquadStateController_31_VanishSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_12
  l0.SceneEntity = "9223372055397594704"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_SCR_FreeJimmySiska/s02_scr_freejimmysiska.seq"
  l0.EntityIn.Jimmy = self.Jimmy
  l0 = self.box_AISquadStateController_31
  l1 = self.box_PlaySequence_v5_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|264563610", "264563610", "S02M040_SCR_Main", "box_AISquadStateController_31.VanishSet", "box_PlaySequence_v5_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_20_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1238556575", "1238556575", "S02M040_SCR_Main", "box_VisibilityController_v2_20.Hidden", "box_MultipleOR_28.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_21_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_26
  l0.Seconds = 2
  l0 = self.box_HackableController_v2_21
  l1 = self.box_Timer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1100453188", "1100453188", "S02M040_SCR_Main", "box_HackableController_v2_21.HackForced", "box_Timer_v2_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Cinema_Zone_Cleanup_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073325332833"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|2079045684"
  l0.Out = self.f_box_AI_Agent_Zone_33_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1368819283", "1368819283", "S02M040_SCR_Main", "box_Cinema_Zone_Cleanup_27.Out", "box_AI_Agent_Zone_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_19_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_31
  l0.Affiliation = "UZulu"
  l0 = self.box_Timer_v2_19
  l1 = self.box_AISquadStateController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|307109208", "307109208", "S02M040_SCR_Main", "box_Timer_v2_19.TimeElapsed", "box_AISquadStateController_31.ForceVanish", l0, l1)
  l1:ForceVanish()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Door1Open
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1449379895"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_8_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1866419426", "1866419426", "S02M040_SCR_Main", "box_Ordered_Output_6.Out", "box_Compare_Boolean_v2_8.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Door2Open
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1076418367"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|496020114", "496020114", "S02M040_SCR_Main", "box_Ordered_Output_6.Out", "box_Compare_Boolean_v2_9.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_28
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|427057451", "427057451", "S02M040_SCR_Main", "box_MultipleOR_28.Out", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1546960795", "1546960795", "S02M040_SCR_Main", "box_Ordered_Output_18.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerRcID.lua")]
  l0._graph = self
  l0._name = "box_Get_Currently_Controlled_RC_ID_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1936595081"
  l0.Success = self.f_box_Get_Currently_Controlled_RC_ID_22_Success
  l0.NoControlledRc = self.f_box_Get_Currently_Controlled_RC_ID_22_NoControlledRc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|355851548", "355851548", "S02M040_SCR_Main", "box_Ordered_Output_18.Out", "box_Get_Currently_Controlled_RC_ID_22.In", clone, l0)
  l0:In()
end
function export:f_box_Network_Surfing_Controller_30_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_39
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 1
  l0.ForceStopVehicle = 1
  l0 = self.box_Network_Surfing_Controller_30
  l1 = self.box_CinematicPrep_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|143428520", "143428520", "S02M040_SCR_Main", "box_Network_Surfing_Controller_30.Deactivated", "box_CinematicPrep_39.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_VisibilityController_v2_23_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|170500210"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_20_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|471825961", "471825961", "S02M040_SCR_Main", "box_VisibilityController_v2_23.Hidden", "box_VisibilityController_v2_20.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_AI_Agent_Zone_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1275385272", "1275385272", "S02M040_SCR_Main", "box_AI_Agent_Zone_32.Out", "box_Timer_v2_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_16_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1869310042"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_CinematicPrep_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1325672803", "1325672803", "S02M040_SCR_Main", "box_CinematicPrep_16.PreOut", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_7_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_HackableController_v2_7
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|2014029699", "2014029699", "S02M040_SCR_Main", "box_HackableController_v2_7.HackForced", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(0)
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_4
  l0.HackableEntity = "9223372069342022692"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1708388964", "1708388964", "S02M040_SCR_Main", "box_Compare_Boolean_v2_9.A_is_True", "box_HackableController_v2_4.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_PlaySequence_v5_36_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_41()
  l0 = self.box_PlaySequence_v5_36
  l1 = self.box_OnceOnly_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|311158749", "311158749", "S02M040_SCR_Main", "box_PlaySequence_v5_36.Finished", "box_OnceOnly_v3_41.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_36_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_41()
  l0 = self.box_PlaySequence_v5_36
  l1 = self.box_OnceOnly_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1750861520", "1750861520", "S02M040_SCR_Main", "box_PlaySequence_v5_36.Skipped", "box_OnceOnly_v3_41.In", l0, l1)
  l1:In(0)
end
function export:f_box_VisibilityController_v2_25_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = 0
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|23927763"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_24_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|383085854", "383085854", "S02M040_SCR_Main", "box_VisibilityController_v2_25.Shown", "box_VisibilityController_v2_24.Show", clone, l0)
  l0:Show()
end
function export:f_box_CinematicPrep_29_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1136283583", "1136283583", "S02M040_SCR_Main", "box_CinematicPrep_29.PostOut", "JimmyFree", l0, self)
  self:JimmyFree()
end
function export:f_box_HackableController_v2_15_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_21
  l0.HackableEntity = "9223372069342022692"
  l0 = self.box_HackableController_v2_15
  l1 = self.box_HackableController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|177660709", "177660709", "S02M040_SCR_Main", "box_HackableController_v2_15.HackForced", "box_HackableController_v2_21.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_29
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_26
  l1 = self.box_CinematicPrep_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|226686449", "226686449", "S02M040_SCR_Main", "box_Timer_v2_26.TimeElapsed", "box_CinematicPrep_29.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_OnceOnly_v3_41_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RC_ID
  l0.EntityList = nil
  l0.Visible = 0
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1100684653"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_25_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_41
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1729828598", "1729828598", "S02M040_SCR_Main", "box_OnceOnly_v3_41.Out", "box_VisibilityController_v2_25.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlaySequence_v5_12_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_12
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|163249173", "163249173", "S02M040_SCR_Main", "box_PlaySequence_v5_12.Finished", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_12_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_12
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1282068952", "1282068952", "S02M040_SCR_Main", "box_PlaySequence_v5_12.Skipped", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_15
  l0.HackableEntity = "9223372069342022706"
  l0 = self.box_MultipleOR_13
  l1 = self.box_HackableController_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1553481910", "1553481910", "S02M040_SCR_Main", "box_MultipleOR_13.Out", "box_HackableController_v2_15.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_Compare_Boolean_v2_8_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_7
  l0.HackableEntity = "9223372069342022706"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1005862870", "1005862870", "S02M040_SCR_Main", "box_Compare_Boolean_v2_8.A_is_True", "box_HackableController_v2_7.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_CinematicPrep_39_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|550407303"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_CinematicPrep_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1054841653", "1054841653", "S02M040_SCR_Main", "box_CinematicPrep_39.PreOut", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_OnceOnly_v3_10
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1711216387", "1711216387", "S02M040_SCR_Main", "box_OnceOnly_v3_10.Out", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_4_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_HackableController_v2_4
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1502691533", "1502691533", "S02M040_SCR_Main", "box_HackableController_v2_4.HackForced", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(1)
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_36
  l0.SceneEntity = "9223372062309358451"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_SCR_FreeJimmySiska/s02_scr_freejimmysiska_rc.seq"
  l0.EntityIn.Jimmy = self.Jimmy
  l0 = self.box_Timer_v2_5
  l1 = self.box_PlaySequence_v5_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1400105641", "1400105641", "S02M040_SCR_Main", "box_Timer_v2_5.TimeElapsed", "box_PlaySequence_v5_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|720166405", "720166405", "S02M040_SCR_Main", "box_Ordered_Output_17.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073325332833"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|824958007"
  l0.Out = self.f_box_AI_Agent_Zone_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1842392649", "1842392649", "S02M040_SCR_Main", "box_Ordered_Output_17.Out", "box_AI_Agent_Zone_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|448243625"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_MultipleOR_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|557181712", "557181712", "S02M040_SCR_Main", "box_MultipleOR_14.Out", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Currently_Controlled_RC_ID_22_NoControlledRc()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerRcID.lua")]
  self.RC_ID = l0.RcID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|485321090", "485321090", "S02M040_SCR_Main", "box_Get_Currently_Controlled_RC_ID_22.NoControlledRc", "box_MultipleOR_28.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Get_Currently_Controlled_RC_ID_22_Success()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerRcID.lua")]
  self.RC_ID = l0.RcID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372068252315840"
  l0.SceneEntity = "9223372062309358451"
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = 0
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.JimmySiska
  l0.NotRemovableEntity[1] = self.RC_ID
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|203288490"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_27_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|396595590", "396595590", "S02M040_SCR_Main", "box_Get_Currently_Controlled_RC_ID_22.Success", "box_Cinema_Zone_Cleanup_27.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Get_Player_ID_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372068252315840"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = 1
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.PlayerEntity
  l0.NotRemovableEntity[1] = self.Jimmy
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1070797433"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1150319302", "1150319302", "S02M040_SCR_Main", "box_Get_Player_ID_11.Out", "box_Cinema_Zone_Cleanup_1.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_OnceOnly_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1939840929"
  l0.Out = self.f_box_Get_Player_ID_11_Out
  l0 = self.box_OnceOnly_v3_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1066286359", "1066286359", "S02M040_SCR_Main", "box_OnceOnly_v3_2.Out", "box_Get_Player_ID_11.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RC_ID
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|648903196"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_23_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_scr.domino|@S02M040_SCR_Main|1220967943", "1220967943", "S02M040_SCR_Main", "box_AI_Agent_Zone_33.Out", "box_VisibilityController_v2_23.Hide", clone, l0)
  l0:Hide()
end
function export:OnEnter_box_MultipleOR_28()
end
function export:OnEnter_box_OnceOnly_v3_41()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_OnceOnly_v3_10()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_OnceOnly_v3_2()
end
function export:Out()
end
function export:JimmyFree()
end
_compilerVersion = 4
