export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConversationMonitor.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractGameplayController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/InventoryMonitor.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MenuPageController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkMonitor.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerPhoneMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01_M020_CIN_HackerSpaceBigPlan.S01_M020_CIN_HackerSpaceBigPlan_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.S01M020_PrinterCheckPoint.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/3781107396.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2718918764.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S01M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main"
  self.PlayerEntity = nil
  self.Forklift_01 = nil
  self.ScissorLift_01 = nil
  self.Enemy_01 = nil
  self.Enemy_02 = nil
  self.Enemy_03 = nil
  self.Forklift_02 = nil
  self.Forklift_03 = nil
  self.Enemy_04 = nil
  self.Sitara_Board = nil
  self.Keebler_Locker = nil
  self.CtOsBackdoorComponents = 0
  self.TalkersHQ = {}
  self.Entity_Sitara = nil
  self.Entity_Wrench = nil
  self.Entity_Horatio = "9223372067694577644"
  self.Sitara_S01M010 = nil
  self.HasBoughtWeapon = 0
  self.TalkersHQShow = {}
  self.box_CLOMonitor_186 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_186
  l0._graph = self
  l0._name = "box_CLOMonitor_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|11300342"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_186_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_186_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_186_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_InteractionScriptMonitor_v2_148 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_148
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|20631388"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_148_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_MissionMessageController_v3_152 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_152
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|51056663"
  l0.Out = self.f_box_MissionMessageController_v3_152_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_67 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|58043690"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_67_Out
  self.box_PlaySound_v2_102 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_102
  l0._graph = self
  l0._name = "box_PlaySound_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|58506021"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PerkMonitor_4 = cbox:CreateBox("domino/System/PerkMonitor.lua")
  l0 = self.box_PerkMonitor_4
  l0._graph = self
  l0._name = "box_PerkMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|66729820"
  l0.Enabled = self.f_box_PerkMonitor_4_Enabled
  l0.Disabled = DummyFunction
  l0.Has = DummyFunction
  l0.HasNot = DummyFunction
  l0.NewPerkUnlocked = self.f_box_PerkMonitor_4_NewPerkUnlocked
  l0.PerkUnlocked = DummyFunction
  self.box_MissionLayer_v2_82 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_82
  l0._graph = self
  l0._name = "box_MissionLayer_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|66748439"
  l0.Loaded = self.f_box_MissionLayer_v2_82_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Intel_Controller_134 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_134
  l0._graph = self
  l0._name = "box_Intel_Controller_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|66810514"
  l0.Enabled = self.f_box_Intel_Controller_134_Enabled
  l0.Disabled = DummyFunction
  self.box_MissionMessageController_v3_30 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_30
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|94854675"
  l0.Out = self.f_box_MissionMessageController_v3_30_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_145 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_145
  l0._graph = self
  l0._name = "box_MissionLayer_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|157470534"
  l0.Loaded = self.f_box_MissionLayer_v2_145_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|157485182"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_Multiple_AND_115 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_115
  l0._graph = self
  l0._name = "box_Multiple_AND_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|198556155"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_115_Out
  self.box_S01M020_PrinterCheckPoint_12 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.S01M020_PrinterCheckPoint.debug.lua")
  l0 = self.box_S01M020_PrinterCheckPoint_12
  l0._graph = self
  l0._name = "box_S01M020_PrinterCheckPoint_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|202679413"
  l0.Out = self.f_box_S01M020_PrinterCheckPoint_12_Out
  self.box_CinematicPrep_96 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_96
  l0._graph = self
  l0._name = "box_CinematicPrep_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|215692919"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_96_PostOut
  self.box_InteractGameplayController_112 = cbox:CreateBox("domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_112
  l0._graph = self
  l0._name = "box_InteractGameplayController_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|219040877"
  l0.Started = self.f_box_InteractGameplayController_112_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_112_Completed
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOMonitor_21 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_21
  l0._graph = self
  l0._name = "box_CLOMonitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|235956369"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_21_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_21_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_21_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_78 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_78
  l0._graph = self
  l0._name = "box_MultipleOR_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|242079096"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_78_Out
  self.box_CinematicPrep_64 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_64
  l0._graph = self
  l0._name = "box_CinematicPrep_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|253858946"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_64_PostOut
  self.box_MissionLayer_v2_131 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_131
  l0._graph = self
  l0._name = "box_MissionLayer_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|274422601"
  l0.Loaded = self.f_box_MissionLayer_v2_131_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_49 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|278071346"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_MissionMessageController_v3_164 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_164
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|279688106"
  l0.Out = self.f_box_MissionMessageController_v3_164_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_172 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_172
  l0._graph = self
  l0._name = "box_CLOController_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|287732725"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_172_OnUserInPlace
  self.box_CinematicPrep_124 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_124
  l0._graph = self
  l0._name = "box_CinematicPrep_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|287851148"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_124_PostOut
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|311356872"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_CinematicPrep_146 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_146
  l0._graph = self
  l0._name = "box_CinematicPrep_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|347421113"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_146_PostOut
  self.box_Interact_Gameplay_147 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_147
  l0._graph = self
  l0._name = "box_Interact_Gameplay_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|365651276"
  l0.Started = self.f_box_Interact_Gameplay_147_Started
  l0.Stopped = self.f_box_Interact_Gameplay_147_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_147_Interacted
  self.box_s01m020_Sitara_132 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  l0 = self.box_s01m020_Sitara_132
  l0._graph = self
  l0._name = "box_s01m020_Sitara_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|379460366"
  l0.Out = self.f_box_s01m020_Sitara_132_Out
  self.box_MultipleOR_86 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_86
  l0._graph = self
  l0._name = "box_MultipleOR_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|402194347"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_86_Out
  self.box_MultipleOR_97 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_97
  l0._graph = self
  l0._name = "box_MultipleOR_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|408307310"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_97_Out
  self.box_LayerMonitor_160 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_160
  l0._graph = self
  l0._name = "box_LayerMonitor_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|413513444"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_160_Loaded
  l0.Unloaded = DummyFunction
  self.box_S01_M020_CIN_HackerSpaceBigPlan_Main_59 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01_M020_CIN_HackerSpaceBigPlan.S01_M020_CIN_HackerSpaceBigPlan_Main.debug.lua")
  l0 = self.box_S01_M020_CIN_HackerSpaceBigPlan_Main_59
  l0._graph = self
  l0._name = "box_S01_M020_CIN_HackerSpaceBigPlan_Main_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|431339473"
  l0.Out = self.f_box_S01_M020_CIN_HackerSpaceBigPlan_Main_59_Out
  l0.Started = self.f_box_S01_M020_CIN_HackerSpaceBigPlan_Main_59_Started
  self.box_GetNPC_90 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_90
  l0._graph = self
  l0._name = "box_GetNPC_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|440147043"
  l0.GotNPCList = self.f_box_GetNPC_90_GotNPCList
  self.box_CLOMonitor_35 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_35
  l0._graph = self
  l0._name = "box_CLOMonitor_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|446481530"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_35_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_35_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_35_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionMessageController_v3_42 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_42
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|456956140"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionCheckpointReach_154 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_154
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|466351967"
  l0.Out = self.f_box_MissionCheckpointReach_154_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TutorialController_100 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_100
  l0._graph = self
  l0._name = "box_TutorialController_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|511390185"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_100_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_107 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_107
  l0._graph = self
  l0._name = "box_MultipleOR_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|513367502"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_107_Out
  self.box_MenuPageController_31 = cbox:CreateBox("domino/System/MenuPageController.lua")
  l0 = self.box_MenuPageController_31
  l0._graph = self
  l0._name = "box_MenuPageController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|541940063"
  l0.MenuPageOpened = DummyFunction
  l0.OnMenuClosed = DummyFunction
  self.box_CinematicPrep_92 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_92
  l0._graph = self
  l0._name = "box_CinematicPrep_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|544472150"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_92_PostOut
  self.box_CLOMonitor_188 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_188
  l0._graph = self
  l0._name = "box_CLOMonitor_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|552837158"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_188_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_188_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_188_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_LayerMonitor_83 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_83
  l0._graph = self
  l0._name = "box_LayerMonitor_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|553485453"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_83_Loaded
  l0.Unloaded = DummyFunction
  self.box_InventoryMonitor_7 = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self.box_InventoryMonitor_7
  l0._graph = self
  l0._name = "box_InventoryMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|556598572"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.HasItemTrue = self.f_box_InventoryMonitor_7_HasItemTrue
  l0.HasItemFalse = self.f_box_InventoryMonitor_7_HasItemFalse
  l0.InWheelTrue = DummyFunction
  l0.InWheelFalse = DummyFunction
  l0.OnAnyItemAdded = DummyFunction
  l0.OnWeaponAdded = DummyFunction
  l0.OnItemAdded = DummyFunction
  l0.OnItemNotAdded = DummyFunction
  l0.OnItemRemoved = DummyFunction
  l0.OnItemEquipped = DummyFunction
  l0.False = DummyFunction
  l0.True = DummyFunction
  self.box_InteractionScriptMonitor_v2_43 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_43
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|569824729"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_43_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_MultipleOR_159 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_159
  l0._graph = self
  l0._name = "box_MultipleOR_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|597189795"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_159_Out
  self.box_MissionMessageController_v3_111 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_111
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|626675796"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionCheckpointReach_15 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_15
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|646858392"
  l0.Out = self.f_box_MissionCheckpointReach_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_149 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_149
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|650935613"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_171 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_171
  l0._graph = self
  l0._name = "box_MissionLayer_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|663007914"
  l0.Loaded = self.f_box_MissionLayer_v2_171_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOMonitor_55 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_55
  l0._graph = self
  l0._name = "box_CLOMonitor_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|674994556"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_55_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_55_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_55_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_TutorialController_58 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_58
  l0._graph = self
  l0._name = "box_TutorialController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|687753678"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_26 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|725452258"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_CLOController_166 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_166
  l0._graph = self
  l0._name = "box_CLOController_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|745559498"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_166_OnUserInPlace
  self.box_ConversationMonitor_69 = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self.box_ConversationMonitor_69
  l0._graph = self
  l0._name = "box_ConversationMonitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|755581876"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = DummyFunction
  l0.WasPlayed = self.f_box_ConversationMonitor_69_WasPlayed
  l0.WasNotPlayed = self.f_box_ConversationMonitor_69_WasNotPlayed
  self.box_CLOMonitor_25 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_25
  l0._graph = self
  l0._name = "box_CLOMonitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|810673960"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_25_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_25_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_25_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionMessageController_v3_143 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_143
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|825770931"
  l0.Out = self.f_box_MissionMessageController_v3_143_Out
  l0.MessageCompleted = DummyFunction
  self.box_InventoryMonitor_101 = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self.box_InventoryMonitor_101
  l0._graph = self
  l0._name = "box_InventoryMonitor_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|871607028"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.HasItemTrue = self.f_box_InventoryMonitor_101_HasItemTrue
  l0.HasItemFalse = self.f_box_InventoryMonitor_101_HasItemFalse
  l0.InWheelTrue = DummyFunction
  l0.InWheelFalse = DummyFunction
  l0.OnAnyItemAdded = DummyFunction
  l0.OnWeaponAdded = DummyFunction
  l0.OnItemAdded = DummyFunction
  l0.OnItemNotAdded = DummyFunction
  l0.OnItemRemoved = DummyFunction
  l0.OnItemEquipped = DummyFunction
  l0.False = DummyFunction
  l0.True = DummyFunction
  self.box_InventoryMonitor_113 = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self.box_InventoryMonitor_113
  l0._graph = self
  l0._name = "box_InventoryMonitor_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|878194570"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InventoryMonitor_113_Disabled
  l0.HasItemTrue = DummyFunction
  l0.HasItemFalse = DummyFunction
  l0.InWheelTrue = DummyFunction
  l0.InWheelFalse = DummyFunction
  l0.OnAnyItemAdded = DummyFunction
  l0.OnWeaponAdded = DummyFunction
  l0.OnItemAdded = self.f_box_InventoryMonitor_113_OnItemAdded
  l0.OnItemNotAdded = DummyFunction
  l0.OnItemRemoved = DummyFunction
  l0.OnItemEquipped = DummyFunction
  l0.False = DummyFunction
  l0.True = DummyFunction
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|918970322"
  l0.Out = self.f_box_MissionMessageController_v3_16_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionCheckpointReach_45 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_45
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|963838735"
  l0.Out = self.f_box_MissionCheckpointReach_45_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_167 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_167
  l0._graph = self
  l0._name = "box_CLOController_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|996046579"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_167_OnUserInPlace
  self.box_SetBoolean_v2_137 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_137
  l0._graph = self
  l0._name = "box_SetBoolean_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1015870737"
  l0.Out = self.f_box_SetBoolean_v2_137_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_137_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_137_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_137_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_137_SetFromBool
  self.box_MultipleOR_14 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1021729260"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_MissionLayer_v2_84 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_84
  l0._graph = self
  l0._name = "box_MissionLayer_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1032304147"
  l0.Loaded = self.f_box_MissionLayer_v2_84_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_108 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_108
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1037658411"
  l0.Out = self.f_box_MissionCheckpointReach_108_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_LayerMonitor_140 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_140
  l0._graph = self
  l0._name = "box_LayerMonitor_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1039753481"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_140_Loaded
  l0.Unloaded = DummyFunction
  self.box_InteractionScriptMonitor_v2_125 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_125
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1060523634"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_125_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_box_InteractionScriptMonitor_v2_125_AnimationFinished
  self.box_MissionLayer_v2_65 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_65
  l0._graph = self
  l0._name = "box_MissionLayer_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1060874310"
  l0.Loaded = self.f_box_MissionLayer_v2_65_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Interact_Gameplay_74 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_74
  l0._graph = self
  l0._name = "box_Interact_Gameplay_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1073229333"
  l0.Started = self.f_box_Interact_Gameplay_74_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_74_Interacted
  self.box_CLOMonitor_178 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_178
  l0._graph = self
  l0._name = "box_CLOMonitor_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1083912164"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_178_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_178_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_178_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_s01m020_Sitara_77 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  l0 = self.box_s01m020_Sitara_77
  l0._graph = self
  l0._name = "box_s01m020_Sitara_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1133630339"
  l0.Out = self.f_box_s01m020_Sitara_77_Out
  self.box_s01m020_Sitara_46 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  l0 = self.box_s01m020_Sitara_46
  l0._graph = self
  l0._name = "box_s01m020_Sitara_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1133720112"
  l0.Out = self.f_box_s01m020_Sitara_46_Out
  self.box_MissionCheckpointReach_191 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_191
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1137197543"
  l0.Out = self.f_box_MissionCheckpointReach_191_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1164172839"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_39_OnUserInPlace
  self.box_CLOMonitor_48 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_48
  l0._graph = self
  l0._name = "box_CLOMonitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1186166975"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_48_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_48_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_48_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CinematicPrep_189 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_189
  l0._graph = self
  l0._name = "box_CinematicPrep_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1193341229"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_189_PostOut
  self.box_PlayDialog_v2_17 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_17
  l0._graph = self
  l0._name = "box_PlayDialog_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1222494663"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_17_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1246323264"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_CLOMonitor_22 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_22
  l0._graph = self
  l0._name = "box_CLOMonitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1270515231"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_22_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_22_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_22_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionController_v4_114 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_114
  l0._graph = self
  l0._name = "box_MissionController_v4_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1277871845"
  self.box_CinematicPrep_89 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_89
  l0._graph = self
  l0._name = "box_CinematicPrep_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1286331955"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_89_PostOut
  self.box_Interact_Gameplay_121 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_121
  l0._graph = self
  l0._name = "box_Interact_Gameplay_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1286356107"
  l0.Started = self.f_box_Interact_Gameplay_121_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_121_Interacted
  self.box_s01m020_Sitara_98 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  l0 = self.box_s01m020_Sitara_98
  l0._graph = self
  l0._name = "box_s01m020_Sitara_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1297780051"
  l0.Out = self.f_box_s01m020_Sitara_98_Out
  self.box_TutorialController_150 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_150
  l0._graph = self
  l0._name = "box_TutorialController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1301790148"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_150_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Intel_Controller_135 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_135
  l0._graph = self
  l0._name = "box_Intel_Controller_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1334704042"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_135_Disabled
  self.box_CLOMonitor_37 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_37
  l0._graph = self
  l0._name = "box_CLOMonitor_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1346533445"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_37_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_37_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_37_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionLayer_v2_139 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_139
  l0._graph = self
  l0._name = "box_MissionLayer_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1347640148"
  l0.Loaded = self.f_box_MissionLayer_v2_139_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ConversationMonitor_71 = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self.box_ConversationMonitor_71
  l0._graph = self
  l0._name = "box_ConversationMonitor_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1351646292"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = DummyFunction
  l0.WasPlayed = self.f_box_ConversationMonitor_71_WasPlayed
  l0.WasNotPlayed = self.f_box_ConversationMonitor_71_WasNotPlayed
  self.box_s01m020_Sitara_63 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  l0 = self.box_s01m020_Sitara_63
  l0._graph = self
  l0._name = "box_s01m020_Sitara_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1394769604"
  l0.Out = self.f_box_s01m020_Sitara_63_Out
  self.box_PlayerPhoneMonitor_34 = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self.box_PlayerPhoneMonitor_34
  l0._graph = self
  l0._name = "box_PlayerPhoneMonitor_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1451672022"
  l0.Enabled = self.f_box_PlayerPhoneMonitor_34_Enabled
  l0.Disabled = self.f_box_PlayerPhoneMonitor_34_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = self.f_box_PlayerPhoneMonitor_34_OnPhoneOpened
  l0.OnPhoneClosed = self.f_box_PlayerPhoneMonitor_34_OnPhoneClosed
  l0.OnAppOpened = self.f_box_PlayerPhoneMonitor_34_OnAppOpened
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1462110208"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_153 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_153
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1470633765"
  l0.Out = self.f_box_MissionMessageController_v3_153_Out
  l0.MessageCompleted = DummyFunction
  self.box_LayerMonitor_163 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_163
  l0._graph = self
  l0._name = "box_LayerMonitor_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1500679471"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_163_Loaded
  l0.Unloaded = DummyFunction
  self.box_MultipleOR_76 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_76
  l0._graph = self
  l0._name = "box_MultipleOR_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1502558938"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_76_Out
  self.box_CLOMonitor_127 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_127
  l0._graph = self
  l0._name = "box_CLOMonitor_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1537176001"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_127_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_127_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_127_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionCheckpointReach_95 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_95
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1547563754"
  l0.Out = self.f_box_MissionCheckpointReach_95_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_RewardController_v3_10 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_10
  l0._graph = self
  l0._name = "box_RewardController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1568883455"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_10_RewardsExecuted
  self.box_MissionMessageController_v3_122 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_122
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1573719324"
  l0.Out = self.f_box_MissionMessageController_v3_122_Out
  l0.MessageCompleted = DummyFunction
  self.box_LayerMonitor_161 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_161
  l0._graph = self
  l0._name = "box_LayerMonitor_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1573774259"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_161_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionCheckpointReach_169 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_169
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1608646568"
  l0.Out = self.f_box_MissionCheckpointReach_169_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_99 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_99
  l0._graph = self
  l0._name = "box_Timer_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1629354370"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_99_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_s01m020_Sitara_88 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  l0 = self.box_s01m020_Sitara_88
  l0._graph = self
  l0._name = "box_s01m020_Sitara_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1633934729"
  l0.Out = self.f_box_s01m020_Sitara_88_Out
  self.box_CLOMonitor_23 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_23
  l0._graph = self
  l0._name = "box_CLOMonitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1646190127"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_23_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_23_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_23_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_TutorialController_57 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_57
  l0._graph = self
  l0._name = "box_TutorialController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1650166627"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_CLOMonitor_61 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_61
  l0._graph = self
  l0._name = "box_CLOMonitor_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1666487379"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_61_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_61_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_61_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_S01M020_PrinterCheckPoint_87 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.S01M020_PrinterCheckPoint.debug.lua")
  l0 = self.box_S01M020_PrinterCheckPoint_87
  l0._graph = self
  l0._name = "box_S01M020_PrinterCheckPoint_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1683080832"
  l0.Out = self.f_box_S01M020_PrinterCheckPoint_87_Out
  self.box_InteractionScriptMonitor_v2_33 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_33
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1687046687"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_33_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_InteractionScriptMonitor_v2_110 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_110
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1735298097"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_110_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_CLOMonitor_179 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_179
  l0._graph = self
  l0._name = "box_CLOMonitor_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1738410218"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_179_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_179_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_179_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_190 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_190
  l0._graph = self
  l0._name = "box_MultipleOR_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1791846025"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_190_Out
  self.box_MissionMessageController_v3_62 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_62
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1794348937"
  l0.Out = self.f_box_MissionMessageController_v3_62_Out
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_18 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_18
  l0._graph = self
  l0._name = "box_TutorialController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1852397939"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_18_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_119 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_119
  l0._graph = self
  l0._name = "box_MissionLayer_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1858395690"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_119_Unloaded
  l0.Reseted = DummyFunction
  self.box_CLOController_116 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_116
  l0._graph = self
  l0._name = "box_CLOController_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1959985461"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_116_OnUserInPlace
  self.box_LayerMonitor_118 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_118
  l0._graph = self
  l0._name = "box_LayerMonitor_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1981798976"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_118_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_41 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_41
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1981892993"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_19 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_19
  l0._graph = self
  l0._name = "box_MapPointController_v4_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1987257905"
  l0.Shown = self.f_box_MapPointController_v4_19_Shown
  l0.Hidden = self.f_box_MapPointController_v4_19_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_184 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_184
  l0._graph = self
  l0._name = "box_MultipleOR_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1988821424"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_184_Out
  self.box_MultipleOR_180 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_180
  l0._graph = self
  l0._name = "box_MultipleOR_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1995582242"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_180_Out
  self.box_MultipleOR_47 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_47
  l0._graph = self
  l0._name = "box_MultipleOR_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1998201500"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_47_Out
  self.box_InventoryMonitor_3 = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self.box_InventoryMonitor_3
  l0._graph = self
  l0._name = "box_InventoryMonitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2012240303"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InventoryMonitor_3_Disabled
  l0.HasItemTrue = DummyFunction
  l0.HasItemFalse = DummyFunction
  l0.InWheelTrue = DummyFunction
  l0.InWheelFalse = DummyFunction
  l0.OnAnyItemAdded = DummyFunction
  l0.OnWeaponAdded = self.f_box_InventoryMonitor_3_OnWeaponAdded
  l0.OnItemAdded = DummyFunction
  l0.OnItemNotAdded = DummyFunction
  l0.OnItemRemoved = DummyFunction
  l0.OnItemEquipped = DummyFunction
  l0.False = DummyFunction
  l0.True = DummyFunction
  self.box_TutorialController_56 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_56
  l0._graph = self
  l0._name = "box_TutorialController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2026245536"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_133 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_133
  l0._graph = self
  l0._name = "box_CLOController_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2046421733"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_133_OnUserInPlace
  self.box_s01m020_Sitara_75 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M020/S01M020.s01m020_Sitara.debug.lua")
  l0 = self.box_s01m020_Sitara_75
  l0._graph = self
  l0._name = "box_s01m020_Sitara_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2070941346"
  l0.Out = self.f_box_s01m020_Sitara_75_Out
  self.box_MultipleOR_51 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_51
  l0._graph = self
  l0._name = "box_MultipleOR_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2083094430"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_51_Out
  self.box_GetNPC_8 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_8
  l0._graph = self
  l0._name = "box_GetNPC_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2084767295"
  l0.GotNPCList = self.f_box_GetNPC_8_GotNPCList
  self.box_LayerMonitor_165 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_165
  l0._graph = self
  l0._name = "box_LayerMonitor_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2112024894"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_165_Loaded
  l0.Unloaded = DummyFunction
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
  l0 = self.box_MissionLayer_v2_84
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1640517562", "1640517562", "S01M020_Main", "CheckPoint_0", "box_MissionLayer_v2_84.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_171
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1313268739", "1313268739", "S01M020_Main", "CheckPoint_1", "box_MissionLayer_v2_171.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_82
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1167244030", "1167244030", "S01M020_Main", "CheckPoint_2", "box_MissionLayer_v2_82.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_131
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|680072774", "680072774", "S01M020_Main", "CheckPoint_3", "box_MissionLayer_v2_131.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_Printer()
  local l0
  l0 = self.box_MissionLayer_v2_145
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|455576729", "455576729", "S01M020_Main", "CheckPoint_Printer", "box_MissionLayer_v2_145.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_Printer_BoughtWeapon()
  local l0
  l0 = self.box_MissionLayer_v2_139
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1765926436", "1765926436", "S01M020_Main", "CheckPoint_Printer_BoughtWeapon", "box_MissionLayer_v2_139.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_Research()
  local l0
  l0 = self.box_MissionLayer_v2_65
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|961199370", "961199370", "S01M020_Main", "CheckPoint_Research", "box_MissionLayer_v2_65.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S01M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|936469862", "936469862", "S01M020_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_CLOMonitor_186_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_186
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_184()
  l1 = self.box_MultipleOR_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|437594576", "437594576", "S01M020_Main", "box_CLOMonitor_186.GotUser", "box_MultipleOR_184.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_186_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_186
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_188()
  l1 = self.box_CLOMonitor_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|348758321", "348758321", "S01M020_Main", "box_CLOMonitor_186.NotGotUser", "box_CLOMonitor_188.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_186_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_186
  self.Entity_Wrench = l0.UserID
end
function export:f_box_InteractionScriptMonitor_v2_148_InteractionStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_148
  l1 = self.box_MissionMessageController_v3_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1445680011", "1445680011", "S01M020_Main", "box_InteractionScriptMonitor_v2_148.InteractionStarted", "box_MissionMessageController_v3_149.HideObjective", l0, l1)
  l1:HideObjective()
end
function export:f_box_MissionMessageController_v3_152_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_115()
  l0 = self.box_MissionMessageController_v3_152
  l1 = self.box_Multiple_AND_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1584494132", "1584494132", "S01M020_Main", "box_MissionMessageController_v3_152.Out", "box_Multiple_AND_115.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_15
  l0.Checkpoint = "CheckPoint_Research"
  l0 = self.box_MultipleOR_67
  l1 = self.box_MissionCheckpointReach_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1756519757", "1756519757", "S01M020_Main", "box_MultipleOR_67.Out", "box_MissionCheckpointReach_15.In", l0, l1)
  l1:In()
end
function export:f_box_PerkMonitor_4_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_34()
  l0 = self.box_PerkMonitor_4
  l1 = self.box_PlayerPhoneMonitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1103414940", "1103414940", "S01M020_Main", "box_PerkMonitor_4.Enabled", "box_PlayerPhoneMonitor_34.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PerkMonitor_4_NewPerkUnlocked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_34()
  l0 = self.box_PerkMonitor_4
  l1 = self.box_PlayerPhoneMonitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|50394185", "50394185", "S01M020_Main", "box_PerkMonitor_4.NewPerkUnlocked", "box_PlayerPhoneMonitor_34.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_82_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_160
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_MissionLayer_v2_82
  l1 = self.box_LayerMonitor_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|15454249", "15454249", "S01M020_Main", "box_MissionLayer_v2_82.Loaded", "box_LayerMonitor_160.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Intel_Controller_134_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_19()
  l0 = self.box_Intel_Controller_134
  l1 = self.box_MapPointController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1898706317", "1898706317", "S01M020_Main", "box_Intel_Controller_134.Enabled", "box_MapPointController_v4_19.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_v3_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ConversationMonitor_69
  l0.Conversation = "ConversationSetting.9223372062789266365"
  l0 = self.box_MissionMessageController_v3_30
  l1 = self.box_ConversationMonitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|351499563", "351499563", "S01M020_Main", "box_MissionMessageController_v3_30.Out", "box_ConversationMonitor_69.GetPlayState", l0, l1)
  l1:GetPlayState()
end
function export:f_box_InteractionScriptController_157_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047375551844"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|980209678"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_73_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1629608030", "1629608030", "S01M020_Main", "box_InteractionScriptController_157.Disabled", "box_InteractionScriptController_73.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_145_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_118
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_MissionLayer_v2_145
  l1 = self.box_LayerMonitor_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|313081983", "313081983", "S01M020_Main", "box_MissionLayer_v2_145.Loaded", "box_LayerMonitor_118.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  l0.CLO = "9223372067694577644"
  l0 = self.box_MultipleOR_29
  l1 = self.box_CLOController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1283125921", "1283125921", "S01M020_Main", "box_MultipleOR_29.Out", "box_CLOController_39.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_InteractionScriptController_85_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01m020_Sitara_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|244018698", "244018698", "S01M020_Main", "box_InteractionScriptController_85.Disabled", "box_s01m020_Sitara_88.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptController_151_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_143
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective021",
    item = "Objective",
    id = "693712"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|293623319", "293623319", "S01M020_Main", "box_InteractionScriptController_151.Enabled", "box_MissionMessageController_v3_143.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Multiple_AND_115_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1315043968"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_120_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_120_Out_1
  l0 = self.box_Multiple_AND_115
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1823260147", "1823260147", "S01M020_Main", "box_Multiple_AND_115.Out", "box_Ordered_Output_120.In", l0, l1)
  l1:In()
end
function export:f_box_S01M020_PrinterCheckPoint_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S01M020_PrinterCheckPoint_12
  self.Entity_Wrench = l0.Wrench
  self.Entity_Horatio = l0.Horatio
  l0 = self.box_CinematicPrep_146
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S01M020_PrinterCheckPoint_12
  l1 = self.box_CinematicPrep_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|906563967", "906563967", "S01M020_Main", "box_S01M020_PrinterCheckPoint_12.Out", "box_CinematicPrep_146.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_96_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_CinematicPrep_96
  l1 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1058289377", "1058289377", "S01M020_Main", "box_CinematicPrep_96.PostOut", "box_MultipleOR_97.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractGameplayController_112_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_119
  l0.LayerName = "S01M020_Main"
  l0 = self.box_InteractGameplayController_112
  l1 = self.box_MissionLayer_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1844205091", "1844205091", "S01M020_Main", "box_InteractGameplayController_112.Completed", "box_MissionLayer_v2_119.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_InteractGameplayController_112_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_110
  l0.InteractionScriptEntity = self.Sitara_S01M010
  l0.AutoDisable = 1
  l0 = self.box_InteractGameplayController_112
  l1 = self.box_InteractionScriptMonitor_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|790487375", "790487375", "S01M020_Main", "box_InteractGameplayController_112.Started", "box_InteractionScriptMonitor_v2_110.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|794668992", "794668992", "S01M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_21_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_21
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_14()
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1480385300", "1480385300", "S01M020_Main", "box_CLOMonitor_21.GotUser", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_21_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_21
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_22()
  l1 = self.box_CLOMonitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2095703692", "2095703692", "S01M020_Main", "box_CLOMonitor_21.NotGotUser", "box_CLOMonitor_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_21_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_21
  self.Entity_Wrench = l0.UserID
end
function export:f_box_MultipleOR_78_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257062"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1068605328"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_36_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0 = self.box_MultipleOR_78
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|521128732", "521128732", "S01M020_Main", "box_MultipleOR_78.Out", "box_SmartphoneAppController_36.SetInstalled", l0, l1)
  l1:SetInstalled()
end
function export:f_box_CinematicPrep_64_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_CinematicPrep_64
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1074826705", "1074826705", "S01M020_Main", "box_CinematicPrep_64.PostOut", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Get_Player_ID_170_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|988327017"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_54_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1321333605", "1321333605", "S01M020_Main", "box_Get_Player_ID_170.Out", "box_InteractionScriptController_54.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_131_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_83
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_MissionLayer_v2_131
  l1 = self.box_LayerMonitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1283932698", "1283932698", "S01M020_Main", "box_MissionLayer_v2_131.Loaded", "box_LayerMonitor_83.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_154
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_49
  l1 = self.box_MissionCheckpointReach_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1715576205", "1715576205", "S01M020_Main", "box_MultipleOR_49.Out", "box_MissionCheckpointReach_154.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_164_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PerkMonitor_4()
  l0 = self.box_MissionMessageController_v3_164
  l1 = self.box_PerkMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|689282905", "689282905", "S01M020_Main", "box_MissionMessageController_v3_164.Out", "box_PerkMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_172_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_172
  self.Entity_Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|341457721"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_158_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_172
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1121032341", "1121032341", "S01M020_Main", "box_CLOController_172.OnUserInPlace", "box_InteractionScriptController_158.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CinematicPrep_124_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_CinematicPrep_124
  l1 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1879755168", "1879755168", "S01M020_Main", "box_CinematicPrep_124.PostOut", "box_MultipleOR_47.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_153
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective020",
    item = "SubObjective",
    id = "693689"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_40
  l1 = self.box_MissionMessageController_v3_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1912297464", "1912297464", "S01M020_Main", "box_MultipleOR_40.Out", "box_MissionMessageController_v3_153.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_InteractionScriptController_158_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_96
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|196513877", "196513877", "S01M020_Main", "box_InteractionScriptController_158.Disabled", "box_CinematicPrep_96.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_CinematicPrep_146_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_107()
  l0 = self.box_CinematicPrep_146
  l1 = self.box_MultipleOR_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|197455152", "197455152", "S01M020_Main", "box_CinematicPrep_146.PostOut", "box_MultipleOR_107.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Interact_Gameplay_147_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_147()
  l0 = self.box_Interact_Gameplay_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1411400075", "1411400075", "S01M020_Main", "box_Interact_Gameplay_147.Interacted", "box_Interact_Gameplay_147.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_147_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_148
  l0.InteractionScriptEntity = self.Entity_Wrench
  l0.AutoDisable = 1
  l0 = self.box_Interact_Gameplay_147
  l1 = self.box_InteractionScriptMonitor_v2_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|619064822", "619064822", "S01M020_Main", "box_Interact_Gameplay_147.Started", "box_InteractionScriptMonitor_v2_148.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_147_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_150
  l0.SurvivalGuideItemDB = "Items.9223372053993040928"
  l0 = self.box_Interact_Gameplay_147
  l1 = self.box_TutorialController_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|213931238", "213931238", "S01M020_Main", "box_Interact_Gameplay_147.Stopped", "box_TutorialController_150.Display", l0, l1)
  l1:Display()
end
function export:f_box_s01m020_Sitara_132_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_127
  l0.CLO = "9223372047464636840"
  l0 = self.box_s01m020_Sitara_132
  l1 = self.box_CLOMonitor_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|317562584", "317562584", "S01M020_Main", "box_s01m020_Sitara_132.Out", "box_CLOMonitor_127.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_MultipleOR_86_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_107()
  l0 = self.box_MultipleOR_86
  l1 = self.box_MultipleOR_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2135715305", "2135715305", "S01M020_Main", "box_MultipleOR_86.Out", "box_MultipleOR_107.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_97_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_95
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_97
  l1 = self.box_MissionCheckpointReach_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|818320619", "818320619", "S01M020_Main", "box_MultipleOR_97.Out", "box_MissionCheckpointReach_95.In", l0, l1)
  l1:In()
end
function export:f_box_LayerMonitor_160_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|523773610"
  l0.Out = self.f_box_Get_Player_ID_80_Out
  l0 = self.box_LayerMonitor_160
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1296262090", "1296262090", "S01M020_Main", "box_LayerMonitor_160.Loaded", "box_Get_Player_ID_80.In", l0, l1)
  l1:In()
end
function export:f_box_S01_M020_CIN_HackerSpaceBigPlan_Main_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_8
  l0.Group = "HQ_Talker"
  l0 = self.box_S01_M020_CIN_HackerSpaceBigPlan_Main_59
  l1 = self.box_GetNPC_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|943944937", "943944937", "S01M020_Main", "box_S01_M020_CIN_HackerSpaceBigPlan_Main_59.Out", "box_GetNPC_8.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_S01_M020_CIN_HackerSpaceBigPlan_Main_59_Started()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: background music for HackerSpaceBigPlan cin", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: background music for HackerSpaceBigPlan cin")
  l0 = self.box_PlaySound_v2_102
  l0.SoundId = "soundbinary/2718918764.bnk"
  l0 = self.box_S01_M020_CIN_HackerSpaceBigPlan_Main_59
  l1 = self.box_PlaySound_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1990086919", "1990086919", "S01M020_Main", "box_S01_M020_CIN_HackerSpaceBigPlan_Main_59.Started", "box_PlaySound_v2_102.Play", l0, l1)
  l1:Play()
