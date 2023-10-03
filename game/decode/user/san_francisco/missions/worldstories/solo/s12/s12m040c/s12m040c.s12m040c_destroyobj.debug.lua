export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BreakableEntityController.lua")
  cbox:RegisterBox("domino/System/BreakableEntityMonitor_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/2177377099.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S12M040C_DestroyObj"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj"
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.AllBroken = DummyFunction
  self.BreakingATMEntity = nil
  self.FirstBreakingATMEntity = nil
  self.box_BreakableEntityMonitor_v2_1 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_1
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|443857144"
  l0.Enabled = self.f_box_BreakableEntityMonitor_v2_1_Enabled
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_1_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_1_Breaking
  l0.AllBroken = DummyFunction
  self.box_MapPointController_v4_4 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_4
  l0._graph = self
  l0._name = "box_MapPointController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|728416315"
  l0.Shown = self.f_box_MapPointController_v4_4_Shown
  l0.Hidden = self.f_box_MapPointController_v4_4_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_InteractionScriptMonitor_v2_12 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_12
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|762761046"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_12_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_box_InteractionScriptMonitor_v2_12_AnimationFinished
  self.box_LogicGate_v2_7 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_7
  l0._graph = self
  l0._name = "box_LogicGate_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|923688916"
  l0.Out = self.f_box_LogicGate_v2_7_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_7_Closed
  self.box_Intel_Controller_9 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_9
  l0._graph = self
  l0._name = "box_Intel_Controller_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1051869302"
  l0.Enabled = self.f_box_Intel_Controller_9_Enabled
  l0.Disabled = DummyFunction
  self.box_Intel_Controller_13 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_13
  l0._graph = self
  l0._name = "box_Intel_Controller_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1092657418"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_13_Disabled
  self.box_ListForEach_3 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_3
  l0._graph = self
  l0._name = "box_ListForEach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1347448847"
  l0.Started = self.f_box_ListForEach_3_Started
  l0.Stopped = self.f_box_ListForEach_3_Stopped
  l0.ForEach = self.f_box_ListForEach_3_ForEach
  l0.GotNext = self.f_box_ListForEach_3_GotNext
  l0.EndOfList = self.f_box_ListForEach_3_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Intel_Controller_8 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_8
  l0._graph = self
  l0._name = "box_Intel_Controller_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1397999503"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_8_Disabled
  self.box_Intel_Controller_10 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_10
  l0._graph = self
  l0._name = "box_Intel_Controller_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1569866435"
  l0.Enabled = self.f_box_Intel_Controller_10_Enabled
  l0.Disabled = DummyFunction
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1591634341"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_Multiple_AND_14 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_14
  l0._graph = self
  l0._name = "box_Multiple_AND_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1791648327"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_14_Out
  self.box_PlaySound_v2_16 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_16
  l0._graph = self
  l0._name = "box_PlaySound_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|2137223059"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_16_Started
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = self.box_Intel_Controller_9
  l0.EntityList = self.ATMGroupList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1437637605", "1437637605", "S12M040C_DestroyObj", "Start", "box_Intel_Controller_9.Enable", self, l0)
  l0:Enable()
end
function export:f_box_BreakableEntityMonitor_v2_1_Breaking()
  local l0
  self = self._graph
  l0 = self.box_BreakableEntityMonitor_v2_1
  self.FirstBreakingATMEntity = l0.BrokenEntity
  self:OnEnter_box_BreakableEntityMonitor_v2_1()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|234757452", "234757452", "S12M040C_DestroyObj", "box_BreakableEntityMonitor_v2_1.Breaking", "box_BreakableEntityMonitor_v2_1.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_3
  l0.List = self.ATMGroupList
  l0 = self.box_BreakableEntityMonitor_v2_1
  l1 = self.box_ListForEach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|415091418", "415091418", "S12M040C_DestroyObj", "box_BreakableEntityMonitor_v2_1.Disabled", "box_ListForEach_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_BreakableEntityMonitor_v2_1_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_14()
  l0 = self.box_BreakableEntityMonitor_v2_1
  l1 = self.box_Multiple_AND_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|270807017", "270807017", "S12M040C_DestroyObj", "box_BreakableEntityMonitor_v2_1.Enabled", "box_Multiple_AND_14.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MapPointController_v4_4_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_8
  l0.EntityList = self.ATMGroupList
  l0 = self.box_MapPointController_v4_4
  l1 = self.box_Intel_Controller_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1490119856", "1490119856", "S12M040C_DestroyObj", "box_MapPointController_v4_4.Hidden", "box_Intel_Controller_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_4_Shown()
  local l0
  self = self._graph
  l0 = self.box_MapPointController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1686585105", "1686585105", "S12M040C_DestroyObj", "box_MapPointController_v4_4.Shown", "Started", l0, self)
  self:Started()
end
function export:f_box_InteractionScriptMonitor_v2_12_AnimationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.ParticleGroupList
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|846700826"
  l0.Started = self.f_box_ParticleFXController_v2_15_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_InteractionScriptMonitor_v2_12
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1846455375", "1846455375", "S12M040C_DestroyObj", "box_InteractionScriptMonitor_v2_12.AnimationFinished", "box_ParticleFXController_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptMonitor_v2_12_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_14()
  l0 = self.box_InteractionScriptMonitor_v2_12
  l1 = self.box_Multiple_AND_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|761881062", "761881062", "S12M040C_DestroyObj", "box_InteractionScriptMonitor_v2_12.Enabled", "box_Multiple_AND_14.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Compare_Entity_v2_6_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BreakableEntityController.lua")]
  l0.BreakableEntity = self.BreakingATMEntity
  l0._graph = self
  l0._name = "box_BreakableEntityController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1770118079"
  l0.Broken = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|429798438", "429798438", "S12M040C_DestroyObj", "box_Compare_Entity_v2_6.NotEqual", "box_BreakableEntityController_2.Break", clone, l0)
  l0:Break()
end
function export:f_box_ParticleFXController_v2_15_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_16
  l0.Entity = self.ObjectiveMapIcon
  l0.SoundId = "soundbinary/2177377099.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|837661904", "837661904", "S12M040C_DestroyObj", "box_ParticleFXController_v2_15.Started", "box_PlaySound_v2_16.Play", clone, l0)
  l0:Play()
