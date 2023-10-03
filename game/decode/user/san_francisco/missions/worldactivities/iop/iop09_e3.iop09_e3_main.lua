export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1433769250.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2847170774.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2015265299.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2785530579.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/669646554.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3143645252.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Alarm = 0
  self.ATM_Camera = "9223372050041339547"
  self.BarkSoundEntity_0 = "9223372050041339536"
  self.RolesList = {"Atm.Person"}
  self.Money = "9223372050041339540"
  self.CLO = nil
  self.GoodHack = "9223372050041339545"
  self.Money2 = "9223372050041339549"
  self.BadVar = 0
  self.MakeItRain = 0
  self.Money3 = "9223372050041339542"
  self.Npc = nil
  self.GoodVar = 0
  self.NPC_List = {}
  self.CLO_Sync = 6
  self.Light = "9223372050041339534"
  self.BadHack = "9223372050041339538"
  self[108] = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self[108]
  l0._graph = self
  l0._DynamicAnchors = {Output = 10}
  l0.Output[0] = self.f_108_Output_0
  l0.Output[1] = self.f_108_Output_1
  l0.Output[2] = self.f_108_Output_2
  l0.Output[3] = self.f_108_Output_3
  l0.Output[4] = self.f_108_Output_4
  l0.Output[5] = self.f_108_Output_5
  l0.Output[6] = self.f_108_Output_6
  l0.Output[7] = self.f_108_Output_7
  l0.Output[8] = self.f_108_Output_8
  l0.Output[9] = self.f_108_Output_9
  l0.OutOfRange = DummyFunction
  self[64] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = self.f_64_Out
  l0.SetTrue = self.f_64_SetTrue
  l0.SetFalse = self.f_64_SetFalse
  l0.Toggled = self.f_64_Toggled
  l0.SetFromBool = self.f_64_SetFromBool
  self[119] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_14_Finished
  self[122] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[122]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_122_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[6] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_6_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_6_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[72] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[72]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_72_OnUserInPlace
  self[56] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[56]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_56_Added
  l0.Removed = self.f_56_Removed
  l0.Out = self.f_56_Out
  self[70] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[70]
  l0._graph = self
  l0.Enabled = self.f_70_Enabled
  l0.Disabled = self.f_70_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_70_OverrideHackingTextSet
  self[11] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = self.f_11_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[133] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[133]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_133_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[29] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_29_Out
  self[103] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[2] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_2_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[144] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[144]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_144_PostOut
  self[90] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[90]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[84] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[84]
  l0._graph = self
  self[60] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[46] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[129] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[129]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_129_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[54] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[101] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[101]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_101_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[39] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_39_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[121] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[121]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_121_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[75] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = self.f_75_Out
  l0.SetTrue = self.f_75_SetTrue
  l0.SetFalse = self.f_75_SetFalse
  l0.Toggled = self.f_75_Toggled
  l0.SetFromBool = self.f_75_SetFromBool
  self[8] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_8_Started
  l0.Finished = DummyFunction
  self[3] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[116] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[116]
  l0._graph = self
  l0.Loaded = self.f_116_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[67] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_67_Out
  self[9] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_55_Out
  self[99] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[99]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_99_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[134] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_134_Unloaded
  l0.Reseted = DummyFunction
  self[83] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[83]
  l0._graph = self
  l0.Out = self.f_83_Out
  l0.Started = self.f_83_Started
  l0.Stopped = self.f_83_Stopped
  l0.Paused = self.f_83_Paused
  l0.Resumed = self.f_83_Resumed
  l0.TimeElapsed = self.f_83_TimeElapsed
  l0.LoopingEnded = self.f_83_LoopingEnded
  l0.GotTime = DummyFunction
  self[118] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[118]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[115] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Out = self.f_115_Out
  l0.SetTrue = self.f_115_SetTrue
  l0.SetFalse = self.f_115_SetFalse
  l0.Toggled = self.f_115_Toggled
  l0.SetFromBool = self.f_115_SetFromBool
  self[58] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[58]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[82] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_82_Started
  l0.Finished = DummyFunction
  self[20] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[20]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_20_Deactivated
  l0.UnspawnedUser = self.f_20_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[94] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[94]
  l0._graph = self
  l0.Out = self.f_94_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[1] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[109] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[109]
  l0._graph = self
  l0.Out = self.f_109_Out
  l0.SetTrue = self.f_109_SetTrue
  l0.SetFalse = self.f_109_SetFalse
  l0.Toggled = self.f_109_Toggled
  l0.SetFromBool = self.f_109_SetFromBool
  self[86] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = self.f_86_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[17] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = self.f_17_Disabled
  l0.ActivateHackables = self.f_17_ActivateHackables
  l0.DeactivateHackables = self.f_17_DeactivateHackables
  l0.IOPComplete = self.f_17_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
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
  l0 = self[55]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[55]
  l0:Input(0)