end
function export:f_box_GetNPC_90_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_90
  self.TalkersHQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.TalkersHQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|958772232"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_91_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_90
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1745331269", "1745331269", "S01M020_Main", "box_GetNPC_90.GotNPCList", "box_VisibilityController_v2_91.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CLOMonitor_35_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_35
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_35_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_35
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_35_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_35
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1343265611"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  l0 = self.box_CLOMonitor_35
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1730652072", "1730652072", "S01M020_Main", "box_CLOMonitor_35.OnUserInPlace", "box_Ordered_Output_38.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_154_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1891788133"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_24_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionCheckpointReach_154
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|178615124", "178615124", "S01M020_Main", "box_MissionCheckpointReach_154.Out", "box_InteractionScriptController_24.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TutorialController_100_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|190445143"
  l0.Enabled = self.f_box_InteractionScriptController_151_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_TutorialController_100
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1927905985", "1927905985", "S01M020_Main", "box_TutorialController_100.DisplayRequested", "box_InteractionScriptController_151.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_107_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_108
  l0.Checkpoint = "CheckPoint_Printer"
  l0 = self.box_MultipleOR_107
  l1 = self.box_MissionCheckpointReach_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1694879048", "1694879048", "S01M020_Main", "box_MultipleOR_107.Out", "box_MissionCheckpointReach_108.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_80_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1929587917"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_70_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|134744092", "134744092", "S01M020_Main", "box_Get_Player_ID_80.Out", "box_InteractionScriptController_70.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_187_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_188()
  l0 = self.box_CLOMonitor_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|696094170", "696094170", "S01M020_Main", "box_Ordered_Output_187.Out", "box_CLOMonitor_188.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_187_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_184()
  l0 = self.box_MultipleOR_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1379240186", "1379240186", "S01M020_Main", "box_Ordered_Output_187.Out", "box_MultipleOR_184.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_92_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_37
  l0.CLO = "9223372047464636840"
  l0 = self.box_CinematicPrep_92
  l1 = self.box_CLOMonitor_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1187832604", "1187832604", "S01M020_Main", "box_CinematicPrep_92.PostOut", "box_CLOMonitor_37.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_InteractionScriptController_72_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|263176642", "263176642", "S01M020_Main", "box_InteractionScriptController_72.Disabled", "box_MissionMessageController_v3_62.HideObjective", clone, l0)
  l0:HideObjective()
