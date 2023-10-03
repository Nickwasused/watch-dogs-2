export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
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
  self._name = "S17M010_Marcus_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main"
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
  self.box_PlaySequence_v5_26 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_26
  l0._graph = self
  l0._name = "box_PlaySequence_v5_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|35844478"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_26_Finished
  self.box_PlaySequence_v5_21 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_21
  l0._graph = self
  l0._name = "box_PlaySequence_v5_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|39694763"
  l0.Started = self.f_box_PlaySequence_v5_21_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_GetNPC_15 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_15
  l0._graph = self
  l0._name = "box_GetNPC_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|51075331"
  l0.GotNPCList = self.f_box_GetNPC_15_GotNPCList
  self.box_CLOController_103 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_103
  l0._graph = self
  l0._name = "box_CLOController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|78466637"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Multiple_AND_9 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_9
  l0._graph = self
  l0._name = "box_Multiple_AND_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|102771945"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_9_Out
  self.box_CLOController_46 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_46
  l0._graph = self
  l0._name = "box_CLOController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|141866239"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_46_OnUserInPlace
  self.box_Timer_v2_56 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_56
  l0._graph = self
  l0._name = "box_Timer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|219746698"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_38 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_38
  l0._graph = self
  l0._name = "box_CinematicPrep_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|242234253"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_38_PostOut
  self.box_UnspawnController_10 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_10
  l0._graph = self
  l0._name = "box_UnspawnController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|242385715"
  l0.EntityUnspawned = self.f_box_UnspawnController_10_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_PhoneCommunicationController_55 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_55
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|242981743"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_55_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|273740069"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_39_OnUserInPlace
  self.box_PlaySequence_v5_62 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_62
  l0._graph = self
  l0._name = "box_PlaySequence_v5_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|282276898"
  l0._DynamicAnchors = {
    SPOut = {"closedoor"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_62_Finished
  l0.SPOut.closedoor = self.f_box_PlaySequence_v5_62_SPOut__closedoor_
  self.box_CinematicPrep_58 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_58
  l0._graph = self
  l0._name = "box_CinematicPrep_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|331007054"
  l0.PreOut = self.f_box_CinematicPrep_58_PreOut
  l0.PostOut = DummyFunction
  self.box_CLOController_16 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_16
  l0._graph = self
  l0._name = "box_CLOController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|413025802"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_16_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_16_OnUserInPlace
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|446011100"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_CLOController_109 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_109
  l0._graph = self
  l0._name = "box_CLOController_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|447585139"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySequence_v5_27 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_27
  l0._graph = self
  l0._name = "box_PlaySequence_v5_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|532608012"
  l0.Started = self.f_box_PlaySequence_v5_27_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_31 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_31
  l0._graph = self
  l0._name = "box_PlaySequence_v5_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|559871539"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_72 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_72
  l0._graph = self
  l0._name = "box_CLOController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|560926141"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_72_OnUserInPlace
  self.box_CLOController_100 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_100
  l0._graph = self
  l0._name = "box_CLOController_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|581328853"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_91 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_91
  l0._graph = self
  l0._name = "box_CLOController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|592431895"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_102 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_102
  l0._graph = self
  l0._name = "box_CLOController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|720898118"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CinematicPrep_20 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_20
  l0._graph = self
  l0._name = "box_CinematicPrep_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|727594858"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_20_PostOut
  self.box_CLOController_73 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_73
  l0._graph = self
  l0._name = "box_CLOController_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|809019880"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_73_OnUserInPlace
  self.box_Standalone_Loader_Controller_57 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_57
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|810575140"
  l0.LoadingStarted = self.f_box_Standalone_Loader_Controller_57_LoadingStarted
  l0.Loaded = self.f_box_Standalone_Loader_Controller_57_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self.box_CLOController_92 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_92
  l0._graph = self
  l0._name = "box_CLOController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|839746030"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_99 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_99
  l0._graph = self
  l0._name = "box_CLOController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|883210973"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_43 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_43
  l0._graph = self
  l0._name = "box_CLOController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|892466740"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_43_OnUserInPlace
  self.box_CLOController_45 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_45
  l0._graph = self
  l0._name = "box_CLOController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|912430698"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_45_OnUserInPlace
  self.box_CLOController_90 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_90
  l0._graph = self
  l0._name = "box_CLOController_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|934551583"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_40 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_40
  l0._graph = self
  l0._name = "box_CLOController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|975038451"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_40_OnUserInPlace
  self.box_CLOController_104 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_104
  l0._graph = self
  l0._name = "box_CLOController_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|984605603"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_52 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_52
  l0._graph = self
  l0._name = "box_CLOController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1105603585"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_52_OnUserInPlace
  self.box_CLOController_70 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_70
  l0._graph = self
  l0._name = "box_CLOController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1114375577"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_105 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_105
  l0._graph = self
  l0._name = "box_CLOController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1155777427"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_42 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_42
  l0._graph = self
  l0._name = "box_CLOController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1220498901"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_42_OnUserInPlace
  self.box_CLOController_101 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_101
  l0._graph = self
  l0._name = "box_CLOController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1247582225"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_95 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_95
  l0._graph = self
  l0._name = "box_CLOController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1251562471"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_33 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_33
  l0._graph = self
  l0._name = "box_CLOController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1272840636"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_33_OnUserInPlace
  self.box_CLOController_97 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_97
  l0._graph = self
  l0._name = "box_CLOController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1391567195"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_108 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_108
  l0._graph = self
  l0._name = "box_CLOController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1396402071"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_47 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_47
  l0._graph = self
  l0._name = "box_CLOController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1398045919"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_47_OnUserInPlace
  self.box_CLOController_98 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_98
  l0._graph = self
  l0._name = "box_CLOController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1406396003"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_107 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_107
  l0._graph = self
  l0._name = "box_CLOController_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1446728043"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_110 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_110
  l0._graph = self
  l0._name = "box_CLOController_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1464677074"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1526961726"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_18_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_18_OnUserInPlace
  self.box_CinematicPrep_60 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_60
  l0._graph = self
  l0._name = "box_CinematicPrep_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1582466785"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_60_PostOut
  self.box_CLOController_74 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_74
  l0._graph = self
  l0._name = "box_CLOController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1644560174"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySequence_v5_24 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_24
  l0._graph = self
  l0._name = "box_PlaySequence_v5_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1715638398"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_24_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_51 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_51
  l0._graph = self
  l0._name = "box_CLOController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1743328567"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_51_OnUserInPlace
  self.box_CLOController_50 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_50
  l0._graph = self
  l0._name = "box_CLOController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1786558383"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_50_OnUserInPlace
  self.box_PlaySequence_v5_29 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_29
  l0._graph = self
  l0._name = "box_PlaySequence_v5_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1820164390"
  l0.Started = self.f_box_PlaySequence_v5_29_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_28 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_28
  l0._graph = self
  l0._name = "box_PlaySequence_v5_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1826090949"
  l0.Started = self.f_box_PlaySequence_v5_28_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_19 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_19
  l0._graph = self
  l0._name = "box_CLOController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1842878952"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_19_OnUserInPlace
  self.box_PlaySequence_v5_23 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_23
  l0._graph = self
  l0._name = "box_PlaySequence_v5_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1885796491"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_23_Finished
  self.box_CLOController_94 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_94
  l0._graph = self
  l0._name = "box_CLOController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1896049072"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySequence_v5_36 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_36
  l0._graph = self
  l0._name = "box_PlaySequence_v5_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1943222578"
  l0._DynamicAnchors = {
    SPOut = {"blackout"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_36_Finished
  l0.SPOut.blackout = self.f_box_PlaySequence_v5_36_SPOut__blackout_
  self.box_CLOController_106 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_106
  l0._graph = self
  l0._name = "box_CLOController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1969005082"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_93 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_93
  l0._graph = self
  l0._name = "box_CLOController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1975692398"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_41 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_41
  l0._graph = self
  l0._name = "box_CLOController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2026481494"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_41_OnUserInPlace
  self.box_CLOController_49 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_49
  l0._graph = self
  l0._name = "box_CLOController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2041824108"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_49_OnUserInPlace
  self.box_CLOController_48 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_48
  l0._graph = self
  l0._name = "box_CLOController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2047750667"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_48_OnUserInPlace
  self.box_CLOController_37 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_37
  l0._graph = self
  l0._name = "box_CLOController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2052234832"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_37_OnUserInPlace
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2142084028"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_17_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_17_OnUserInPlace
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
  l0._name = "box_Ordered_Output_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1742436635"
  l0._DynamicAnchors = {Out = 20}
  l0.Out[0] = self.f_box_Ordered_Output_96_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_96_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_96_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_96_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_96_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_96_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_96_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_96_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_96_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_96_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_96_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_96_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_96_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_96_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_96_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_96_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_96_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_96_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_96_Out_18
  l0.Out[19] = self.f_box_Ordered_Output_96_Out_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1037740819", "1037740819", "S17M010_Marcus_SCR_Main", "Activate_ALL_Civ", "box_Ordered_Output_96.In", self, l0)
  l0:In()
end
function export:ActivateCivilianCLOs()
  local l0
  l0 = self.box_CLOController_40
  l0.CLO = "9223372060029116487"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|934249444", "934249444", "S17M010_Marcus_SCR_Main", "ActivateCivilianCLOs", "box_CLOController_40.Activate", self, l0)
  l0:Activate()
end
function export:ActivateMistFX()
  local l0
  self:OnEnter_box_ParticleFXController_v2_80()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1557976297", "1557976297", "S17M010_Marcus_SCR_Main", "ActivateMistFX", "box_ParticleFXController_v2_80.Start", self, l0)
  l0:Start()
end
function export:ActivateSCRFinalHack()
  local l0
  l0 = self.box_PlaySequence_v5_23
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_intro.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|662765488", "662765488", "S17M010_Marcus_SCR_Main", "ActivateSCRFinalHack", "box_PlaySequence_v5_23.Start", self, l0)
  l0:Start()
end
function export:BackToRegularHackerSpace()
  local l0
  self:OnEnter_box_CLOController_16()
  l0 = self.box_CLOController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|298139359", "298139359", "S17M010_Marcus_SCR_Main", "BackToRegularHackerSpace", "box_CLOController_16.Deactivate", self, l0)
  l0:Deactivate()
end
function export:CheeringHackerSpace()
  local l0
  l0 = self.box_GetNPC_15
  l0.Group = "HQ_Talkers"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2062772998", "2062772998", "S17M010_Marcus_SCR_Main", "CheeringHackerSpace", "box_GetNPC_15.GetAll", self, l0)
  l0:GetAll()
end
function export:Deactivate_Mist_FX()
  local l0
  self:OnEnter_box_ParticleFXController_v2_80()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|584740406", "584740406", "S17M010_Marcus_SCR_Main", "Deactivate Mist FX", "box_ParticleFXController_v2_80.Stop", self, l0)
  l0:Stop()
end
function export:FinalHackCompleted()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|211474140"
  l0.Out = self.f_box_Simple_Node_25_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1972084005", "1972084005", "S17M010_Marcus_SCR_Main", "FinalHackCompleted", "box_Simple_Node_25.In", self, l0)
  l0:In()
end
function export:In()
  local l0
  l0 = self.box_PhoneCommunicationController_55
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372061478456071"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2132163171", "2132163171", "S17M010_Marcus_SCR_Main", "In", "box_PhoneCommunicationController_55.StartCommunication", self, l0)
  l0:StartCommunication()
end
function export:MarcusEntersBlume()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372066831787850"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|825534220"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_59_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|53271130", "53271130", "S17M010_Marcus_SCR_Main", "MarcusEntersBlume", "box_MoveableEntityController_59.MoveForward", self, l0)
  l0:MoveForward()
end
function export:Spawn_Fuzzy_Robots()
  local l0
  l0 = self.box_PlaySequence_v5_21
  l0.SceneEntity = "9223372059950792614"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot1.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1544319336", "1544319336", "S17M010_Marcus_SCR_Main", "Spawn Fuzzy Robots", "box_PlaySequence_v5_21.Start", self, l0)
  l0:Start()
end
function export:StopBlackOut()
  local l0
  self:OnEnter_box_BlackoutController_34()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|287907558", "287907558", "S17M010_Marcus_SCR_Main", "StopBlackOut", "box_BlackoutController_34.StopBlackout", self, l0)
  l0:StopBlackout()
end
function export:f_box_PlaySequence_v5_26_Finished()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|837180892", "837180892", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_26.Finished", "FinalHackFinished", l0, self)
  self:FinalHackFinished()
end
function export:f_box_PlaySequence_v5_21_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_27
  l0.SceneEntity = "9223372059950792619"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot2.seq"
  l0 = self.box_PlaySequence_v5_21
  l1 = self.box_PlaySequence_v5_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1751118302", "1751118302", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_21.Started", "box_PlaySequence_v5_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_GetNPC_15_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_15
  self.HQ_talkers_list_to_hide = l0.NPCList
  l0 = self.box_UnspawnController_10
  l0.EntityList = self.HQ_talkers_list_to_hide
  l0 = self.box_GetNPC_15
  l1 = self.box_UnspawnController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1700723345", "1700723345", "S17M010_Marcus_SCR_Main", "box_GetNPC_15.GotNPCList", "box_UnspawnController_10.UnspawnEntity", l0, l1)
  l1:UnspawnEntity()
end
function export:f_box_Multiple_AND_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_60
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Multiple_AND_9
  l1 = self.box_CinematicPrep_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1893356447", "1893356447", "S17M010_Marcus_SCR_Main", "box_Multiple_AND_9.Out", "box_CinematicPrep_60.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_46_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_47
  l0.CLO = "9223372061478453938"
  l0 = self.box_CLOController_46
  l1 = self.box_CLOController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1363588579", "1363588579", "S17M010_Marcus_SCR_Main", "box_CLOController_46.OnUserInPlace", "box_CLOController_47.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_24()
  l0 = self.box_PlaySequence_v5_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1367552683", "1367552683", "S17M010_Marcus_SCR_Main", "box_Simple_Node_25.Out", "box_PlaySequence_v5_24.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_ParticleFXController_v2_85_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_86()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1313235664", "1313235664", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_85.Started", "box_ParticleFXController_v2_86.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_85_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_86()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1337170294", "1337170294", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_85.Stopped", "box_ParticleFXController_v2_86.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_56_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_62
  l0.SceneEntity = "9223372049783955405"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_marcusentersblume_2.seq"
  l0 = self.box_Timer_v2_56
  l1 = self.box_PlaySequence_v5_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1974321534", "1974321534", "S17M010_Marcus_SCR_Main", "box_Timer_v2_56.TimeElapsed", "box_PlaySequence_v5_62.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_38_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|15449314", "15449314", "S17M010_Marcus_SCR_Main", "box_CinematicPrep_38.PostOut", "BlackOutStopped", l0, self)
  self:BlackOutStopped()
end
function export:f_box_UnspawnController_10_EntityUnspawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_16()
  l0 = self.box_UnspawnController_10
  l1 = self.box_CLOController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|13883080", "13883080", "S17M010_Marcus_SCR_Main", "box_UnspawnController_10.EntityUnspawned", "box_CLOController_16.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PhoneCommunicationController_55_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_36
  l0.SceneEntity = "9223372060029121318"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_Y_MarcusEntersBlume/s17_m010_y_marcusentersblume_flybycam.seq"
  l0 = self.box_PhoneCommunicationController_55
  l1 = self.box_PlaySequence_v5_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1475435561", "1475435561", "S17M010_Marcus_SCR_Main", "box_PhoneCommunicationController_55.StartCommunicationOut", "box_PlaySequence_v5_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_39_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_33
  l0.CLO = "9223372060029119705"
  l0 = self.box_CLOController_39
  l1 = self.box_CLOController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|40763790", "40763790", "S17M010_Marcus_SCR_Main", "box_CLOController_39.OnUserInPlace", "box_CLOController_33.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_62_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_PlaySequence_v5_62
  l1 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|148158035", "148158035", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_62.Finished", "box_Multiple_AND_9.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PlaySequence_v5_62_SPOut__closedoor_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372066831787850"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1674637785"
  l0.Moved = self.f_box_MoveableEntityController_64_Moved
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
  l0 = self.box_PlaySequence_v5_62
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|791890738", "791890738", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_62.SPOut", "box_MoveableEntityController_64.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_CinematicPrep_58_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_57
  l0.StandaloneLoader = "9223372052039367221"
  l0.LayerName = "SF_08_Blume_Campus_HMA"
  l0 = self.box_CinematicPrep_58
  l1 = self.box_Standalone_Loader_Controller_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1762637035", "1762637035", "S17M010_Marcus_SCR_Main", "box_CinematicPrep_58.PreOut", "box_Standalone_Loader_Controller_57.Load", l0, l1)
  l1:Load()
end
function export:f_box_CLOController_16_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_17()
  l0 = self.box_CLOController_16
  l1 = self.box_CLOController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2035392396", "2035392396", "S17M010_Marcus_SCR_Main", "box_CLOController_16.Deactivated", "box_CLOController_17.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_16_OnUserInPlace()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_17()
  l0 = self.box_CLOController_16
  l1 = self.box_CLOController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|838586136", "838586136", "S17M010_Marcus_SCR_Main", "box_CLOController_16.OnUserInPlace", "box_CLOController_17.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_46
  l0.CLO = "9223372061478453937"
  l0 = self.box_CLOController_8
  l1 = self.box_CLOController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|258204820", "258204820", "S17M010_Marcus_SCR_Main", "box_CLOController_8.OnUserInPlace", "box_CLOController_46.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_27_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_28
  l0.SceneEntity = "9223372059950792622"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot3.seq"
  l0 = self.box_PlaySequence_v5_27
  l1 = self.box_PlaySequence_v5_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|309285933", "309285933", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_27.Started", "box_PlaySequence_v5_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_72_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_73
  l0.CLO = "9223372061907787492"
  l0 = self.box_CLOController_72
  l1 = self.box_CLOController_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1806190401", "1806190401", "S17M010_Marcus_SCR_Main", "box_CLOController_72.OnUserInPlace", "box_CLOController_73.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_48
  l0.CLO = "9223372061478453941"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1055175920", "1055175920", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_68.Out", "box_CLOController_48.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_ParticleFXController_v2_89_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|413756225", "413756225", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_89.Started", "MistFXON", clone, self)
  self:MistFXON()
end
function export:f_box_ParticleFXController_v2_89_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|247817644", "247817644", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_89.Stopped", "MistFXOFF", clone, self)
  self:MistFXOFF()
end
function export:f_box_CinematicPrep_20_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1396913970"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_20
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|889541553", "889541553", "S17M010_Marcus_SCR_Main", "box_CinematicPrep_20.PostOut", "box_Show_Or_Hide_All_UI_22.Show", l0, l1)
  l1:Show()
end
function export:f_box_BlackoutController_34_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BlackoutController_34()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1702386973", "1702386973", "S17M010_Marcus_SCR_Main", "box_BlackoutController_34.BlackoutStarted", "box_BlackoutController_34.StartBackup", clone, l0)
  l0:StartBackup()
end
function export:f_box_CLOController_73_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_74
  l0.CLO = "9223372061907787494"
  l0 = self.box_CLOController_73
  l1 = self.box_CLOController_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|499271050", "499271050", "S17M010_Marcus_SCR_Main", "box_CLOController_73.OnUserInPlace", "box_CLOController_74.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Standalone_Loader_Controller_57_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1228904776"
  l0.Out = self.f_box_Simple_Node_77_Out
  l0 = self.box_Standalone_Loader_Controller_57
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2031762185", "2031762185", "S17M010_Marcus_SCR_Main", "box_Standalone_Loader_Controller_57.Loaded", "box_Simple_Node_77.In", l0, l1)
  l1:In()
end
function export:f_box_Standalone_Loader_Controller_57_LoadingStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_56
  l0.Seconds = 1.5
  l0 = self.box_Standalone_Loader_Controller_57
  l1 = self.box_Timer_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1151249579", "1151249579", "S17M010_Marcus_SCR_Main", "box_Standalone_Loader_Controller_57.LoadingStarted", "box_Timer_v2_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_MoveableEntityController_59_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_58
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1061295613", "1061295613", "S17M010_Marcus_SCR_Main", "box_MoveableEntityController_59.MovedForward", "box_CinematicPrep_58.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_ParticleFXController_v2_88_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_89()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|738346364", "738346364", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_88.Started", "box_ParticleFXController_v2_89.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_88_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_89()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1387865078", "1387865078", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_88.Stopped", "box_ParticleFXController_v2_89.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_ParticleFXController_v2_87_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_88()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1486543240", "1486543240", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_87.Started", "box_ParticleFXController_v2_88.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_87_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_88()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1630806043", "1630806043", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_87.Stopped", "box_ParticleFXController_v2_88.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CLOController_43_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_45
  l0.CLO = "9223372061478453935"
  l0 = self.box_CLOController_43
  l1 = self.box_CLOController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1754036834", "1754036834", "S17M010_Marcus_SCR_Main", "box_CLOController_43.OnUserInPlace", "box_CLOController_45.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_45_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  l0.CLO = "9223372061478453936"
  l0 = self.box_CLOController_45
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2059825529", "2059825529", "S17M010_Marcus_SCR_Main", "box_CLOController_45.OnUserInPlace", "box_CLOController_8.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_40_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_37
  l0.CLO = "9223372060029119704"
  l0 = self.box_CLOController_40
  l1 = self.box_CLOController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1372266415", "1372266415", "S17M010_Marcus_SCR_Main", "box_CLOController_40.OnUserInPlace", "box_CLOController_37.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ParticleFXController_v2_84_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_85()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|719931486", "719931486", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_84.Started", "box_ParticleFXController_v2_85.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_84_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_85()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1826177408", "1826177408", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_84.Stopped", "box_ParticleFXController_v2_85.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CLOController_52_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_72
  l0.CLO = "9223372061907787491"
  l0 = self.box_CLOController_52
  l1 = self.box_CLOController_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|236525148", "236525148", "S17M010_Marcus_SCR_Main", "box_CLOController_52.OnUserInPlace", "box_CLOController_72.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_42_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_43
  l0.CLO = "9223372060029119708"
  l0 = self.box_CLOController_42
  l1 = self.box_CLOController_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|521621718", "521621718", "S17M010_Marcus_SCR_Main", "box_CLOController_42.OnUserInPlace", "box_CLOController_43.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2079474025"
  l0.Out = self.f_box_Simple_Node_66_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|407682064", "407682064", "S17M010_Marcus_SCR_Main", "box_Simple_Node_77.Out", "box_Simple_Node_66.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_33_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_41
  l0.CLO = "9223372060029119709"
  l0 = self.box_CLOController_33
  l1 = self.box_CLOController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|635076646", "635076646", "S17M010_Marcus_SCR_Main", "box_CLOController_33.OnUserInPlace", "box_CLOController_41.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ParticleFXController_v2_80_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_81()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1350489997", "1350489997", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_80.Started", "box_ParticleFXController_v2_81.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_80_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_81()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|170608371", "170608371", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_80.Stopped", "box_ParticleFXController_v2_81.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_ParticleFXController_v2_82_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_83()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|518260178", "518260178", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_82.Started", "box_ParticleFXController_v2_83.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_82_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_83()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1286475510", "1286475510", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_82.Stopped", "box_ParticleFXController_v2_83.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CLOController_47_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_70
  l0.CLO = "9223372061907787490"
  l0 = self.box_CLOController_47
  l1 = self.box_CLOController_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|245269234", "245269234", "S17M010_Marcus_SCR_Main", "box_CLOController_47.OnUserInPlace", "box_CLOController_70.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_18_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_19()
  l0 = self.box_CLOController_18
  l1 = self.box_CLOController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|275248233", "275248233", "S17M010_Marcus_SCR_Main", "box_CLOController_18.Deactivated", "box_CLOController_19.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_18_OnUserInPlace()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_19()
  l0 = self.box_CLOController_18
  l1 = self.box_CLOController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1016518904", "1016518904", "S17M010_Marcus_SCR_Main", "box_CLOController_18.OnUserInPlace", "box_CLOController_19.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CinematicPrep_60_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2057968927"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0 = self.box_CinematicPrep_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1012498775", "1012498775", "S17M010_Marcus_SCR_Main", "box_CinematicPrep_60.PostOut", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_81_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_82()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|896937548", "896937548", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_81.Started", "box_ParticleFXController_v2_82.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_81_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_82()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|459220118", "459220118", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_81.Stopped", "box_ParticleFXController_v2_82.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MoveableEntityController_64_Moved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_BlackoutController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1878855695"
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|609278030", "609278030", "S17M010_Marcus_SCR_Main", "box_MoveableEntityController_64.Moved", "box_BlackoutController_63.StopBlackout", clone, l0)
  l0:StopBlackout()
end
function export:f_box_ParticleFXController_v2_86_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_87()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1979516103", "1979516103", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_86.Started", "box_ParticleFXController_v2_87.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_86_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_87()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|855254113", "855254113", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_86.Stopped", "box_ParticleFXController_v2_87.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_ParticleFXController_v2_83_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_84()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1585549039", "1585549039", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_83.Started", "box_ParticleFXController_v2_84.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_83_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_84()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1350293907", "1350293907", "S17M010_Marcus_SCR_Main", "box_ParticleFXController_v2_83.Stopped", "box_ParticleFXController_v2_84.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_PlaySequence_v5_24_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_26
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_outro.seq"
  l0 = self.box_PlaySequence_v5_24
  l1 = self.box_PlaySequence_v5_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|445931303", "445931303", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_24.Stopped", "box_PlaySequence_v5_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_96_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_94
  l0.CLO = "9223372060029116487"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1930032901", "1930032901", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_94.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_90
  l0.CLO = "9223372060029119704"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1941877292", "1941877292", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_90.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_95
  l0.CLO = "9223372060029119705"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|845358690", "845358690", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_95.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_105
  l0.CLO = "9223372060029119706"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1131948809", "1131948809", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_105.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_110
  l0.CLO = "9223372060029119707"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|445932901", "445932901", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_110.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_93
  l0.CLO = "9223372060029119708"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1706191120", "1706191120", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_93.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_108
  l0.CLO = "9223372060029119709"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2025815622", "2025815622", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_108.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_106
  l0.CLO = "9223372061478453935"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1348513000", "1348513000", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_106.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_92
  l0.CLO = "9223372061478453936"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|619421187", "619421187", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_92.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_98
  l0.CLO = "9223372061478453937"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|706224123", "706224123", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_98.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_99
  l0.CLO = "9223372061478453938"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|394590771", "394590771", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_99.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_109
  l0.CLO = "9223372061478453939"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1056579409", "1056579409", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_109.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_103
  l0.CLO = "9223372061478453940"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|862100492", "862100492", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_103.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_104
  l0.CLO = "9223372061478453941"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1926631725", "1926631725", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_104.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_102
  l0.CLO = "9223372061478453942"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|310809138", "310809138", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_102.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_107
  l0.CLO = "9223372061478453943"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|2121537368", "2121537368", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_107.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_101
  l0.CLO = "9223372061907787490"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1492333317", "1492333317", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_101.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_100
  l0.CLO = "9223372061907787491"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1760690072", "1760690072", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_100.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_97
  l0.CLO = "9223372061907787492"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|140242589", "140242589", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_97.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_96_Out_19()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_91
  l0.CLO = "9223372061907787494"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|881781152", "881781152", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_96.Out", "box_CLOController_91.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_51_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_52
  l0.CLO = "9223372061478453942"
  l0 = self.box_CLOController_51
  l1 = self.box_CLOController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1518459679", "1518459679", "S17M010_Marcus_SCR_Main", "box_CLOController_51.OnUserInPlace", "box_CLOController_52.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_50_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_51
  l0.CLO = "9223372061478453943"
  l0 = self.box_CLOController_50
  l1 = self.box_CLOController_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|3127322", "3127322", "S17M010_Marcus_SCR_Main", "box_CLOController_50.OnUserInPlace", "box_CLOController_51.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_29_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_31
  l0.SceneEntity = "9223372059950792631"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot6.seq"
  l0 = self.box_PlaySequence_v5_29
  l1 = self.box_PlaySequence_v5_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|594910056", "594910056", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_29.Started", "box_PlaySequence_v5_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_28_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_29
  l0.SceneEntity = "9223372059950792625"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_fuzzyrobot4.seq"
  l0 = self.box_PlaySequence_v5_28
  l1 = self.box_PlaySequence_v5_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|907297275", "907297275", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_28.Started", "box_PlaySequence_v5_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_19_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_20
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_19
  l1 = self.box_CinematicPrep_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1895260070", "1895260070", "S17M010_Marcus_SCR_Main", "box_CLOController_19.OnUserInPlace", "box_CinematicPrep_20.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_23_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_24()
  l0 = self.box_PlaySequence_v5_23
  l1 = self.box_PlaySequence_v5_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|691540729", "691540729", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_23.Finished", "box_PlaySequence_v5_24.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_36_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_38
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_36
  l1 = self.box_CinematicPrep_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1899652533", "1899652533", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_36.Finished", "box_CinematicPrep_38.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_36_SPOut__blackout_()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BlackoutController_34()
  l0 = self.box_PlaySequence_v5_36
  l1 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1263281553", "1263281553", "S17M010_Marcus_SCR_Main", "box_PlaySequence_v5_36.SPOut", "box_BlackoutController_34.StartBlackout", l0, l1)
  l1:StartBlackout()
end
function export:f_box_CLOController_41_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_42
  l0.CLO = "9223372060029119706"
  l0 = self.box_CLOController_41
  l1 = self.box_CLOController_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|353555832", "353555832", "S17M010_Marcus_SCR_Main", "box_CLOController_41.OnUserInPlace", "box_CLOController_42.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_49_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_50
  l0.CLO = "9223372061478453940"
  l0 = self.box_CLOController_49
  l1 = self.box_CLOController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|891877716", "891877716", "S17M010_Marcus_SCR_Main", "box_CLOController_49.OnUserInPlace", "box_CLOController_50.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_48_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_49
  l0.CLO = "9223372061478453939"
  l0 = self.box_CLOController_48
  l1 = self.box_CLOController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1949217723", "1949217723", "S17M010_Marcus_SCR_Main", "box_CLOController_48.OnUserInPlace", "box_CLOController_49.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_37_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  l0.CLO = "9223372060029119707"
  l0 = self.box_CLOController_37
  l1 = self.box_CLOController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|636134899", "636134899", "S17M010_Marcus_SCR_Main", "box_CLOController_37.OnUserInPlace", "box_CLOController_39.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|636019883"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1991476430", "1991476430", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_61.Out", "box_Ordered_Output_68.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1877058075", "1877058075", "S17M010_Marcus_SCR_Main", "box_Ordered_Output_61.Out", "MarcusEnteredBlume", clone, self)
  self:MarcusEnteredBlume()
end
function export:f_box_Simple_Node_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|16622496", "16622496", "S17M010_Marcus_SCR_Main", "box_Simple_Node_66.Out", "box_Multiple_AND_9.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_CLOController_17_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_18()
  l0 = self.box_CLOController_17
  l1 = self.box_CLOController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1559230833", "1559230833", "S17M010_Marcus_SCR_Main", "box_CLOController_17.Deactivated", "box_CLOController_18.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_18()
  l0 = self.box_CLOController_17
  l1 = self.box_CLOController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1097644351", "1097644351", "S17M010_Marcus_SCR_Main", "box_CLOController_17.OnUserInPlace", "box_CLOController_18.Activate", l0, l1)
  l1:Activate()
end
function export:OnEnter_box_Multiple_AND_9()
end
function export:OnEnter_box_ParticleFXController_v2_85()
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
  l0._name = "box_ParticleFXController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|216714357"
  l0.Started = self.f_box_ParticleFXController_v2_85_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_85_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_CLOController_16()
  local l0
  l0 = self.box_CLOController_16
  l0.CLO = "9223372050091623464"
end
function export:OnEnter_box_ParticleFXController_v2_89()
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
  l0._name = "box_ParticleFXController_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|637813581"
  l0.Started = self.f_box_ParticleFXController_v2_89_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_89_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_BlackoutController_34()
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
  l0._name = "box_BlackoutController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|759386771"
  l0.BlackoutStarted = self.f_box_BlackoutController_34_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_88()
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
  l0._name = "box_ParticleFXController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|827302460"
  l0.Started = self.f_box_ParticleFXController_v2_88_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_88_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_87()
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
  l0._name = "box_ParticleFXController_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|858679158"
  l0.Started = self.f_box_ParticleFXController_v2_87_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_87_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_84()
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
  l0._name = "box_ParticleFXController_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1009705574"
  l0.Started = self.f_box_ParticleFXController_v2_84_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_84_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_80()
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
  l0._name = "box_ParticleFXController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1315487886"
  l0.Started = self.f_box_ParticleFXController_v2_80_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_80_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_82()
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
  l0._name = "box_ParticleFXController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1341391201"
  l0.Started = self.f_box_ParticleFXController_v2_82_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_82_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_CLOController_18()
  local l0
  l0 = self.box_CLOController_18
  l0.CLO = "9223372050091623466"
end
function export:OnEnter_box_ParticleFXController_v2_81()
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
  l0._name = "box_ParticleFXController_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1616180506"
  l0.Started = self.f_box_ParticleFXController_v2_81_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_81_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_86()
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
  l0._name = "box_ParticleFXController_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1677189999"
  l0.Started = self.f_box_ParticleFXController_v2_86_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_86_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_83()
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
  l0._name = "box_ParticleFXController_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus_scr.domino|@S17M010_Marcus_SCR_Main|1696713579"
  l0.Started = self.f_box_ParticleFXController_v2_83_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_83_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_PlaySequence_v5_24()
  local l0
  l0 = self.box_PlaySequence_v5_24
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_loop.seq"
  l0.LoopAnim = 1
end
function export:OnEnter_box_CLOController_19()
  local l0
  l0 = self.box_CLOController_19
  l0.CLO = "9223372050091623467"
end
function export:OnEnter_box_CLOController_17()
  local l0
  l0 = self.box_CLOController_17
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
