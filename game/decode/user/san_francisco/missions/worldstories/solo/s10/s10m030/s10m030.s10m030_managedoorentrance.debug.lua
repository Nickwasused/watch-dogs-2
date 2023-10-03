export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/2106903556.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S10M030_ManageDoorEntrance"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance"
  self.HackEnabled = DummyFunction
  self.HackDisabled = DummyFunction
  self.DoorOpened = DummyFunction
  self.DoorClosed = DummyFunction
  self.DoorWithoutHackOpened = DummyFunction
  self.Door_Entrance = {}
  self.HackableEntity = nil
  self.Hinge_Hackable_Door_37 = "9223372069597546487"
  self.box_PlaySound_v2_5 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_5
  l0._graph = self
  l0._name = "box_PlaySound_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|309987019"
  l0.Out = self.f_box_PlaySound_v2_5_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_8 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_8
  l0._graph = self
  l0._name = "box_ListWriter_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|675656498"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_8_Added
  l0.Removed = self.f_box_ListWriter_8_Removed
  l0.Out = self.f_box_ListWriter_8_Out
  self.box_HackableController_v2_2 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_2
  l0._graph = self
  l0._name = "box_HackableController_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|830632135"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_2_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_ListWriter_6 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_6
  l0._graph = self
  l0._name = "box_ListWriter_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|1165755821"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_6_Added
  l0.Removed = self.f_box_ListWriter_6_Removed
  l0.Out = self.f_box_ListWriter_6_Out
  self.box_HackableController_v2_4 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_4
  l0._graph = self
  l0._name = "box_HackableController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|1505125593"
  l0.Enabled = self.f_box_HackableController_v2_4_Enabled
  l0.Disabled = self.f_box_HackableController_v2_4_Disabled
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
function export:CloseDoor()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372069597530404"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|14396987"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_box_MoveableEntityController_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|1103867924", "1103867924", "S10M030_ManageDoorEntrance", "CloseDoor", "box_MoveableEntityController_3.MoveBackward", self, l0)
  l0:MoveBackward()
end
function export:DisableHack()
  local l0
  l0 = self.box_ListWriter_8
  l0.Input = self.Door_Entrance
  l0.Data[0] = "9223372069597530403"
  l0.Data[1] = "9223372069597530407"
  l0.Data[2] = "9223372069597530404"
  l0.Data[3] = "9223372069597546495"
  l0.Data[4] = self.Hinge_Hackable_Door_37
  l0.Data[5] = "9223372069597546495"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|140815105", "140815105", "S10M030_ManageDoorEntrance", "DisableHack", "box_ListWriter_8.Add", self, l0)
  l0:Add()
end
function export:EnableHack()
  local l0
  l0 = self.box_ListWriter_6
  l0.Input = self.Door_Entrance
  l0.Data[0] = "9223372069597530403"
  l0.Data[1] = "9223372069597530407"
  l0.Data[2] = "9223372069597530404"
  l0.Data[3] = "9223372069597546495"
  l0.Data[4] = self.Hinge_Hackable_Door_37
  l0.Data[5] = "9223372069597546495"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|890475319", "890475319", "S10M030_ManageDoorEntrance", "EnableHack", "box_ListWriter_6.Add", self, l0)
  l0:Add()
end
function export:OpenDoor()
  local l0
  l0 = self.box_HackableController_v2_2
  l0.HackableEntity = "9223372069597530403"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|1675642839", "1675642839", "S10M030_ManageDoorEntrance", "OpenDoor", "box_HackableController_v2_2.ForceHack", self, l0)
  l0:ForceHack()
end
function export:OpenDoorWithoutHack()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372069597530404"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|169692175"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_box_MoveableEntityController_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|124783591", "124783591", "S10M030_ManageDoorEntrance", "OpenDoorWithoutHack", "box_MoveableEntityController_7.MoveForward", self, l0)
  l0:MoveForward()
end
function export:f_box_MoveableEntityController_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_37
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|646594743"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_box_MoveableEntityController_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|425717567", "425717567", "S10M030_ManageDoorEntrance", "box_MoveableEntityController_3.Out", "box_MoveableEntityController_1.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|854615164", "854615164", "S10M030_ManageDoorEntrance", "box_MoveableEntityController_7.Out", "DoorWithoutHackOpened", clone, self)
  self:DoorWithoutHackOpened()
end
function export:f_box_PlaySound_v2_5_Out()
  local l0
  self = self._graph
  l0 = self.box_PlaySound_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|196264828", "196264828", "S10M030_ManageDoorEntrance", "box_PlaySound_v2_5.Out", "DoorOpened", l0, self)
  self:DoorOpened()
end
function export:f_box_MoveableEntityController_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|1107095779", "1107095779", "S10M030_ManageDoorEntrance", "box_MoveableEntityController_1.Out", "DoorClosed", clone, self)
  self:DoorClosed()
end
function export:f_box_ListWriter_8_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_8
  self.Door_Entrance = l0.Target
  self:OnEnter_box_HackableController_v2_4()
  l1 = self.box_HackableController_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|1554234167", "1554234167", "S10M030_ManageDoorEntrance", "box_ListWriter_8.Added", "box_HackableController_v2_4.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_8_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_8
  self.Door_Entrance = l0.Target
end
function export:f_box_ListWriter_8_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_8
  self.Door_Entrance = l0.Target
end
function export:f_box_HackableController_v2_2_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_5
  l0.Entity = "9223372069597530403"
  l0.SoundId = "soundbinary/2106903556.bnk"
  l0 = self.box_HackableController_v2_2
  l1 = self.box_PlaySound_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|1255454078", "1255454078", "S10M030_ManageDoorEntrance", "box_HackableController_v2_2.HackForced", "box_PlaySound_v2_5.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListWriter_6_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_6
  self.Door_Entrance = l0.Target
  self:OnEnter_box_HackableController_v2_4()
  l1 = self.box_HackableController_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|735533046", "735533046", "S10M030_ManageDoorEntrance", "box_ListWriter_6.Added", "box_HackableController_v2_4.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_ListWriter_6_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_6
  self.Door_Entrance = l0.Target
end
function export:f_box_ListWriter_6_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_6
  self.Door_Entrance = l0.Target
end
function export:f_box_HackableController_v2_4_Disabled()
  local l0
  self = self._graph
  l0 = self.box_HackableController_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|96776490", "96776490", "S10M030_ManageDoorEntrance", "box_HackableController_v2_4.Disabled", "HackDisabled", l0, self)
  self:HackDisabled()
end
function export:f_box_HackableController_v2_4_Enabled()
  local l0
  self = self._graph
  l0 = self.box_HackableController_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_ManageDoorEntrance|813620870", "813620870", "S10M030_ManageDoorEntrance", "box_HackableController_v2_4.Enabled", "HackEnabled", l0, self)
  self:HackEnabled()
end
function export:OnEnter_box_HackableController_v2_4()
  local l0
  l0 = self.box_HackableController_v2_4
  l0.HackableEntityList = self.Door_Entrance
end
function export:HackEnabled()
end
function export:HackDisabled()
end
function export:DoorOpened()
end
function export:DoorClosed()
end
function export:DoorWithoutHackOpened()
end
_compilerVersion = 4