end
function export:f_box_CLOMonitor_188_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_188
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_188_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_188
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_188_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_188
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|533826520"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_187_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_187_Out_1
  l0 = self.box_CLOMonitor_188
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|605235646", "605235646", "S01M020_Main", "box_CLOMonitor_188.OnUserInPlace", "box_Ordered_Output_187.In", l0, l1)
  l1:In()
end
function export:f_box_LayerMonitor_83_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1241184071"
  l0.Out = self.f_box_Get_Player_ID_129_Out
  l0 = self.box_LayerMonitor_83
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|799171311", "799171311", "S01M020_Main", "box_LayerMonitor_83.Loaded", "box_Get_Player_ID_129.In", l0, l1)
  l1:In()
end
function export:f_box_InventoryMonitor_7_HasItemFalse()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InventoryMonitor_113()
  l0 = self.box_InventoryMonitor_7
  l1 = self.box_InventoryMonitor_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1785169199", "1785169199", "S01M020_Main", "box_InventoryMonitor_7.HasItemFalse", "box_InventoryMonitor_113.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InventoryMonitor_7_HasItemTrue()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_InventoryMonitor_7
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|292858504", "292858504", "S01M020_Main", "box_InventoryMonitor_7.HasItemTrue", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptMonitor_v2_43_InteractionStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_43
  l1 = self.box_MissionMessageController_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1614731577", "1614731577", "S01M020_Main", "box_InteractionScriptMonitor_v2_43.InteractionStarted", "box_MissionMessageController_v3_41.HideObjective", l0, l1)
  l1:HideObjective()