end
function export:f_108_Output_0()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(0)
end
function export:f_108_Output_1()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(0)
end
function export:f_108_Output_2()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(1)
end
function export:f_108_Output_3()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(1)
end
function export:f_108_Output_4()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(2)
end
function export:f_108_Output_5()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(2)
end
function export:f_108_Output_6()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(3)
end
function export:f_108_Output_7()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(3)
end
function export:f_108_Output_8()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(4)
end
function export:f_108_Output_9()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(4)
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = self[64]
  self.Alarm = l0.Target
end
function export:f_64_SetFalse()
  local l0
  self = self._graph
  l0 = self[64]
  self.Alarm = l0.Target
  l0 = self[72]
  l0.CLO = "9223372050041339550"
  l0:Activate()
end
function export:f_64_SetFromBool()
  local l0
  self = self._graph
  l0 = self[64]
  self.Alarm = l0.Target
end
function export:f_64_SetTrue()
  local l0
  self = self._graph
  l0 = self[64]
  self.Alarm = l0.Target
end
function export:f_64_Toggled()
  local l0
  self = self._graph
  l0 = self[64]
  self.Alarm = l0.Target
end
function export:f_119_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[11]
  l0.CameraEntity = self.ATM_Camera
  l0:Enable()
end
function export:f_14_Finished()
  local l0
  self = self._graph
  self:en_100()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_122_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_130_Out_0
  l0.Out[1] = self.f_130_Out_1
  l0:In()
end
function export:f_6_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = self[90]
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0:SendEvent()
end
function export:f_6_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = self[12]
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.DisableFishEyeEffect"
  l0:SendEvent()
end
function export:f_72_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[72]
  self.Npc = l0.UserID
  l0 = self[39]
  l0.HackableEntity = self.Npc
  l0:DisableProfiling()
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_73_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_56_Added()
  local l0
  self = self._graph
  l0 = self[56]
  self.NPC_List = l0.Target
  l0 = self[101]
  l0.IopID = "Atm"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.NPC_List
  l0.IopRoleList = self.RolesList
  l0.OffscreenDialogPoint = self.BarkSoundEntity_0
  l0:Start()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[56]
  self.NPC_List = l0.Target
end
function export:f_56_Removed()
  local l0
  self = self._graph
  l0 = self[56]
  self.NPC_List = l0.Target
end
function export:f_47_CanExitSet()
  local l0
  self = self._graph
  self:en_47()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_47_EnterForced()
  local l0
  self = self._graph
  l0 = self[144]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_70_Disabled()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:DisableHack()
end
function export:f_70_Enabled()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:EnableHack()
end
function export:f_70_OverrideHackingTextSet()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:SetOverrideHackingText()
end
function export:f_120_Enabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SoundId = "soundbinary/2847170774.bnk"
  l0:Play()
end
function export:f_11_Enabled()
  local l0
  self = self._graph
  self:en_47()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_133_SendEventCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_126_Out_0
  l0.Out[1] = self.f_126_Out_1
  l0:In()
end
function export:f_35_A_is_False()
  local l0
  self = self._graph
  l0 = self[115]
  l0.Bool = self.GoodVar
  l0:True()