end
function export:f_box_LogicGate_v2_7_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_LogicGate_v2_7
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|449203138", "449203138", "S12M040C_DestroyObj", "box_LogicGate_v2_7.Closed", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_LogicGate_v2_7_Out()
  local l0
  self = self._graph
  self:OnEnter_box_LogicGate_v2_7()
  l0 = self.box_LogicGate_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|757472273", "757472273", "S12M040C_DestroyObj", "box_LogicGate_v2_7.Out", "box_LogicGate_v2_7.Close", l0, l0)
  l0:Close()
end
function export:f_box_Intel_Controller_9_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_10
  l0.Entity = self.YInteractObject
  l0 = self.box_Intel_Controller_9
  l1 = self.box_Intel_Controller_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|566395971", "566395971", "S12M040C_DestroyObj", "box_Intel_Controller_9.Enabled", "box_Intel_Controller_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Intel_Controller_13_Disabled()
  local l0
  self = self._graph
  l0 = self.box_Intel_Controller_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1545789067", "1545789067", "S12M040C_DestroyObj", "box_Intel_Controller_13.Disabled", "AllBroken", l0, self)
  self:AllBroken()
end
function export:f_box_ListForEach_3_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_3
  self.BreakingATMEntity = l0.Data
  self:OnEnter_box_LogicGate_v2_7()
  l1 = self.box_LogicGate_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1158480695", "1158480695", "S12M040C_DestroyObj", "box_ListForEach_3.EndOfList", "box_LogicGate_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_3_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_3
  self.BreakingATMEntity = l0.Data
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.BreakingATMEntity
  l0.Entity2 = self.FirstBreakingATMEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|780172450"
  l0.Out = DummyFunction
  l0.Equal = DummyFunction
  l0.NotEqual = self.f_box_Compare_Entity_v2_6_NotEqual
  l0 = self.box_ListForEach_3
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|254641619", "254641619", "S12M040C_DestroyObj", "box_ListForEach_3.ForEach", "box_Compare_Entity_v2_6.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_3_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_3
  self.BreakingATMEntity = l0.Data
end
function export:f_box_ListForEach_3_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_3
  self.BreakingATMEntity = l0.Data
end
function export:f_box_ListForEach_3_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_3
  self.BreakingATMEntity = l0.Data
end
function export:f_box_Intel_Controller_8_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_13
  l0.Entity = self.YInteractObject
  l0 = self.box_Intel_Controller_8
  l1 = self.box_Intel_Controller_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|194492696", "194492696", "S12M040C_DestroyObj", "box_Intel_Controller_8.Disabled", "box_Intel_Controller_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Intel_Controller_10_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1924587185"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_Intel_Controller_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|969462627", "969462627", "S12M040C_DestroyObj", "box_Intel_Controller_10.Enabled", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_4()
  l0 = self.box_OnceOnly_v3_5
  l1 = self.box_MapPointController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|2106888681", "2106888681", "S12M040C_DestroyObj", "box_OnceOnly_v3_5.Out", "box_MapPointController_v4_4.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Multiple_AND_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_4()
  l0 = self.box_Multiple_AND_14
  l1 = self.box_MapPointController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|248475965", "248475965", "S12M040C_DestroyObj", "box_Multiple_AND_14.Out", "box_MapPointController_v4_4.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BreakableEntityMonitor_v2_1()
  l0 = self.box_BreakableEntityMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1573215294", "1573215294", "S12M040C_DestroyObj", "box_Ordered_Output_11.Out", "box_BreakableEntityMonitor_v2_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_InteractionScriptMonitor_v2_12
  l0.InteractionScriptEntity = self.YInteractObject
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|41536614", "41536614", "S12M040C_DestroyObj", "box_Ordered_Output_11.Out", "box_InteractionScriptMonitor_v2_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_16_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySound_v2_16
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_DestroyObj|1452189306", "1452189306", "S12M040C_DestroyObj", "box_PlaySound_v2_16.Started", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:OnEnter_box_BreakableEntityMonitor_v2_1()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_1
  l0.BreakableEntitiesList = self.ATMGroupList
end
function export:OnEnter_box_MapPointController_v4_4()
  local l0
  l0 = self.box_MapPointController_v4_4
  l0.MapPoint = self.ObjectiveMapIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
end
function export:OnEnter_box_LogicGate_v2_7()
  DrawTextToScreen("Comment: S12M040C_DestroyObj: Prevents ForEach from executing multiple times.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'LogicGate_v2')-- Comment: S12M040C_DestroyObj: Prevents ForEach from executing multiple times.")
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:OnEnter_box_Multiple_AND_14()
end
function export:Started()
end
function export:Stopped()
end
function export:AllBroken()
end
_compilerVersion = 4