end
function export:f_box_InteractionScriptController_109_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_124
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|721082807", "721082807", "S01M020_Main", "box_InteractionScriptController_109.Disabled", "box_CinematicPrep_124.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_117_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HasBoughtWeapon
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1154593275"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_11_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|92138611", "92138611", "S01M020_Main", "box_Ordered_Output_117.Out", "box_Compare_Boolean_v2_11.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_117_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_InventoryMonitor_7
  l0.ItemDB = "Items.9223372048779332790"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|144680987", "144680987", "S01M020_Main", "box_Ordered_Output_117.Out", "box_InventoryMonitor_7.HasItem", clone, l0)
  l0:HasItem()
end
function export:f_box_MultipleOR_159_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_169
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_159
  l1 = self.box_MissionCheckpointReach_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|748556237", "748556237", "S01M020_Main", "box_MultipleOR_159.Out", "box_MissionCheckpointReach_169.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_164
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification011",
    item = "Objective",
    id = "605146"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_15
  l1 = self.box_MissionMessageController_v3_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|625318330", "625318330", "S01M020_Main", "box_MissionCheckpointReach_15.Out", "box_MissionMessageController_v3_164.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MissionLayer_v2_171_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_165
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_MissionLayer_v2_171
  l1 = self.box_LayerMonitor_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1957311638", "1957311638", "S01M020_Main", "box_MissionLayer_v2_171.Loaded", "box_LayerMonitor_165.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_55_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_55
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_55_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_55
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_55_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_55
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1702564483"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0 = self.box_CLOMonitor_55
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1626774583", "1626774583", "S01M020_Main", "box_CLOMonitor_55.OnUserInPlace", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_128_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1823359185"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_50_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|819409429", "819409429", "S01M020_Main", "box_InteractionScriptController_128.Disabled", "box_InteractionScriptController_50.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_26_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_172
  l0.CLO = "9223372067694577644"
  l0 = self.box_MultipleOR_26
  l1 = self.box_CLOController_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|786967500", "786967500", "S01M020_Main", "box_MultipleOR_26.Out", "box_CLOController_172.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_166_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_166
  self.Entity_Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|152308566"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_157_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_166
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1593534194", "1593534194", "S01M020_Main", "box_CLOController_166.OnUserInPlace", "box_InteractionScriptController_157.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_ConversationMonitor_69_WasNotPlayed()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_74
  l0.Entity = self.Entity_Wrench
  l0.IsManagingInteraction = 1
  l0 = self.box_ConversationMonitor_69
  l1 = self.box_Interact_Gameplay_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|434118631", "434118631", "S01M020_Main", "box_ConversationMonitor_69.WasNotPlayed", "box_Interact_Gameplay_74.Start", l0, l1)
  l1:Start()