end
function export:f_35_A_is_True()
  local l0
  self = self._graph
  l0 = self[60]
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHackEnding"
  l0:SendEvent()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_120_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_41_Enabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SoundId = "soundbinary/3143645252.bnk"
  l0:Play()
end
function export:f_2_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[54]
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Money",
    id = "544814"
  }
  l0:SetOverrideHackingText()
end
function export:f_144_PostOut()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Seconds = 3
  l0:Start()
end
function export:f_130_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_140_Out
  l0:In()
end
function export:f_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0:In()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_35_A_is_True
  l0.A_is_False = self.f_35_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_129_HackSuccess()
  local l0
  self = self._graph
  l0 = self[46]
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0:Play()
end
function export:f_101_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_69_Out_0
  l0.Out[1] = self.f_69_Out_1
  l0:In()
end
function export:f_39_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_27_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[99]
  l0.HackableEntity = self.BadHack
  l0:Enable()
end
function export:f_121_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[118]
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Pay_Alimony",
    id = "544820"
  }
  l0:SetOverrideHackingText()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[75]
  self.BadVar = l0.Target
  l0 = self[121]
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHack"
  l0:SendEvent()
end
function export:f_75_SetFalse()
  local l0
  self = self._graph
  l0 = self[75]
  self.BadVar = l0.Target
end
function export:f_75_SetFromBool()
  local l0
  self = self._graph
  l0 = self[75]
  self.BadVar = l0.Target
end
function export:f_75_SetTrue()
  local l0
  self = self._graph
  l0 = self[75]
  self.BadVar = l0.Target
end
function export:f_75_Toggled()
  local l0
  self = self._graph
  l0 = self[75]
  self.BadVar = l0.Target
end
function export:f_27_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Input = self.NPC_List
  l0.Data[0] = self.Npc
  l0:Add()
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Seconds = 4
  l0:Start()
end
function export:f_3_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_41_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_116_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_85_Out
  l0:In()
end
function export:f_73_Disabled()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[116]
  l0.LayerName = "IOP09_E3_Main"
  l0:Load()
end
function export:f_99_HackSuccess()
  local l0
  self = self._graph
  l0 = self[94]
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0:Play()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[122]
  l0.HackableEntity = self.Npc
  l0:EnableProfiling()
end
function export:f_134_Unloaded()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Succeed()
end
function export:f_135_Disabled()
  local l0
  self = self._graph
  l0 = self[83]
  l0.Seconds = 0.1
  l0.Loop = 1
  l0.nbLoop = 6
  l0:Start()
end
function export:f_83_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self[83]
  l1 = self[108]
  l1.Index = l0.currentLoop
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:In()
end
function export:f_83_Out()
  local l0, l1
  self = self._graph
  l0 = self[83]
  l1 = self[108]
  l1.Index = l0.currentLoop
end
function export:f_83_Paused()
  local l0, l1
  self = self._graph
  l0 = self[83]
  l1 = self[108]
  l1.Index = l0.currentLoop
end
function export:f_83_Resumed()
  local l0, l1
  self = self._graph
  l0 = self[83]
  l1 = self[108]
  l1.Index = l0.currentLoop
end
function export:f_83_Started()
  local l0, l1
  self = self._graph
  l0 = self[83]
  l1 = self[108]
  l1.Index = l0.currentLoop
end
function export:f_83_Stopped()
  local l0, l1
  self = self._graph
  l0 = self[83]
  l1 = self[108]
  l1.Index = l0.currentLoop
end
function export:f_83_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self[83]
  l1 = self[108]
  l1.Index = l0.currentLoop
  l1:In()
end
function export:f_143_A_is_False()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Bool = self.BadVar
  l0:True()
end
function export:f_143_A_is_True()
  local l0
  self = self._graph
  l0 = self[103]
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHackEnding"
  l0:SendEvent()
end
function export:f_115_Out()
  local l0
  self = self._graph
  l0 = self[115]
  self.GoodVar = l0.Target
  l0 = self[2]
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHack"
  l0:SendEvent()
