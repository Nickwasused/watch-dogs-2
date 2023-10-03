export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PoliceCar4 = nil
  self.PoliceCar3 = nil
  self.Policemen3 = nil
  self.Policeman2 = nil
  self.PoliceCar2 = nil
  self.FlatBed = nil
  self.PoliceSquad = {}
  self.PoliceCar1 = nil
  self.Policeman1 = nil
  self.PoliceCar5 = nil
  self.PoliceCar6 = nil
  self.Barrage2_Police_01 = nil
  self.Barrage2_Police_02 = nil
  self.Barrage2_Police_03 = nil
  self.Barrage2_Police_04 = nil
  self.Barrage2_Police_05 = nil
  self.Barrage2_Police_06 = nil
  self.Barrage2_Police_07 = nil
  self.Barrage2_Police_08 = nil
  self.Barrage2_Police_09 = nil
  self.Barrage2_Police_10 = nil
  self.Policeman5 = nil
  self.Policeman4 = nil
  self.FirstBarrageCarsAndCops = {}
  self[44] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_44_Added
  l0.Removed = self.f_44_Removed
  l0.Out = self.f_44_Out
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
  self[36] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_17_OnUserInPlace
  self[21] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_21_OnUserInPlace
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  self[40] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 6}
  l0.Out = self.f_40_Out
  self[9] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  self[16] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_16_OnUserInPlace
  self[34] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_34_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[31] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[31]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_31_OnUserInPlace
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[25] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_25_OnUserInPlace
  self[39] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[15] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_15_OnUserInPlace
  self[45] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_45_Out
  self[27] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_27_OnUserInPlace
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[1] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_1_OnUserInPlace
  self[32] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_32_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[29] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_29_OnUserInPlace
  self[13] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_13_OnUserInPlace
  self[11] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_11_OnUserInPlace
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_33_Out_0
  l0.Out[1] = self.f_33_Out_1
  l0.Out[2] = self.f_33_Out_2
  l0:In()
end
function export:Unspawn_FirstBarrage()
  local l0
  l0 = self[45]
  l0:Condition(0)
end
function export:f_44_Added()
  local l0
  self = self._graph
  l0 = self[44]
  self.FirstBarrageCarsAndCops = l0.Target
  l0 = self[45]
  l0:Condition(1)
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[44]
  self.FirstBarrageCarsAndCops = l0.Target
end
function export:f_44_Removed()
  local l0
  self = self._graph
  l0 = self[44]
  self.FirstBarrageCarsAndCops = l0.Target
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Condition(5)
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.CLO = "9223372066998467346"
  l0:Activate()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.Barrage2_Police_02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:SetLightsAndSiren()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0.CLO = "9223372066998467348"
  l0:Activate()
end
function export:f_36_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372066998467521"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Toggle()
end
function export:f_17_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[17]
  self.Policeman5 = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:In()
end
function export:f_21_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[21]
  self.Barrage2_Police_06 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_06
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_24_Out
  l0:SetLightsAndSiren()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.PoliceCar1 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar1
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:SetLightsAndSiren()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Input = self.FirstBarrageCarsAndCops
  l0.Data[0] = self.PoliceCar1
  l0.Data[1] = self.Policeman1
  l0.Data[2] = self.PoliceCar5
  l0.Data[3] = self.PoliceCar6
  l0.Data[4] = self.Policeman4
  l0.Data[5] = self.Policeman5
  l0:Add()
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.Policeman1 = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0:In()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CLO = "9223372049960074761"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372049960074780"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_4_Out_2()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372057037026612"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_4_Out_3()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = "9223372057037026611"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_4_Out_4()
  local l0
  self = self._graph
  l0 = self[16]
  l0.CLO = "9223372057037026614"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_4_Out_5()
  local l0
  self = self._graph
  l0 = self[17]
  l0.CLO = "9223372057037026613"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_16_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[16]
  self.Policeman4 = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:In()
end
function export:f_34_Enter()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Loop = 1
  l0.nbLoop = 20
  l0:Start()
end
function export:f_31_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[31]
  self.Barrage2_Police_10 = l0.UserID
  l0 = self[34]
  l0.Trigger = "9223372066998467524"
  l0:Enable()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Condition(4)
end
function export:f_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0.Out[2] = self.f_4_Out_2
  l0.Out[3] = self.f_4_Out_3
  l0.Out[4] = self.f_4_Out_4
  l0.Out[5] = self.f_4_Out_5
  l0:In()
end
function export:f_33_Out_1()
  self = self._graph
  self:Out()
end
function export:f_33_Out_2()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Trigger = "9223372066998467522"
  l0:Enable()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.Barrage2_Police_03 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_03
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:SetLightsAndSiren()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.CLO = "9223372066998467341"
  l0:Activate()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Condition(0)
end
function export:f_25_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[25]
  self.Barrage2_Police_07 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_07
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:SetLightsAndSiren()
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.PoliceCar6 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar6
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:SetLightsAndSiren()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.UserList = self.FirstBarrageCarsAndCops
  l0:UnspawnUser()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0.CLO = "9223372066998467349"
  l0:Activate()
end
function export:f_27_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[27]
  self.Barrage2_Police_08 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_08
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:SetLightsAndSiren()
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.PoliceCar5 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar5
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:SetLightsAndSiren()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = "9223372066998467336"
  l0:Activate()
end
function export:f_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[1]
  self.Barrage2_Police_01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:SetLightsAndSiren()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.CLO = "9223372066998467338"
  l0:Activate()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.CLO = "9223372066998467340"
  l0:Activate()
end
function export:f_32_Enter()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372066998467335"
  l0:Activate()
end
function export:f_29_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[29]
  self.Barrage2_Police_09 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_09
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:SetLightsAndSiren()
end
function export:f_13_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[13]
  self.Barrage2_Police_05 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_05
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:SetLightsAndSiren()
end
function export:f_11_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[11]
  self.Barrage2_Police_04 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_04
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:SetLightsAndSiren()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.CLO = "9223372066998467337"
  l0:Activate()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Condition(1)
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.CLO = "9223372066998467347"
  l0:Activate()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Condition(3)
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Condition(2)
end
function export:Out()
end
_compilerVersion = 4
