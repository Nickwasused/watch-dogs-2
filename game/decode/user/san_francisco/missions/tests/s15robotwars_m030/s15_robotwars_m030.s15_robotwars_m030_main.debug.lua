export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/TimedTextToScreen.TimedTextToScreen.debug.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15_RobotWars_M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main"
  self.Mission_End = DummyFunction
  self.PlayerEntity = nil
  self.box_Multiple_AND_88 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_88
  l0._graph = self
  l0._name = "box_Multiple_AND_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|21447268"
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_box_Multiple_AND_88_Out
  self.box_MissionCheckpointReach_139 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_139
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|37505125"
  l0.Out = self.f_box_MissionCheckpointReach_139_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_51 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_51
  l0._graph = self
  l0._name = "box_MissionLayer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|59069572"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_51_Unloaded
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_75 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_75
  l0._graph = self
  l0._name = "box_MapPointController_v3_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|62501337"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_14 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_14
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|108001347"
  l0.Enabled = self.f_box_TriggerMonitor_v2_14_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_14_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_74 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_74
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|108538628"
  l0.Enabled = self.f_box_TriggerMonitor_v2_74_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_74_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TimedTextToScreen_57 = cbox:CreateBox("Domino/Library/common/TimedTextToScreen.TimedTextToScreen.debug.lua")
  l0 = self.box_TimedTextToScreen_57
  l0._graph = self
  l0._name = "box_TimedTextToScreen_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|120090121"
  l0.Started = self.f_box_TimedTextToScreen_57_Started
  l0.TimeElapsed = self.f_box_TimedTextToScreen_57_TimeElapsed
  self.box_MapPointController_v3_92 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_92
  l0._graph = self
  l0._name = "box_MapPointController_v3_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|128485396"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_77 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_77
  l0._graph = self
  l0._name = "box_MapPointController_v3_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|132238319"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_25 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_25
  l0._graph = self
  l0._name = "box_MissionMessageController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|136741206"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_25_MessageCompleted
  self.box_MissionCheckpointReach_131 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_131
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|177917794"
  l0.Out = self.f_box_MissionCheckpointReach_131_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_96 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_96
  l0._graph = self
  l0._name = "box_MissionMessageController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|178488379"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_96_MessageCompleted
  self.box_CinematicPrep_127 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_127
  l0._graph = self
  l0._name = "box_CinematicPrep_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|199519147"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_127_PostOut
  self.box_MapPointController_v3_26 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_26
  l0._graph = self
  l0._name = "box_MapPointController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|215095956"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_40 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_40
  l0._graph = self
  l0._name = "box_MapPointController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|228584998"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_100 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_100
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|230748533"
  l0.Enabled = self.f_box_TriggerMonitor_v2_100_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_100_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CinematicPrep_117 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_117
  l0._graph = self
  l0._name = "box_CinematicPrep_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|247058543"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_117_PostOut
  self.box_MissionMessageController_89 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_89
  l0._graph = self
  l0._name = "box_MissionMessageController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|258575907"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_89_MessageCompleted
  self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_147
  l0._graph = self
  l0._name = "box_MultipleOR_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|284051190"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_147_Out
  self.box_CinematicPrep_16 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_16
  l0._graph = self
  l0._name = "box_CinematicPrep_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|286299046"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_16_PostOut
  self.box_MissionMessageController_106 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_106
  l0._graph = self
  l0._name = "box_MissionMessageController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|316581481"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_106_MessageCompleted
  self.box_TimedTextToScreen_59 = cbox:CreateBox("Domino/Library/common/TimedTextToScreen.TimedTextToScreen.debug.lua")
  l0 = self.box_TimedTextToScreen_59
  l0._graph = self
  l0._name = "box_TimedTextToScreen_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|338031647"
  l0.Started = self.f_box_TimedTextToScreen_59_Started
  l0.TimeElapsed = self.f_box_TimedTextToScreen_59_TimeElapsed
  self.box_MissionMessageController_86 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_86
  l0._graph = self
  l0._name = "box_MissionMessageController_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|395144761"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_86_MessageCompleted
  self.box_TriggerMonitor_v2_109 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_109
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|453975895"
  l0.Enabled = self.f_box_TriggerMonitor_v2_109_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_109_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MapPointController_v3_43 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_43
  l0._graph = self
  l0._name = "box_MapPointController_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|456415349"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_44 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_44
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|459609548"
  l0.Enabled = self.f_box_TriggerMonitor_v2_44_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_44_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_123 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_123
  l0._graph = self
  l0._name = "box_MissionLayer_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|527302592"
  l0.Loaded = self.f_box_MissionLayer_v2_123_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_84 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_84
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|536362164"
  l0.Enabled = self.f_box_TriggerMonitor_v2_84_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_84_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_36 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_36
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|537698139"
  l0.Enabled = self.f_box_TriggerMonitor_v2_36_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_36_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CinematicPrep_149 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_149
  l0._graph = self
  l0._name = "box_CinematicPrep_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|560127942"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_149_PostOut
  self.box_TriggerMonitor_v2_62 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_62
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|563936256"
  l0.Enabled = self.f_box_TriggerMonitor_v2_62_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_62_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_19 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_19
  l0._graph = self
  l0._name = "box_MissionMessageController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|571294521"
  l0.Out = self.f_box_MissionMessageController_19_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TimedTextToScreen_85 = cbox:CreateBox("Domino/Library/common/TimedTextToScreen.TimedTextToScreen.debug.lua")
  l0 = self.box_TimedTextToScreen_85
  l0._graph = self
  l0._name = "box_TimedTextToScreen_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|613570765"
  l0.Started = self.f_box_TimedTextToScreen_85_Started
  l0.TimeElapsed = self.f_box_TimedTextToScreen_85_TimeElapsed
  self.box_Multiple_AND_71 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_71
  l0._graph = self
  l0._name = "box_Multiple_AND_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|648732828"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_71_Out
  self.box_MissionMessageController_49 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_49
  l0._graph = self
  l0._name = "box_MissionMessageController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|676250026"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_49_MessageCompleted
  self.box_MissionMessageController_68 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_68
  l0._graph = self
  l0._name = "box_MissionMessageController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|676774937"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_68_MessageCompleted
  self.box_TriggerMonitor_v2_95 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_95
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|682518136"
  l0.Enabled = self.f_box_TriggerMonitor_v2_95_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_95_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_152
  l0._graph = self
  l0._name = "box_MultipleOR_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|693237592"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_152_Out
  self.box_MapPointController_v3_3 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_3
  l0._graph = self
  l0._name = "box_MapPointController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|740110671"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_6 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_6
  l0._graph = self
  l0._name = "box_MapPointController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|758172861"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_79 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_79
  l0._graph = self
  l0._name = "box_MapPointController_v3_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|778523556"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_110 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_110
  l0._graph = self
  l0._name = "box_MissionMessageController_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|781932213"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_110_MessageCompleted
  self.box_MapPointController_v3_5 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_5
  l0._graph = self
  l0._name = "box_MapPointController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|788691567"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_83 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_83
  l0._graph = self
  l0._name = "box_MapPointController_v3_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|789468751"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_119 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_119
  l0._graph = self
  l0._name = "box_MissionLayer_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|791318572"
  l0.Loaded = self.f_box_MissionLayer_v2_119_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_50 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_50
  l0._graph = self
  l0._name = "box_MapPointController_v3_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|801052494"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_63 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_63
  l0._graph = self
  l0._name = "box_MissionMessageController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|820041417"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_63_MessageCompleted
  self.box_MapPointController_v3_97 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_97
  l0._graph = self
  l0._name = "box_MapPointController_v3_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|827856108"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_94 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_94
  l0._graph = self
  l0._name = "box_MapPointController_v3_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|840952489"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_102 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_102
  l0._graph = self
  l0._name = "box_MapPointController_v3_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|863586124"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_134 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_134
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|875074603"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_134_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_31 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_31
  l0._graph = self
  l0._name = "box_MissionMessageController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|883574371"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_31_MessageCompleted
  self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_141
  l0._graph = self
  l0._name = "box_MultipleOR_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|895691448"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_141_Out
  self.box_TriggerMonitor_v2_47 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_47
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|918193246"
  l0.Enabled = self.f_box_TriggerMonitor_v2_47_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_47_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_120 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_120
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|929201370"
  l0.Out = self.f_box_MissionCheckpointReach_120_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MapPointController_v3_29 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_29
  l0._graph = self
  l0._name = "box_MapPointController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|938936943"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_107 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_107
  l0._graph = self
  l0._name = "box_MapPointController_v3_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|963223771"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CinematicPrep_142 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_142
  l0._graph = self
  l0._name = "box_CinematicPrep_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|988998282"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_142_PostOut
  self.box_MapPointController_v3_11 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_11
  l0._graph = self
  l0._name = "box_MapPointController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1025465590"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_8 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_8
  l0._graph = self
  l0._name = "box_MapPointController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1032734962"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_81 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_81
  l0._graph = self
  l0._name = "box_MapPointController_v3_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1056328578"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_69 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_69
  l0._graph = self
  l0._name = "box_MissionMessageController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1061220317"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_69_MessageCompleted
  self.box_MissionLayer_v2_138 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_138
  l0._graph = self
  l0._name = "box_MissionLayer_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1090980942"
  l0.Loaded = self.f_box_MissionLayer_v2_138_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_39 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_39
  l0._graph = self
  l0._name = "box_MissionMessageController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1098929733"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_39_MessageCompleted
  self.box_MissionCheckpointReach_145 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_145
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1110467195"
  l0.Out = self.f_box_MissionCheckpointReach_145_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_18 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_18
  l0._graph = self
  l0._name = "box_MissionMessageController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1133573267"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_18_MessageCompleted
  self.box_MapPointController_v3_61 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_61
  l0._graph = self
  l0._name = "box_MapPointController_v3_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1134074750"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionCheckpointReach_124 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_124
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1184204685"
  l0.Out = self.f_box_MissionCheckpointReach_124_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_121
  l0._graph = self
  l0._name = "box_MultipleOR_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1184342558"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_121_Out
  self.box_MissionMessageController_23 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_23
  l0._graph = self
  l0._name = "box_MissionMessageController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1231196104"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_23_MessageCompleted
  self.box_MissionCheckpointReach_151 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_151
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1238038099"
  l0.Out = self.f_box_MissionCheckpointReach_151_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_144 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_144
  l0._graph = self
  l0._name = "box_MissionLayer_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1240994722"
  l0.Loaded = self.f_box_MissionLayer_v2_144_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_35 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_35
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1242651174"
  l0.Enabled = self.f_box_TriggerMonitor_v2_35_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_35_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MapPointController_v3_33 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_33
  l0._graph = self
  l0._name = "box_MapPointController_v3_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1263408844"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CinematicPrep_136 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_136
  l0._graph = self
  l0._name = "box_CinematicPrep_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1273111745"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_136_PostOut
  self.box_TriggerMonitor_v2_4 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_4
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1306618845"
  l0.Enabled = self.f_box_TriggerMonitor_v2_4_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_4_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_7 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_7
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1346314967"
  l0.Enabled = self.f_box_TriggerMonitor_v2_7_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MapPointController_v3_32 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_32
  l0._graph = self
  l0._name = "box_MapPointController_v3_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1386572427"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_45 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_45
  l0._graph = self
  l0._name = "box_MapPointController_v3_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1395074773"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_46 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_46
  l0._graph = self
  l0._name = "box_MapPointController_v3_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1406314538"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_65 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_65
  l0._graph = self
  l0._name = "box_MissionMessageController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1439543030"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_65_MessageCompleted
  self.box_MapPointController_v3_22 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_22
  l0._graph = self
  l0._name = "box_MapPointController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1501973658"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_101 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_101
  l0._graph = self
  l0._name = "box_MissionMessageController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1536841687"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_101_MessageCompleted
  self.box_MapPointController_v3_104 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_104
  l0._graph = self
  l0._name = "box_MapPointController_v3_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1544536836"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_13 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_13
  l0._graph = self
  l0._name = "box_MapPointController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1619947133"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_129 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_129
  l0._graph = self
  l0._name = "box_MissionLayer_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1620256962"
  l0.Loaded = self.f_box_MissionLayer_v2_129_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_42 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_42
  l0._graph = self
  l0._name = "box_MissionMessageController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1638633755"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_42_MessageCompleted
  self.box_TriggerMonitor_v2_28 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_28
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1649787540"
  l0.Enabled = self.f_box_TriggerMonitor_v2_28_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_28_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_126 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_126
  l0._graph = self
  l0._name = "box_MultipleOR_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1691582913"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_126_Out
  self.box_MissionMessageController_91 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_91
  l0._graph = self
  l0._name = "box_MissionMessageController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1716570065"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_91_MessageCompleted
  self.box_MapPointController_v3_90 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_90
  l0._graph = self
  l0._name = "box_MapPointController_v3_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1750173893"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TimedTextToScreen_53 = cbox:CreateBox("Domino/Library/common/TimedTextToScreen.TimedTextToScreen.debug.lua")
  l0 = self.box_TimedTextToScreen_53
  l0._graph = self
  l0._name = "box_TimedTextToScreen_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1761710653"
  l0.Started = self.f_box_TimedTextToScreen_53_Started
  l0.TimeElapsed = self.f_box_TimedTextToScreen_53_TimeElapsed
  self.box_MultipleOR_156 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_156
  l0._graph = self
  l0._name = "box_MultipleOR_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1767410147"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_156_Out
  self.box_MapPointController_v3_37 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_37
  l0._graph = self
  l0._name = "box_MapPointController_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1861270880"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_72 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_72
  l0._graph = self
  l0._name = "box_MapPointController_v3_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1868312143"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_30 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_30
  l0._graph = self
  l0._name = "box_MissionMessageController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1871333399"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_30_MessageCompleted
  self.box_MultipleOR_133 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_133
  l0._graph = self
  l0._name = "box_MultipleOR_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1900314564"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_133_Out
  self.box_MapPointController_v3_20 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_20
  l0._graph = self
  l0._name = "box_MapPointController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1938864636"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_78 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_78
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1984555555"
  l0.Enabled = self.f_box_TriggerMonitor_v2_78_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_78_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_24 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_24
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2004520615"
  l0.Enabled = self.f_box_TriggerMonitor_v2_24_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_24_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_105 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_105
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2026408984"
  l0.Enabled = self.f_box_TriggerMonitor_v2_105_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_105_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_148 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_148
  l0._graph = self
  l0._name = "box_MissionLayer_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2050855481"
  l0.Loaded = self.f_box_MissionLayer_v2_148_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_64 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_64
  l0._graph = self
  l0._name = "box_MapPointController_v3_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2084084912"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_99 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_99
  l0._graph = self
  l0._name = "box_MapPointController_v3_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2146998878"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
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
  l0 = self.box_MissionLayer_v2_119
  l0.LayerName = "S15_M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1140232502", "1140232502", "S15_RobotWars_M030_Main", "CheckPoint_0", "box_MissionLayer_v2_119.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_123
  l0.LayerName = "S15_M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|320727486", "320727486", "S15_RobotWars_M030_Main", "CheckPoint_1", "box_MissionLayer_v2_123.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_138
  l0.LayerName = "S15_M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1610272783", "1610272783", "S15_RobotWars_M030_Main", "CheckPoint_2", "box_MissionLayer_v2_138.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_129
  l0.LayerName = "S15_M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|333648379", "333648379", "S15_RobotWars_M030_Main", "CheckPoint_3", "box_MissionLayer_v2_129.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  l0 = self.box_MissionLayer_v2_144
  l0.LayerName = "S15_M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|684147308", "684147308", "S15_RobotWars_M030_Main", "CheckPoint_4", "box_MissionLayer_v2_144.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_5()
  local l0
  l0 = self.box_MissionLayer_v2_148
  l0.LayerName = "S15_M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1122252749", "1122252749", "S15_RobotWars_M030_Main", "CheckPoint_5", "box_MissionLayer_v2_148.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S15_M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1104553538", "1104553538", "S15_RobotWars_M030_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_Multiple_AND_88_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: CIN placeholder [5 seconds]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TimedTextToScreen')-- Comment: CIN placeholder [5 seconds]")
  l0 = self.box_TimedTextToScreen_85
  l0.Text = "CIN: SpiderDrone and Backup Server are destroyed. Mission END."
  l0.Seconds = 5
  l0.FadeToBlack = 1
  l0.FadeFromBlack = 1
  l0 = self.box_Multiple_AND_88
  l1 = self.box_TimedTextToScreen_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1625272564", "1625272564", "S15_RobotWars_M030_Main", "box_Multiple_AND_88.Out", "box_TimedTextToScreen_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_118_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1804856710", "1804856710", "S15_RobotWars_M030_Main", "box_Get_Player_ID_118.Out", "box_MultipleOR_121.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_108_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_107
  l0.MapPoint = "9223372045628635005"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1472035167", "1472035167", "S15_RobotWars_M030_Main", "box_Ordered_Output_108.Out", "box_MapPointController_v3_107.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_108_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_109()
  l0 = self.box_TriggerMonitor_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1010617573", "1010617573", "S15_RobotWars_M030_Main", "box_Ordered_Output_108.Out", "box_TriggerMonitor_v2_109.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_108_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Increment the Heatsink +1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Increment the Heatsink +1")
  l0 = self.box_MissionMessageController_96
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective030",
    item = "Objective",
    id = "345269"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|275317742", "275317742", "S15_RobotWars_M030_Main", "box_Ordered_Output_108.Out", "box_MissionMessageController_96.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_MissionCheckpointReach_139_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_156()
  l0 = self.box_MissionCheckpointReach_139
  l1 = self.box_MultipleOR_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|659459711", "659459711", "S15_RobotWars_M030_Main", "box_MissionCheckpointReach_139.Out", "box_MultipleOR_156.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_64
  l0.MapPoint = "9223372045628634991"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|396238802", "396238802", "S15_RobotWars_M030_Main", "box_Ordered_Output_60.Out", "box_MapPointController_v3_64.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_62()
  l0 = self.box_TriggerMonitor_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2101226872", "2101226872", "S15_RobotWars_M030_Main", "box_Ordered_Output_60.Out", "box_TriggerMonitor_v2_62.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_60_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Proto A destroyed", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Proto A destroyed")
  l0 = self.box_MissionMessageController_65
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective010",
    item = "SubObjective1",
    id = "345249"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1787586293", "1787586293", "S15_RobotWars_M030_Main", "box_Ordered_Output_60.Out", "box_MissionMessageController_65.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_MissionLayer_v2_51_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.9223372045610313905"
  l0._graph = self
  l0._name = "box_MissionController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1509525279"
  l0.Out = self.f_box_MissionController_v2_52_Out
  l0 = self.box_MissionLayer_v2_51
  l1 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1241128078", "1241128078", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_51.Unloaded", "box_MissionController_v2_52.TerminateMission", l0, l1)
  l1:TerminateMission()
