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
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.PlayerDead = DummyFunction
  self.LocalPlayer = nil
  self[2] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Output = 3}
  l0.Out = DummyFunction
  l0.Output[0] = DummyFunction
  l0.Output[1] = DummyFunction
  l0.Output[2] = self.f_2_Output_2
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/SendDamage.lua")
  l0 = self[1]
  l0._graph = self
  l0.DamageSent = self.f_1_DamageSent
  self[3] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v4.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = self.f_3_Disabled
  l0.Damaged = DummyFunction
  l0.DamageReceived = self.f_3_DamageReceived
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
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_2_Output_2()
  local l0
  self = self._graph
  l0 = self[1]
  l0.PlayerEntity = self.LocalPlayer
  l0.DamageSource = self.LocalPlayer
  l0.DamageLevel = 1000
  l0.DamageType = "Bullet"
  l0.DamageLocation = "Head"
  l0:Send()
end
function export:f_1_DamageSent()
  self = self._graph
  self:PlayerDead()
end
function export:f_3_DamageReceived()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In()
end
function export:f_3_Disabled()
  self = self._graph
  self:Disabled()
end
function export:f_3_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.LocalPlayer = l0.PlayerID
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Pawn = self.LocalPlayer
end
function export:Enabled()
end
function export:Disabled()
end
function export:PlayerDead()
end
_compilerVersion = 4