end
function export:f_box_ConversationMonitor_69_WasPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_86()
  l0 = self.box_ConversationMonitor_69
  l1 = self.box_MultipleOR_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|267733883", "267733883", "S01M020_Main", "box_ConversationMonitor_69.WasPlayed", "box_MultipleOR_86.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_25_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_25
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_25_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_25
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_25_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_25
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|915257014"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_CLOMonitor_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|442658413", "442658413", "S01M020_Main", "box_CLOMonitor_25.OnUserInPlace", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_186
  l0.CLO = "9223372047464636840"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|505079948", "505079948", "S01M020_Main", "box_Get_Player_ID_1.Out", "box_CLOMonitor_186.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_MissionMessageController_v3_143_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_147()
  l0 = self.box_MissionMessageController_v3_143
  l1 = self.box_Interact_Gameplay_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1753614102", "1753614102", "S01M020_Main", "box_MissionMessageController_v3_143.Out", "box_Interact_Gameplay_147.Start", l0, l1)
  l1:Start()
end
function export:f_box_InventoryMonitor_101_HasItemFalse()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_190()
  l0 = self.box_InventoryMonitor_101
  l1 = self.box_MultipleOR_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|404929999", "404929999", "S01M020_Main", "box_InventoryMonitor_101.HasItemFalse", "box_MultipleOR_190.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_InventoryMonitor_101_HasItemTrue()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_InventoryMonitor_101
  l1 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1483008279", "1483008279", "S01M020_Main", "box_InventoryMonitor_101.HasItemTrue", "box_MultipleOR_97.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_InventoryMonitor_113_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_InventoryMonitor_113
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|21876274", "21876274", "S01M020_Main", "box_InventoryMonitor_113.Disabled", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_InventoryMonitor_113_OnItemAdded()
  local l0
  self = self._graph
  self:OnEnter_box_InventoryMonitor_113()
  l0 = self.box_InventoryMonitor_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1008039688", "1008039688", "S01M020_Main", "box_InventoryMonitor_113.OnItemAdded", "box_InventoryMonitor_113.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_25()
  l0 = self.box_CLOMonitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|139883516", "139883516", "S01M020_Main", "box_Ordered_Output_27.Out", "box_CLOMonitor_25.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1405934480", "1405934480", "S01M020_Main", "box_Ordered_Output_27.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ConversationMonitor_71
  l0.Conversation = "ConversationSetting.9223372062975470267"
  l0 = self.box_MissionMessageController_v3_16
  l1 = self.box_ConversationMonitor_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1366886411", "1366886411", "S01M020_Main", "box_MissionMessageController_v3_16.Out", "box_ConversationMonitor_71.GetPlayState", l0, l1)
  l1:GetPlayState()
end
function export:f_box_InteractionScriptController_52_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1053260230"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_68_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2010092072", "2010092072", "S01M020_Main", "box_InteractionScriptController_52.Disabled", "box_InteractionScriptController_68.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_91_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01_M020_CIN_HackerSpaceBigPlan_Main_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1905960751", "1905960751", "S01M020_Main", "box_VisibilityController_v2_91.Hidden", "box_S01_M020_CIN_HackerSpaceBigPlan_Main_59.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_10
  l0.ItemDB = "Items.9223372050100061510"
  l0 = self.box_MissionCheckpointReach_45
  l1 = self.box_RewardController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|94176367", "94176367", "S01M020_Main", "box_MissionCheckpointReach_45.Out", "box_RewardController_v3_10.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_InteractionScriptController_73_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_64
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2072103797", "2072103797", "S01M020_Main", "box_InteractionScriptController_73.Disabled", "box_CinematicPrep_64.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_InteractionScriptController_54_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1529546079"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_32_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|697676255", "697676255", "S01M020_Main", "box_InteractionScriptController_54.Disabled", "box_InteractionScriptController_32.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_167_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_167
  self.Entity_Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1358784313"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_155_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_167
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1485149137", "1485149137", "S01M020_Main", "box_CLOController_167.OnUserInPlace", "box_InteractionScriptController_155.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_137_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HasBoughtWeapon = l0.Target
end
function export:f_box_SetBoolean_v2_137_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HasBoughtWeapon = l0.Target
end
function export:f_box_SetBoolean_v2_137_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HasBoughtWeapon = l0.Target
end
function export:f_box_SetBoolean_v2_137_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HasBoughtWeapon = l0.Target
  l0 = self.box_CinematicPrep_189
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_SetBoolean_v2_137
  l1 = self.box_CinematicPrep_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|378426963", "378426963", "S01M020_Main", "box_SetBoolean_v2_137.SetTrue", "box_CinematicPrep_189.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_137_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HasBoughtWeapon = l0.Target
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_167
  l0.CLO = "9223372067694577644"
  l0 = self.box_MultipleOR_14
  l1 = self.box_CLOController_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1044624857", "1044624857", "S01M020_Main", "box_MultipleOR_14.Out", "box_CLOController_167.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Get_Player_ID_136_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01m020_Sitara_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|103706558", "103706558", "S01M020_Main", "box_Get_Player_ID_136.Out", "box_s01m020_Sitara_98.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_84_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_163
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_MissionLayer_v2_84
  l1 = self.box_LayerMonitor_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1605612110", "1605612110", "S01M020_Main", "box_MissionLayer_v2_84.Loaded", "box_LayerMonitor_163.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_108_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_190()
  l0 = self.box_MissionCheckpointReach_108
  l1 = self.box_MultipleOR_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|482674452", "482674452", "S01M020_Main", "box_MissionCheckpointReach_108.Out", "box_MultipleOR_190.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LayerMonitor_140_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1579681804"
  l0.Out = self.f_box_Get_Player_ID_141_Out
  l0 = self.box_LayerMonitor_140
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|49025977", "49025977", "S01M020_Main", "box_LayerMonitor_140.Loaded", "box_Get_Player_ID_141.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_68_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01m020_Sitara_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1056623238", "1056623238", "S01M020_Main", "box_InteractionScriptController_68.Disabled", "box_s01m020_Sitara_75.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptMonitor_v2_125_AnimationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_125()
  l0 = self.box_InteractionScriptMonitor_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1964856758", "1964856758", "S01M020_Main", "box_InteractionScriptMonitor_v2_125.AnimationFinished", "box_InteractionScriptMonitor_v2_125.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_125_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_135
  l0.Entity = "9223372047375551844"
  l0 = self.box_InteractionScriptMonitor_v2_125
  l1 = self.box_Intel_Controller_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1137601366", "1137601366", "S01M020_Main", "box_InteractionScriptMonitor_v2_125.Disabled", "box_Intel_Controller_135.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_65_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_161
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_MissionLayer_v2_65
  l1 = self.box_LayerMonitor_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2087064938", "2087064938", "S01M020_Main", "box_MissionLayer_v2_65.Loaded", "box_LayerMonitor_161.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SmartphoneAppController_36_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1599099546", "1599099546", "S01M020_Main", "box_SmartphoneAppController_36.InstalledSet", "box_MultipleOR_67.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Interact_Gameplay_74_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_86()
  l0 = self.box_Interact_Gameplay_74
  l1 = self.box_MultipleOR_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1440496591", "1440496591", "S01M020_Main", "box_Interact_Gameplay_74.Interacted", "box_MultipleOR_86.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Interact_Gameplay_74_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_43
  l0.InteractionScriptEntity = self.Entity_Wrench
  l0.AutoDisable = 1
  l0 = self.box_Interact_Gameplay_74
  l1 = self.box_InteractionScriptMonitor_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1369587261", "1369587261", "S01M020_Main", "box_Interact_Gameplay_74.Started", "box_InteractionScriptMonitor_v2_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_178_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_178
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_178_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_178
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_178_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_178
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1396229136"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_177_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_177_Out_1
  l0 = self.box_CLOMonitor_178
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1596520676", "1596520676", "S01M020_Main", "box_CLOMonitor_178.OnUserInPlace", "box_Ordered_Output_177.In", l0, l1)
  l1:In()
