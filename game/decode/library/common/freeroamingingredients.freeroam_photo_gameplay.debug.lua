export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOMonitor.lua")
  cbox:RegisterBox("Domino/System/DiscoveryController.lua")
  cbox:RegisterBox("Domino/System/IntelController.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PhotoDetectionMonitor.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Photo Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.PhotoTaken = DummyFunction
  self.Target = nil
  self.box_CLOMonitor_1 = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_1
  l0._graph = self
  l0._name = "box_CLOMonitor_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|98802108"
  l0.Enabled = self.f_box_CLOMonitor_1_Enabled
  l0.Disabled = self.f_box_CLOMonitor_1_Disabled
  l0.GotUser = self.f_box_CLOMonitor_1_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_1_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = self.f_box_CLOMonitor_1_OnUserUnspawn
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|102629680"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|168887229"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MapPointController_v4_10 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_10
  l0._graph = self
  l0._name = "box_MapPointController_v4_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|325762982"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_10_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Progression_Tag_Monitor_8 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_8
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|483351651"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_8_HasNOT
  self.box_Progression_Tag_Monitor_6 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_6
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|680350636"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_6_Enabled
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_6_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_RewardController_v3_4 = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_4
  l0._graph = self
  l0._name = "box_RewardController_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|766106925"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_4_RewardsExecuted
  self.box_PhotoDetectionMonitor_2 = cbox:CreateBox("Domino/System/PhotoDetectionMonitor.lua")
  l0 = self.box_PhotoDetectionMonitor_2
  l0._graph = self
  l0._name = "box_PhotoDetectionMonitor_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|892743248"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ValidPhotoTaken = self.f_box_PhotoDetectionMonitor_2_ValidPhotoTaken
  l0.TargetInView = DummyFunction
  l0.TargetNotInView = DummyFunction
  self.box_MapPointController_v4_9 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_9
  l0._graph = self
  l0._name = "box_MapPointController_v4_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1054937838"
  l0.Shown = self.f_box_MapPointController_v4_9_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Intel_Controller_17 = cbox:CreateBox("Domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_17
  l0._graph = self
  l0._name = "box_Intel_Controller_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1338221899"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_17_Disabled
  self.box_Intel_Controller_16 = cbox:CreateBox("Domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_16
  l0._graph = self
  l0._name = "box_Intel_Controller_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1387414767"
  l0.Enabled = self.f_box_Intel_Controller_16_Enabled
  l0.Disabled = DummyFunction
  self.box_MapPointController_v4_11 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_11
  l0._graph = self
  l0._name = "box_MapPointController_v4_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1473189286"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_11_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_15
  l0._graph = self
  l0._name = "box_OnceOnly_v3_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|2121412348"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_15_Out
  l0.ResetOut = self.f_box_OnceOnly_v3_15_ResetOut
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
  l0 = self.box_MapPointController_v4_9
  l0.MapPoint = self.MapPoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|629982941", "629982941", "FreeRoam Photo Gameplay", "Start", "box_MapPointController_v4_9.Show", self, l0)
  l0:Show()
end
function export:Stop()
  local l0
  l0 = self.box_MapPointController_v4_11
  l0.MapPoint = self.MapPoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|238132383", "238132383", "FreeRoam Photo Gameplay", "Stop", "box_MapPointController_v4_11.Hide", self, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|76596671", "76596671", "FreeRoam Photo Gameplay", "box_Ordered_Output_14.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|34051073", "34051073", "FreeRoam Photo Gameplay", "box_Ordered_Output_14.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_CLOMonitor_1_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CLOMonitor_1
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|873157608", "873157608", "FreeRoam Photo Gameplay", "box_CLOMonitor_1.Disabled", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_1_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_CLOMonitor_1()
  l0 = self.box_CLOMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|847171713", "847171713", "FreeRoam Photo Gameplay", "box_CLOMonitor_1.Enabled", "box_CLOMonitor_1.GetUser", l0, l0)
  l0:GetUser()
end
function export:f_box_CLOMonitor_1_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Target = l0.UserID
  self:OnEnter_box_OnceOnly_v3_15()
  l1 = self.box_OnceOnly_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1631346981", "1631346981", "FreeRoam Photo Gameplay", "box_CLOMonitor_1.GotUser", "box_OnceOnly_v3_15.In", l0, l1)
  l1:In(0)
end
function export:f_box_CLOMonitor_1_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Target = l0.UserID
end
function export:f_box_CLOMonitor_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Target = l0.UserID
  self:OnEnter_box_OnceOnly_v3_15()
  l1 = self.box_OnceOnly_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|293811676", "293811676", "FreeRoam Photo Gameplay", "box_CLOMonitor_1.OnUserInPlace", "box_OnceOnly_v3_15.In", l0, l1)
  l1:In(1)
end
function export:f_box_CLOMonitor_1_OnUserUnspawn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CLOMonitor_1
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1704141170", "1704141170", "FreeRoam Photo Gameplay", "box_CLOMonitor_1.OnUserUnspawn", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_15()
  l0 = self.box_MultipleOR_12
  l1 = self.box_OnceOnly_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1654469023", "1654469023", "FreeRoam Photo Gameplay", "box_MultipleOR_12.Out", "box_OnceOnly_v3_15.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_1()
  l0 = self.box_MultipleOR_7
  l1 = self.box_CLOMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1018556286", "1018556286", "FreeRoam Photo Gameplay", "box_MultipleOR_7.Out", "box_CLOMonitor_1.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_10_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_17
  l0.Entity = self.Target
  l0 = self.box_MapPointController_v4_10
  l1 = self.box_Intel_Controller_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|694673209", "694673209", "FreeRoam Photo Gameplay", "box_MapPointController_v4_10.Hidden", "box_Intel_Controller_17.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_8_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_6()
  l0 = self.box_Progression_Tag_Monitor_8
  l1 = self.box_Progression_Tag_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1168242599", "1168242599", "FreeRoam Photo Gameplay", "box_Progression_Tag_Monitor_8.HasNOT", "box_Progression_Tag_Monitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|2023139626", "2023139626", "FreeRoam Photo Gameplay", "box_Ordered_Output_5.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1349768254"
  l0.Out = self.f_box_Simple_Node_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1007554227", "1007554227", "FreeRoam Photo Gameplay", "box_Ordered_Output_5.Out", "box_Simple_Node_13.In", clone, l0)
  l0:In()
end
function export:f_box_Progression_Tag_Monitor_6_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1123987824"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_Progression_Tag_Monitor_6
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1043406500", "1043406500", "FreeRoam Photo Gameplay", "box_Progression_Tag_Monitor_6.Enabled", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_6_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|662171001"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_Progression_Tag_Monitor_6
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1643499483", "1643499483", "FreeRoam Photo Gameplay", "box_Progression_Tag_Monitor_6.TagIsOwned", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_4_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_10
  l0.MapPoint = self.MapPoint
  l0 = self.box_RewardController_v3_4
  l1 = self.box_MapPointController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|279619728", "279619728", "FreeRoam Photo Gameplay", "box_RewardController_v3_4.RewardsExecuted", "box_MapPointController_v4_10.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PhotoDetectionMonitor_2_ValidPhotoTaken()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DiscoveryController.lua")]
  l0.Entity = nil
  l0.CLO = self.CLO
  l0._graph = self
  l0._name = "box_Discovery_Controller_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1038470625"
  l0.DiscoveryStopped = self.f_box_Discovery_Controller_18_DiscoveryStopped
  l0 = self.box_PhotoDetectionMonitor_2
  l1 = Boxes[PathID("Domino/System/DiscoveryController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1136469398", "1136469398", "FreeRoam Photo Gameplay", "box_PhotoDetectionMonitor_2.ValidPhotoTaken", "box_Discovery_Controller_18.StopDiscovery", l0, l1)
  l1:StopDiscovery()
end
function export:f_box_Discovery_Controller_18_DiscoveryStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DiscoveryController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_4
  l0.ItemDB = self.ProgressionTagItem
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1826930132", "1826930132", "FreeRoam Photo Gameplay", "box_Discovery_Controller_18.DiscoveryStopped", "box_RewardController_v3_4.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_MapPointController_v4_9_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_8
  l0.ProgressionTag = self.ProgressionTag
  l0 = self.box_MapPointController_v4_9
  l1 = self.box_Progression_Tag_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|750372342", "750372342", "FreeRoam Photo Gameplay", "box_MapPointController_v4_9.Shown", "box_Progression_Tag_Monitor_8.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1072234787", "1072234787", "FreeRoam Photo Gameplay", "box_Ordered_Output_3.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_1()
  l0 = self.box_CLOMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|770229703", "770229703", "FreeRoam Photo Gameplay", "box_Ordered_Output_3.Out", "box_CLOMonitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Intel_Controller_17_Disabled()
  local l0
  self = self._graph
  l0 = self.box_Intel_Controller_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1010002539", "1010002539", "FreeRoam Photo Gameplay", "box_Intel_Controller_17.Disabled", "PhotoTaken", l0, self)
  self:PhotoTaken()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_6()
  l0 = self.box_Progression_Tag_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1196892912", "1196892912", "FreeRoam Photo Gameplay", "box_Simple_Node_13.Out", "box_Progression_Tag_Monitor_6.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Intel_Controller_16_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PhotoDetectionMonitor_2()
  l0 = self.box_Intel_Controller_16
  l1 = self.box_PhotoDetectionMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1530714524", "1530714524", "FreeRoam Photo Gameplay", "box_Intel_Controller_16.Enabled", "box_PhotoDetectionMonitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MapPointController_v4_11_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|35109326"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_MapPointController_v4_11
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|1259263067", "1259263067", "FreeRoam Photo Gameplay", "box_MapPointController_v4_11.Hidden", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_16
  l0.Entity = self.Target
  l0 = self.box_OnceOnly_v3_15
  l1 = self.box_Intel_Controller_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|2140568641", "2140568641", "FreeRoam Photo Gameplay", "box_OnceOnly_v3_15.Out", "box_Intel_Controller_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_15_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PhotoDetectionMonitor_2()
  l0 = self.box_OnceOnly_v3_15
  l1 = self.box_PhotoDetectionMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Photo Gameplay|94207299", "94207299", "FreeRoam Photo Gameplay", "box_OnceOnly_v3_15.ResetOut", "box_PhotoDetectionMonitor_2.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_CLOMonitor_1()
  local l0
  l0 = self.box_CLOMonitor_1
  l0.CLO = self.CLO
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_Progression_Tag_Monitor_6()
  local l0
  l0 = self.box_Progression_Tag_Monitor_6
  l0.ProgressionTag = self.ProgressionTag
end
function export:OnEnter_box_PhotoDetectionMonitor_2()
  local l0
  l0 = self.box_PhotoDetectionMonitor_2
  l0.TargetEntity = self.Target
  l0.TargetInViewText = self.TargetInViewText
  l0.PhotoType = self.PhotoType
end
function export:OnEnter_box_OnceOnly_v3_15()
end
function export:Stopped()
end
function export:Started()
end
function export:PhotoTaken()
end
_compilerVersion = 4