end
function export:f_115_SetFalse()
  local l0
  self = self._graph
  l0 = self[115]
  self.GoodVar = l0.Target
end
function export:f_115_SetFromBool()
  local l0
  self = self._graph
  l0 = self[115]
  self.GoodVar = l0.Target
end
function export:f_115_SetTrue()
  local l0
  self = self._graph
  l0 = self[115]
  self.GoodVar = l0.Target
end
function export:f_115_Toggled()
  local l0
  self = self._graph
  l0 = self[115]
  self.GoodVar = l0.Target
end
function export:f_69_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CameraEntity = self.ATM_Camera
  l0:Enable()
end
function export:f_69_Out_1()
  local l0
  self = self._graph
  l0 = self[133]
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character8"
  l0:SendEvent()
end
function export:f_4_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = self[86]
  l0.SoundId = "soundbinary/2015265299.bnk"
  l0:Play()
end
function export:f_82_Started()
  local l0
  self = self._graph
  l0 = self[109]
  l0:False()
end
function export:f_20_Deactivated()
  local l0
  self = self._graph
  l0 = self[134]
  l0.LayerName = "IOP09_E3_Main"
  l0:Unload()
end
function export:f_20_UnspawnedUser()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Deactivate()
end
function export:f_126_Out_0()
  local l0
  self = self._graph
  l0 = self[119]
  l0.Seconds = 1
  l0:Start()
end
function export:f_126_Out_1()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Enable()
end
function export:f_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_143_A_is_True
  l0.A_is_False = self.f_143_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0:Play()
end
function export:f_100_CanExitSet()
  local l0
  self = self._graph
  self:en_100()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceUserOutOfCamera()
end
function export:f_100_UserForcedOutOfCamera()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:UnspawnUser()
end
function export:f_1_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_135_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_109_Out()
  local l0
  self = self._graph
  l0 = self[109]
  self.MakeItRain = l0.Target
end
function export:f_109_SetFalse()
  local l0
  self = self._graph
  l0 = self[109]
  self.MakeItRain = l0.Target
  l0 = self[64]
  l0:False()
end
function export:f_109_SetFromBool()
  local l0
  self = self._graph
  l0 = self[109]
  self.MakeItRain = l0.Target
end
function export:f_109_SetTrue()
  local l0
  self = self._graph
  l0 = self[109]
  self.MakeItRain = l0.Target
end
function export:f_109_Toggled()
  local l0
  self = self._graph
  l0 = self[109]
  self.MakeItRain = l0.Target
end
function export:f_86_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SoundId = "soundbinary/669646554.bnk"
  l0:Play()
end
function export:f_17_ActivateHackables()
  local l0
  self = self._graph
  self:en_70()
  l0 = self[70]
  l0:EnableHack()
end
function export:f_17_DeactivateHackables()
  local l0
  self = self._graph
  self:en_70()
  l0 = self[70]
  l0:DisableHack()
end
function export:f_17_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.DisconnectedText = {
    section = "HACKING.Interface Messages",
    item = "HackingFailed",
    id = "5906"
  }
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = self.f_4_DisconnectedAnimationPlayed
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:PlayDisconnectedAnimation()
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  self:en_70()
  l0 = self[70]
  l0:SetOverrideHackingText()
end
function export:f_17_IOPComplete()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Disable()
end
function export:f_140_Out()
  local l0
  self = self._graph
  l0 = self[129]
  l0.HackableEntity = self.GoodHack
  l0:Enable()
end
function export:en_47()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.ATM_Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = self.ATM_Camera
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_47_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_47_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_70()
  local l0
  l0 = self[70]
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_1",
    id = "340525"
  }
end
function export:en_58()
  local l0
  l0 = self[58]
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Bad_Hack_1",
    id = "340527"
  }
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.CLO = "9223372050041339550"
  l0.User = self.Npc
end
function export:en_100()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.ATM_Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_100_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_100_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
_compilerVersion = 4