end
function export:f_box_s01m020_Sitara_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S01M020_PrinterCheckPoint_87
  l0.CLO_Wrench = "9223372047464636840"
  l0.CLO_Horatio = "9223372067694577644"
  l0 = self.box_s01m020_Sitara_77
  l1 = self.box_S01M020_PrinterCheckPoint_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|217318002", "217318002", "S01M020_Main", "box_s01m020_Sitara_77.Out", "box_S01M020_PrinterCheckPoint_87.In", l0, l1)
  l1:In()
end
function export:f_box_s01m020_Sitara_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_92
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_s01m020_Sitara_46
  l1 = self.box_CinematicPrep_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|521992431", "521992431", "S01M020_Main", "box_s01m020_Sitara_46.Out", "box_CinematicPrep_92.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionCheckpointReach_191_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MissionCheckpointReach_191
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|112292783", "112292783", "S01M020_Main", "box_MissionCheckpointReach_191.Out", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_11_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InventoryMonitor_3()
  l0 = self.box_InventoryMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1107930899", "1107930899", "S01M020_Main", "box_Compare_Boolean_v2_11.A_is_False", "box_InventoryMonitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|869697098", "869697098", "S01M020_Main", "box_Compare_Boolean_v2_11.A_is_True", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_39_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  self.Entity_Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Wrench
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1929050908"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_79_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_39
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1765042102", "1765042102", "S01M020_Main", "box_CLOController_39.OnUserInPlace", "box_InteractionScriptController_79.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOMonitor_48_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_48
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_48_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_48
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_48_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_48
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1455392785"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_130_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_130_Out_1
  l0 = self.box_CLOMonitor_48
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2042648817", "2042648817", "S01M020_Main", "box_CLOMonitor_48.OnUserInPlace", "box_Ordered_Output_130.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_189_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_InventoryMonitor_101
  l0.ItemDB = "Items.9223372048779332790"
  l0 = self.box_CinematicPrep_189
  l1 = self.box_InventoryMonitor_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1202812981", "1202812981", "S01M020_Main", "box_CinematicPrep_189.PostOut", "box_InventoryMonitor_101.HasItem", l0, l1)
  l1:HasItem()
end
function export:f_box_PlayDialog_v2_17_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_16
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective014",
    item = "Objective",
    id = "495566"
  }
  l0 = self.box_PlayDialog_v2_17
  l1 = self.box_MissionMessageController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|804282912", "804282912", "S01M020_Main", "box_PlayDialog_v2_17.Finished", "box_MissionMessageController_v3_16.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Show_Or_Hide_All_UI_94_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047375551844"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|547112375"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_72_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|204628829", "204628829", "S01M020_Main", "box_Show_Or_Hide_All_UI_94.Shown", "box_InteractionScriptController_72.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_129_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|723245432"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_128_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|798753886", "798753886", "S01M020_Main", "box_Get_Player_ID_129.Out", "box_InteractionScriptController_128.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|956864228"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_52_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1982636084", "1982636084", "S01M020_Main", "box_Get_Player_ID_66.Out", "box_InteractionScriptController_52.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_152
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective019",
    item = "SubObjective",
    id = "693688"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionMessageController_v3_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1728839617", "1728839617", "S01M020_Main", "box_MultipleOR_6.Out", "box_MissionMessageController_v3_152.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CLOMonitor_22_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_22
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_22_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_22
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_22_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_22
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2011938012"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_CLOMonitor_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|305570058", "305570058", "S01M020_Main", "box_CLOMonitor_22.OnUserInPlace", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_89_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_159()
  l0 = self.box_CinematicPrep_89
  l1 = self.box_MultipleOR_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1622261100", "1622261100", "S01M020_Main", "box_CinematicPrep_89.PostOut", "box_MultipleOR_159.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Interact_Gameplay_121_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_Interact_Gameplay_121
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2086829747", "2086829747", "S01M020_Main", "box_Interact_Gameplay_121.Interacted", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Interact_Gameplay_121_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_33
  l0.InteractionScriptEntity = self.Entity_Wrench
  l0.AutoDisable = 1
  l0 = self.box_Interact_Gameplay_121
  l1 = self.box_InteractionScriptMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1596764380", "1596764380", "S01M020_Main", "box_Interact_Gameplay_121.Started", "box_InteractionScriptMonitor_v2_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_s01m020_Sitara_98_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S01M020_PrinterCheckPoint_12
  l0.CLO_Wrench = "9223372047464636840"
  l0.CLO_Horatio = "9223372067694577644"
  l0 = self.box_s01m020_Sitara_98
  l1 = self.box_S01M020_PrinterCheckPoint_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|666954277", "666954277", "S01M020_Main", "box_s01m020_Sitara_98.Out", "box_S01M020_PrinterCheckPoint_12.In", l0, l1)
  l1:In()
end
function export:f_box_TutorialController_150_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_TutorialController_150
  l1 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1625283369", "1625283369", "S01M020_Main", "box_TutorialController_150.DisplayRequested", "box_MultipleOR_47.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_120_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_19()
  l0 = self.box_MapPointController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2085571896", "2085571896", "S01M020_Main", "box_Ordered_Output_120.Out", "box_MapPointController_v4_19.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_120_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_125()
  l0 = self.box_InteractionScriptMonitor_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2107801373", "2107801373", "S01M020_Main", "box_Ordered_Output_120.Out", "box_InteractionScriptMonitor_v2_125.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Intel_Controller_135_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_99
  l0.Seconds = 0.1
  l0 = self.box_Intel_Controller_135
  l1 = self.box_Timer_v2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|481157750", "481157750", "S01M020_Main", "box_Intel_Controller_135.Disabled", "box_Timer_v2_99.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_35()
  l0 = self.box_CLOMonitor_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1172703984", "1172703984", "S01M020_Main", "box_Ordered_Output_38.Out", "box_CLOMonitor_35.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1045663671", "1045663671", "S01M020_Main", "box_Ordered_Output_38.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOMonitor_37_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_37
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_29()
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|553585394", "553585394", "S01M020_Main", "box_CLOMonitor_37.GotUser", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_37_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_37
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_35()
  l1 = self.box_CLOMonitor_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|200535660", "200535660", "S01M020_Main", "box_CLOMonitor_37.NotGotUser", "box_CLOMonitor_35.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_37_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_37
  self.Entity_Wrench = l0.UserID
end
function export:f_box_MissionLayer_v2_139_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_140
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_MissionLayer_v2_139
  l1 = self.box_LayerMonitor_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|53979530", "53979530", "S01M020_Main", "box_MissionLayer_v2_139.Loaded", "box_LayerMonitor_140.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ConversationMonitor_71_WasNotPlayed()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_121
  l0.Entity = self.Entity_Wrench
  l0.IsManagingInteraction = 1
  l0 = self.box_ConversationMonitor_71
  l1 = self.box_Interact_Gameplay_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1165542983", "1165542983", "S01M020_Main", "box_ConversationMonitor_71.WasNotPlayed", "box_Interact_Gameplay_121.Start", l0, l1)
  l1:Start()
end
function export:f_box_ConversationMonitor_71_WasPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_ConversationMonitor_71
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1760853475", "1760853475", "S01M020_Main", "box_ConversationMonitor_71.WasPlayed", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptController_155_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047375551844"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1549659199"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_44_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1978122000", "1978122000", "S01M020_Main", "box_InteractionScriptController_155.Disabled", "box_InteractionScriptController_44.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_s01m020_Sitara_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_21
  l0.CLO = "9223372047464636840"
  l0 = self.box_s01m020_Sitara_63
  l1 = self.box_CLOMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|202264090", "202264090", "S01M020_Main", "box_s01m020_Sitara_63.Out", "box_CLOMonitor_21.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_Ordered_Output_177_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_178()
  l0 = self.box_CLOMonitor_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1856257846", "1856257846", "S01M020_Main", "box_Ordered_Output_177.Out", "box_CLOMonitor_178.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_177_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_180()
  l0 = self.box_MultipleOR_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|6060617", "6060617", "S01M020_Main", "box_Ordered_Output_177.Out", "box_MultipleOR_180.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlayerPhoneMonitor_34_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1727623509"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_60_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_60_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_60_Out_4
  l0 = self.box_PlayerPhoneMonitor_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1893754088", "1893754088", "S01M020_Main", "box_PlayerPhoneMonitor_34.Disabled", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_PlayerPhoneMonitor_34_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MenuPageController_31
  l0.MenuPage = "UIMenuPageDB.9223372048779327643"
  l0 = self.box_PlayerPhoneMonitor_34
  l1 = self.box_MenuPageController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|493064843", "493064843", "S01M020_Main", "box_PlayerPhoneMonitor_34.Enabled", "box_MenuPageController_31.Open", l0, l1)
  l1:Open()
