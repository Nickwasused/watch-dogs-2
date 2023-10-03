export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MediaSystemController.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PawnHealthController.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "IOP_StartUp"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_MissionCheckpointReach_8 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_8
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|670891213"
  l0.Out = self.f_box_MissionCheckpointReach_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_5 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|772625847"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1507672533"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1640599808"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1899015142"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
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
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1853159069"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|2038314317", "2038314317", "IOP_StartUp", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_3_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.MainLayer
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|856986427"
  l0.Is_nil = self.f_box_Test_if_Nil_4_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|686378711", "686378711", "IOP_StartUp", "box_SetActionMap_v2_3.Pushed", "box_Test_if_Nil_4.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1129407290", "1129407290", "IOP_StartUp", "box_Test_if_Nil_7.Is_nil", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_8
  l0.Checkpoint = self.CheckPoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|58687206", "58687206", "IOP_StartUp", "box_Test_if_Nil_7.Is_not_nil", "box_MissionCheckpointReach_8.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_10_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1516554853", "1516554853", "IOP_StartUp", "box_SetActionMap_v2_10.Popped", "Out", clone, self)
  self:Out()
end
function export:f_box_Cinema_Zone_Cleanup_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1361102088", "1361102088", "IOP_StartUp", "box_Cinema_Zone_Cleanup_11.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionCheckpointReach_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MissionCheckpointReach_8
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|714423891", "714423891", "IOP_StartUp", "box_MissionCheckpointReach_8.Out", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MediaSystemController_14_BroadcastStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MediaSystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|261882581"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_3_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1820482771", "1820482771", "IOP_StartUp", "box_MediaSystemController_14.BroadcastStopped", "box_SetActionMap_v2_3.Push", clone, l0)
  l0:Push()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|265727582", "265727582", "IOP_StartUp", "box_MissionLayer_v2_5.Loaded", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Test_if_Nil_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1888482162", "1888482162", "IOP_StartUp", "box_Test_if_Nil_12.Is_nil", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = self.CinemaZone
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = 0
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|622657976"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|2053897016", "2053897016", "IOP_StartUp", "box_Test_if_Nil_12.Is_not_nil", "box_Cinema_Zone_Cleanup_11.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Test_if_Nil_4_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1991988261", "1991988261", "IOP_StartUp", "box_Test_if_Nil_4.Is_nil", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = self.MainLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1078326956", "1078326956", "IOP_StartUp", "box_Test_if_Nil_4.Is_not_nil", "box_MissionLayer_v2_5.Load", clone, l0)
  l0:Load()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|559748881"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_10_Popped
  l0 = self.box_MultipleOR_13
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|2123710805", "2123710805", "IOP_StartUp", "box_MultipleOR_13.Out", "box_SetActionMap_v2_10.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.CinemaZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|792748524"
  l0.Is_nil = self.f_box_Test_if_Nil_12_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_12_Is_not_nil
  l0 = self.box_MultipleOR_9
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|625418235", "625418235", "IOP_StartUp", "box_MultipleOR_9.Out", "box_Test_if_Nil_12.In", l0, l1)
  l1:In()
end
function export:f_box_Pawn_Health_Controller_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MediaSystemController.lua")]
  l0.BroadcastType = nil
  l0.BroadcastInfo = nil
  l0._graph = self
  l0._name = "box_MediaSystemController_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|739279307"
  l0.BroadcastStarted = DummyFunction
  l0.BroadcastStopped = self.f_box_MediaSystemController_14_BroadcastStopped
  l0.SystemPaused = DummyFunction
  l0.SystemUnpaused = DummyFunction
  l0.Unloaded = DummyFunction
  l0.Reloaded = DummyFunction
  l0.OnDisabledSpecialBroadcastSubtitles = DummyFunction
  l0.OnReenabledSpecialBroadcastSubtitles = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|512369451", "512369451", "IOP_StartUp", "box_Pawn_Health_Controller_2.Out", "box_MediaSystemController_14.StopCurrentBroadcast", clone, l0)
  l0:StopCurrentBroadcast()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1850775300"
  l0.Out = self.f_box_Pawn_Health_Controller_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1621261526", "1621261526", "IOP_StartUp", "box_Get_Player_ID_1.Out", "box_Pawn_Health_Controller_2.SetInvincible", clone, l0)
  l0:SetInvincible()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.CheckPoint
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|541607896"
  l0.Is_nil = self.f_box_Test_if_Nil_7_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_7_Is_not_nil
  l0 = self.box_MultipleOR_6
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_StartUp|1056323541", "1056323541", "IOP_StartUp", "box_MultipleOR_6.Out", "box_Test_if_Nil_7.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:Out()
end
_compilerVersion = 4
