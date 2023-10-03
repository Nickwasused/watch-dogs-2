export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("Domino/System/FormatString.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Fetched = DummyFunction
  self.Enabled = DummyFunction
  self.PlayerCountChanged = DummyFunction
  self.newPlayerCount = " "
  self.PlayerCountInternal = 0
  self.newPlayerCountInt = 0
  self[1] = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_1_Executed
  self[3] = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_3_Executed
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Enable()
  local l0
  l0 = self[1]
  l0.Command = "SetPlayerCountMP"
  l0:Enable()
end
function export:Fetch()
  local l0
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.PlayerCountInternal
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:FromInteger()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.PlayerCountInternal = l0.Target
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.PlayerCountInternal
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:FromInteger()
end
function export:f_5_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FormatString.lua")]
  self._sld_Target_5 = l0.Target
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_5
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.newPlayerCountInt
  l0.B = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_8_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_8_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.PlayerCount = l0.Target
  self:Fetched()
end
function export:f_1_Enabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Command = "GetPlayerCountMP"
  l0:Enable()
end
function export:f_1_Executed()
  local l0
  self = self._graph
  l0 = self[1]
  self.newPlayerCount = l0.Parameter
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = nil
  l0.String = self.newPlayerCount
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:FromString()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.newPlayerCountInt = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = self.newPlayerCountInt
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.List = nil
  l0._graph = self
  l0.Is_nil = self.f_12_Is_nil
  l0.Is_not_nil = self.f_12_Is_not_nil
  l0:In()
end
function export:f_8_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.newPlayerCountInt
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:FromInteger()
end
function export:f_8_A_lt_B()
  local l0
  self = self._graph
  self:en_10()
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0:In()
end
function export:f_3_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_3_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FormatString.lua")]
  l0.FormatString = "There are currently %d players."
  l0.String[0] = nil
  l0.String[1] = nil
  l0.Float[0] = nil
  l0.Float[1] = nil
  l0.Integer[0] = self.PlayerCountInternal
  l0.Integer[1] = nil
  l0.Boolean[0] = nil
  l0.Boolean[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l0.Formatted = self.f_5_Formatted
  l0:Format()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.PlayerCount = l0.Target
  self:PlayerCountChanged()
end
function export:en_10()
  local l0
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "ERROR!   Usage:   domino_SetPlayerCountMP <number of players>"
  l0.Duration = 10
  l0.Color = "Red"
  l0._graph = self
  l0.Out = DummyFunction
end
function export:Fetched()
end
function export:Enabled()
end
function export:PlayerCountChanged()
end
_compilerVersion = 4
