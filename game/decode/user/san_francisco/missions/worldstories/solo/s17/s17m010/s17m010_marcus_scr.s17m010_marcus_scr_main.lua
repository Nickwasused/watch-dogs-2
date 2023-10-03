export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StandaloneLoaderController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.MarcusEnteredBlume = DummyFunction
  self.BlackOutStopped = DummyFunction
  self.EndMarcusOutro = DummyFunction
  self.EndTS = DummyFunction
  self.FinalHackFinished = DummyFunction
  self.MistFXON = DummyFunction
  self.MistFXOFF = DummyFunction
  self.PlayerEntity = nil
  self.BlackoutReact01 = nil
  self.BlackoutReact02 = nil
  self.HQ_talkers_to_hide = {}
  self.HQ_talkers_list_to_hide = {}
  self.indoor_blumeshocked0 = nil
  self.FireTruck01 = nil
  self.FireTruck02 = nil
  self.FireTruck03 = nil
  self[26] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[26]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_26_Finished
  self[21] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = self.f_21_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[15] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[15]
  l0._graph = self
  l0.GotNPCList = self.f_15_GotNPCList
  self[103] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[103]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_9_Out
  self[46] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_46_OnUserInPlace
  self[56] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[38] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[38]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_38_PostOut
  self[10] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[10]
  l0._graph = self
  l0.EntityUnspawned = self.f_10_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self[55] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[55]
  l0._graph = self
  l0.StartCommunicationOut = self.f_55_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[39] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_39_OnUserInPlace
  self[62] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"closedoor"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_62_Finished
  l0.SPOut.closedoor = self.f_62_SPOut__closedoor_
  self[58] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[58]
  l0._graph = self
  l0.PreOut = self.f_58_PreOut
  l0.PostOut = DummyFunction
  self[16] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_16_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_16_OnUserInPlace
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[109] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[109]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[27] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[27]
  l0._graph = self
  l0.Started = self.f_27_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[31] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[72] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[72]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_72_OnUserInPlace
  self[100] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[100]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[91] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[91]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[102] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[102]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[20] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[20]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_20_PostOut
  self[73] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[73]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_73_OnUserInPlace
  self[57] = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self[57]
  l0._graph = self
  l0.LoadingStarted = self.f_57_LoadingStarted
  l0.Loaded = self.f_57_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self[92] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[92]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[99] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[99]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[43] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[43]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_43_OnUserInPlace
  self[45] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[45]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_45_OnUserInPlace
  self[90] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[90]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[40] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[40]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_40_OnUserInPlace
  self[104] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[104]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[52] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[52]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_52_OnUserInPlace
  self[70] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[70]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[105] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[105]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[42] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[42]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_42_OnUserInPlace
  self[101] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[101]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[95] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[95]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[33] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_33_OnUserInPlace
  self[97] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[97]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[108] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[108]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[47] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[47]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_47_OnUserInPlace
  self[98] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[98]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[107] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[107]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[110] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[110]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[18] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_18_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_18_OnUserInPlace
  self[60] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[60]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_60_PostOut
  self[74] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[24] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[24]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_24_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[51] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[51]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_51_OnUserInPlace
  self[50] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_50_OnUserInPlace
  self[29] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = self.f_29_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[28] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = self.f_28_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[19] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_19_OnUserInPlace
  self[23] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_23_Finished
  self[94] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[94]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[36] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"blackout"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_36_Finished
  l0.SPOut.blackout = self.f_36_SPOut__blackout_
  self[106] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[106]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[93] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[93]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[41] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[41]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_41_OnUserInPlace
  self[49] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_49_OnUserInPlace
  self[48] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[48]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_48_OnUserInPlace
  self[37] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[37]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_37_OnUserInPlace
  self[17] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_17_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_17_OnUserInPlace
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Activate_ALL_Civ()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 20}
  l0.Out[0] = self.f_96_Out_0
  l0.Out[1] = self.f_96_Out_1
  l0.Out[2] = self.f_96_Out_2
  l0.Out[3] = self.f_96_Out_3
  l0.Out[4] = self.f_96_Out_4
  l0.Out[5] = self.f_96_Out_5
  l0.Out[6] = self.f_96_Out_6
  l0.Out[7] = self.f_96_Out_7
  l0.Out[8] = self.f_96_Out_8
  l0.Out[9] = self.f_96_Out_9
  l0.Out[10] = self.f_96_Out_10
  l0.Out[11] = self.f_96_Out_11
  l0.Out[12] = self.f_96_Out_12
  l0.Out[13] = self.f_96_Out_13
  l0.Out[14] = self.f_96_Out_14
  l0.Out[15] = self.f_96_Out_15
  l0.Out[16] = self.f_96_Out_16
  l0.Out[17] = self.f_96_Out_17
  l0.Out[18] = self.f_96_Out_18
  l0.Out[19] = self.f_96_Out_19
  l0:In()
