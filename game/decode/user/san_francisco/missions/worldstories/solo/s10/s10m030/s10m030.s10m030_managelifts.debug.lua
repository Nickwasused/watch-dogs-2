export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/4075311810.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1732618735.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/120256320.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1857481464.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2344623958.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/962520994.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3411970017.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1936918042.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S10M030_ManageLifts"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts"
  self.OpenDoorsElevatorLaunched = DummyFunction
  self.MoveElevatorUpFinished = DummyFunction
  self.MoveElevatorDownFinished = DummyFunction
  self.DoorsElevatorClosed = DummyFunction
  self.OpenDoorsExtLaunched = DummyFunction
  self.CloseDoorsExtLaunched = DummyFunction
  self.CloseDoorsElevatorLaunched = DummyFunction
  self.MoveElevatorUpStarted = DummyFunction
  self.MoveElevatorDownStarted = DummyFunction
  self.box_PlaySound_v2_9 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_9
  l0._graph = self
  l0._name = "box_PlaySound_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|250681435"
  l0.Out = self.f_box_PlaySound_v2_9_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Moveable_Entity_Monitor_8 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_8
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|599898117"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_8_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_8_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|937725258"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_PlaySound_v2_1 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|957350752"
  l0.Out = self.f_box_PlaySound_v2_1_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_17 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_17
  l0._graph = self
  l0._name = "box_PlaySound_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1044806911"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_12 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_12
  l0._graph = self
  l0._name = "box_PlaySound_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1045248623"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_14 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_14
  l0._graph = self
  l0._name = "box_PlaySound_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1445098930"
  l0.Out = self.f_box_PlaySound_v2_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1587243972"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1627421123"
  l0.Out = self.f_box_PlaySound_v2_6_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Moveable_Entity_Monitor_56 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_56
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1648716131"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_56_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_56_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1752013372"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1831265924"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_PlaySound_v2_10 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_10
  l0._graph = self
  l0._name = "box_PlaySound_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1906508015"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_7 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_7
  l0._graph = self
  l0._name = "box_PlaySound_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1911321094"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CloseDoorsElevator()
  local l0
  l0 = self.box_PlaySound_v2_1
  l0.SoundId = "soundbinary/120256320.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1012683038", "1012683038", "S10M030_ManageLifts", "CloseDoorsElevator", "box_PlaySound_v2_1.Play", self, l0)
  l0:Play()
end
function export:CloseDoorsExt()
  local l0
  self:OnEnter_box_MoveableEntityController_70()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|607383691", "607383691", "S10M030_ManageLifts", "CloseDoorsExt", "box_MoveableEntityController_70.MoveForward", self, l0)
  l0:MoveForward()
end
function export:MoveElevatorDown()
  local l0
  l0 = self.box_PlaySound_v2_14
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/4075311810.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1075114816", "1075114816", "S10M030_ManageLifts", "MoveElevatorDown", "box_PlaySound_v2_14.Play", self, l0)
  l0:Play()
end
function export:MoveElevatorUp()
  local l0
  l0 = self.box_PlaySound_v2_9
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/1857481464.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|18984499", "18984499", "S10M030_ManageLifts", "MoveElevatorUp", "box_PlaySound_v2_9.Play", self, l0)
  l0:Play()
end
function export:OpenDoorsElevator()
  local l0
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/962520994.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1352780559", "1352780559", "S10M030_ManageLifts", "OpenDoorsElevator", "box_PlaySound_v2_6.Play", self, l0)
  l0:Play()
end
function export:OpenDoorsExt()
  local l0
  self:OnEnter_box_MoveableEntityController_70()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|2081716115", "2081716115", "S10M030_ManageLifts", "OpenDoorsExt", "box_MoveableEntityController_70.MoveBackward", self, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_45_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_48()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1200865073", "1200865073", "S10M030_ManageLifts", "box_MoveableEntityController_45.MovedBackward", "box_MoveableEntityController_48.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_45_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_48()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|471401621", "471401621", "S10M030_ManageLifts", "box_MoveableEntityController_45.MovedForward", "box_MoveableEntityController_48.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MoveableEntityController_32_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_44()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1216372455", "1216372455", "S10M030_ManageLifts", "box_MoveableEntityController_32.MovedBackward", "box_MoveableEntityController_44.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_32_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_44()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1473072417", "1473072417", "S10M030_ManageLifts", "box_MoveableEntityController_32.MovedForward", "box_MoveableEntityController_44.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MoveableEntityController_52_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_42()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|387000557", "387000557", "S10M030_ManageLifts", "box_MoveableEntityController_52.MovedBackward", "box_MoveableEntityController_42.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_52_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_42()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|174907951", "174907951", "S10M030_ManageLifts", "box_MoveableEntityController_52.MovedForward", "box_MoveableEntityController_42.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MoveableEntityController_36_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_45()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1776021636", "1776021636", "S10M030_ManageLifts", "box_MoveableEntityController_36.MovedBackward", "box_MoveableEntityController_45.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_36_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_45()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|697253224", "697253224", "S10M030_ManageLifts", "box_MoveableEntityController_36.MovedForward", "box_MoveableEntityController_45.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_PlaySound_v2_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|740528709"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_PlaySound_v2_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1326319517", "1326319517", "S10M030_ManageLifts", "box_PlaySound_v2_9.Out", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_MoveableEntityController_53_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|891320695"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|945618289", "945618289", "S10M030_ManageLifts", "box_MoveableEntityController_53.MovedBackward", "box_Ordered_Output_20.In", clone, l0)
  l0:In()