end
function export:f_box_TriggerMonitor_v2_14_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_13
  l0.MapPoint = "9223372045628634968"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_MapPointController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1908024354", "1908024354", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_14.Enabled", "box_MapPointController_v3_13.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_14_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|682090326"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_12_Out_2
  l0 = self.box_TriggerMonitor_v2_14
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1471468320", "1471468320", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_14.Enter", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_74_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_72
  l0.MapPoint = "9223372045628634993"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_74
  l1 = self.box_MapPointController_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1001817793", "1001817793", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_74.Enabled", "box_MapPointController_v3_72.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_74_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1588543105"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_73_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_73_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_73_Out_2
  l0 = self.box_TriggerMonitor_v2_74
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1045238743", "1045238743", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_74.Enter", "box_Ordered_Output_73.In", l0, l1)
  l1:In()
end
function export:f_box_TimedTextToScreen_57_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_56()
  l0 = self.box_TimedTextToScreen_57
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|817259578", "817259578", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_57.Started", "box_Show_Or_Hide_All_UI_56.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TimedTextToScreen_57_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_56()
  l0 = self.box_TimedTextToScreen_57
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1857306443", "1857306443", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_57.TimeElapsed", "box_Show_Or_Hide_All_UI_56.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_25_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_7()
  l0 = self.box_MissionMessageController_25
  l1 = self.box_TriggerMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2050643756", "2050643756", "S15_RobotWars_M030_Main", "box_MissionMessageController_25.MessageCompleted", "box_TriggerMonitor_v2_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_131_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1298477689"
  l0.Out = self.f_box_Simple_Node_132_Out
  l0 = self.box_MissionCheckpointReach_131
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|108858206", "108858206", "S15_RobotWars_M030_Main", "box_MissionCheckpointReach_131.Out", "box_Simple_Node_132.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_96_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_88()
  l0 = self.box_MissionMessageController_96
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1492307186", "1492307186", "S15_RobotWars_M030_Main", "box_MissionMessageController_96.MessageCompleted", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(4)
end
function export:f_box_CinematicPrep_127_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1458859120"
  l0.Out = self.f_box_Get_Player_ID_128_Out
  l0 = self.box_CinematicPrep_127
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1907293008", "1907293008", "S15_RobotWars_M030_Main", "box_CinematicPrep_127.PostOut", "box_Get_Player_ID_128.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Start Mission Robot Wars M030", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Get Player ID')-- Comment: Start Mission Robot Wars M030")
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|794668992", "794668992", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_100_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_94
  l0.MapPoint = "9223372045628635001"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_100
  l1 = self.box_MapPointController_v3_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1497217504", "1497217504", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_100.Enabled", "box_MapPointController_v3_94.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_100_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|290424842"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_98_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_98_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_98_Out_2
  l0 = self.box_TriggerMonitor_v2_100
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1065199167", "1065199167", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_100.Enter", "box_Ordered_Output_98.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_117_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|23865321"
  l0.Out = self.f_box_Get_Player_ID_118_Out
  l0 = self.box_CinematicPrep_117
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1392239926", "1392239926", "S15_RobotWars_M030_Main", "box_CinematicPrep_117.PostOut", "box_Get_Player_ID_118.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_58_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Destroy the prototype robots x3", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Destroy the prototype robots x3")
  l0 = self.box_MissionMessageController_63
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective010",
    item = "Objective",
    id = "345248"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective010",
    item = "SubObjective1",
    id = "345249"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective010",
    item = "SubObjective2",
    id = "345250"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective010",
    item = "SubObjective3",
    id = "345251"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1799262638", "1799262638", "S15_RobotWars_M030_Main", "box_Show_Or_Hide_All_UI_58.Shown", "box_MissionMessageController_63.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionMessageController_89_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_88()
  l0 = self.box_MissionMessageController_89
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1153220804", "1153220804", "S15_RobotWars_M030_Main", "box_MissionMessageController_89.MessageCompleted", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MultipleOR_147_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_145
  l0.Checkpoint = "CheckPoint_4"
  l0 = self.box_MultipleOR_147
  l1 = self.box_MissionCheckpointReach_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1590976234", "1590976234", "S15_RobotWars_M030_Main", "box_MultipleOR_147.Out", "box_MissionCheckpointReach_145.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_16_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1420175982"
  l0.Out = self.f_box_Get_Player_ID_122_Out
  l0 = self.box_CinematicPrep_16
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|188435583", "188435583", "S15_RobotWars_M030_Main", "box_CinematicPrep_16.PostOut", "box_Get_Player_ID_122.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_98_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_97
  l0.MapPoint = "9223372045628635001"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1100445757", "1100445757", "S15_RobotWars_M030_Main", "box_Ordered_Output_98.Out", "box_MapPointController_v3_97.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_98_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_100()
  l0 = self.box_TriggerMonitor_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|818261318", "818261318", "S15_RobotWars_M030_Main", "box_Ordered_Output_98.Out", "box_TriggerMonitor_v2_100.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_98_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Increment the Heatsink +1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Increment the Heatsink +1")
  l0 = self.box_MissionMessageController_106
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective030",
    item = "Objective",
    id = "345269"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|478314566", "478314566", "S15_RobotWars_M030_Main", "box_Ordered_Output_98.Out", "box_MissionMessageController_106.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_MissionMessageController_106_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_88()
  l0 = self.box_MissionMessageController_106
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2027301920", "2027301920", "S15_RobotWars_M030_Main", "box_MissionMessageController_106.MessageCompleted", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_TimedTextToScreen_59_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_58()
  l0 = self.box_TimedTextToScreen_59
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|677383556", "677383556", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_59.Started", "box_Show_Or_Hide_All_UI_58.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TimedTextToScreen_59_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_58()
  l0 = self.box_TimedTextToScreen_59
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1903012971", "1903012971", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_59.TimeElapsed", "box_Show_Or_Hide_All_UI_58.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_86_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2051710895"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_87_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_87_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_87_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_87_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_87_Out_4
  l0 = self.box_MissionMessageController_86
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1928333440", "1928333440", "S15_RobotWars_M030_Main", "box_MissionMessageController_86.MessageCompleted", "box_Ordered_Output_87.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_109_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_104
  l0.MapPoint = "9223372045628635005"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_109
  l1 = self.box_MapPointController_v3_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1364208725", "1364208725", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_109.Enabled", "box_MapPointController_v3_104.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_109_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|33089295"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_108_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_108_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_108_Out_2
  l0 = self.box_TriggerMonitor_v2_109
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1048305117", "1048305117", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_109.Enter", "box_Ordered_Output_108.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_44_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_45
  l0.MapPoint = "9223372045628634987"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0 = self.box_TriggerMonitor_v2_44
  l1 = self.box_MapPointController_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1555015993", "1555015993", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_44.Enabled", "box_MapPointController_v3_45.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_44_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2052326594"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_41_Out_2
  l0 = self.box_TriggerMonitor_v2_44
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|72372556", "72372556", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_44.Enter", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_123_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_16
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_123
  l1 = self.box_CinematicPrep_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1917113078", "1917113078", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_123.Loaded", "box_CinematicPrep_16.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_TriggerMonitor_v2_84_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_83
  l0.MapPoint = "9223372045628634997"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_84
  l1 = self.box_MapPointController_v3_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|962122577", "962122577", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_84.Enabled", "box_MapPointController_v3_83.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_84_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1287896049"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_82_Out_2
  l0 = self.box_TriggerMonitor_v2_84
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|864566965", "864566965", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_84.Enter", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_36_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_40
  l0.MapPoint = "9223372045628634985"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0 = self.box_TriggerMonitor_v2_36
  l1 = self.box_MapPointController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1408997057", "1408997057", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_36.Enabled", "box_MapPointController_v3_40.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_36_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|985072218"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_38_Out_2
  l0 = self.box_TriggerMonitor_v2_36
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1647338405", "1647338405", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_36.Enter", "box_Ordered_Output_38.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_149_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2118903373"
  l0.Out = self.f_box_Get_Player_ID_154_Out
  l0 = self.box_CinematicPrep_149
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|884877180", "884877180", "S15_RobotWars_M030_Main", "box_CinematicPrep_149.PostOut", "box_Get_Player_ID_154.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_62_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_61
  l0.MapPoint = "9223372045628634991"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_62
  l1 = self.box_MapPointController_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1337300456", "1337300456", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_62.Enabled", "box_MapPointController_v3_61.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_62_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|39840263"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_60_Out_2
  l0 = self.box_TriggerMonitor_v2_62
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|520597155", "520597155", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_62.Enter", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_24()
  l0 = self.box_MissionMessageController_19
  l1 = self.box_TriggerMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2106583738", "2106583738", "S15_RobotWars_M030_Main", "box_MissionMessageController_19.Out", "box_TriggerMonitor_v2_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_50
  l0.MapPoint = "9223372045628634989"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|915608946", "915608946", "S15_RobotWars_M030_Main", "box_Ordered_Output_48.Out", "box_MapPointController_v3_50.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_47()
  l0 = self.box_TriggerMonitor_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|512288937", "512288937", "S15_RobotWars_M030_Main", "box_Ordered_Output_48.Out", "box_TriggerMonitor_v2_47.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_48_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: CIN placeholder [5 seconds]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TimedTextToScreen')-- Comment: CIN placeholder [5 seconds]")
  l0 = self.box_TimedTextToScreen_59
  l0.Text = "CIN: SpiderDrone is POWERING UP! Transition -> SpiderDrone."
  l0.Seconds = 5
  l0.FadeToBlack = 1
  l0.FadeFromBlack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|800576437", "800576437", "S15_RobotWars_M030_Main", "box_Ordered_Output_48.Out", "box_TimedTextToScreen_59.Start", clone, l0)
  l0:Start()