end
function export:ActivateCivilianCLOs()
  local l0
  l0 = self[40]
  l0.CLO = "9223372060029116487"
  l0:Activate()
end
function export:ActivateMistFX()
  local l0
  self:en_80()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:ActivateSCRFinalHack()
  local l0
  l0 = self[23]
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_intro.seq"
  l0:Start()
end
function export:BackToRegularHackerSpace()
  local l0
  self:en_16()
  l0 = self[16]
  l0:Deactivate()
end
function export:CheeringHackerSpace()
  local l0
  l0 = self[15]
  l0.Group = "HQ_Talkers"
  l0:GetAll()
end
function export:Deactivate_Mist_FX()
  local l0
  self:en_80()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:FinalHackCompleted()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0:In()
end
function export:In()
  local l0
  l0 = self[55]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372061478456071"
  l0:StartCommunication()
end
function export:MarcusEntersBlume()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372066831787850"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_59_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveForward()
end
function export:Spawn_Fuzzy_Robots()
  local l0
  l0 = self[21]
  l0.SceneEntity = "9223372059950792614"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot1.seq"
  l0:Start()
end
function export:StopBlackOut()
  local l0
  self:en_34()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StopBlackout()
end
function export:f_26_Finished()
  self = self._graph
  self:FinalHackFinished()
end
function export:f_21_Started()
  local l0
  self = self._graph
  l0 = self[27]
  l0.SceneEntity = "9223372059950792619"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot2.seq"
  l0:Start()
end
function export:f_15_GotNPCList()
  local l0
  self = self._graph
  l0 = self[15]
  self.HQ_talkers_list_to_hide = l0.NPCList
  l0 = self[10]
  l0.EntityList = self.HQ_talkers_list_to_hide
  l0:UnspawnEntity()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[60]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_46_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[47]
  l0.CLO = "9223372061478453938"
  l0:Activate()
end
function export:f_25_Out()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Stop()
end
function export:f_85_Started()
  local l0
  self = self._graph
  self:en_86()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_85_Stopped()
  local l0
  self = self._graph
  self:en_86()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_56_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[62]
  l0.SceneEntity = "9223372049783955405"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_marcusentersblume_2.seq"
  l0:Start()
end
function export:f_38_PostOut()
  self = self._graph
  self:BlackOutStopped()
end
function export:f_10_EntityUnspawned()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Activate()
end
function export:f_55_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[36]
  l0.SceneEntity = "9223372060029121318"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_Y_MarcusEntersBlume/s17_m010_y_marcusentersblume_flybycam.seq"
  l0:Start()
end
function export:f_39_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[33]
  l0.CLO = "9223372060029119705"
  l0:Activate()
end
function export:f_62_Finished()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Condition(0)
end
function export:f_62_SPOut__closedoor_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372066831787850"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = self.f_64_Moved
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveBackward()
end
function export:f_58_PreOut()
  local l0
  self = self._graph
  l0 = self[57]
  l0.StandaloneLoader = "9223372052039367221"
  l0.LayerName = "SF_08_Blume_Campus_HMA"
  l0:Load()
end
function export:f_16_Deactivated()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Deactivate()
end
function export:f_16_OnUserInPlace()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Activate()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[46]
  l0.CLO = "9223372061478453937"
  l0:Activate()
end
function export:f_27_Started()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SceneEntity = "9223372059950792622"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot3.seq"
  l0:Start()
end
function export:f_72_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[73]
  l0.CLO = "9223372061907787492"
  l0:Activate()
end
function export:f_68_Out_0()
  local l0
  self = self._graph
  l0 = self[48]
  l0.CLO = "9223372061478453941"
  l0:Activate()
end
function export:f_89_Started()
  self = self._graph
  self:MistFXON()
end
function export:f_89_Stopped()
  self = self._graph
  self:MistFXOFF()
end
function export:f_20_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_34_BlackoutStarted()
  local l0
  self = self._graph
  self:en_34()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBackup()
end
function export:f_73_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[74]
  l0.CLO = "9223372061907787494"
  l0:Activate()
end
function export:f_57_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_77_Out
  l0:In()
end
function export:f_57_LoadingStarted()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Seconds = 1.5
  l0:Start()
