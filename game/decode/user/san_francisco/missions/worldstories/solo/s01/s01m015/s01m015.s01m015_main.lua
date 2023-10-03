export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/ClothController.lua")
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M015/S01_M015_CIN_MarcusApartement.S01_M015_CIN_MarcusApartement_Main.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M015/S01_M015_CIN_MarcusApartement.S01_M015_CIN_MarcusApartement_Main.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_24_Out
  self[9] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[21] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_21_Out
  self[6] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[6]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_11_Unloaded
  self[16] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[12] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Loaded = self.f_12_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_20_Unloaded
  l0.Reseted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[23] = cbox:CreateBox("domino/System/ClothController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Equipped = self.f_23_Equipped
  l0.Added = DummyFunction
  self[8] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = self.f_8_Loaded
  l0.Unloaded = DummyFunction
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[12]
  l0.LayerName = "S01M015_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0.Out[2] = self.f_18_Out_2
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_26_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Condition(2)
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Condition(0)
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LMALayerName = "MAR_02_MarcusApartment_LMA"
  l0:Load()
end
function export:f_18_Out_2()
  local l0
  self = self._graph
  l0 = self[4]
  l0.LayerName = "S01M015_Main"
  l0:Load()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Succeed()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LMALayerName = "MAR_02_MarcusApartment_LMA"
  l0:Unload()
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  l0 = self[20]
  l0.LayerName = "S01M015_Main"
  l0:Unload()
end
function export:f_26_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372058334097303"
  l0.FadeIn = nil
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = self.f_17_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[23]
  l0.ItemDB = "Items.9223372062362368663"
  l0:Equip()
end
function export:f_11_Unloaded()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Condition(0)
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_12_Loaded()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_20_Unloaded()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Condition(1)
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372069651733436"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_25_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CLO = "9223372050668064221"
  l0:Activate()
end
function export:f_7_Out_2()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372064881740363"
  l0:Activate()
end
function export:f_7_Out_3()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = "9223372064881740364"
  l0:Activate()
end
function export:f_7_Out_4()
  local l0
  self = self._graph
  l0 = self[16]
  l0.CLO = "9223372064881740365"
  l0:Activate()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0.Out[2] = self.f_7_Out_2
  l0.Out[3] = self.f_7_Out_3
  l0.Out[4] = self.f_7_Out_4
  l0:In()
end
function export:f_25_OverrideActivated()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Player = self.PlayerEntity
  l0:In()
end
function export:f_23_Equipped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 12
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:SetTimeOfDay()
end
function export:f_8_Loaded()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Condition(1)
end
function export:f_14_Unlocked()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_17_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_14_Unlocked
  l0.Out = DummyFunction
  l0:Unlock()
end
_compilerVersion = 4
