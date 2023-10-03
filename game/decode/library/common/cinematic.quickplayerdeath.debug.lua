export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("Domino/System/SendDamage.lua")
  cbox:RegisterBox("Domino/System/SwitchOutput_v3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "QuickPlayerDeath"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.PlayerDead = DummyFunction
  self.LocalPlayer = nil
  self.box_SwitchOutput_v3_2 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_2
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|527007286"
  l0._DynamicAnchors = {Output = 3}
  l0.Out = DummyFunction
  l0.Output[0] = DummyFunction
  l0.Output[1] = DummyFunction
  l0.Output[2] = self.f_box_SwitchOutput_v3_2_Output_2
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_SendDamageBox_1 = cbox:CreateBox("Domino/System/SendDamage.lua")
  l0 = self.box_SendDamageBox_1
  l0._graph = self
  l0._name = "box_SendDamageBox_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|1656019868"
  l0.DamageSent = self.f_box_SendDamageBox_1_DamageSent
  self.box_PawnHealthMonitor_v4_3 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v4.lua")
  l0 = self.box_PawnHealthMonitor_v4_3
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v4_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|1810225538"
  l0.Enabled = self.f_box_PawnHealthMonitor_v4_3_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v4_3_Disabled
  l0.Damaged = DummyFunction
  l0.DamageReceived = self.f_box_PawnHealthMonitor_v4_3_DamageReceived
  l0.Killed = DummyFunction
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  self:OnEnter_box_PawnHealthMonitor_v4_3()
  l0 = self.box_PawnHealthMonitor_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|1403322659", "1403322659", "QuickPlayerDeath", "Disable", "box_PawnHealthMonitor_v4_3.Disable", self, l0)
  l0:Disable()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|1838623987"
  l0.Out = self.f_box_Get_Player_ID_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|943584449", "943584449", "QuickPlayerDeath", "Enable", "box_Get_Player_ID_4.In", self, l0)
  l0:In()
end
function export:f_box_SwitchOutput_v3_2_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_SendDamageBox_1
  l0.PlayerEntity = self.LocalPlayer
  l0.DamageSource = self.LocalPlayer
  l0.DamageLevel = 1000
  l0.DamageType = "Bullet"
  l0.DamageLocation = "Head"
  l0 = self.box_SwitchOutput_v3_2
  l1 = self.box_SendDamageBox_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|1785997988", "1785997988", "QuickPlayerDeath", "box_SwitchOutput_v3_2.Output", "box_SendDamageBox_1.Send", l0, l1)
  l1:Send()
end
function export:f_box_SendDamageBox_1_DamageSent()
  local l0
  self = self._graph
  l0 = self.box_SendDamageBox_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|2131468746", "2131468746", "QuickPlayerDeath", "box_SendDamageBox_1.DamageSent", "PlayerDead", l0, self)
  self:PlayerDead()
end
function export:f_box_PawnHealthMonitor_v4_3_DamageReceived()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v4_3
  l1 = self.box_SwitchOutput_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|383473728", "383473728", "QuickPlayerDeath", "box_PawnHealthMonitor_v4_3.DamageReceived", "box_SwitchOutput_v3_2.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v4_3_Disabled()
  local l0
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|397765846", "397765846", "QuickPlayerDeath", "box_PawnHealthMonitor_v4_3.Disabled", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_PawnHealthMonitor_v4_3_Enabled()
  local l0
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|276521016", "276521016", "QuickPlayerDeath", "box_PawnHealthMonitor_v4_3.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_Get_Player_ID_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.LocalPlayer = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v4_3()
  l0 = self.box_PawnHealthMonitor_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@QuickPlayerDeath|652387322", "652387322", "QuickPlayerDeath", "box_Get_Player_ID_4.Out", "box_PawnHealthMonitor_v4_3.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_PawnHealthMonitor_v4_3()
  local l0
  l0 = self.box_PawnHealthMonitor_v4_3
  l0.Pawn = self.LocalPlayer
end
function export:Enabled()
end
function export:Disabled()
end
function export:PlayerDead()
end
_compilerVersion = 4