end
function export:f_box_MoveableEntityController_53_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1954902732"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1022486522", "1022486522", "S10M030_ManageLifts", "box_MoveableEntityController_53.MovedForward", "box_Ordered_Output_19.In", clone, l0)
  l0:In()
end
function export:f_box_Moveable_Entity_Monitor_8_Disabled()
  local l0
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1104970076", "1104970076", "S10M030_ManageLifts", "box_Moveable_Entity_Monitor_8.Disabled", "DoorsElevatorClosed", l0, self)
  self:DoorsElevatorClosed()
end
function export:f_box_Moveable_Entity_Monitor_8_OnFwdMovementFinished()
  local l0
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_8()
  l0 = self.box_Moveable_Entity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|960395475", "960395475", "S10M030_ManageLifts", "box_Moveable_Entity_Monitor_8.OnFwdMovementFinished", "box_Moveable_Entity_Monitor_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MoveableEntityController_70_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|766537323", "766537323", "S10M030_ManageLifts", "box_MoveableEntityController_70.MovedBackward", "OpenDoorsExtLaunched", clone, self)
  self:OpenDoorsExtLaunched()
end
function export:f_box_MoveableEntityController_70_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|450620097", "450620097", "S10M030_ManageLifts", "box_MoveableEntityController_70.MovedForward", "CloseDoorsExtLaunched", clone, self)
  self:CloseDoorsExtLaunched()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1493030499", "1493030499", "S10M030_ManageLifts", "box_Ordered_Output_5.Out", "MoveElevatorUpFinished", clone, self)
  self:MoveElevatorUpFinished()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1197327819", "1197327819", "S10M030_ManageLifts", "box_Ordered_Output_5.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_5_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_7
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/1732618735.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|692687677", "692687677", "S10M030_ManageLifts", "box_Ordered_Output_5.Out", "box_PlaySound_v2_7.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_5_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1708253186", "1708253186", "S10M030_ManageLifts", "box_Ordered_Output_5.Out", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_53()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1105327791", "1105327791", "S10M030_ManageLifts", "box_Ordered_Output_13.Out", "box_MoveableEntityController_53.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|970496319", "970496319", "S10M030_ManageLifts", "box_Ordered_Output_13.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_53()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|514078829", "514078829", "S10M030_ManageLifts", "box_Ordered_Output_11.Out", "box_MoveableEntityController_53.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|210288253", "210288253", "S10M030_ManageLifts", "box_Ordered_Output_11.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1548699710", "1548699710", "S10M030_ManageLifts", "box_Ordered_Output_3.Out", "MoveElevatorDownFinished", clone, self)
  self:MoveElevatorDownFinished()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|724924992", "724924992", "S10M030_ManageLifts", "box_Ordered_Output_3.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_3_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_17
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/3411970017.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1673589511", "1673589511", "S10M030_ManageLifts", "box_Ordered_Output_3.Out", "box_PlaySound_v2_17.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_3_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1599662324", "1599662324", "S10M030_ManageLifts", "box_Ordered_Output_3.Out", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MoveableEntityController_33_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1865918393", "1865918393", "S10M030_ManageLifts", "box_MoveableEntityController_33.MovedBackward", "OpenDoorsElevatorLaunched", clone, self)
  self:OpenDoorsElevatorLaunched()
end
function export:f_box_MoveableEntityController_33_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1399852940"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|622282187", "622282187", "S10M030_ManageLifts", "box_MoveableEntityController_33.MovedForward", "box_Ordered_Output_18.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1350283558", "1350283558", "S10M030_ManageLifts", "box_Ordered_Output_20.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|9156773", "9156773", "S10M030_ManageLifts", "box_Ordered_Output_20.Out", "MoveElevatorDownStarted", clone, self)
  self:MoveElevatorDownStarted()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_12
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/1936918042.bnk"
  l0 = self.box_MultipleOR_16
  l1 = self.box_PlaySound_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1224585419", "1224585419", "S10M030_ManageLifts", "box_MultipleOR_16.Out", "box_PlaySound_v2_12.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MoveableEntityController_32()
  l0 = self.box_PlaySound_v2_1
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1396384410", "1396384410", "S10M030_ManageLifts", "box_PlaySound_v2_1.Out", "box_MoveableEntityController_32.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_MoveableEntityController_44_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_52()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|751545636", "751545636", "S10M030_ManageLifts", "box_MoveableEntityController_44.MovedBackward", "box_MoveableEntityController_52.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_44_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_52()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1030527075", "1030527075", "S10M030_ManageLifts", "box_MoveableEntityController_44.MovedForward", "box_MoveableEntityController_52.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_8()
  l0 = self.box_Moveable_Entity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|182625059", "182625059", "S10M030_ManageLifts", "box_Ordered_Output_18.Out", "box_Moveable_Entity_Monitor_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|242636460", "242636460", "S10M030_ManageLifts", "box_Ordered_Output_18.Out", "CloseDoorsElevatorLaunched", clone, self)
  self:CloseDoorsElevatorLaunched()