end
function export:f_box_TimedTextToScreen_85_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_80()
  l0 = self.box_TimedTextToScreen_85
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1702847518", "1702847518", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_85.Started", "box_Show_Or_Hide_All_UI_80.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TimedTextToScreen_85_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_80()
  l0 = self.box_TimedTextToScreen_85
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|824714695", "824714695", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_85.TimeElapsed", "box_Show_Or_Hide_All_UI_80.Show", l0, l1)
  l1:Show()
end
function export:f_box_Multiple_AND_71_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Destroy the heatsinks", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Destroy the heatsinks")
  l0 = self.box_MissionMessageController_86
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective030",
    item = "Objective",
    id = "345269"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective030",
    item = "Objective",
    id = "345269"
  }
  l0.IncrementalObjectiveTotalSub1 = 5
  l0 = self.box_Multiple_AND_71
  l1 = self.box_MissionMessageController_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1735078581", "1735078581", "S15_RobotWars_M030_Main", "box_Multiple_AND_71.Out", "box_MissionMessageController_86.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_49_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_47()
  l0 = self.box_MissionMessageController_49
  l1 = self.box_TriggerMonitor_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1051370483", "1051370483", "S15_RobotWars_M030_Main", "box_MissionMessageController_49.MessageCompleted", "box_TriggerMonitor_v2_47.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_68_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_71()
  l0 = self.box_MissionMessageController_68
  l1 = self.box_Multiple_AND_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|932102885", "932102885", "S15_RobotWars_M030_Main", "box_MissionMessageController_68.MessageCompleted", "box_Multiple_AND_71.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_11
  l0.MapPoint = "9223372045628634968"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1766526701", "1766526701", "S15_RobotWars_M030_Main", "box_Ordered_Output_12.Out", "box_MapPointController_v3_11.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|520115272", "520115272", "S15_RobotWars_M030_Main", "box_Ordered_Output_12.Out", "box_TriggerMonitor_v2_14.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: CIN placeholder [10 seconds]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TimedTextToScreen')-- Comment: CIN placeholder [10 seconds]")
  l0 = self.box_TimedTextToScreen_57
  l0.Text = "CIN: EMP discharged. Evacuation. Transition back to Marcus."
  l0.Seconds = 10
  l0.FadeToBlack = 1
  l0.FadeFromBlack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|206067491", "206067491", "S15_RobotWars_M030_Main", "box_Ordered_Output_12.Out", "box_TimedTextToScreen_57.Start", clone, l0)
  l0:Start()