end
function export:f_59_MovedForward()
  local l0
  self = self._graph
  l0 = self[58]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_88_Started()
  local l0
  self = self._graph
  self:en_89()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_88_Stopped()
  local l0
  self = self._graph
  self:en_89()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_87_Started()
  local l0
  self = self._graph
  self:en_88()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_87_Stopped()
  local l0
  self = self._graph
  self:en_88()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_43_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[45]
  l0.CLO = "9223372061478453935"
  l0:Activate()
end
function export:f_45_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  l0.CLO = "9223372061478453936"
  l0:Activate()
end
function export:f_40_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[37]
  l0.CLO = "9223372060029119704"
  l0:Activate()
end
function export:f_84_Started()
  local l0
  self = self._graph
  self:en_85()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_84_Stopped()
  local l0
  self = self._graph
  self:en_85()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_52_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[72]
  l0.CLO = "9223372061907787491"
  l0:Activate()
end
function export:f_42_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[43]
  l0.CLO = "9223372060029119708"
  l0:Activate()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0:In()
end
function export:f_33_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[41]
  l0.CLO = "9223372060029119709"
  l0:Activate()
end
function export:f_80_Started()
  local l0
  self = self._graph
  self:en_81()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_80_Stopped()
  local l0
  self = self._graph
  self:en_81()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_82_Started()
  local l0
  self = self._graph
  self:en_83()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_82_Stopped()
  local l0
  self = self._graph
  self:en_83()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_47_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[70]
  l0.CLO = "9223372061907787490"
  l0:Activate()
end
function export:f_18_Deactivated()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Deactivate()
end
function export:f_18_OnUserInPlace()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Activate()
end
function export:f_60_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_61_Out_0
  l0.Out[1] = self.f_61_Out_1
  l0:In()
end
function export:f_81_Started()
  local l0
  self = self._graph
  self:en_82()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_81_Stopped()
  local l0
  self = self._graph
  self:en_82()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_64_Moved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = nil
  l0.PropagationSpeed = nil
  l0.RecoverySpeed = nil
  l0.Duration = nil
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StopBlackout()
end
function export:f_86_Started()
  local l0
  self = self._graph
  self:en_87()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_86_Stopped()
  local l0
  self = self._graph
  self:en_87()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_83_Started()
  local l0
  self = self._graph
  self:en_84()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_83_Stopped()
  local l0
  self = self._graph
  self:en_84()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_24_Stopped()
  local l0
  self = self._graph
  l0 = self[26]
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_outro.seq"
  l0:Start()
end
function export:f_96_Out_0()
  local l0
  self = self._graph
  l0 = self[94]
  l0.CLO = "9223372060029116487"
  l0:Activate()
end
function export:f_96_Out_1()
  local l0
  self = self._graph
  l0 = self[90]
  l0.CLO = "9223372060029119704"
  l0:Activate()
end
function export:f_96_Out_2()
  local l0
  self = self._graph
  l0 = self[95]
  l0.CLO = "9223372060029119705"
  l0:Activate()
end
function export:f_96_Out_3()
  local l0
  self = self._graph
  l0 = self[105]
  l0.CLO = "9223372060029119706"
  l0:Activate()
end
function export:f_96_Out_4()
  local l0
  self = self._graph
  l0 = self[110]
  l0.CLO = "9223372060029119707"
  l0:Activate()
end
function export:f_96_Out_5()
  local l0
  self = self._graph
  l0 = self[93]
  l0.CLO = "9223372060029119708"
  l0:Activate()
end
function export:f_96_Out_6()
  local l0
  self = self._graph
  l0 = self[108]
  l0.CLO = "9223372060029119709"
  l0:Activate()
end
function export:f_96_Out_7()
  local l0
  self = self._graph
  l0 = self[106]
  l0.CLO = "9223372061478453935"
  l0:Activate()
end
function export:f_96_Out_8()
  local l0
  self = self._graph
  l0 = self[92]
  l0.CLO = "9223372061478453936"
  l0:Activate()
end
function export:f_96_Out_9()
  local l0
  self = self._graph
  l0 = self[98]
  l0.CLO = "9223372061478453937"
  l0:Activate()
end
function export:f_96_Out_10()
  local l0
  self = self._graph
  l0 = self[99]
  l0.CLO = "9223372061478453938"
  l0:Activate()
end
function export:f_96_Out_11()
  local l0
  self = self._graph
  l0 = self[109]
  l0.CLO = "9223372061478453939"
  l0:Activate()
end
function export:f_96_Out_12()
  local l0
  self = self._graph
  l0 = self[103]
  l0.CLO = "9223372061478453940"
  l0:Activate()