end
function export:f_box_PlaySound_v2_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|731051135"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_PlaySound_v2_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|2126945870", "2126945870", "S10M030_ManageLifts", "box_PlaySound_v2_14.Out", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_MoveableEntityController_48_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_33()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|623641579", "623641579", "S10M030_ManageLifts", "box_MoveableEntityController_48.MovedBackward", "box_MoveableEntityController_33.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_48_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_33()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|903681271", "903681271", "S10M030_ManageLifts", "box_MoveableEntityController_48.MovedForward", "box_MoveableEntityController_33.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MoveableEntityController_42_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_36()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|287727495", "287727495", "S10M030_ManageLifts", "box_MoveableEntityController_42.MovedBackward", "box_MoveableEntityController_36.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_42_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_36()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1063865234", "1063865234", "S10M030_ManageLifts", "box_MoveableEntityController_42.MovedForward", "box_MoveableEntityController_36.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_10
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/2344623958.bnk"
  l0 = self.box_MultipleOR_15
  l1 = self.box_PlaySound_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1388814191", "1388814191", "S10M030_ManageLifts", "box_MultipleOR_15.Out", "box_PlaySound_v2_10.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MoveableEntityController_32()
  l0 = self.box_PlaySound_v2_6
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|703807170", "703807170", "S10M030_ManageLifts", "box_PlaySound_v2_6.Out", "box_MoveableEntityController_32.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_Moveable_Entity_Monitor_56_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|778171782"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_3_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_3_Out_3
  l0 = self.box_Moveable_Entity_Monitor_56
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|2128789365", "2128789365", "S10M030_ManageLifts", "box_Moveable_Entity_Monitor_56.OnBkwMovementFinished", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_56_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|722502571"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_5_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_5_Out_3
  l0 = self.box_Moveable_Entity_Monitor_56
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|610236145", "610236145", "S10M030_ManageLifts", "box_Moveable_Entity_Monitor_56.OnFwdMovementFinished", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_56()
  l0 = self.box_MultipleOR_2
  l1 = self.box_Moveable_Entity_Monitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|918084740", "918084740", "S10M030_ManageLifts", "box_MultipleOR_2.Out", "box_Moveable_Entity_Monitor_56.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_56()
  l0 = self.box_MultipleOR_4
  l1 = self.box_Moveable_Entity_Monitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|843046375", "843046375", "S10M030_ManageLifts", "box_MultipleOR_4.Out", "box_Moveable_Entity_Monitor_56.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|428403754", "428403754", "S10M030_ManageLifts", "box_Ordered_Output_19.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|435796744", "435796744", "S10M030_ManageLifts", "box_Ordered_Output_19.Out", "MoveElevatorUpStarted", clone, self)
  self:MoveElevatorUpStarted()
end
function export:OnEnter_box_MoveableEntityController_45()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459206"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|16662831"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_45_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_45_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_32()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459194"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|159910104"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_32_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_32_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_52()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459196"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|228062972"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_52_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_52_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_36()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459202"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|241037929"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_36_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_36_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_53()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459192"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|560364338"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_53_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_53_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Moveable_Entity_Monitor_8()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_8
  l0.MoveableEntity = "9223372051857459208"
end
function export:OnEnter_box_MoveableEntityController_70()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372055806812084"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|708896645"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_70_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_70_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_33()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459208"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|881806724"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_33_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_33_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_MoveableEntityController_44()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459198"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1186732609"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_44_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_44_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_48()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459204"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1510276698"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_48_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_48_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_42()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459200"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageLifts|1548764492"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_42_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_42_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_Moveable_Entity_Monitor_56()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_56
  l0.MoveableEntity = "9223372051857459192"
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OpenDoorsElevatorLaunched()
end
function export:MoveElevatorUpFinished()
end
function export:MoveElevatorDownFinished()
end
function export:DoorsElevatorClosed()
end
function export:OpenDoorsExtLaunched()
end
function export:CloseDoorsExtLaunched()
end
function export:CloseDoorsElevatorLaunched()
end
function export:MoveElevatorUpStarted()
end
function export:MoveElevatorDownStarted()
end
_compilerVersion = 4
