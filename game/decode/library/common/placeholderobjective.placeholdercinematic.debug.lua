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
  self._name = "PlaceholderCinematic"
  self._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic"
  self.Finished = DummyFunction
  self.tempString = ""
  self.SkipFadeInFromBlack = 0
  self.SkipFadeOutToBlack = 0
  self.box_Player_PostFX_Controller_5 = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_5
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1008358284"
  l0.Played = self.f_box_Player_PostFX_Controller_5_Played
  l0.Stopped = DummyFunction
  self.box_MissionModuleBox_v2_2 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_2
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1085452478"
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = self.f_box_MissionModuleBox_v2_2_DisplayFinished
  l0.Out = DummyFunction
  self.box_Player_PostFX_Controller_4 = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_4
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1744757063"
  l0.Played = self.f_box_Player_PostFX_Controller_4_Played
  l0.Stopped = DummyFunction
  self.box_SetBoolean_v2_6 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_6
  l0._graph = self
  l0._name = "box_SetBoolean_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1760227025"
  l0.Out = self.f_box_SetBoolean_v2_6_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_6_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_6_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_6_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_6_SetFromBool
  self.box_SetBoolean_v2_3 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_3
  l0._graph = self
  l0._name = "box_SetBoolean_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1803879504"
  l0.Out = self.f_box_SetBoolean_v2_3_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_3_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_3_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_3_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_3_SetFromBool
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
  l0._name = "box_Test_if_Nil_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|19545597"
  l0.Is_nil = self.f_box_Test_if_Nil_1_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_1_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1704489166", "1704489166", "PlaceholderCinematic", "Start", "box_Test_if_Nil_1.In", self, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_1_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_3()
  l0 = self.box_SetBoolean_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|190943785", "190943785", "PlaceholderCinematic", "box_Test_if_Nil_1.Is_nil", "box_SetBoolean_v2_3.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_1_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_3()
  l0 = self.box_SetBoolean_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1521886826", "1521886826", "PlaceholderCinematic", "box_Test_if_Nil_1.Is_not_nil", "box_SetBoolean_v2_3.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_Compare_Boolean_v2_9_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Player_PostFX_Controller_4
  l0.SequenceName = "postcinematic"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|2000377137", "2000377137", "PlaceholderCinematic", "box_Compare_Boolean_v2_9.A_is_False", "box_Player_PostFX_Controller_4.StartPostFX", clone, l0)
  l0:StartPostFX()
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1126610398", "1126610398", "PlaceholderCinematic", "box_Compare_Boolean_v2_9.A_is_True", "Finished", clone, self)
  self:Finished()
end
function export:f_box_Player_PostFX_Controller_5_Played()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v2_2()
  l0 = self.box_Player_PostFX_Controller_5
  l1 = self.box_MissionModuleBox_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1635245423", "1635245423", "PlaceholderCinematic", "box_Player_PostFX_Controller_5.Played", "box_MissionModuleBox_v2_2.Display", l0, l1)
  l1:Display()
end
function export:f_box_MissionModuleBox_v2_2_DisplayFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipFadeOutToBlack
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|891344467"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_9_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionModuleBox_v2_2
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1107723284", "1107723284", "PlaceholderCinematic", "box_MissionModuleBox_v2_2.DisplayFinished", "box_Compare_Boolean_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_8_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Player_PostFX_Controller_5
  l0.SequenceName = "precinematic"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1504546353", "1504546353", "PlaceholderCinematic", "box_Compare_Boolean_v2_8.A_is_False", "box_Player_PostFX_Controller_5.StartPostFX", clone, l0)
  l0:StartPostFX()
end
function export:f_box_Compare_Boolean_v2_8_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v2_2()
  l0 = self.box_MissionModuleBox_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|332629326", "332629326", "PlaceholderCinematic", "box_Compare_Boolean_v2_8.A_is_True", "box_MissionModuleBox_v2_2.Display", clone, l0)
  l0:Display()
end
function export:f_box_Test_if_Nil_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_6()
  l0 = self.box_SetBoolean_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1376118569", "1376118569", "PlaceholderCinematic", "box_Test_if_Nil_7.Is_nil", "box_SetBoolean_v2_6.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_6()
  l0 = self.box_SetBoolean_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|301734340", "301734340", "PlaceholderCinematic", "box_Test_if_Nil_7.Is_not_nil", "box_SetBoolean_v2_6.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_Player_PostFX_Controller_4_Played()
  local l0
  self = self._graph
  l0 = self.box_Player_PostFX_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|303252331", "303252331", "PlaceholderCinematic", "box_Player_PostFX_Controller_4.Played", "Finished", l0, self)
  self:Finished()
end
function export:f_box_SetBoolean_v2_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.SkipFadeOutToBlack = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipFadeInFromBlack
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1265047410"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_8_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_8_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_6
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1702301487", "1702301487", "PlaceholderCinematic", "box_SetBoolean_v2_6.Out", "box_Compare_Boolean_v2_8.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_6_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_box_SetBoolean_v2_6_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_box_SetBoolean_v2_6_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_box_SetBoolean_v2_6_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.SkipFadeOutToBlack = l0.Target
end
function export:f_box_SetBoolean_v2_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
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
  l0._name = "box_Test_if_Nil_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1680481053"
  l0.Is_nil = self.f_box_Test_if_Nil_7_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_7_Is_not_nil
  l0 = self.box_SetBoolean_v2_3
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@PlaceholderCinematic|1473395873", "1473395873", "PlaceholderCinematic", "box_SetBoolean_v2_3.Out", "box_Test_if_Nil_7.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_3_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.SkipFadeInFromBlack = l0.Target
end
function export:f_box_SetBoolean_v2_3_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.SkipFadeInFromBlack = l0.Target
end
function export:f_box_SetBoolean_v2_3_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.SkipFadeInFromBlack = l0.Target
end
function export:f_box_SetBoolean_v2_3_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.SkipFadeInFromBlack = l0.Target
end
function export:OnEnter_box_MissionModuleBox_v2_2()
  local l0
  l0 = self.box_MissionModuleBox_v2_2
  l0.MessageType = "MissionDebug"
  l0.MessageIcon = "iconDebug"
  l0.Duration = 5
  l0.DebugHeader = self.SceneName
  l0.DebugText = self.Descriptive_Text
end
function export:OnEnter_box_SetBoolean_v2_6()
  local l0
  l0 = self.box_SetBoolean_v2_6
  l0.Bool = self.SkipFadeOut
end
function export:OnEnter_box_SetBoolean_v2_3()
  local l0
  l0 = self.box_SetBoolean_v2_3
  l0.Bool = self.SkipFadeIn
end
function export:Finished()
end
_compilerVersion = 4