end
function export:f_box_TriggerMonitor_v2_95_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_90
  l0.MapPoint = "9223372045628634999"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_95
  l1 = self.box_MapPointController_v3_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|412147961", "412147961", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_95.Enabled", "box_MapPointController_v3_90.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_95_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|752346716"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_93_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_93_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_93_Out_2
  l0 = self.box_TriggerMonitor_v2_95
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|718897530", "718897530", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_95.Enter", "box_Ordered_Output_93.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_152_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_151
  l0.Checkpoint = "CheckPoint_5"
  l0 = self.box_MultipleOR_152
  l1 = self.box_MissionCheckpointReach_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1477840429", "1477840429", "S15_RobotWars_M030_Main", "box_MultipleOR_152.Out", "box_MissionCheckpointReach_151.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_116_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: WJR reach the server room", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: WJR reach the server room")
  l0 = self.box_MissionMessageController_19
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030WJR.Objective010",
    item = "Objective",
    id = "345246"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1003377470", "1003377470", "S15_RobotWars_M030_Main", "box_Simple_Node_116.Out", "box_MissionMessageController_19.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_93_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_92
  l0.MapPoint = "9223372045628634999"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1817776844", "1817776844", "S15_RobotWars_M030_Main", "box_Ordered_Output_93.Out", "box_MapPointController_v3_92.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_93_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_95()
  l0 = self.box_TriggerMonitor_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|494197858", "494197858", "S15_RobotWars_M030_Main", "box_Ordered_Output_93.Out", "box_TriggerMonitor_v2_95.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_93_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Increment the Heatsink +1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Increment the Heatsink +1")
  l0 = self.box_MissionMessageController_91
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective030",
    item = "Objective",
    id = "345269"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|771417987", "771417987", "S15_RobotWars_M030_Main", "box_Ordered_Output_93.Out", "box_MissionMessageController_91.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_MissionMessageController_110_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_51
  l0.LayerName = "S15_M030_Main"
  l0 = self.box_MissionMessageController_110
  l1 = self.box_MissionLayer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|322648307", "322648307", "S15_RobotWars_M030_Main", "box_MissionMessageController_110.MessageCompleted", "box_MissionLayer_v2_51.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_119_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_117
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_119
  l1 = self.box_CinematicPrep_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1679016974", "1679016974", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_119.Loaded", "box_CinematicPrep_117.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: CIN placeholder [10 seconds]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TimedTextToScreen')-- Comment: CIN placeholder [10 seconds]")
  l0 = self.box_TimedTextToScreen_53
  l0.Text = "CIN: Marcus DEDSEC call. Transition to WJR happens in this CIN."
  l0.Seconds = 10
  l0.FadeToBlack = 1
  l0.FadeFromBlack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|53845666", "53845666", "S15_RobotWars_M030_Main", "box_Get_Player_ID_1.Out", "box_TimedTextToScreen_53.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_63_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1252776850"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_70_Out_2
  l0 = self.box_MissionMessageController_63
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1802427602", "1802427602", "S15_RobotWars_M030_Main", "box_MissionMessageController_63.MessageCompleted", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_134_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1960379532"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_135_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_135_Out_1
  l0 = self.box_TriggerMonitor_v2_134
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|735654117", "735654117", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_134.Enter", "box_Ordered_Output_135.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_32
  l0.MapPoint = "9223372045628634972"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|139160882", "139160882", "S15_RobotWars_M030_Main", "box_Ordered_Output_34.Out", "box_MapPointController_v3_32.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_35()
  l0 = self.box_TriggerMonitor_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|189482773", "189482773", "S15_RobotWars_M030_Main", "box_Ordered_Output_34.Out", "box_TriggerMonitor_v2_35.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_34_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Hack Elevator using VR puzzle", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Hack Elevator using VR puzzle")
  l0 = self.box_MissionMessageController_39
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030MRC.Objective060",
    item = "Objective",
    id = "345264"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|403352991", "403352991", "S15_RobotWars_M030_Main", "box_Ordered_Output_34.Out", "box_MissionMessageController_39.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionMessageController_31_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_35()
  l0 = self.box_MissionMessageController_31
  l1 = self.box_TriggerMonitor_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|734310077", "734310077", "S15_RobotWars_M030_Main", "box_MissionMessageController_31.MessageCompleted", "box_TriggerMonitor_v2_35.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_141_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_139
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_MultipleOR_141
  l1 = self.box_MissionCheckpointReach_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|505006070", "505006070", "S15_RobotWars_M030_Main", "box_MultipleOR_141.Out", "box_MissionCheckpointReach_139.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_47_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_46
  l0.MapPoint = "9223372045628634989"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0 = self.box_TriggerMonitor_v2_47
  l1 = self.box_MapPointController_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|353837616", "353837616", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_47.Enabled", "box_MapPointController_v3_46.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_47_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|584147685"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_48_Out_2
  l0 = self.box_TriggerMonitor_v2_47
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|704007588", "704007588", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_47.Enter", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_120_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|712916480"
  l0.Out = self.f_box_Simple_Node_116_Out
  l0 = self.box_MissionCheckpointReach_120
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1000416709", "1000416709", "S15_RobotWars_M030_Main", "box_MissionCheckpointReach_120.Out", "box_Simple_Node_116.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_37
  l0.MapPoint = "9223372045628634985"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|95538370", "95538370", "S15_RobotWars_M030_Main", "box_Ordered_Output_38.Out", "box_MapPointController_v3_37.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_36()
  l0 = self.box_TriggerMonitor_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|793184294", "793184294", "S15_RobotWars_M030_Main", "box_Ordered_Output_38.Out", "box_TriggerMonitor_v2_36.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_38_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1924329967"
  l0.Out = self.f_box_Simple_Node_130_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1734396382", "1734396382", "S15_RobotWars_M030_Main", "box_Ordered_Output_38.Out", "box_Simple_Node_130.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_142_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1116394619"
  l0.Out = self.f_box_Get_Player_ID_143_Out
  l0 = self.box_CinematicPrep_142
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2045113870", "2045113870", "S15_RobotWars_M030_Main", "box_CinematicPrep_142.PostOut", "box_Get_Player_ID_143.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_69_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_71()
  l0 = self.box_MissionMessageController_69
  l1 = self.box_Multiple_AND_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1378564401", "1378564401", "S15_RobotWars_M030_Main", "box_MissionMessageController_69.MessageCompleted", "box_Multiple_AND_71.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_MissionLayer_v2_138_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_136
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_138
  l1 = self.box_CinematicPrep_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1303471489", "1303471489", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_138.Loaded", "box_CinematicPrep_136.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionMessageController_39_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_36()
  l0 = self.box_MissionMessageController_39
  l1 = self.box_TriggerMonitor_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1661942683", "1661942683", "S15_RobotWars_M030_Main", "box_MissionMessageController_39.MessageCompleted", "box_TriggerMonitor_v2_36.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_145_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1156177607"
  l0.Out = self.f_box_Simple_Node_146_Out
  l0 = self.box_MissionCheckpointReach_145
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2012120564", "2012120564", "S15_RobotWars_M030_Main", "box_MissionCheckpointReach_145.Out", "box_Simple_Node_146.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_143_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|728851509", "728851509", "S15_RobotWars_M030_Main", "box_Get_Player_ID_143.Out", "box_MultipleOR_147.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_26
  l0.MapPoint = "9223372045628681803"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|92823633", "92823633", "S15_RobotWars_M030_Main", "box_Ordered_Output_27.Out", "box_MapPointController_v3_26.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1870427557", "1870427557", "S15_RobotWars_M030_Main", "box_Ordered_Output_27.Out", "box_TriggerMonitor_v2_28.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_27_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Interact with DB server as Marcus", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Interact with DB server as Marcus")
  l0 = self.box_MissionMessageController_30
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030MRC.Objective020",
    item = "Objective",
    id = "345255"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|597621450", "597621450", "S15_RobotWars_M030_Main", "box_Ordered_Output_27.Out", "box_MissionMessageController_30.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionMessageController_18_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_MissionMessageController_18
  l1 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1496482977", "1496482977", "S15_RobotWars_M030_Main", "box_MissionMessageController_18.MessageCompleted", "box_TriggerMonitor_v2_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Hack the hangar door open", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Hack the hangar door open")
  l0 = self.box_MissionMessageController_42
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030MRC.Objective080",
    item = "Objective",
    id = "345266"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|855387953", "855387953", "S15_RobotWars_M030_Main", "box_Simple_Node_146.Out", "box_MissionMessageController_42.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionCheckpointReach_124_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1918215788"
  l0.Out = self.f_box_Simple_Node_125_Out
  l0 = self.box_MissionCheckpointReach_124
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1798740914", "1798740914", "S15_RobotWars_M030_Main", "box_MissionCheckpointReach_124.Out", "box_Simple_Node_125.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_121_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_120
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_121
  l1 = self.box_MissionCheckpointReach_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1417456240", "1417456240", "S15_RobotWars_M030_Main", "box_MultipleOR_121.Out", "box_MissionCheckpointReach_120.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_56_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_126()
  l0 = self.box_MultipleOR_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1410871126", "1410871126", "S15_RobotWars_M030_Main", "box_Show_Or_Hide_All_UI_56.Shown", "box_MultipleOR_126.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_23_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_MissionMessageController_23
  l1 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1969167660", "1969167660", "S15_RobotWars_M030_Main", "box_MissionMessageController_23.MessageCompleted", "box_TriggerMonitor_v2_28.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_151_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1823402977"
  l0.Out = self.f_box_Simple_Node_150_Out
  l0 = self.box_MissionCheckpointReach_151
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|667268603", "667268603", "S15_RobotWars_M030_Main", "box_MissionCheckpointReach_151.Out", "box_Simple_Node_150.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_144_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_142
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_144
  l1 = self.box_CinematicPrep_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1299632967", "1299632967", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_144.Loaded", "box_CinematicPrep_142.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_TriggerMonitor_v2_35_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_33
  l0.MapPoint = "9223372045628634972"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0 = self.box_TriggerMonitor_v2_35
  l1 = self.box_MapPointController_v3_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1229425386", "1229425386", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_35.Enabled", "box_MapPointController_v3_33.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_35_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|878229798"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_34_Out_2
  l0 = self.box_TriggerMonitor_v2_35
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1818913663", "1818913663", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_35.Enter", "box_Ordered_Output_34.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_80_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Destroy the heatsinks", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Destroy the heatsinks")
  l0 = self.box_MissionMessageController_110
  l0.MissionName = "MissionList.9223372045610313905"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1192449297", "1192449297", "S15_RobotWars_M030_Main", "box_Show_Or_Hide_All_UI_80.Shown", "box_MissionMessageController_110.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_62()
  l0 = self.box_TriggerMonitor_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1633303463", "1633303463", "S15_RobotWars_M030_Main", "box_Ordered_Output_70.Out", "box_TriggerMonitor_v2_62.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_74()
  l0 = self.box_TriggerMonitor_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1128788967", "1128788967", "S15_RobotWars_M030_Main", "box_Ordered_Output_70.Out", "box_TriggerMonitor_v2_74.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_70_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_78()
  l0 = self.box_TriggerMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1120639781", "1120639781", "S15_RobotWars_M030_Main", "box_Ordered_Output_70.Out", "box_TriggerMonitor_v2_78.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_6
  l0.MapPoint = "9223372045628683608"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|57567856", "57567856", "S15_RobotWars_M030_Main", "box_Ordered_Output_9.Out", "box_MapPointController_v3_6.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_7()
  l0 = self.box_TriggerMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|902179873", "902179873", "S15_RobotWars_M030_Main", "box_Ordered_Output_9.Out", "box_TriggerMonitor_v2_7.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Interact with Elevator", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Interact with Elevator")
  l0 = self.box_MissionMessageController_31
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030MRC.Objective040",
    item = "Objective",
    id = "345262"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1595153462", "1595153462", "S15_RobotWars_M030_Main", "box_Ordered_Output_9.Out", "box_MissionMessageController_31.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Simple_Node_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_133()
  l0 = self.box_MultipleOR_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|444589674", "444589674", "S15_RobotWars_M030_Main", "box_Simple_Node_15.Out", "box_MultipleOR_133.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CinematicPrep_136_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1331012302"
  l0.Out = self.f_box_Get_Player_ID_137_Out
  l0 = self.box_CinematicPrep_136
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|187523058", "187523058", "S15_RobotWars_M030_Main", "box_CinematicPrep_136.PostOut", "box_Get_Player_ID_137.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_20
  l0.MapPoint = "9223372045628657554"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|899739238", "899739238", "S15_RobotWars_M030_Main", "box_Ordered_Output_21.Out", "box_MapPointController_v3_20.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_24()
  l0 = self.box_TriggerMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1543533019", "1543533019", "S15_RobotWars_M030_Main", "box_Ordered_Output_21.Out", "box_TriggerMonitor_v2_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: WJR use the EMP on the server", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: WJR use the EMP on the server")
  l0 = self.box_MissionMessageController_18
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030WJR.Objective020",
    item = "Objective",
    id = "345247"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|445729019", "445729019", "S15_RobotWars_M030_Main", "box_Ordered_Output_21.Out", "box_MissionMessageController_18.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_81
  l0.MapPoint = "9223372045628634997"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|605141769", "605141769", "S15_RobotWars_M030_Main", "box_Ordered_Output_82.Out", "box_MapPointController_v3_81.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_84()
  l0 = self.box_TriggerMonitor_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|333899138", "333899138", "S15_RobotWars_M030_Main", "box_Ordered_Output_82.Out", "box_TriggerMonitor_v2_84.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_82_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Increment the Heatsink +1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Increment the Heatsink +1")
  l0 = self.box_MissionMessageController_89
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective030",
    item = "Objective",
    id = "345269"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1056064248", "1056064248", "S15_RobotWars_M030_Main", "box_Ordered_Output_82.Out", "box_MissionMessageController_89.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Simple_Node_132_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1469675316"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_155_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_155_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|135385407", "135385407", "S15_RobotWars_M030_Main", "box_Simple_Node_132.Out", "box_Ordered_Output_155.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_4_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_3
  l0.MapPoint = "9223372045628634970"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0 = self.box_TriggerMonitor_v2_4
  l1 = self.box_MapPointController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|222614632", "222614632", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_4.Enabled", "box_MapPointController_v3_3.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_4_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1665997576"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_10_Out_2
  l0 = self.box_TriggerMonitor_v2_4
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1314839721", "1314839721", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_4.Enter", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_141()
  l0 = self.box_MultipleOR_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1737507116", "1737507116", "S15_RobotWars_M030_Main", "box_Get_Player_ID_137.Out", "box_MultipleOR_141.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_TriggerMonitor_v2_7_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_8
  l0.MapPoint = "9223372045628683608"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_TriggerMonitor_v2_7
  l1 = self.box_MapPointController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2063767369", "2063767369", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_7.Enabled", "box_MapPointController_v3_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_7_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1259174162"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  l0 = self.box_TriggerMonitor_v2_7
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2003914721", "2003914721", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_7.Enter", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_102
  l0.MapPoint = "9223372045628635003"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|712213707", "712213707", "S15_RobotWars_M030_Main", "box_Ordered_Output_103.Out", "box_MapPointController_v3_102.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_103_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_105()
  l0 = self.box_TriggerMonitor_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1308717243", "1308717243", "S15_RobotWars_M030_Main", "box_Ordered_Output_103.Out", "box_TriggerMonitor_v2_105.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_103_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Increment the Heatsink +1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Increment the Heatsink +1")
  l0 = self.box_MissionMessageController_101
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective030",
    item = "Objective",
    id = "345269"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1937977712", "1937977712", "S15_RobotWars_M030_Main", "box_Ordered_Output_103.Out", "box_MissionMessageController_101.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Get_Player_ID_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_126()
  l0 = self.box_MultipleOR_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1717985241", "1717985241", "S15_RobotWars_M030_Main", "box_Get_Player_ID_122.Out", "box_MultipleOR_126.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_65_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_71()
  l0 = self.box_MissionMessageController_65
  l1 = self.box_Multiple_AND_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1136681689", "1136681689", "S15_RobotWars_M030_Main", "box_MissionMessageController_65.MessageCompleted", "box_Multiple_AND_71.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Get_Player_ID_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_133()
  l0 = self.box_MultipleOR_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1371541682", "1371541682", "S15_RobotWars_M030_Main", "box_Get_Player_ID_128.Out", "box_MultipleOR_133.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_155_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_156()
  l0 = self.box_MultipleOR_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1006648165", "1006648165", "S15_RobotWars_M030_Main", "box_Ordered_Output_155.Out", "box_MultipleOR_156.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_155_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_134()
  l0 = self.box_TriggerMonitor_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1168681371", "1168681371", "S15_RobotWars_M030_Main", "box_Ordered_Output_155.Out", "box_TriggerMonitor_v2_134.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionController_v2_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|877373989", "877373989", "S15_RobotWars_M030_Main", "box_MissionController_v2_52.Out", "Mission End", clone, self)
  self:Mission_End()