end
function export:f_96_Out_13()
  local l0
  self = self._graph
  l0 = self[104]
  l0.CLO = "9223372061478453941"
  l0:Activate()
end
function export:f_96_Out_14()
  local l0
  self = self._graph
  l0 = self[102]
  l0.CLO = "9223372061478453942"
  l0:Activate()
end
function export:f_96_Out_15()
  local l0
  self = self._graph
  l0 = self[107]
  l0.CLO = "9223372061478453943"
  l0:Activate()
end
function export:f_96_Out_16()
  local l0
  self = self._graph
  l0 = self[101]
  l0.CLO = "9223372061907787490"
  l0:Activate()
end
function export:f_96_Out_17()
  local l0
  self = self._graph
  l0 = self[100]
  l0.CLO = "9223372061907787491"
  l0:Activate()
end
function export:f_96_Out_18()
  local l0
  self = self._graph
  l0 = self[97]
  l0.CLO = "9223372061907787492"
  l0:Activate()
end
function export:f_96_Out_19()
  local l0
  self = self._graph
  l0 = self[91]
  l0.CLO = "9223372061907787494"
  l0:Activate()
end
function export:f_51_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[52]
  l0.CLO = "9223372061478453942"
  l0:Activate()
end
function export:f_50_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[51]
  l0.CLO = "9223372061478453943"
  l0:Activate()
end
function export:f_29_Started()
  local l0
  self = self._graph
  l0 = self[31]
  l0.SceneEntity = "9223372059950792631"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot6.seq"
  l0:Start()
end
function export:f_28_Started()
  local l0
  self = self._graph
  l0 = self[29]
  l0.SceneEntity = "9223372059950792625"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot4.seq"
  l0:Start()
end
function export:f_19_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_23_Finished()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Start()
end
function export:f_36_Finished()
  local l0
  self = self._graph
  l0 = self[38]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_36_SPOut__blackout_()
  local l0
  self = self._graph
  self:en_34()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBlackout()
end
function export:f_41_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[42]
  l0.CLO = "9223372060029119706"
  l0:Activate()
end
function export:f_49_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[50]
  l0.CLO = "9223372061478453940"
  l0:Activate()
end
function export:f_48_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[49]
  l0.CLO = "9223372061478453939"
  l0:Activate()
end
function export:f_37_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[39]
  l0.CLO = "9223372060029119707"
  l0:Activate()
end
function export:f_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_68_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_61_Out_1()
  self = self._graph
  self:MarcusEnteredBlume()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Condition(1)
end
function export:f_17_Deactivated()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Deactivate()
end
function export:f_17_OnUserInPlace()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Activate()
end
function export:en_85()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162875",
    "9223372060355162877",
    "9223372060355162879",
    "9223372060355162881",
    "9223372060355162883",
    "9223372060355162885",
    "9223372060355162887",
    "9223372060355162889",
    "9223372060355162891",
    "9223372060355162893",
    "9223372060355162895",
    "9223372060355162897",
    "9223372060355162899",
    "9223372060355162901",
    "9223372060355162903",
    "9223372060355162905",
    "9223372060355162907",
    "9223372060355162909",
    "9223372060355162911",
    "9223372060355162913"
  }
  l0._graph = self
  l0.Started = self.f_85_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_85_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.CLO = "9223372050091623464"