end
function export:f_box_PlayerPhoneMonitor_34_OnAppOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_58()
  l0 = self.box_PlayerPhoneMonitor_34
  l1 = self.box_TutorialController_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|461938989", "461938989", "S01M020_Main", "box_PlayerPhoneMonitor_34.OnAppOpened", "box_TutorialController_58.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlayerPhoneMonitor_34_OnPhoneClosed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_56()
  l0 = self.box_PlayerPhoneMonitor_34
  l1 = self.box_TutorialController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1213961948", "1213961948", "S01M020_Main", "box_PlayerPhoneMonitor_34.OnPhoneClosed", "box_TutorialController_56.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlayerPhoneMonitor_34_OnPhoneOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_57()
  l0 = self.box_PlayerPhoneMonitor_34
  l1 = self.box_TutorialController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|383531797", "383531797", "S01M020_Main", "box_PlayerPhoneMonitor_34.OnPhoneOpened", "box_TutorialController_57.Display", l0, l1)
  l1:Display()
end
function export:f_box_Ordered_Output_130_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_48()
  l0 = self.box_CLOMonitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1487242212", "1487242212", "S01M020_Main", "box_Ordered_Output_130.Out", "box_CLOMonitor_48.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_76()
  l0 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|834895346", "834895346", "S01M020_Main", "box_Ordered_Output_130.Out", "box_MultipleOR_76.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047375551844"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1748020357"
  l0.Enabled = self.f_box_InteractionScriptController_9_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_v3_5
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|186510519", "186510519", "S01M020_Main", "box_MissionMessageController_v3_5.Out", "box_InteractionScriptController_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_153_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_115()
  l0 = self.box_MissionMessageController_v3_153
  l1 = self.box_Multiple_AND_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1340277226", "1340277226", "S01M020_Main", "box_MissionMessageController_v3_153.Out", "box_Multiple_AND_115.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_LayerMonitor_163_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1802164178"
  l0.Out = self.f_box_Get_Player_ID_81_Out
  l0 = self.box_LayerMonitor_163
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1457760770", "1457760770", "S01M020_Main", "box_LayerMonitor_163.Loaded", "box_Get_Player_ID_81.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_133
  l0.CLO = "9223372067694577644"
  l0 = self.box_MultipleOR_76
  l1 = self.box_CLOController_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|539635751", "539635751", "S01M020_Main", "box_MultipleOR_76.Out", "box_CLOController_133.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_InteractionScriptController_32_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01m020_Sitara_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1328129658", "1328129658", "S01M020_Main", "box_InteractionScriptController_32.Disabled", "box_s01m020_Sitara_63.In", clone, l0)
  l0:In()
end
function export:f_box_CLOMonitor_127_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_127
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_76()
  l1 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1773520594", "1773520594", "S01M020_Main", "box_CLOMonitor_127.GotUser", "box_MultipleOR_76.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_127_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_127
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_48()
  l1 = self.box_CLOMonitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1823447433", "1823447433", "S01M020_Main", "box_CLOMonitor_127.NotGotUser", "box_CLOMonitor_48.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_127_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_127
  self.Entity_Wrench = l0.UserID
end
function export:f_box_MissionCheckpointReach_95_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_100
  l0.SurvivalGuideItemDB = "Items.9223372053993007695"
  l0 = self.box_MissionCheckpointReach_95
  l1 = self.box_TutorialController_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1628268961", "1628268961", "S01M020_Main", "box_MissionCheckpointReach_95.Out", "box_TutorialController_100.Display", l0, l1)
  l1:Display()
end
function export:f_box_InteractionScriptController_44_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_89
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1336239544", "1336239544", "S01M020_Main", "box_InteractionScriptController_44.Disabled", "box_CinematicPrep_89.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_RewardController_v3_10_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_116
  l0.CLO = "9223372062859881706"
  l0 = self.box_RewardController_v3_10
  l1 = self.box_CLOController_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|269333186", "269333186", "S01M020_Main", "box_RewardController_v3_10.RewardsExecuted", "box_CLOController_116.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionMessageController_v3_122_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractGameplayController_112
  l0.Entity = self.Sitara_S01M010
  l0 = self.box_MissionMessageController_v3_122
  l1 = self.box_InteractGameplayController_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|488612309", "488612309", "S01M020_Main", "box_MissionMessageController_v3_122.Out", "box_InteractGameplayController_112.Start", l0, l1)
  l1:Start()
end
function export:f_box_LayerMonitor_161_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1244341657"
  l0.Out = self.f_box_Get_Player_ID_66_Out
  l0 = self.box_LayerMonitor_161
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1520057561", "1520057561", "S01M020_Main", "box_LayerMonitor_161.Loaded", "box_Get_Player_ID_66.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_141_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01m020_Sitara_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1510240778", "1510240778", "S01M020_Main", "box_Get_Player_ID_141.Out", "box_s01m020_Sitara_77.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_169_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_30
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective014",
    item = "Objective",
    id = "495566"
  }
  l0 = self.box_MissionCheckpointReach_169
  l1 = self.box_MissionMessageController_v3_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1617682094", "1617682094", "S01M020_Main", "box_MissionCheckpointReach_169.Out", "box_MissionMessageController_v3_30.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Timer_v2_99_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_Timer_v2_99
  l1 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|619792665", "619792665", "S01M020_Main", "box_Timer_v2_99.TimeElapsed", "box_MultipleOR_97.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_s01m020_Sitara_88_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_23
  l0.CLO = "9223372047464636840"
  l0 = self.box_s01m020_Sitara_88
  l1 = self.box_CLOMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1624099601", "1624099601", "S01M020_Main", "box_s01m020_Sitara_88.Out", "box_CLOMonitor_23.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_CLOMonitor_23_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_26()
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|470714441", "470714441", "S01M020_Main", "box_CLOMonitor_23.GotUser", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_23_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_25()
  l1 = self.box_CLOMonitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|390725887", "390725887", "S01M020_Main", "box_CLOMonitor_23.NotGotUser", "box_CLOMonitor_25.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_23_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_61_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_61
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_51()
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1614074186", "1614074186", "S01M020_Main", "box_CLOMonitor_61.GotUser", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_61_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_61
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_55()
  l1 = self.box_CLOMonitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|342153324", "342153324", "S01M020_Main", "box_CLOMonitor_61.NotGotUser", "box_CLOMonitor_55.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_61_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_61
  self.Entity_Wrench = l0.UserID
end
function export:f_box_S01M020_PrinterCheckPoint_87_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S01M020_PrinterCheckPoint_87
  self.Entity_Wrench = l0.Wrench
  self.Entity_Horatio = l0.Horatio
  l1 = self.box_SetBoolean_v2_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|596586103", "596586103", "S01M020_Main", "box_S01M020_PrinterCheckPoint_87.Out", "box_SetBoolean_v2_137.True", l0, l1)
  l1:True()
end
function export:f_box_InteractionScriptMonitor_v2_33_InteractionStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_33
  l1 = self.box_MissionMessageController_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|840822001", "840822001", "S01M020_Main", "box_InteractionScriptMonitor_v2_33.InteractionStarted", "box_MissionMessageController_v3_42.HideObjective", l0, l1)
  l1:HideObjective()
end
function export:f_box_Ordered_Output_53_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_55()
  l0 = self.box_CLOMonitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2143976144", "2143976144", "S01M020_Main", "box_Ordered_Output_53.Out", "box_CLOMonitor_55.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|61543903", "61543903", "S01M020_Main", "box_Ordered_Output_53.Out", "box_MultipleOR_51.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PerkMonitor_4()
  l0 = self.box_PerkMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2146779546", "2146779546", "S01M020_Main", "box_Ordered_Output_60.Out", "box_PerkMonitor_4.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_57()
  l0 = self.box_TutorialController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1466440660", "1466440660", "S01M020_Main", "box_Ordered_Output_60.Out", "box_TutorialController_57.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_60_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_56()
  l0 = self.box_TutorialController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2004960886", "2004960886", "S01M020_Main", "box_Ordered_Output_60.Out", "box_TutorialController_56.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_60_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_58()
  l0 = self.box_TutorialController_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1402498844", "1402498844", "S01M020_Main", "box_Ordered_Output_60.Out", "box_TutorialController_58.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_60_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_159()
  l0 = self.box_MultipleOR_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|859672186", "859672186", "S01M020_Main", "box_Ordered_Output_60.Out", "box_MultipleOR_159.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_InteractionScriptMonitor_v2_110_InteractionStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_110
  l1 = self.box_MissionMessageController_v3_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|568304056", "568304056", "S01M020_Main", "box_InteractionScriptMonitor_v2_110.InteractionStarted", "box_MissionMessageController_v3_111.HideObjective", l0, l1)
  l1:HideObjective()
end
function export:f_box_CLOMonitor_179_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_179
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_180()
  l1 = self.box_MultipleOR_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1216207610", "1216207610", "S01M020_Main", "box_CLOMonitor_179.GotUser", "box_MultipleOR_180.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_179_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_179
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_178()
  l1 = self.box_CLOMonitor_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|527690804", "527690804", "S01M020_Main", "box_CLOMonitor_179.NotGotUser", "box_CLOMonitor_178.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_179_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_179
  self.Entity_Wrench = l0.UserID