end
function export:f_box_MissionMessageController_101_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_88()
  l0 = self.box_MissionMessageController_101
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1201846196", "1201846196", "S15_RobotWars_M030_Main", "box_MissionMessageController_101.MessageCompleted", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_Ordered_Output_73_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_75
  l0.MapPoint = "9223372045628634993"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1550899267", "1550899267", "S15_RobotWars_M030_Main", "box_Ordered_Output_73.Out", "box_MapPointController_v3_75.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_73_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_74()
  l0 = self.box_TriggerMonitor_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|969932935", "969932935", "S15_RobotWars_M030_Main", "box_Ordered_Output_73.Out", "box_TriggerMonitor_v2_74.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_73_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Proto B destroyed", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Proto B destroyed")
  l0 = self.box_MissionMessageController_68
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective010",
    item = "SubObjective2",
    id = "345250"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1942653483", "1942653483", "S15_RobotWars_M030_Main", "box_Ordered_Output_73.Out", "box_MissionMessageController_68.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_MissionLayer_v2_129_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_127
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_129
  l1 = self.box_CinematicPrep_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|371127085", "371127085", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_129.Loaded", "box_CinematicPrep_127.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionMessageController_42_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_44()
  l0 = self.box_MissionMessageController_42
  l1 = self.box_TriggerMonitor_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2056327201", "2056327201", "S15_RobotWars_M030_Main", "box_MissionMessageController_42.MessageCompleted", "box_TriggerMonitor_v2_44.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_28_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_29
  l0.MapPoint = "9223372045628681803"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_TriggerMonitor_v2_28
  l1 = self.box_MapPointController_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1731201122", "1731201122", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_28.Enabled", "box_MapPointController_v3_29.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_28_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1122691133"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_27_Out_2
  l0 = self.box_TriggerMonitor_v2_28
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1038066631", "1038066631", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_28.Enter", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_5
  l0.MapPoint = "9223372045628634970"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|289041857", "289041857", "S15_RobotWars_M030_Main", "box_Ordered_Output_10.Out", "box_MapPointController_v3_5.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1512097610", "1512097610", "S15_RobotWars_M030_Main", "box_Ordered_Output_10.Out", "box_TriggerMonitor_v2_4.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_10_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1259577764"
  l0.Out = self.f_box_Simple_Node_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1292637861", "1292637861", "S15_RobotWars_M030_Main", "box_Ordered_Output_10.Out", "box_Simple_Node_15.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_126_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_124
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_126
  l1 = self.box_MissionCheckpointReach_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1865207653", "1865207653", "S15_RobotWars_M030_Main", "box_MultipleOR_126.Out", "box_MissionCheckpointReach_124.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_91_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_88()
  l0 = self.box_MissionMessageController_91
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|750619603", "750619603", "S15_RobotWars_M030_Main", "box_MissionMessageController_91.MessageCompleted", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_76_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_79
  l0.MapPoint = "9223372045628634995"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|849518349", "849518349", "S15_RobotWars_M030_Main", "box_Ordered_Output_76.Out", "box_MapPointController_v3_79.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_76_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_78()
  l0 = self.box_TriggerMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|639277583", "639277583", "S15_RobotWars_M030_Main", "box_Ordered_Output_76.Out", "box_TriggerMonitor_v2_78.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_76_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Proto C destroyed", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Proto C destroyed")
  l0 = self.box_MissionMessageController_69
  l0.MissionName = "MissionList.9223372045610313905"
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030SPD.Objective010",
    item = "SubObjective3",
    id = "345251"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|23928935", "23928935", "S15_RobotWars_M030_Main", "box_Ordered_Output_76.Out", "box_MissionMessageController_69.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_TimedTextToScreen_53_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_54()
  l0 = self.box_TimedTextToScreen_53
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1013453403", "1013453403", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_53.Started", "box_Show_Or_Hide_All_UI_54.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TimedTextToScreen_53_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Show_Or_Hide_All_UI_54()
  l0 = self.box_TimedTextToScreen_53
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1629039058", "1629039058", "S15_RobotWars_M030_Main", "box_TimedTextToScreen_53.TimeElapsed", "box_Show_Or_Hide_All_UI_54.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_156_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1881682979"
  l0.Out = self.f_box_Simple_Node_140_Out
  l0 = self.box_MultipleOR_156
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1833347097", "1833347097", "S15_RobotWars_M030_Main", "box_MultipleOR_156.Out", "box_Simple_Node_140.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_150_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Interact with the SpiderDrone controls", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Interact with the SpiderDrone controls")
  l0 = self.box_MissionMessageController_49
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030MRC.Objective100",
    item = "Objective",
    id = "345268"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|178902196", "178902196", "S15_RobotWars_M030_Main", "box_Simple_Node_150.Out", "box_MissionMessageController_49.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionMessageController_30_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_MissionMessageController_30
  l1 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2115882944", "2115882944", "S15_RobotWars_M030_Main", "box_MissionMessageController_30.MessageCompleted", "box_TriggerMonitor_v2_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Reach Elevator Area", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Reach Elevator Area")
  l0 = self.box_MissionMessageController_25
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030MRC.Objective030",
    item = "Objective",
    id = "345256"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|918814170", "918814170", "S15_RobotWars_M030_Main", "box_Simple_Node_140.Out", "box_MissionMessageController_25.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MultipleOR_133_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_131
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_133
  l1 = self.box_MissionCheckpointReach_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|145831994", "145831994", "S15_RobotWars_M030_Main", "box_MultipleOR_133.Out", "box_MissionCheckpointReach_131.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_54_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1772793880", "1772793880", "S15_RobotWars_M030_Main", "box_Show_Or_Hide_All_UI_54.Shown", "box_MultipleOR_121.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_125_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Reach DB server room as Marcus", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController')-- Comment: Reach DB server room as Marcus")
  l0 = self.box_MissionMessageController_23
  l0.MissionName = "MissionList.9223372045610313905"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.FANTASY_LOCATIONS.TIDIS.S15M030MRC.Objective010",
    item = "Objective",
    id = "345254"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1730754101", "1730754101", "S15_RobotWars_M030_Main", "box_Simple_Node_125.Out", "box_MissionMessageController_23.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Simple_Node_130_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1310639767", "1310639767", "S15_RobotWars_M030_Main", "box_Simple_Node_130.Out", "box_MultipleOR_147.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_135_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_141()
  l0 = self.box_MultipleOR_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1002579850", "1002579850", "S15_RobotWars_M030_Main", "box_Ordered_Output_135.Out", "box_MultipleOR_141.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_135_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_134()
  l0 = self.box_TriggerMonitor_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1733636290", "1733636290", "S15_RobotWars_M030_Main", "box_Ordered_Output_135.Out", "box_TriggerMonitor_v2_134.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_78_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_77
  l0.MapPoint = "9223372045628634995"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_78
  l1 = self.box_MapPointController_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|687762198", "687762198", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_78.Enabled", "box_MapPointController_v3_77.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_78_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1759792672"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_76_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_76_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_76_Out_2
  l0 = self.box_TriggerMonitor_v2_78
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1673696824", "1673696824", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_78.Enter", "box_Ordered_Output_76.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_24_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_22
  l0.MapPoint = "9223372045628657554"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_TriggerMonitor_v2_24
  l1 = self.box_MapPointController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1104438790", "1104438790", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_24.Enabled", "box_MapPointController_v3_22.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_24_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1276481224"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0 = self.box_TriggerMonitor_v2_24
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|905123281", "905123281", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_24.Enter", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_105_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_99
  l0.MapPoint = "9223372045628635003"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_TriggerMonitor_v2_105
  l1 = self.box_MapPointController_v3_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|764329530", "764329530", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_105.Enabled", "box_MapPointController_v3_99.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_105_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1391787804"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_103_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_103_Out_2
  l0 = self.box_TriggerMonitor_v2_105
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|443390124", "443390124", "S15_RobotWars_M030_Main", "box_TriggerMonitor_v2_105.Enter", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_148_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_149
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_148
  l1 = self.box_CinematicPrep_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1961167559", "1961167559", "S15_RobotWars_M030_Main", "box_MissionLayer_v2_148.Loaded", "box_CinematicPrep_149.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_87_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_84()
  l0 = self.box_TriggerMonitor_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1582375270", "1582375270", "S15_RobotWars_M030_Main", "box_Ordered_Output_87.Out", "box_TriggerMonitor_v2_84.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_87_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_95()
  l0 = self.box_TriggerMonitor_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|147038934", "147038934", "S15_RobotWars_M030_Main", "box_Ordered_Output_87.Out", "box_TriggerMonitor_v2_95.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_87_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_100()
  l0 = self.box_TriggerMonitor_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|955929023", "955929023", "S15_RobotWars_M030_Main", "box_Ordered_Output_87.Out", "box_TriggerMonitor_v2_100.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_87_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_105()
  l0 = self.box_TriggerMonitor_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1254539199", "1254539199", "S15_RobotWars_M030_Main", "box_Ordered_Output_87.Out", "box_TriggerMonitor_v2_105.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_87_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_109()
  l0 = self.box_TriggerMonitor_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1478274296", "1478274296", "S15_RobotWars_M030_Main", "box_Ordered_Output_87.Out", "box_TriggerMonitor_v2_109.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_43
  l0.MapPoint = "9223372045628634987"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1418373171", "1418373171", "S15_RobotWars_M030_Main", "box_Ordered_Output_41.Out", "box_MapPointController_v3_43.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_44()
  l0 = self.box_TriggerMonitor_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|261221291", "261221291", "S15_RobotWars_M030_Main", "box_Ordered_Output_41.Out", "box_TriggerMonitor_v2_44.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_41_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|2059314158"
  l0.Out = self.f_box_Simple_Node_153_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1400124652", "1400124652", "S15_RobotWars_M030_Main", "box_Ordered_Output_41.Out", "box_Simple_Node_153.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_153_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_152()
  l0 = self.box_MultipleOR_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|788455171", "788455171", "S15_RobotWars_M030_Main", "box_Simple_Node_153.Out", "box_MultipleOR_152.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Get_Player_ID_154_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_152()
  l0 = self.box_MultipleOR_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1530376089", "1530376089", "S15_RobotWars_M030_Main", "box_Get_Player_ID_154.Out", "box_MultipleOR_152.Input", clone, l0)
  l0:Input(1)
