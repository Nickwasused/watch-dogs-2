export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BenchmarkController.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportEntity.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.savedHour = 0
  self.savedMin = 0
  self.vehicle_police_a = nil
  self.vehicle_police_b = nil
  self.vehicle_police_c = nil
  self.vehicle_police_d = nil
  self.RainEnabled = 0
  self.SequenceFinished = 1
  self[47] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_47_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.SetTrue = self.f_20_SetTrue
  l0.SetFalse = self.f_20_SetFalse
  l0.Toggled = self.f_20_Toggled
  l0.SetFromBool = self.f_20_SetFromBool
  self[33] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_33_OnUserInPlace
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[53] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[37] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[37]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_37_OnUserInPlace
  self[15] = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_15_Disabled
  l0.InputReceived = DummyFunction
  self[44] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_44_OnUserInPlace
  self[29] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_29_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {
      "Police1_",
      "Police2_",
      "Police3_",
      "Police4_"
    }
  }
  l0.Started = self.f_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_6_Finished
  self[21] = cbox:CreateBox("domino/System/BenchmarkController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.VarsSet = self.f_21_VarsSet
  self[30] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[10]
  l0._graph = self
  self[17] = cbox:CreateBox("domino/System/BenchmarkController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_17_Stopped
  l0.VarsSet = DummyFunction
  self[51] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0.SetTrue = self.f_51_SetTrue
  l0.SetFalse = self.f_51_SetFalse
  l0.Toggled = self.f_51_Toggled
  l0.SetFromBool = self.f_51_SetFromBool
  self[5] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.SetTrue = self.f_5_SetTrue
  l0.SetFalse = self.f_5_SetFalse
  l0.Toggled = self.f_5_Toggled
  l0.SetFromBool = self.f_5_SetFromBool
  self[8] = cbox:CreateBox("domino/System/BenchmarkController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_8_Started
  l0.Stopped = DummyFunction
  l0.VarsSet = DummyFunction
  self[27] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[41] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[41]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_41_OnUserInPlace
  self[28] = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_28_TeleportDone
  self[9] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_9_Unloaded
  l0.Reseted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InputReceived = self.f_14_InputReceived
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
  l0.LayerName = "BechmarkMission_Tests_Main"
  l0:Load()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_47_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048779330284"
  l0.FadeIn = 13
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = self.f_49_Out
  l0:Start()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:GetTimeOfDay()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0.Out[2] = self.f_42_Out_2
  l0.Out[3] = self.f_42_Out_3
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  self.savedHour = l0.Hour
  self.savedMin = l0.Minute
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_3_Hidden
  l0:Hide()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[20]
  self.SequenceFinished = l0.Target
end
function export:f_20_SetFalse()
  local l0
  self = self._graph
  l0 = self[20]
  self.SequenceFinished = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0:In()
end
function export:f_20_SetFromBool()
  local l0
  self = self._graph
  l0 = self[20]
  self.SequenceFinished = l0.Target
end
function export:f_20_SetTrue()
  local l0
  self = self._graph
  l0 = self[20]
  self.SequenceFinished = l0.Target
end
function export:f_20_Toggled()
  local l0
  self = self._graph
  l0 = self[20]
  self.SequenceFinished = l0.Target
end
function export:f_33_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[33]
  self.vehicle_police_a = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_a
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048687437075"
  l0.FadeIn = nil
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Stop()
end
function export:f_37_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[37]
  self.vehicle_police_c = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_c
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Seconds = 45
  l0:Start()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Seconds = 35
  l0:Start()
end
function export:f_15_Disabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.LayerName = "BechmarkMission_Tests_Main"
  l0:Unload()
end
function export:f_35_Stopped()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_13_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.savedHour
  l0.Minute = self.savedMin
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:SetTimeOfDay()
end
function export:f_36_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 13
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:SetTimeOfDay()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[28]
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372049314208291"
  l0:In()
end
function export:f_44_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[44]
  self.vehicle_police_d = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_d
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_56_A_is_False()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(1)
end
function export:f_56_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048779330284"
  l0.FadeIn = nil
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_35_Stopped
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Stop()
end
function export:f_29_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = 1000
  l0._graph = self
  l0.WasSet = self.f_40_WasSet
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Set()
end
function export:f_6_Finished()
  local l0
  self = self._graph
  l0 = self[5]
  l0:True()
end
function export:f_6_Started()
  local l0
  self = self._graph
  l0 = self[20]
  l0:False()
end
function export:f_46_WasSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RainEnabled
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_56_A_is_True
  l0.A_is_False = self.f_56_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_40_WasSet()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Seconds = 35
  l0:Start()
end
function export:f_21_VarsSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_13_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_16_A_is_False()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Stop()
end
function export:f_30_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Set()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0:True()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SequenceFinished
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_16_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[21]
  l0.DisplayResults = 0
  l0:SetVars()
end
function export:f_17_Stopped()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Player = self.PlayerEntity
  l0.Input = "cover_press"
  l0:Enable()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  l0 = self[33]
  l0.CLO = "9223372049643425445"
  l0:Activate()
end
function export:f_42_Out_1()
  local l0
  self = self._graph
  l0 = self[41]
  l0.CLO = "9223372049643271836"
  l0:Activate()
end
function export:f_42_Out_2()
  local l0
  self = self._graph
  l0 = self[37]
  l0.CLO = "9223372049757213035"
  l0:Activate()
end
function export:f_42_Out_3()
  local l0
  self = self._graph
  l0 = self[44]
  l0.CLO = "9223372049757213036"
  l0:Activate()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[51]
  self.RainEnabled = l0.Target
end
function export:f_51_SetFalse()
  local l0
  self = self._graph
  l0 = self[51]
  self.RainEnabled = l0.Target
end
function export:f_51_SetFromBool()
  local l0
  self = self._graph
  l0 = self[51]
  self.RainEnabled = l0.Target
end
function export:f_51_SetTrue()
  local l0
  self = self._graph
  l0 = self[51]
  self.RainEnabled = l0.Target
end
function export:f_51_Toggled()
  local l0
  self = self._graph
  l0 = self[51]
  self.RainEnabled = l0.Target
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[5]
  self.SequenceFinished = l0.Target
  l0 = self[17]
  l0.DisplayResults = 1
  l0:Stop()
end
function export:f_5_SetFalse()
  local l0
  self = self._graph
  l0 = self[5]
  self.SequenceFinished = l0.Target
end
function export:f_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self[5]
  self.SequenceFinished = l0.Target
end
function export:f_5_SetTrue()
  local l0
  self = self._graph
  l0 = self[5]
  self.SequenceFinished = l0.Target
end
function export:f_5_Toggled()
  local l0
  self = self._graph
  l0 = self[5]
  self.SequenceFinished = l0.Target
end
function export:f_8_Started()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Start()
end
function export:f_27_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Start()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = self.f_46_WasSet
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Set()
end
function export:f_3_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048687437075"
  l0.FadeIn = 0
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = self.f_36_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Start()
end
function export:f_41_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[41]
  self.vehicle_police_b = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_b
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_28_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_9_Unloaded()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Succeed()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Seconds = 5
  l0:Start()
end
function export:f_14_InputReceived()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Player = self.PlayerEntity
  l0:Disable()
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.SceneEntity = "9223372049314208293"
  l0.SequenceFile = "sequences/test_benchmark_gfx_03.seq"
  l0.EntityIn.Police1_ = self.vehicle_police_a
  l0.EntityIn.Police2_ = self.vehicle_police_b
  l0.EntityIn.Police3_ = self.vehicle_police_c
  l0.EntityIn.Police4_ = self.vehicle_police_d
end
_compilerVersion = 4
