export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M010_CIN_FalseProfitsIntro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = {}
  self.HQ_Talker = {}
  self.HQ_Sitara = nil
  self.HQ_Wrench = "9223372047464636840"
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|362480430"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|790215258"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_CLOMonitor_10 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_10
  l0._graph = self
  l0._name = "box_CLOMonitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1237458748"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_10_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_10_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_10_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_UnspawnController_2 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_2
  l0._graph = self
  l0._name = "box_UnspawnController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1629895675"
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = self.f_box_UnspawnController_2_AutomaticCLOUnspawned
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1680610524"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_CLOMonitor_9 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_9
  l0._graph = self
  l0._name = "box_CLOMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1707078956"
  l0.Enabled = self.f_box_CLOMonitor_9_Enabled
  l0.Disabled = self.f_box_CLOMonitor_9_Disabled
  l0.GotUser = self.f_box_CLOMonitor_9_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_9_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_9_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1767720938"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|492945777", "492945777", "S02M010_CIN_FalseProfitsIntro_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1473309515", "1473309515", "S02M010_CIN_FalseProfitsIntro_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1748308181", "1748308181", "S02M010_CIN_FalseProfitsIntro_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HQ_Wrench
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|957468070"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_11_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_12
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1054624626", "1054624626", "S02M010_CIN_FalseProfitsIntro_Main", "box_MultipleOR_12.Out", "box_VisibilityController_v2_11.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779436040"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_FalseProfitsIntro_CIN/s02_falseprofitsintro_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|131221356", "131221356", "S02M010_CIN_FalseProfitsIntro_Main", "box_VisibilityController_v2_11.Hidden", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOMonitor_10_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_10
  self.HQ_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_12()
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1226166359", "1226166359", "S02M010_CIN_FalseProfitsIntro_Main", "box_CLOMonitor_10.GotUser", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_10_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_10
  self.HQ_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_9()
  l1 = self.box_CLOMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1542770115", "1542770115", "S02M010_CIN_FalseProfitsIntro_Main", "box_CLOMonitor_10.NotGotUser", "box_CLOMonitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_10
  self.HQ_Wrench = l0.UserID
end
function export:f_box_VisibilityController_v2_8_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|259649140", "259649140", "S02M010_CIN_FalseProfitsIntro_Main", "box_VisibilityController_v2_8.Shown", "EndCine", clone, self)
  self:EndCine()
end
function export:f_box_UnspawnController_2_AutomaticCLOUnspawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_10
  l0.CLO = "9223372047464636840"
  l0 = self.box_UnspawnController_2
  l1 = self.box_CLOMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|2035508353", "2035508353", "S02M010_CIN_FalseProfitsIntro_Main", "box_UnspawnController_2.AutomaticCLOUnspawned", "box_CLOMonitor_10.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HQ_Wrench
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1467715491"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_8_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_5
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|946144125", "946144125", "S02M010_CIN_FalseProfitsIntro_Main", "box_OnceOnly_v3_5.Out", "box_VisibilityController_v2_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_CLOMonitor_9_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CLOMonitor_9
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1653219555", "1653219555", "S02M010_CIN_FalseProfitsIntro_Main", "box_CLOMonitor_9.Disabled", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOMonitor_9_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_CLOMonitor_9()
  l0 = self.box_CLOMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1632044793", "1632044793", "S02M010_CIN_FalseProfitsIntro_Main", "box_CLOMonitor_9.Enabled", "box_CLOMonitor_9.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_9_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_9
  self.HQ_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_9_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_9
  self.HQ_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_9
  self.HQ_Wrench = l0.UserID
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_UnspawnController_2
  l0.Entity = self.HQ_Sitara
  l0.CLO = "9223372047464636836"
  l0 = self.box_CinematicPrep_3
  l1 = self.box_UnspawnController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\s02m010_cin_falseprofitsintro.domino|@S02M010_CIN_FalseProfitsIntro_Main|1143630314", "1143630314", "S02M010_CIN_FalseProfitsIntro_Main", "box_CinematicPrep_3.PreOut", "box_UnspawnController_2.UnspawnAutomaticCLO", l0, l1)
  l1:UnspawnAutomaticCLO()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:OnEnter_box_CLOMonitor_9()
  local l0
  l0 = self.box_CLOMonitor_9
  l0.CLO = "9223372047464636840"
end
function export:EndCine()
end
_compilerVersion = 4
