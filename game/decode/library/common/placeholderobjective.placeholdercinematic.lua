export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v2.lua")
  cbox:RegisterBox("Domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Finished = DummyFunction
  self.tempString = ""
  self.SkipFadeInFromBlack = 0
  self.SkipFadeOutToBlack = 0
  self[5] = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Played = self.f_5_Played
  l0.Stopped = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = self.f_2_DisplayFinished
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Played = self.f_4_Played
  l0.Stopped = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.SetTrue = self.f_6_SetTrue
  l0.SetFalse = self.f_6_SetFalse
  l0.Toggled = self.f_6_Toggled
  l0.SetFromBool = self.f_6_SetFromBool
  self[3] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.SetTrue = self.f_3_SetTrue
  l0.SetFalse = self.f_3_SetFalse
  l0.Toggled = self.f_3_Toggled
  l0.SetFromBool = self.f_3_SetFromBool
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
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipFadeIn
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_1_Is_nil
  l0.Is_not_nil = self.f_1_Is_not_nil
  l0:In()
end
function export:f_1_Is_nil()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:False()
end
function export:f_1_Is_not_nil()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:FromBool()
end
function export:f_9_A_is_False()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SequenceName = "postcinematic"
  l0:StartPostFX()
end
function export:f_9_A_is_True()
  self = self._graph
  self:Finished()
end
function export:f_5_Played()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Display()
end
function export:f_2_DisplayFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipFadeOutToBlack
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = self.f_9_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_8_A_is_False()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SequenceName = "precinematic"
  l0:StartPostFX()
end
function export:f_8_A_is_True()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Display()
end
function export:f_7_Is_nil()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:False()
end
function export:f_7_Is_not_nil()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:FromBool()
end
function export:f_4_Played()
  self = self._graph
  self:Finished()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[6]
  self.SkipFadeOutToBlack = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipFadeInFromBlack
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_8_A_is_True
  l0.A_is_False = self.f_8_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_SetFalse()
  local l0
  self = self._graph
  l0 = self[6]
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_6_SetFromBool()
  local l0
  self = self._graph
  l0 = self[6]
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_6_SetTrue()
  local l0
  self = self._graph
  l0 = self[6]
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_6_Toggled()
  local l0
  self = self._graph
  l0 = self[6]
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[3]
  self.SkipFadeInFromBlack = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipFadeOut
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_7_Is_nil
  l0.Is_not_nil = self.f_7_Is_not_nil
  l0:In()
end
function export:f_3_SetFalse()
  local l0
  self = self._graph
  l0 = self[3]
  self.SkipFadeInFromBlack = l0.Target
end
function export:f_3_SetFromBool()
  local l0
  self = self._graph
  l0 = self[3]
  self.SkipFadeInFromBlack = l0.Target
end
function export:f_3_SetTrue()
  local l0
  self = self._graph
  l0 = self[3]
  self.SkipFadeInFromBlack = l0.Target
end
function export:f_3_Toggled()
  local l0
  self = self._graph
  l0 = self[3]
  self.SkipFadeInFromBlack = l0.Target
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.MessageType = "MissionDebug"
  l0.MessageIcon = "iconDebug"
  l0.Duration = 5
  l0.DebugHeader = self.SceneName
  l0.DebugText = self.Descriptive_Text
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Bool = self.SkipFadeOut
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Bool = self.SkipFadeIn
end
function export:Finished()
end
_compilerVersion = 4