end
function export:OnEnter_box_Multiple_AND_88()
end
function export:OnEnter_box_TriggerMonitor_v2_14()
  local l0
  l0 = self.box_TriggerMonitor_v2_14
  l0.Trigger = "9223372045628656369"
end
function export:OnEnter_box_TriggerMonitor_v2_74()
  local l0
  l0 = self.box_TriggerMonitor_v2_74
  l0.Trigger = "9223372046701137737"
end
function export:OnEnter_box_TriggerMonitor_v2_100()
  local l0
  l0 = self.box_TriggerMonitor_v2_100
  l0.Trigger = "9223372046701138280"
end
function export:OnEnter_box_Show_Or_Hide_All_UI_58()
  local l0
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|251873394"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_58_Shown
  l0.Hidden = DummyFunction
end
function export:OnEnter_box_MultipleOR_147()
end
function export:OnEnter_box_TriggerMonitor_v2_109()
  local l0
  l0 = self.box_TriggerMonitor_v2_109
  l0.Trigger = "9223372046701138284"
end
function export:OnEnter_box_TriggerMonitor_v2_44()
  local l0
  l0 = self.box_TriggerMonitor_v2_44
  l0.Trigger = "9223372045628683956"
end
function export:OnEnter_box_TriggerMonitor_v2_84()
  local l0
  l0 = self.box_TriggerMonitor_v2_84
  l0.Trigger = "9223372046701138276"