end
function export:en_89()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355163035",
    "9223372060355163037",
    "9223372060355163039",
    "9223372060355163041",
    "9223372060355163043",
    "9223372060355163045",
    "9223372060355163047",
    "9223372060355163049",
    "9223372060355162342"
  }
  l0._graph = self
  l0.Started = self.f_89_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_89_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_34()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 2100
  l0.PropagationSpeed = 75
  l0.RecoverySpeed = nil
  l0.Duration = -1
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0.BlackoutStarted = self.f_34_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:en_88()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162995",
    "9223372060355162997",
    "9223372060355162999",
    "9223372060355163001",
    "9223372060355163003",
    "9223372060355163005",
    "9223372060355163007",
    "9223372060355163009",
    "9223372060355163011",
    "9223372060355163013",
    "9223372060355163015",
    "9223372060355163017",
    "9223372060355163019",
    "9223372060355163021",
    "9223372060355163023",
    "9223372060355163025",
    "9223372060355163027",
    "9223372060355163029",
    "9223372060355163031",
    "9223372060355163033"
  }
  l0._graph = self
  l0.Started = self.f_88_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_88_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_87()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162955",
    "9223372060355162957",
    "9223372060355162959",
    "9223372060355162961",
    "9223372060355162963",
    "9223372060355162965",
    "9223372060355162967",
    "9223372060355162969",
    "9223372060355162971",
    "9223372060355162973",
    "9223372060355162975",
    "9223372060355162977",
    "9223372060355162979",
    "9223372060355162981",
    "9223372060355162983",
    "9223372060355162985",
    "9223372060355162987",
    "9223372060355162989",
    "9223372060355162991",
    "9223372060355162993"
  }
  l0._graph = self
  l0.Started = self.f_87_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_87_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_84()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162835",
    "9223372060355162837",
    "9223372060355162839",
    "9223372060355162841",
    "9223372060355162843",
    "9223372060355162845",
    "9223372060355162847",
    "9223372060355162849",
    "9223372060355162851",
    "9223372060355162853",
    "9223372060355162855",
    "9223372060355162857",
    "9223372060355162859",
    "9223372060355162861",
    "9223372060355162863",
    "9223372060355162865",
    "9223372060355162867",
    "9223372060355162869",
    "9223372060355162871",
    "9223372060355162873"
  }
  l0._graph = self
  l0.Started = self.f_84_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_84_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_80()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162320",
    "9223372060355162324",
    "9223372060355162328",
    "9223372060355162330",
    "9223372060355162332",
    "9223372060355162334",
    "9223372060355162336",
    "9223372060355162338",
    "9223372060355162340",
    "9223372060355162652",
    "9223372060355162654",
    "9223372060355162656",
    "9223372060355162658",
    "9223372060355162660",
    "9223372060355162662",
    "9223372060355162664",
    "9223372060355162666",
    "9223372060355162668",
    "9223372060355162670",
    "9223372060355162672"
  }
  l0._graph = self
  l0.Started = self.f_80_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_80_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_82()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162714",
    "9223372060355162716",
    "9223372060355162718",
    "9223372060355162720",
    "9223372060355162722",
    "9223372060355162724",
    "9223372060355162726",
    "9223372060355162728",
    "9223372060355162730",
    "9223372060355162732",
    "9223372060355162734",
    "9223372060355162736",
    "9223372060355162738",
    "9223372060355162740",
    "9223372060355162742",
    "9223372060355162744",
    "9223372060355162746",
    "9223372060355162748",
    "9223372060355162750",
    "9223372060355162752"
  }
  l0._graph = self
  l0.Started = self.f_82_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_82_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.CLO = "9223372050091623466"
end
function export:en_81()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162674",
    "9223372060355162676",
    "9223372060355162678",
    "9223372060355162680",
    "9223372060355162682",
    "9223372060355162684",
    "9223372060355162686",
    "9223372060355162688",
    "9223372060355162690",
    "9223372060355162692",
    "9223372060355162694",
    "9223372060355162696",
    "9223372060355162698",
    "9223372060355162700",
    "9223372060355162702",
    "9223372060355162704",
    "9223372060355162706",
    "9223372060355162708",
    "9223372060355162710",
    "9223372060355162712"
  }
  l0._graph = self
  l0.Started = self.f_81_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_81_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_86()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162915",
    "9223372060355162917",
    "9223372060355162919",
    "9223372060355162921",
    "9223372060355162923",
    "9223372060355162925",
    "9223372060355162927",
    "9223372060355162929",
    "9223372060355162931",
    "9223372060355162933",
    "9223372060355162935",
    "9223372060355162937",
    "9223372060355162939",
    "9223372060355162941",
    "9223372060355162943",
    "9223372060355162945",
    "9223372060355162947",
    "9223372060355162949",
    "9223372060355162951",
    "9223372060355162953"
  }
  l0._graph = self
  l0.Started = self.f_86_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_86_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_83()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372060355162754",
    "9223372060355162756",
    "9223372060355162758",
    "9223372060355162760",
    "9223372060355162762",
    "9223372060355162764",
    "9223372060355162766",
    "9223372060355162768",
    "9223372060355162770",
    "9223372060355162801",
    "9223372060355162803",
    "9223372060355162805",
    "9223372060355162807",
    "9223372060355162809",
    "9223372060355162811",
    "9223372060355162813",
    "9223372060355162815",
    "9223372060355162817",
    "9223372060355162831",
    "9223372060355162833"
  }
  l0._graph = self
  l0.Started = self.f_83_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_83_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_loop.seq"
  l0.LoopAnim = 1
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.CLO = "9223372050091623467"
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.CLO = "9223372050091623465"
end
function export:Out()
end
function export:MarcusEnteredBlume()
end
function export:BlackOutStopped()
end
function export:EndMarcusOutro()
end
function export:EndTS()
end
function export:FinalHackFinished()
end
function export:MistFXON()
end
function export:MistFXOFF()
end
_compilerVersion = 4
