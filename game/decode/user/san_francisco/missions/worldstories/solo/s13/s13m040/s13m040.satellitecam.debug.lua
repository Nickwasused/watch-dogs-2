export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "SatelliteCam"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam"
  self.Out = DummyFunction
  self.box_Security_Camera_Monitor_23 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_23
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1578299297"
  l0.Enabled = self.f_box_Security_Camera_Monitor_23_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_23_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_23_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1641512737"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
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
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.AtomsphereEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1272234064"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_32_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|2033613746", "2033613746", "SatelliteCam", "In", "box_VisibilityController_v2_32.Hide", self, l0)
  l0:Hide()
end
function export:f_box_Test_if_Nil_1_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1892553313", "1892553313", "SatelliteCam", "box_Test_if_Nil_1.Is_nil", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_1_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.CameraAttachmentEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1240016234"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_31_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|755170133", "755170133", "SatelliteCam", "box_Test_if_Nil_1.Is_not_nil", "box_VisibilityController_v2_31.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Test_if_Nil_25_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_26()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1596281420", "1596281420", "SatelliteCam", "box_Test_if_Nil_25.Is_not_nil", "box_VisibilityController_v2_26.Show", clone, l0)
  l0:Show()
end
function export:f_box_Test_if_Nil_28_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_26()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|332444708", "332444708", "SatelliteCam", "box_Test_if_Nil_28.Is_not_nil", "box_VisibilityController_v2_26.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_4_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1645058303", "1645058303", "SatelliteCam", "box_CollisionController_4.CollisionsDisabled", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_VisibilityController_v2_24_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.CameraAttachmentEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|341598623"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_28_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|330027826", "330027826", "SatelliteCam", "box_VisibilityController_v2_24.Hidden", "box_Test_if_Nil_28.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_24_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.CameraAttachmentEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|222804263"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_25_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|810094764", "810094764", "SatelliteCam", "box_VisibilityController_v2_24.Shown", "box_Test_if_Nil_25.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_31_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.CameraAttachmentEntity
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|854315829"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_4_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|2096671187", "2096671187", "SatelliteCam", "box_VisibilityController_v2_31.Hidden", "box_CollisionController_4.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_32_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.CameraAttachmentEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|140389486"
  l0.Is_nil = self.f_box_Test_if_Nil_1_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_1_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1166687489", "1166687489", "SatelliteCam", "box_VisibilityController_v2_32.Hidden", "box_Test_if_Nil_1.In", clone, l0)
  l0:In()
end
function export:f_box_Security_Camera_Monitor_23_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Security_Camera_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1112445593", "1112445593", "SatelliteCam", "box_Security_Camera_Monitor_23.Enabled", "Out", l0, self)
  self:Out()
end
function export:f_box_Security_Camera_Monitor_23_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_24()
  l0 = self.box_Security_Camera_Monitor_23
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|621321973", "621321973", "SatelliteCam", "box_Security_Camera_Monitor_23.OnStartAccessCamera", "box_VisibilityController_v2_24.Show", l0, l1)
  l1:Show()
end
function export:f_box_Security_Camera_Monitor_23_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_24()
  l0 = self.box_Security_Camera_Monitor_23
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|901892022", "901892022", "SatelliteCam", "box_Security_Camera_Monitor_23.OnStartExitCamera", "box_VisibilityController_v2_24.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SecurityCamController_5_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_23
  l0.CameraEntity = self.CameraEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|191065579", "191065579", "SatelliteCam", "box_SecurityCamController_5.InitialTargetSet", "box_Security_Camera_Monitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.CameraEntity
  l0.CameraEntityList = nil
  l0.TargetEntity = self.InitialTarget
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1634173889"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_5_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1954847854", "1954847854", "SatelliteCam", "box_MultipleOR_2.Out", "box_SecurityCamController_5.SetInitialTarget", l0, l1)
  l1:SetInitialTarget()
end
function export:OnEnter_box_VisibilityController_v2_24()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.AtomsphereEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|950767838"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_24_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_24_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_26()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.CameraAttachmentEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@SatelliteCam|1278843307"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_2()
end
function export:Out()
end
_compilerVersion = 4
