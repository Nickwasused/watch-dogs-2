export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/Bind_v2.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/KeyIntelController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("Domino/System/SecurityCamController.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "HiddenCameraSetup"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup"
  self.Out = DummyFunction
  self.box_PawnHealthMonitor_v3_4 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_4
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|329102379"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_4_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_4_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_4_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Security_Camera_Monitor_5 = cbox:CreateBox("Domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_5
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|654167810"
  l0.Enabled = self.f_box_Security_Camera_Monitor_5_Enabled
  l0.Disabled = self.f_box_Security_Camera_Monitor_5_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_5_OnEndAccessCamera
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_5_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1134665200"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_KeyIntel_Controller_8 = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self.box_KeyIntel_Controller_8
  l0._graph = self
  l0._name = "box_KeyIntel_Controller_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1319836562"
  l0.Set = DummyFunction
  l0.Reset = self.f_box_KeyIntel_Controller_8_Reset
  self.box_HackableController_v2_2 = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_2
  l0._graph = self
  l0._name = "box_HackableController_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1437656176"
  l0.Enabled = self.f_box_HackableController_v2_2_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1760412755"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_HackableController_v2_3 = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_3
  l0._graph = self
  l0._name = "box_HackableController_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1792106358"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_3_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_3_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  self:OnEnter_box_PawnHealthMonitor_v3_4()
  l0 = self.box_PawnHealthMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1314228739", "1314228739", "HiddenCameraSetup", "In", "box_PawnHealthMonitor_v3_4.Enable", self, l0)
  l0:Enable()
end
function export:Stop()
  local l0
  self:OnEnter_box_PawnHealthMonitor_v3_4()
  l0 = self.box_PawnHealthMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1054917424", "1054917424", "HiddenCameraSetup", "Stop", "box_PawnHealthMonitor_v3_4.Disable", self, l0)
  l0:Disable()
end
function export:f_box_Bind_v2_1_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|140245791", "140245791", "HiddenCameraSetup", "box_Bind_v2_1.Bound", "Out", clone, self)
  self:Out()
end
function export:f_box_SecurityCamController_7_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1905193128", "1905193128", "HiddenCameraSetup", "box_SecurityCamController_7.UserForcedOutOfCamera", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_6()
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|54000431", "54000431", "HiddenCameraSetup", "box_Simple_Node_10.Out", "box_VisibilityController_v2_6.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PawnHealthMonitor_v3_4_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_PawnHealthMonitor_v3_4
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1072123918", "1072123918", "HiddenCameraSetup", "box_PawnHealthMonitor_v3_4.Disabled", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PawnHealthMonitor_v3_4_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_5()
  l0 = self.box_PawnHealthMonitor_v3_4
  l1 = self.box_Security_Camera_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1745773348", "1745773348", "HiddenCameraSetup", "box_PawnHealthMonitor_v3_4.Enabled", "box_Security_Camera_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v3_4_Killed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.HiddenCamera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|182300064"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_7_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1413471374", "1413471374", "HiddenCameraSetup", "box_PawnHealthMonitor_v3_4.Killed", "box_SecurityCamController_7.ForceUserOutOfCamera", l0, l1)
  l1:ForceUserOutOfCamera()
end
function export:f_box_Security_Camera_Monitor_5_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|983371838"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_Security_Camera_Monitor_5
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|607989703", "607989703", "HiddenCameraSetup", "box_Security_Camera_Monitor_5.Disabled", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_5_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_3()
  l0 = self.box_Security_Camera_Monitor_5
  l1 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1701006504", "1701006504", "HiddenCameraSetup", "box_Security_Camera_Monitor_5.Enabled", "box_HackableController_v2_3.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Security_Camera_Monitor_5_OnEndAccessCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|279852034"
  l0.Out = self.f_box_Simple_Node_10_Out
  l0 = self.box_Security_Camera_Monitor_5
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1159651453", "1159651453", "HiddenCameraSetup", "box_Security_Camera_Monitor_5.OnEndAccessCamera", "box_Simple_Node_10.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_5_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_Security_Camera_Monitor_5
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|2015997024", "2015997024", "HiddenCameraSetup", "box_Security_Camera_Monitor_5.OnStartExitCamera", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_3()
  l0 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|2023976316", "2023976316", "HiddenCameraSetup", "box_Ordered_Output_9.Out", "box_HackableController_v2_3.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1632295652", "1632295652", "HiddenCameraSetup", "box_Ordered_Output_9.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_5()
  l0 = self.box_MultipleOR_11
  l1 = self.box_Security_Camera_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1136641477", "1136641477", "HiddenCameraSetup", "box_MultipleOR_11.Out", "box_Security_Camera_Monitor_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_KeyIntel_Controller_8_Reset()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_2()
  l0 = self.box_KeyIntel_Controller_8
  l1 = self.box_HackableController_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1937516684", "1937516684", "HiddenCameraSetup", "box_KeyIntel_Controller_8.Reset", "box_HackableController_v2_2.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_2_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.NPC
  l0.Child = self.HiddenCamera
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = 1
  l0._graph = self
  l0._name = "box_Bind_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|129457594"
  l0.Bound = self.f_box_Bind_v2_1_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_2
  l1 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1795846515", "1795846515", "HiddenCameraSetup", "box_HackableController_v2_2.Enabled", "box_Bind_v2_1.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_6()
  l0 = self.box_MultipleOR_12
  l1 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1469730360", "1469730360", "HiddenCameraSetup", "box_MultipleOR_12.Out", "box_VisibilityController_v2_6.Show", l0, l1)
  l1:Show()
end
function export:f_box_HackableController_v2_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_2()
  l0 = self.box_HackableController_v2_3
  l1 = self.box_HackableController_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1972250827", "1972250827", "HiddenCameraSetup", "box_HackableController_v2_3.Disabled", "box_HackableController_v2_2.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_3_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_KeyIntel_Controller_8
  l0.Entity = self.NPC
  l0 = self.box_HackableController_v2_3
  l1 = self.box_KeyIntel_Controller_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|1897807788", "1897807788", "HiddenCameraSetup", "box_HackableController_v2_3.ProfilingEnabled", "box_KeyIntel_Controller_8.ResetKeyIntel", l0, l1)
  l1:ResetKeyIntel()
end
function export:OnEnter_box_PawnHealthMonitor_v3_4()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_4
  l0.Pawn = self.NPC
  l0.CheckNow = 1
end
function export:OnEnter_box_Security_Camera_Monitor_5()
  local l0
  l0 = self.box_Security_Camera_Monitor_5
  l0.CameraEntity = self.HiddenCamera
end
function export:OnEnter_box_VisibilityController_v2_6()
  local l0
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.NPC
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\HiddenCamera.domino|@HiddenCameraSetup|917323321"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_HackableController_v2_2()
  local l0
  l0 = self.box_HackableController_v2_2
  l0.HackableEntity = self.HiddenCamera
  l0.OasisProfilerInfo = self.Profile
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_HackableController_v2_3()
  local l0
  l0 = self.box_HackableController_v2_3
  l0.HackableEntity = self.NPC
  l0.OasisProfilerInfo = self.Profile
  l0.ProfileLinkedToHack = 1
end
function export:Out()
end
_compilerVersion = 4
