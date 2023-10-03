export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableController.lua")
  cbox:RegisterBox("Domino/System/HackableMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/ProjectileMonitor.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Robot_01 = nil
  self.AI_01 = nil
  self.AI_02 = nil
  self.Car_01 = nil
  self.AI_03 = nil
  self.throw_IED = nil
  self[12] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_12_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[14] = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = self.f_14_HackSuccess
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[6] = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Shown = self.f_13_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[16] = cbox:CreateBox("Domino/System/ProjectileMonitor.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnProjectileLanded = self.f_16_OnProjectileLanded
  l0.OnMonitoredItemThrown = self.f_16_OnMonitoredItemThrown
  self[11] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_11_OnUserInPlace
  self[5] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  self[9] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[9]
  l0._graph = self
  l0.Attached = self.f_9_Attached
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
  l0 = self[2]
  l0.LayerName = "LD_SkillCheck_Cali"
  l0:Load()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.MapPoint = "9223372044276237815"
  l0.Text = "Sabotage"
  l0:Show()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.Robot_01 = l0.UserID
  l0 = self[8]
  l0.CLO = "792910862684103948"
  l0:Activate()
end
function export:f_14_HackSuccess()
  local l0
  self = self._graph
  l0 = self[15]
  l0.MapPoint = "9223372044276237815"
  l0:Hide()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.Car_01 = l0.UserID
  l0 = self[4]
  l0.CLO = "1724720563032129729"
  l0:Activate()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = "3137785734627662345"
  l0:Activate()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[12]
  l0.MissionName = "MissionList.9223372044276145284"
  l0.DebugObjective = "Sabotage Viceroys Shipment"
  l0:ShowNewObjectiveMessage()
end
function export:f_13_Shown()
  local l0
  self = self._graph
  l0 = self[6]
  l0.HackableEntity = "9223372044276185510"
  l0:DisableHack()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.AI_01 = l0.UserID
  l0 = self[5]
  l0.CLO = "7348515100561242631"
  l0:Activate()
end
function export:f_16_OnMonitoredItemThrown()
  local l0
  self = self._graph
  l0 = self[16]
  self.throw_IED = l0.ThrownEntity
  l0 = self[9]
  l0.Parent = self.Robot_01
  l0.Child = self.throw_IED
  l0.yPosOffset = -0.4
  l0.zPosOffset = 0.6
  l0.xRotOffset = 90
  l0:Attach()
end
function export:f_16_OnProjectileLanded()
  local l0
  self = self._graph
  l0 = self[16]
  self.throw_IED = l0.ThrownEntity
end
function export:f_11_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[11]
  self.AI_03 = l0.UserID
  l0 = self[16]
  l0.ItemDB = "Items.3391476946"
  l0:Enable()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.AI_02 = l0.UserID
  l0 = self[11]
  l0.CLO = "5947206039874513711"
  l0:Activate()
end
function export:f_9_Attached()
  local l0
  self = self._graph
  l0 = self[14]
  l0.HackableEntity = self.throw_IED
  l0.AutoDisable = 1
  l0.CheckHackableNow = 1
  l0:Enable()
end
_compilerVersion = 4