end
function export:f_box_InteractionScriptController_9_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Intel_Controller_134
  l0.Entity = "9223372047375551844"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1663747978", "1663747978", "S01M020_Main", "box_InteractionScriptController_9.Enabled", "box_Intel_Controller_134.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_190_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective017",
    item = "Objective",
    id = "634036"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective020",
    item = "SubObjective",
    id = "693689"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective019",
    item = "SubObjective",
    id = "693688"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_190
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|850080122", "850080122", "S01M020_Main", "box_MultipleOR_190.Out", "box_MissionMessageController_v3_5.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MissionMessageController_v3_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_17
  l0.Entity = self.Entity_Wrench
  l0.SoundId = "soundbinary/3781107396.bnk"
  l0 = self.box_MissionMessageController_v3_62
  l1 = self.box_PlayDialog_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|978181219", "978181219", "S01M020_Main", "box_MissionMessageController_v3_62.Out", "box_PlayDialog_v2_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_81_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_179
  l0.CLO = "9223372047464636840"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1032192759", "1032192759", "S01M020_Main", "box_Get_Player_ID_81.Out", "box_CLOMonitor_179.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_InteractionScriptController_50_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01m020_Sitara_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1045122539", "1045122539", "S01M020_Main", "box_InteractionScriptController_50.Disabled", "box_s01m020_Sitara_132.In", clone, l0)
  l0:In()
end
function export:f_box_TutorialController_18_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|594712744"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_117_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_117_Out_1
  l0 = self.box_TutorialController_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1280647556", "1280647556", "S01M020_Main", "box_TutorialController_18.DisplayRequested", "box_Ordered_Output_117.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_119_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_119
  l1 = self.box_MissionController_v4_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|413682102", "413682102", "S01M020_Main", "box_MissionLayer_v2_119.Unloaded", "box_MissionController_v4_114.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_InteractionScriptController_24_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2093548912"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_28_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|745145132", "745145132", "S01M020_Main", "box_InteractionScriptController_24.Disabled", "box_InteractionScriptController_28.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptController_79_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2076486545"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_123_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|263067739", "263067739", "S01M020_Main", "box_InteractionScriptController_79.Disabled", "box_InteractionScriptController_123.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptController_70_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|171582609"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_85_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|427481742", "427481742", "S01M020_Main", "box_InteractionScriptController_70.Disabled", "box_InteractionScriptController_85.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_116_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_116
  self.Sitara_S01M010 = l0.UserID
  l0 = self.box_MissionMessageController_v3_122
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective012",
    item = "Objective",
    id = "495564"
  }
  l0 = self.box_CLOController_116
  l1 = self.box_MissionMessageController_v3_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|447209789", "447209789", "S01M020_Main", "box_CLOController_116.OnUserInPlace", "box_MissionMessageController_v3_122.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_LayerMonitor_118_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1024058243"
  l0.Out = self.f_box_Get_Player_ID_136_Out
  l0 = self.box_LayerMonitor_118
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1031891051", "1031891051", "S01M020_Main", "box_LayerMonitor_118.Loaded", "box_Get_Player_ID_136.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_19_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_18()
  l0 = self.box_MapPointController_v4_19
  l1 = self.box_TutorialController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|187925614", "187925614", "S01M020_Main", "box_MapPointController_v4_19.Hidden", "box_TutorialController_18.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_MapPointController_v4_19_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_18()
  l0 = self.box_MapPointController_v4_19
  l1 = self.box_TutorialController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|245421409", "245421409", "S01M020_Main", "box_MapPointController_v4_19.Shown", "box_TutorialController_18.Display", l0, l1)
  l1:Display()
end
function export:f_box_MultipleOR_184_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_184
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|329928382", "329928382", "S01M020_Main", "box_MultipleOR_184.Out", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_180_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_180
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1773239412", "1773239412", "S01M020_Main", "box_MultipleOR_180.Out", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_45
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_MultipleOR_47
  l1 = self.box_MissionCheckpointReach_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1534437248", "1534437248", "S01M020_Main", "box_MultipleOR_47.Out", "box_MissionCheckpointReach_45.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_22()
  l0 = self.box_CLOMonitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|215826256", "215826256", "S01M020_Main", "box_Ordered_Output_13.Out", "box_CLOMonitor_22.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|853431144", "853431144", "S01M020_Main", "box_Ordered_Output_13.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_InventoryMonitor_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_191
  l0.Checkpoint = "CheckPoint_Printer_BoughtWeapon"
  l0 = self.box_InventoryMonitor_3
  l1 = self.box_MissionCheckpointReach_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|369682877", "369682877", "S01M020_Main", "box_InventoryMonitor_3.Disabled", "box_MissionCheckpointReach_191.In", l0, l1)
  l1:In()
end
function export:f_box_InventoryMonitor_3_OnWeaponAdded()
  local l0
  self = self._graph
  self:OnEnter_box_InventoryMonitor_3()
  l0 = self.box_InventoryMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1672821770", "1672821770", "S01M020_Main", "box_InventoryMonitor_3.OnWeaponAdded", "box_InventoryMonitor_3.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_133_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_133
  self.Entity_Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|582100744"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_109_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_133
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1058145131", "1058145131", "S01M020_Main", "box_CLOController_133.OnUserInPlace", "box_InteractionScriptController_109.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_s01m020_Sitara_75_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_61
  l0.CLO = "9223372047464636840"
  l0 = self.box_s01m020_Sitara_75
  l1 = self.box_CLOMonitor_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|461574429", "461574429", "S01M020_Main", "box_s01m020_Sitara_75.Out", "box_CLOMonitor_61.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_InteractionScriptController_123_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1224517061"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_94_Shown
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|578984965", "578984965", "S01M020_Main", "box_InteractionScriptController_123.Disabled", "box_Show_Or_Hide_All_UI_94.Show", clone, l0)
  l0:Show()
end
function export:f_box_MultipleOR_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_166
  l0.CLO = "9223372067694577644"
  l0 = self.box_MultipleOR_51
  l1 = self.box_CLOController_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1477171770", "1477171770", "S01M020_Main", "box_MultipleOR_51.Out", "box_CLOController_166.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_GetNPC_8_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_8
  self.TalkersHQShow = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.TalkersHQShow
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2137347155"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_93_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_8
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|1351826604", "1351826604", "S01M020_Main", "box_GetNPC_8.GotNPCList", "box_VisibilityController_v2_93.Show", l0, l1)
  l1:Show()
end
function export:f_box_InteractionScriptController_28_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GetNPC_90
  l0.Group = "HQ_Talker"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|473335821", "473335821", "S01M020_Main", "box_InteractionScriptController_28.Disabled", "box_GetNPC_90.GetAll", clone, l0)
  l0:GetAll()
end
function export:f_box_LayerMonitor_165_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|254966469"
  l0.Out = self.f_box_Get_Player_ID_170_Out
  l0 = self.box_LayerMonitor_165
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2109128727", "2109128727", "S01M020_Main", "box_LayerMonitor_165.Loaded", "box_Get_Player_ID_170.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_93_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01m020_Sitara_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Main|2091412019", "2091412019", "S01M020_Main", "box_VisibilityController_v2_93.Shown", "box_s01m020_Sitara_46.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_67()
end
function export:OnEnter_box_PerkMonitor_4()
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_Multiple_AND_115()
end
function export:OnEnter_box_MultipleOR_78()
end
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_Interact_Gameplay_147()
  local l0
  l0 = self.box_Interact_Gameplay_147
  l0.Entity = self.Entity_Horatio
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_86()
end
function export:OnEnter_box_MultipleOR_97()
end
function export:OnEnter_box_CLOMonitor_35()
  local l0
  l0 = self.box_CLOMonitor_35
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_MultipleOR_107()
end
function export:OnEnter_box_CLOMonitor_188()
  local l0
  l0 = self.box_CLOMonitor_188
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_MultipleOR_159()
end
function export:OnEnter_box_CLOMonitor_55()
  local l0
  l0 = self.box_CLOMonitor_55
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_TutorialController_58()
  local l0
  l0 = self.box_TutorialController_58
  l0.Notification = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SkillUnlock_Notification_PC",
    id = "693870"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_CLOMonitor_25()
  local l0
  l0 = self.box_CLOMonitor_25
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_InventoryMonitor_113()
  local l0
  l0 = self.box_InventoryMonitor_113
  l0.ItemDB = "Items.9223372048779332790"
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_125()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_125
  l0.InteractionScriptEntity = "9223372047375551844"
end
function export:OnEnter_box_CLOMonitor_178()
  local l0
  l0 = self.box_CLOMonitor_178
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_CLOMonitor_48()
  local l0
  l0 = self.box_CLOMonitor_48
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_CLOMonitor_22()
  local l0
  l0 = self.box_CLOMonitor_22
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_PlayerPhoneMonitor_34()
  local l0
  l0 = self.box_PlayerPhoneMonitor_34
  l0.App = "UIAppCatalogDB.9223372046454257062"
end
function export:OnEnter_box_MultipleOR_76()
end
function export:OnEnter_box_TutorialController_57()
  local l0
  l0 = self.box_TutorialController_57
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification018",
    item = "Notification",
    id = "636741"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SelectResearchApp",
    id = "699231"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_190()
end
function export:OnEnter_box_TutorialController_18()
  local l0
  l0 = self.box_TutorialController_18
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification013",
    item = "Notification",
    id = "634037"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MapPointController_v4_19()
  local l0
  l0 = self.box_MapPointController_v4_19
  l0.MapPoint = "9223372052007872351"
end
function export:OnEnter_box_MultipleOR_184()
end
function export:OnEnter_box_MultipleOR_180()
end
function export:OnEnter_box_MultipleOR_47()
end
function export:OnEnter_box_InventoryMonitor_3()
end
function export:OnEnter_box_TutorialController_56()
  local l0
  l0 = self.box_TutorialController_56
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_51()
end
_compilerVersion = 4