end
function export:OnEnter_box_TriggerMonitor_v2_36()
  local l0
  l0 = self.box_TriggerMonitor_v2_36
  l0.Trigger = "9223372045628683700"
end
function export:OnEnter_box_TriggerMonitor_v2_62()
  local l0
  l0 = self.box_TriggerMonitor_v2_62
  l0.Trigger = "9223372046701137735"
end
function export:OnEnter_box_Multiple_AND_71()
end
function export:OnEnter_box_TriggerMonitor_v2_95()
  local l0
  l0 = self.box_TriggerMonitor_v2_95
  l0.Trigger = "9223372046701138278"
end
function export:OnEnter_box_MultipleOR_152()
end
function export:OnEnter_box_TriggerMonitor_v2_134()
  local l0
  l0 = self.box_TriggerMonitor_v2_134
  l0.Trigger = "9223372046701271340"
end
function export:OnEnter_box_MultipleOR_141()
end
function export:OnEnter_box_TriggerMonitor_v2_47()
  local l0
  l0 = self.box_TriggerMonitor_v2_47
  l0.Trigger = "9223372045628683958"
end
function export:OnEnter_box_MultipleOR_121()
end
function export:OnEnter_box_Show_Or_Hide_All_UI_56()
  local l0
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1225114264"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_56_Shown
  l0.Hidden = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_35()
  local l0
  l0 = self.box_TriggerMonitor_v2_35
  l0.Trigger = "9223372045628656363"
