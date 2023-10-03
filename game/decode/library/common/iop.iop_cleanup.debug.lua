export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/IOPController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PawnHealthController.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "IOP_CleanUp"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp"
  self.DisconnectedAnimationPlayed = DummyFunction
  self.Completed = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.ATM_Camera = "9223372049706323852"
  self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|375530795"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_AI_IOPController_3 = cbox:CreateBox("Domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_3
  l0._graph = self
  l0._name = "box_AI_IOPController_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1885474119"
  l0.Out = self.f_box_AI_IOPController_3_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_3_IOPKickOutComplete
  self.box_HackableController_v2_6 = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_6
  l0._graph = self
  l0._name = "box_HackableController_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|2145406124"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_6_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
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
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1859046942"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1728284964", "1728284964", "IOP_CleanUp", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_Pawn_Health_Controller_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.SecurityCameraList
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1034791474"
  l0.Is_nil = self.f_box_Test_if_Nil_4_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1753348677", "1753348677", "IOP_CleanUp", "box_Pawn_Health_Controller_2.Out", "box_Test_if_Nil_4.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_3
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_MultipleOR_5
  l1 = self.box_AI_IOPController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|2018499946", "2018499946", "IOP_CleanUp", "box_MultipleOR_5.Out", "box_AI_IOPController_3.TriggerIOPDisconnectScreenAndKickOut", l0, l1)
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Test_if_Nil_4_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|968785398", "968785398", "IOP_CleanUp", "box_Test_if_Nil_4.Is_nil", "box_MultipleOR_5.Input", clone, l0)
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
  l0 = self.box_HackableController_v2_6
  l0.HackableEntityList = self.SecurityCameraList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1534794896", "1534794896", "IOP_CleanUp", "box_Test_if_Nil_4.Is_not_nil", "box_HackableController_v2_6.DisableHack", clone, l0)
  l0:DisableHack()
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
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|250463404"
  l0.Out = self.f_box_Pawn_Health_Controller_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1730608359", "1730608359", "IOP_CleanUp", "box_Get_Player_ID_1.Out", "box_Pawn_Health_Controller_2.UnsetInvincible", clone, l0)
  l0:UnsetInvincible()
end
function export:f_box_AI_IOPController_3_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self.box_AI_IOPController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|515631759", "515631759", "IOP_CleanUp", "box_AI_IOPController_3.IOPKickOutComplete", "Completed", l0, self)
  self:Completed()
end
function export:f_box_AI_IOPController_3_Out()
  local l0
  self = self._graph
  l0 = self.box_AI_IOPController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|652208729", "652208729", "IOP_CleanUp", "box_AI_IOPController_3.Out", "DisconnectedAnimationPlayed", l0, self)
  self:DisconnectedAnimationPlayed()
end
function export:f_box_HackableController_v2_6_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_HackableController_v2_6
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\IOP.domino|@IOP_CleanUp|1227757472", "1227757472", "IOP_CleanUp", "box_HackableController_v2_6.Disabled", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_MultipleOR_5()
end
function export:DisconnectedAnimationPlayed()
end
function export:Completed()
end
function export:Out()
end
_compilerVersion = 4
