export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("Domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("Domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("Domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2490052741.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/277817987.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/506957169.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1514561593.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/715823344.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3146719970.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3471451663.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/926335069.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2729054434.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/780570596.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2090895693.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3737346209.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1159630574.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3027465958.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3855984516.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2091766170.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3573137938.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3569225223.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1492278381.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/441953762.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2007099087.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2619656982.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4041528868.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3382224679.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2067434334.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1090532945.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1218943957.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1817971329.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2811921759.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2186590273.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/471655363.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3583853970.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2202863721.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3810367185.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1307252910.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S07M030_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main"
  self.Out_Annotations = DummyFunction
  self.Out_Wedding = DummyFunction
  self.Out_Thunderdome = DummyFunction
  self.SCR_Cryptobelisk_Out = DummyFunction
  self.AmbianceVid_Out = DummyFunction
  self.DedSecClueLoopStopOut = DummyFunction
  self.PlayerEntity = nil
  self.Horatio = nil
  self.P8_Male01 = nil
  self.P8_Male02 = nil
  self.P8_Female01 = nil
  self.Man01 = nil
  self.Man02 = nil
  self.Man03 = nil
  self.Man04 = nil
  self.Female01 = nil
  self.Female02 = nil
  self.Female03 = nil
  self.Warrior = nil
  self.Tobias = nil
  self.IsContestGoing = 0
  self.box_PlayDialog_v2_83 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_83
  l0._graph = self
  l0._name = "box_PlayDialog_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|66810769"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_83_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_64 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_64
  l0._graph = self
  l0._name = "box_PlayDialog_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|94125907"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_64_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_RandomOutput_v2_50 = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_50
  l0._graph = self
  l0._name = "box_RandomOutput_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|94447961"
  l0._DynamicAnchors = {Probability = 5, Output = 5}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_50_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_50_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_50_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_50_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_50_Output_4
  self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_52
  l0._graph = self
  l0._name = "box_MultipleOR_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|121606112"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_52_Out
  self.box_PlayDialog_v2_54 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_54
  l0._graph = self
  l0._name = "box_PlayDialog_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|123757538"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_54_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_68 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_68
  l0._graph = self
  l0._name = "box_PlayDialog_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|151262864"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_68_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_98 = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_98
  l0._graph = self
  l0._name = "box_HackableController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|207065401"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_98_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_78 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_78
  l0._graph = self
  l0._name = "box_CLOController_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|237024606"
  l0.Activated = self.f_box_CLOController_78_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_78_OnUserInPlace
  self.box_CLOController_29 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|241307387"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_99 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_99
  l0._graph = self
  l0._name = "box_CLOController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|246959967"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_99_OnUserInPlace
  self.box_CLOController_26 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_26
  l0._graph = self
  l0._name = "box_CLOController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|260539471"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlayDialog_v2_66 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_66
  l0._graph = self
  l0._name = "box_PlayDialog_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|325730273"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_66_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_41 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_41
  l0._graph = self
  l0._name = "box_PlayDialog_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|512609541"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_41_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_36 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_36
  l0._graph = self
  l0._name = "box_PlayDialog_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|527755608"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_36_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_40 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_40
  l0._graph = self
  l0._name = "box_PlayDialog_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|635430162"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_40_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_33 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_33
  l0._graph = self
  l0._name = "box_PlayDialog_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|640221259"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_33_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_57 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_57
  l0._graph = self
  l0._name = "box_PlayDialog_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|646353053"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_57_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_35 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_35
  l0._graph = self
  l0._name = "box_PlayDialog_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|663371615"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_35_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_10 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_10
  l0._graph = self
  l0._name = "box_SetBoolean_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|680286941"
  l0.Out = self.f_box_SetBoolean_v2_10_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_10_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_10_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_10_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_10_SetFromBool
  self.box_PlayDialog_v2_69 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_69
  l0._graph = self
  l0._name = "box_PlayDialog_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|684896382"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_69_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_21 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|701311700"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_84 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_84
  l0._graph = self
  l0._name = "box_PlayDialog_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|722513796"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_84_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_RandomOutput_v2_58 = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_58
  l0._graph = self
  l0._name = "box_RandomOutput_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|750815149"
  l0._DynamicAnchors = {Probability = 4, Output = 4}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_58_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_58_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_58_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_58_Output_3
  self.box_CLOController_27 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_27
  l0._graph = self
  l0._name = "box_CLOController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|792407889"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlayDialog_v2_73 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_73
  l0._graph = self
  l0._name = "box_PlayDialog_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|808622280"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_73_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_31 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_31
  l0._graph = self
  l0._name = "box_PlayDialog_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|841987855"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_31_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_71 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_71
  l0._graph = self
  l0._name = "box_PlayDialog_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|850497249"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_71_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_37 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_37
  l0._graph = self
  l0._name = "box_Timer_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|873086871"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_37_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_8 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|915139094"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
  self.box_PlayDialog_v2_87 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_87
  l0._graph = self
  l0._name = "box_PlayDialog_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|924836111"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_87_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_46 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_46
  l0._graph = self
  l0._name = "box_PlayDialog_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|934309625"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_46_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_28 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_28
  l0._graph = self
  l0._name = "box_CLOController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|980737562"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_97 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_97
  l0._graph = self
  l0._name = "box_CLOController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|982835019"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_97_OnUserInPlace
  self.box_RandomOutput_v2_20 = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_20
  l0._graph = self
  l0._name = "box_RandomOutput_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1026013496"
  l0._DynamicAnchors = {Probability = 3, Output = 3}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_20_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_20_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_20_Output_2
  self.box_PlayDialog_v2_80 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_80
  l0._graph = self
  l0._name = "box_PlayDialog_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1057617023"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_80_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_81 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_81
  l0._graph = self
  l0._name = "box_PlayDialog_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1058120860"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_81_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_86 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_86
  l0._graph = self
  l0._name = "box_PlayDialog_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1072730988"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_86_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_34 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_34
  l0._graph = self
  l0._name = "box_PlayDialog_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1079703486"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_34_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_23 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_23
  l0._graph = self
  l0._name = "box_CLOController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1154785468"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_100 = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_100
  l0._graph = self
  l0._name = "box_HackableController_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1304109662"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_100_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_19 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_19
  l0._graph = self
  l0._name = "box_PlaySound_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1339518287"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_19_Finished
  self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_56
  l0._graph = self
  l0._name = "box_MultipleOR_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1357779004"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_56_Out
  self.box_Timer_v2_11 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1368559996"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ConsoleCommand_v2_1 = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_1
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1369505302"
  l0.Enabled = self.f_box_ConsoleCommand_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = DummyFunction
  self.box_CLOController_77 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_77
  l0._graph = self
  l0._name = "box_CLOController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1396727464"
  l0.Activated = self.f_box_CLOController_77_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_77_OnUserInPlace
  self.box_PlayDialog_v2_70 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_70
  l0._graph = self
  l0._name = "box_PlayDialog_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1444576523"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_70_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_74 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_74
  l0._graph = self
  l0._name = "box_PlayDialog_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1460303152"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_box_PlayDialog_v2_74_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_24 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_24
  l0._graph = self
  l0._name = "box_CLOController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1495382183"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1522318613"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_60
  l0._graph = self
  l0._name = "box_MultipleOR_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1543344136"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_60_Out
  self.box_CLOController_79 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_79
  l0._graph = self
  l0._name = "box_CLOController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1608386402"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_79_OnUserInPlace
  self.box_Interact_Gameplay_22 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_22
  l0._graph = self
  l0._name = "box_Interact_Gameplay_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1691014623"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_22_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_22_Interacted
  self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1696270483"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_PlayDialog_v2_44 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_44
  l0._graph = self
  l0._name = "box_PlayDialog_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1733981138"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_44_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_75 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_75
  l0._graph = self
  l0._name = "box_PlayDialog_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1737529829"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_75_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_53 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_53
  l0._graph = self
  l0._name = "box_PlayDialog_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1889309543"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_53_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_65 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_65
  l0._graph = self
  l0._name = "box_PlayDialog_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1896819369"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_65_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_67 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_67
  l0._graph = self
  l0._name = "box_PlayDialog_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1934128432"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_67_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_61 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_61
  l0._graph = self
  l0._name = "box_PlayDialog_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1936480007"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_61_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_47 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_47
  l0._graph = self
  l0._name = "box_PlayDialog_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1937364033"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_47_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_82 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_82
  l0._graph = self
  l0._name = "box_PlayDialog_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1947102569"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_82_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_RandomOutput_v2_32 = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_32
  l0._graph = self
  l0._name = "box_RandomOutput_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1978860530"
  l0._DynamicAnchors = {Probability = 5, Output = 5}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_32_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_32_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_32_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_32_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_32_Output_4
  self.box_PlayDialog_v2_59 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_59
  l0._graph = self
  l0._name = "box_PlayDialog_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1996727914"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_59_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_72 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_72
  l0._graph = self
  l0._name = "box_PlayDialog_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2115438045"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_72_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:BikerWedding()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|336738406"
  l0.Out = self.f_box_Simple_Node_25_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1405876510", "1405876510", "S07M030_SCR_Main", "BikerWedding", "box_Simple_Node_25.In", self, l0)
  l0:In()
end
function export:DedsecClueLoop_IN()
  local l0
  l0 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|743898449", "743898449", "S07M030_SCR_Main", "DedsecClueLoop_IN", "box_SetBoolean_v2_8.True", self, l0)
  l0:True()
end
function export:DedsecClueLoopStop()
  local l0
  l0 = self.box_SetBoolean_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|377493328", "377493328", "S07M030_SCR_Main", "DedsecClueLoopStop", "box_SetBoolean_v2_10.False", self, l0)
  l0:False()
end
function export:DJMusic_IN()
  local l0
  self:OnEnter_box_Interact_Gameplay_22()
  l0 = self.box_Interact_Gameplay_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1999992385", "1999992385", "S07M030_SCR_Main", "DJMusic_IN", "box_Interact_Gameplay_22.Start", self, l0)
  l0:Start()
end
function export:In()
  local l0
  l0 = self.box_ConsoleCommand_v2_1
  l0.Command = "Narrative"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1594439727", "1594439727", "S07M030_SCR_Main", "In", "box_ConsoleCommand_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:JabberwockyVid()
  local l0
  l0 = Boxes[PathID("Domino/System/DynamicMediaController.lua")]
  l0.EntityId = nil
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|157502056"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_42_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1449366579", "1449366579", "S07M030_SCR_Main", "JabberwockyVid", "box_Dynamic_Media_Controller_42.ChangeBroadcastChannelOnEntity", self, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:SCR_Cryptobelisk()
  local l0
  l0 = self.box_PlaySound_v2_19
  l0.SoundId = "soundbinary/1218943957.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1643096512", "1643096512", "S07M030_SCR_Main", "SCR_Cryptobelisk", "box_PlaySound_v2_19.Play", self, l0)
  l0:Play()
end
function export:Thunderdome()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|811590205"
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = DummyFunction
  l0.Out[1] = DummyFunction
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0.Out[6] = DummyFunction
  l0.Out[7] = DummyFunction
  l0.Out[8] = self.f_box_Ordered_Output_55_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_55_Out_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|716357150", "716357150", "S07M030_SCR_Main", "Thunderdome", "box_Ordered_Output_55.In", self, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_15_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_84
  l0.Entity = self.P8_Female01
  l0.SoundId = "soundbinary/926335069.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1788838829", "1788838829", "S07M030_SCR_Main", "box_Compare_Boolean_v2_15.A_is_True", "box_PlayDialog_v2_84.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_83_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_PlayDialog_v2_83
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1648371538", "1648371538", "S07M030_SCR_Main", "box_PlayDialog_v2_83.Finished", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Compare_Boolean_v2_115_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_66
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3027465958.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1710707019", "1710707019", "S07M030_SCR_Main", "box_Compare_Boolean_v2_115.A_is_True", "box_PlayDialog_v2_66.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_64_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|160482444"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_114_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_64
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1649005128", "1649005128", "S07M030_SCR_Main", "box_PlayDialog_v2_64.Finished", "box_Compare_Boolean_v2_114.In", l0, l1)
  l1:In()
end
function export:f_box_RandomOutput_v2_50_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_40
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/2490052741.bnk"
  l0 = self.box_RandomOutput_v2_50
  l1 = self.box_PlayDialog_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1495267137", "1495267137", "S07M030_SCR_Main", "box_RandomOutput_v2_50.Output", "box_PlayDialog_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_50_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_41
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/471655363.bnk"
  l0 = self.box_RandomOutput_v2_50
  l1 = self.box_PlayDialog_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|675102678", "675102678", "S07M030_SCR_Main", "box_RandomOutput_v2_50.Output", "box_PlayDialog_v2_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_50_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_44
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/1090532945.bnk"
  l0 = self.box_RandomOutput_v2_50
  l1 = self.box_PlayDialog_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1487117951", "1487117951", "S07M030_SCR_Main", "box_RandomOutput_v2_50.Output", "box_PlayDialog_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_50_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_46
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/1307252910.bnk"
  l0 = self.box_RandomOutput_v2_50
  l1 = self.box_PlayDialog_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|693991708", "693991708", "S07M030_SCR_Main", "box_RandomOutput_v2_50.Output", "box_PlayDialog_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_50_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_47
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/3737346209.bnk"
  l0 = self.box_RandomOutput_v2_50
  l1 = self.box_PlayDialog_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1463461383", "1463461383", "S07M030_SCR_Main", "box_RandomOutput_v2_50.Output", "box_PlayDialog_v2_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_52_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_52
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1217796324", "1217796324", "S07M030_SCR_Main", "box_MultipleOR_52.Out", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PlayDialog_v2_54_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_PlayDialog_v2_54
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1286988800", "1286988800", "S07M030_SCR_Main", "box_PlayDialog_v2_54.Finished", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlayDialog_v2_68_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1166744441"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_110_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_68
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|544155895", "544155895", "S07M030_SCR_Main", "box_PlayDialog_v2_68.Finished", "box_Compare_Boolean_v2_110.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RandomOutput_v2_20
  l0.AutoReset = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1602097432", "1602097432", "S07M030_SCR_Main", "box_Compare_Boolean_v2_9.A_is_True", "box_RandomOutput_v2_20.In", clone, l0)
  l0:In()
end
function export:f_box_Dynamic_Media_Controller_42_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491197"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1179103609"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|811449872", "811449872", "S07M030_SCR_Main", "box_Dynamic_Media_Controller_42.ChannelChanged", "box_Media_System_Custom_Broadcast_Controller_43.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Compare_Boolean_v2_114_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_53
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2091766170.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2109648510", "2109648510", "S07M030_SCR_Main", "box_Compare_Boolean_v2_114.A_is_True", "box_PlayDialog_v2_53.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_98_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_98()
  l0 = self.box_HackableController_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|947113091", "947113091", "S07M030_SCR_Main", "box_HackableController_v2_98.Disabled", "box_HackableController_v2_98.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_CLOController_78_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_79
  l0.CLO = "9223372055352992434"
  l0 = self.box_CLOController_78
  l1 = self.box_CLOController_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1396716665", "1396716665", "S07M030_SCR_Main", "box_CLOController_78.Activated", "box_CLOController_79.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_78_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_78
  self.P8_Male02 = l0.UserID
end
function export:f_box_Compare_Boolean_v2_102_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_87
  l0.Entity = self.Horatio_Clue
  l0.SoundId = "soundbinary/506957169.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|672922115", "672922115", "S07M030_SCR_Main", "box_Compare_Boolean_v2_102.A_is_True", "box_PlayDialog_v2_87.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_99_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_99
  self.Tobias = l0.UserID
  self:OnEnter_box_HackableController_v2_100()
  l1 = self.box_HackableController_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|16719746", "16719746", "S07M030_SCR_Main", "box_CLOController_99.OnUserInPlace", "box_HackableController_v2_100.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Compare_Boolean_v2_13_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_81
  l0.Entity = self.P8_Female01
  l0.SoundId = "soundbinary/2067434334.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|107240254", "107240254", "S07M030_SCR_Main", "box_Compare_Boolean_v2_13.A_is_True", "box_PlayDialog_v2_81.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_66_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1428192690"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_116_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_66
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1407913406", "1407913406", "S07M030_SCR_Main", "box_PlayDialog_v2_66.Finished", "box_Compare_Boolean_v2_116.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1377512778", "1377512778", "S07M030_SCR_Main", "box_Simple_Node_25.Out", "Out Wedding", clone, self)
  self:Out_Wedding()
end
function export:f_box_Compare_Boolean_v2_12_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_80
  l0.Entity = self.P8_Male01
  l0.SoundId = "soundbinary/3810367185.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|133013328", "133013328", "S07M030_SCR_Main", "box_Compare_Boolean_v2_12.A_is_True", "box_PlayDialog_v2_80.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_103_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_83
  l0.Entity = self.Horatio_Clue
  l0.SoundId = "soundbinary/2090895693.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1091019899", "1091019899", "S07M030_SCR_Main", "box_Compare_Boolean_v2_103.A_is_True", "box_PlayDialog_v2_83.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_111_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_59
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2007099087.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1975455309", "1975455309", "S07M030_SCR_Main", "box_Compare_Boolean_v2_111.A_is_True", "box_PlayDialog_v2_59.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_41_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_PlayDialog_v2_41
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1100961637", "1100961637", "S07M030_SCR_Main", "box_PlayDialog_v2_41.Finished", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlayDialog_v2_36_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_PlayDialog_v2_36
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1615291732", "1615291732", "S07M030_SCR_Main", "box_PlayDialog_v2_36.Finished", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_PlayDialog_v2_40_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_PlayDialog_v2_40
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|380070240", "380070240", "S07M030_SCR_Main", "box_PlayDialog_v2_40.Finished", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_33_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_PlayDialog_v2_33
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|708101284", "708101284", "S07M030_SCR_Main", "box_PlayDialog_v2_33.Finished", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlayDialog_v2_57_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|831832206"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_113_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_57
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1650330644", "1650330644", "S07M030_SCR_Main", "box_PlayDialog_v2_57.Finished", "box_Compare_Boolean_v2_113.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_35_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_PlayDialog_v2_35
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|728401380", "728401380", "S07M030_SCR_Main", "box_PlayDialog_v2_35.Finished", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_SetBoolean_v2_10_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.IsContestGoing = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.IsContestGoing = l0.Target
  l1 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1155832006", "1155832006", "S07M030_SCR_Main", "box_SetBoolean_v2_10.SetFalse", "box_Timer_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.IsContestGoing = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.IsContestGoing = l0.Target
end
function export:f_box_SetBoolean_v2_10_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.IsContestGoing = l0.Target
end
function export:f_box_PlayDialog_v2_69_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1687694828"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_109_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_69
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|812553096", "812553096", "S07M030_SCR_Main", "box_PlayDialog_v2_69.Finished", "box_Compare_Boolean_v2_109.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_107_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_75
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/1492278381.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|88280051", "88280051", "S07M030_SCR_Main", "box_Compare_Boolean_v2_107.A_is_True", "box_PlayDialog_v2_75.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|414633489"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_12_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_21
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1157756591", "1157756591", "S07M030_SCR_Main", "box_Timer_v2_21.TimeElapsed", "box_Compare_Boolean_v2_12.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_84_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|763374649"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_101_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_84
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|618311157", "618311157", "S07M030_SCR_Main", "box_PlayDialog_v2_84.Finished", "box_Compare_Boolean_v2_101.In", l0, l1)
  l1:In()
end
function export:f_box_RandomOutput_v2_58_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_64
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3573137938.bnk"
  l0.UseFacial = 0
  l0 = self.box_RandomOutput_v2_58
  l1 = self.box_PlayDialog_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1193078176", "1193078176", "S07M030_SCR_Main", "box_RandomOutput_v2_58.Output", "box_PlayDialog_v2_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_58_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_61
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3146719970.bnk"
  l0.UseFacial = 0
  l0 = self.box_RandomOutput_v2_58
  l1 = self.box_PlayDialog_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1436956646", "1436956646", "S07M030_SCR_Main", "box_RandomOutput_v2_58.Output", "box_PlayDialog_v2_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_58_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_70
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3382224679.bnk"
  l0.UseFacial = 0
  l0 = self.box_RandomOutput_v2_58
  l1 = self.box_PlayDialog_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1331579731", "1331579731", "S07M030_SCR_Main", "box_RandomOutput_v2_58.Output", "box_PlayDialog_v2_70.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_58_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_73
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2729054434.bnk"
  l0.UseFacial = 0
  l0 = self.box_RandomOutput_v2_58
  l1 = self.box_PlayDialog_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1201755258", "1201755258", "S07M030_SCR_Main", "box_RandomOutput_v2_58.Output", "box_PlayDialog_v2_73.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_101_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_86
  l0.Entity = self.P8_Male01
  l0.SoundId = "soundbinary/3569225223.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1226805879", "1226805879", "S07M030_SCR_Main", "box_Compare_Boolean_v2_101.A_is_True", "box_PlayDialog_v2_86.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_106_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_74
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/715823344.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|638989056", "638989056", "S07M030_SCR_Main", "box_Compare_Boolean_v2_106.A_is_True", "box_PlayDialog_v2_74.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_73_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1793416168"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_104_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_73
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2133315877", "2133315877", "S07M030_SCR_Main", "box_PlayDialog_v2_73.Finished", "box_Compare_Boolean_v2_104.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_55_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_97
  l0.CLO = "9223372056242261389"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|580768344", "580768344", "S07M030_SCR_Main", "box_Ordered_Output_55.Out", "box_CLOController_97.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_55_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_99
  l0.CLO = "9223372056242261390"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|618546404", "618546404", "S07M030_SCR_Main", "box_Ordered_Output_55.Out", "box_CLOController_99.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Compare_Boolean_v2_113_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_54
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/1514561593.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|411010148", "411010148", "S07M030_SCR_Main", "box_Compare_Boolean_v2_113.A_is_True", "box_PlayDialog_v2_54.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_31_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_PlayDialog_v2_31
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1941474650", "1941474650", "S07M030_SCR_Main", "box_PlayDialog_v2_31.Finished", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_71_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|803799451"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_106_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_71
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1093599758", "1093599758", "S07M030_SCR_Main", "box_PlayDialog_v2_71.Finished", "box_Compare_Boolean_v2_106.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_37_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|153769030"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_37
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|970480668", "970480668", "S07M030_SCR_Main", "box_Timer_v2_37.TimeElapsed", "box_Compare_Boolean_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsContestGoing = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsContestGoing = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsContestGoing = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsContestGoing = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1894771954"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  l0 = self.box_SetBoolean_v2_8
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1816150938", "1816150938", "S07M030_SCR_Main", "box_SetBoolean_v2_8.SetTrue", "box_Ordered_Output_39.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsContestGoing = l0.Target
end
function export:f_box_PlayDialog_v2_87_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|424166084"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_103_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_87
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1866571829", "1866571829", "S07M030_SCR_Main", "box_PlayDialog_v2_87.Finished", "box_Compare_Boolean_v2_103.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_46_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_PlayDialog_v2_46
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1433968225", "1433968225", "S07M030_SCR_Main", "box_PlayDialog_v2_46.Finished", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_23
  l0.CLO = "9223372055648681260"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1384596190", "1384596190", "S07M030_SCR_Main", "box_Ordered_Output_30.Out", "box_CLOController_23.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_24
  l0.CLO = "9223372055648681259"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1666994788", "1666994788", "S07M030_SCR_Main", "box_Ordered_Output_30.Out", "box_CLOController_24.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_30_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_26
  l0.CLO = "9223372055648681261"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|154433558", "154433558", "S07M030_SCR_Main", "box_Ordered_Output_30.Out", "box_CLOController_26.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_30_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_27
  l0.CLO = "9223372055648681263"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|502680265", "502680265", "S07M030_SCR_Main", "box_Ordered_Output_30.Out", "box_CLOController_27.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_30_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_28
  l0.CLO = "9223372055648681262"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|340647059", "340647059", "S07M030_SCR_Main", "box_Ordered_Output_30.Out", "box_CLOController_28.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_30_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_29
  l0.CLO = "9223372055648681252"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|906596183", "906596183", "S07M030_SCR_Main", "box_Ordered_Output_30.Out", "box_CLOController_29.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_CLOController_97_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_97
  self.Warrior = l0.UserID
  self:OnEnter_box_HackableController_v2_98()
  l1 = self.box_HackableController_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1390767969", "1390767969", "S07M030_SCR_Main", "box_CLOController_97.OnUserInPlace", "box_HackableController_v2_98.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_RandomOutput_v2_20_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_20
  l1 = self.box_RandomOutput_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|395782622", "395782622", "S07M030_SCR_Main", "box_RandomOutput_v2_20.Output", "box_RandomOutput_v2_32.In", l0, l1)
  l1:In()
end
function export:f_box_RandomOutput_v2_20_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_20
  l1 = self.box_RandomOutput_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|528393843", "528393843", "S07M030_SCR_Main", "box_RandomOutput_v2_20.Output", "box_RandomOutput_v2_50.In", l0, l1)
  l1:In()
end
function export:f_box_RandomOutput_v2_20_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_20
  l1 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|723023793", "723023793", "S07M030_SCR_Main", "box_RandomOutput_v2_20.Output", "box_MultipleOR_56.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_80_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|308615656"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_13_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_80
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2065385216", "2065385216", "S07M030_SCR_Main", "box_PlayDialog_v2_80.Finished", "box_Compare_Boolean_v2_13.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_81_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1756071672"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_14_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_81
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1659352792", "1659352792", "S07M030_SCR_Main", "box_PlayDialog_v2_81.Finished", "box_Compare_Boolean_v2_14.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_86_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|244279020"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_102_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_86
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1254111358", "1254111358", "S07M030_SCR_Main", "box_PlayDialog_v2_86.Finished", "box_Compare_Boolean_v2_102.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_34_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_PlayDialog_v2_34
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1430136484", "1430136484", "S07M030_SCR_Main", "box_PlayDialog_v2_34.Finished", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Compare_Boolean_v2_105_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_71
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2811921759.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1693945294", "1693945294", "S07M030_SCR_Main", "box_Compare_Boolean_v2_105.A_is_True", "box_PlayDialog_v2_71.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_110_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_67
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/4041528868.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|681791118", "681791118", "S07M030_SCR_Main", "box_Compare_Boolean_v2_110.A_is_True", "box_PlayDialog_v2_67.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_112_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_57
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/780570596.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1316265803", "1316265803", "S07M030_SCR_Main", "box_Compare_Boolean_v2_112.A_is_True", "box_PlayDialog_v2_57.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_100_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_100()
  l0 = self.box_HackableController_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1905169237", "1905169237", "S07M030_SCR_Main", "box_HackableController_v2_100.Disabled", "box_HackableController_v2_100.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_Compare_Boolean_v2_108_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_69
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/1817971329.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2007261063", "2007261063", "S07M030_SCR_Main", "box_Compare_Boolean_v2_108.A_is_True", "box_PlayDialog_v2_69.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_19_Finished()
  local l0
  self = self._graph
  l0 = self.box_PlaySound_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1473972373", "1473972373", "S07M030_SCR_Main", "box_PlaySound_v2_19.Finished", "SCR_Cryptobelisk_Out", l0, self)
  self:SCR_Cryptobelisk_Out()
end
function export:f_box_MultipleOR_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_56
  l1 = self.box_RandomOutput_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|392337273", "392337273", "S07M030_SCR_Main", "box_MultipleOR_56.Out", "box_RandomOutput_v2_58.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|246610602", "246610602", "S07M030_SCR_Main", "box_Timer_v2_11.TimeElapsed", "DedSecClueLoopStopOut", l0, self)
  self:DedSecClueLoopStopOut()
end
function export:f_box_ConsoleCommand_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|965082961", "965082961", "S07M030_SCR_Main", "box_ConsoleCommand_v2_1.Enabled", "Out Annotations", l0, self)
  self:Out_Annotations()
end
function export:f_box_CLOController_77_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_78
  l0.CLO = "9223372055352992435"
  l0 = self.box_CLOController_77
  l1 = self.box_CLOController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|582061159", "582061159", "S07M030_SCR_Main", "box_CLOController_77.Activated", "box_CLOController_78.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_77_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_77
  self.P8_Male01 = l0.UserID
end
function export:f_box_Compare_Boolean_v2_116_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_65
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2186590273.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|758940017", "758940017", "S07M030_SCR_Main", "box_Compare_Boolean_v2_116.A_is_True", "box_PlayDialog_v2_65.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_70_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1314066517"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_108_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_70
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|972519371", "972519371", "S07M030_SCR_Main", "box_PlayDialog_v2_70.Finished", "box_Compare_Boolean_v2_108.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_74_ListFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|685407241"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_107_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_74
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1327600547", "1327600547", "S07M030_SCR_Main", "box_PlayDialog_v2_74.ListFinished", "box_Compare_Boolean_v2_107.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_38
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1470686143", "1470686143", "S07M030_SCR_Main", "box_MultipleOR_38.Out", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_60_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_60
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|607986885", "607986885", "S07M030_SCR_Main", "box_MultipleOR_60.Out", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_CLOController_79_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_79
  self.P8_Female01 = l0.UserID
end
function export:f_box_Compare_Boolean_v2_109_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_68
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2202863721.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1893806135", "1893806135", "S07M030_SCR_Main", "box_Compare_Boolean_v2_109.A_is_True", "box_PlayDialog_v2_68.Start", clone, l0)
  l0:Start()
end
function export:f_box_Interact_Gameplay_22_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_22()
  l0 = self.box_Interact_Gameplay_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|573400135", "573400135", "S07M030_SCR_Main", "box_Interact_Gameplay_22.Interacted", "box_Interact_Gameplay_22.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_22_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|965440153"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_30_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_30_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_30_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_30_Out_5
  l0 = self.box_Interact_Gameplay_22
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1035740681", "1035740681", "S07M030_SCR_Main", "box_Interact_Gameplay_22.Stopped", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_37
  l0.Seconds = 5
  l0 = self.box_MultipleOR_5
  l1 = self.box_Timer_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2014192558", "2014192558", "S07M030_SCR_Main", "box_MultipleOR_5.Out", "box_Timer_v2_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_44_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_PlayDialog_v2_44
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1987851989", "1987851989", "S07M030_SCR_Main", "box_PlayDialog_v2_44.Finished", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PlayDialog_v2_75_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_21
  l0.Seconds = 5
  l0 = self.box_PlayDialog_v2_75
  l1 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|704486459", "704486459", "S07M030_SCR_Main", "box_PlayDialog_v2_75.Finished", "box_Timer_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_14_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_82
  l0.Entity = self.P8_Male01
  l0.SoundId = "soundbinary/3471451663.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2028872298", "2028872298", "S07M030_SCR_Main", "box_Compare_Boolean_v2_14.A_is_True", "box_PlayDialog_v2_82.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_104_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_72
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/441953762.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1739398388", "1739398388", "S07M030_SCR_Main", "box_Compare_Boolean_v2_104.A_is_True", "box_PlayDialog_v2_72.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_53_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|86216316"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_115_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_53
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|137321682", "137321682", "S07M030_SCR_Main", "box_PlayDialog_v2_53.Finished", "box_Compare_Boolean_v2_115.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1475615917", "1475615917", "S07M030_SCR_Main", "box_Ordered_Output_39.Out", "box_MultipleOR_5.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_77
  l0.CLO = "9223372050330162274"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1168405741", "1168405741", "S07M030_SCR_Main", "box_Ordered_Output_39.Out", "box_CLOController_77.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PlayDialog_v2_65_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_PlayDialog_v2_65
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1509519129", "1509519129", "S07M030_SCR_Main", "box_PlayDialog_v2_65.Finished", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_67_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_PlayDialog_v2_67
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1005129550", "1005129550", "S07M030_SCR_Main", "box_PlayDialog_v2_67.Finished", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PlayDialog_v2_61_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|477757461"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_111_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_61
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|2137488515", "2137488515", "S07M030_SCR_Main", "box_PlayDialog_v2_61.Finished", "box_Compare_Boolean_v2_111.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_47_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_PlayDialog_v2_47
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1859156942", "1859156942", "S07M030_SCR_Main", "box_PlayDialog_v2_47.Finished", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_PlayDialog_v2_82_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|14901332"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_15_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_82
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|648791395", "648791395", "S07M030_SCR_Main", "box_PlayDialog_v2_82.Finished", "box_Compare_Boolean_v2_15.In", l0, l1)
  l1:In()
end
function export:f_box_RandomOutput_v2_32_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_31
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/277817987.bnk"
  l0 = self.box_RandomOutput_v2_32
  l1 = self.box_PlayDialog_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1351138342", "1351138342", "S07M030_SCR_Main", "box_RandomOutput_v2_32.Output", "box_PlayDialog_v2_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_32_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_33
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/1159630574.bnk"
  l0 = self.box_RandomOutput_v2_32
  l1 = self.box_PlayDialog_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|224214521", "224214521", "S07M030_SCR_Main", "box_RandomOutput_v2_32.Output", "box_PlayDialog_v2_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_32_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_34
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/3583853970.bnk"
  l0 = self.box_RandomOutput_v2_32
  l1 = self.box_PlayDialog_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1268114077", "1268114077", "S07M030_SCR_Main", "box_RandomOutput_v2_32.Output", "box_PlayDialog_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_32_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_35
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/2619656982.bnk"
  l0 = self.box_RandomOutput_v2_32
  l1 = self.box_PlayDialog_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|733436181", "733436181", "S07M030_SCR_Main", "box_RandomOutput_v2_32.Output", "box_PlayDialog_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_32_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_36
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/3855984516.bnk"
  l0 = self.box_RandomOutput_v2_32
  l1 = self.box_PlayDialog_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1950425625", "1950425625", "S07M030_SCR_Main", "box_RandomOutput_v2_32.Output", "box_PlayDialog_v2_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_59_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1264921348"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_112_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_59
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1239323793", "1239323793", "S07M030_SCR_Main", "box_PlayDialog_v2_59.Finished", "box_Compare_Boolean_v2_112.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_72_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1096368433"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_105_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_72
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s07\\s07m030_scr.domino|@S07M030_SCR_Main|1497515676", "1497515676", "S07M030_SCR_Main", "box_PlayDialog_v2_72.Finished", "box_Compare_Boolean_v2_105.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_52()
end
function export:OnEnter_box_HackableController_v2_98()
  local l0
  l0 = self.box_HackableController_v2_98
  l0.HackableEntity = self.Warrior
end
function export:OnEnter_box_HackableController_v2_100()
  local l0
  l0 = self.box_HackableController_v2_100
  l0.HackableEntity = self.Tobias
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_MultipleOR_60()
end
function export:OnEnter_box_Interact_Gameplay_22()
  local l0
  l0 = self.box_Interact_Gameplay_22
  l0.Entity = self.Horatio_Talker_Var
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Talk",
    id = "317865"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_5()
end
function export:Out_Annotations()
end
function export:Out_Wedding()
end
function export:Out_Thunderdome()
end
function export:SCR_Cryptobelisk_Out()
end
function export:AmbianceVid_Out()
end
function export:DedSecClueLoopStopOut()
end
_compilerVersion = 4