end
function export:OnEnter_box_Show_Or_Hide_All_UI_80()
  local l0
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1251148989"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_80_Shown
  l0.Hidden = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_4()
  local l0
  l0 = self.box_TriggerMonitor_v2_4
  l0.Trigger = "9223372045628656359"
end
function export:OnEnter_box_TriggerMonitor_v2_7()
  local l0
  l0 = self.box_TriggerMonitor_v2_7
  l0.Trigger = "9223372045628683606"
end
function export:OnEnter_box_TriggerMonitor_v2_28()
  local l0
  l0 = self.box_TriggerMonitor_v2_28
  l0.Trigger = "9223372045628681801"
end
function export:OnEnter_box_MultipleOR_126()
end
function export:OnEnter_box_MultipleOR_156()
end
function export:OnEnter_box_MultipleOR_133()
end
function export:OnEnter_box_Show_Or_Hide_All_UI_54()
  local l0
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s15robotwars_m030\\s15_robotwars_m030.domino|@S15_RobotWars_M030_Main|1900611018"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_54_Shown
  l0.Hidden = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_78()
  local l0
  l0 = self.box_TriggerMonitor_v2_78
  l0.Trigger = "9223372046701137739"
end
function export:OnEnter_box_TriggerMonitor_v2_24()
  local l0
  DrawTextToScreen("Comment: Trigger around map point entity", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TriggerMonitor_v2')-- Comment: Trigger around map point entity")
  l0 = self.box_TriggerMonitor_v2_24
  l0.Trigger = "9223372045628657556"
end
function export:OnEnter_box_TriggerMonitor_v2_105()
  local l0
  l0 = self.box_TriggerMonitor_v2_105
  l0.Trigger = "9223372046701138282"
end
function export:Mission_End()
end
_compilerVersion = 4
