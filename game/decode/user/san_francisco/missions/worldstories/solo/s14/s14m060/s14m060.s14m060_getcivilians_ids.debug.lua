export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14M060_GetCivilians_IDs"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs"
  self.Out_AllCiviliansRegistered = DummyFunction
  self.LivingRoomCivilian_01 = nil
  self.DiningRoomCivilian_04 = nil
  self.DiningRoomCivilian_02 = nil
  self.LivingRoomCivilian_02 = nil
  self.DiningRoomCivilian_03 = nil
  self.DiningRoomCivilian_01 = nil
  self.DiningRoomCivilian_05 = nil
  self.LivingRoomCivilians = {}
  self.DiningRoomCivilians = {}
  self.KitchenCivilian02 = nil
  self.KitchenCivilian03 = nil
  self.KitchenCivilians = {}
  self.LivingRoomCivilian_03 = nil
  self.MicrowaveGuy = nil
  self.AcidBathGuy = nil
  self.TerasseBurningDocumentCivilian01 = nil
  self.TerasseBurningDocumentCivilian02 = nil
  self.HackablePhonecallLady = nil
  self.box_HackableController_v2_49 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_49
  l0._graph = self
  l0._name = "box_HackableController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|4456863"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_49_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_57 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_57
  l0._graph = self
  l0._name = "box_Multiple_AND_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|46034440"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_57_Out
  self.box_Multiple_AND_9 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_9
  l0._graph = self
  l0._name = "box_Multiple_AND_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|49691778"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_9_Out
  self.box_HackableController_v2_66 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_66
  l0._graph = self
  l0._name = "box_HackableController_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|56276794"
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
  self.box_HackableController_v2_47 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_47
  l0._graph = self
  l0._name = "box_HackableController_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|106249555"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_47_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOMonitor_36 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_36
  l0._graph = self
  l0._name = "box_CLOMonitor_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|125376323"
  l0.Enabled = self.f_box_CLOMonitor_36_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_36_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_36_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_36_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_HackableController_v2_45 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_45
  l0._graph = self
  l0._name = "box_HackableController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|172486745"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_45_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_42 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_42
  l0._graph = self
  l0._name = "box_OnceOnly_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|230886050"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_42_Out
  l0.ResetOut = DummyFunction
  self.box_CLOMonitor_6 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_6
  l0._graph = self
  l0._name = "box_CLOMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|324288956"
  l0.Enabled = self.f_box_CLOMonitor_6_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_6_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_6_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_6_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Multiple_AND_20 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_20
  l0._graph = self
  l0._name = "box_Multiple_AND_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|327391072"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_20_Out
  self.box_HackableController_v2_59 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_59
  l0._graph = self
  l0._name = "box_HackableController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|489147615"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_59_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_65 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_65
  l0._graph = self
  l0._name = "box_CLOController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|491041743"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_65_OnUserInPlace
  self.box_CLOMonitor_3 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_3
  l0._graph = self
  l0._name = "box_CLOMonitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|527681266"
  l0.Enabled = self.f_box_CLOMonitor_3_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_3_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_3_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_3_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_OnceOnly_v3_18 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_18
  l0._graph = self
  l0._name = "box_OnceOnly_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|581006115"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_18_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_51 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_51
  l0._graph = self
  l0._name = "box_HackableController_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|616438956"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_51_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_56 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_56
  l0._graph = self
  l0._name = "box_CLOController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|671381028"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOMonitor_55 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_55
  l0._graph = self
  l0._name = "box_CLOMonitor_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|742670045"
  l0.Enabled = self.f_box_CLOMonitor_55_Enabled
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
  self.box_Multiple_AND_26 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_26
  l0._graph = self
  l0._name = "box_Multiple_AND_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|826804820"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_26_Out
  self.box_HackableController_v2_48 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_48
  l0._graph = self
  l0._name = "box_HackableController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|945332624"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_48_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOMonitor_22 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_22
  l0._graph = self
  l0._name = "box_CLOMonitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1001621721"
  l0.Enabled = self.f_box_CLOMonitor_22_Enabled
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
  self.box_HackableController_v2_46 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_46
  l0._graph = self
  l0._name = "box_HackableController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1044748326"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_46_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_ListWriter_30 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_30
  l0._graph = self
  l0._name = "box_ListWriter_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1044790701"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_30_Added
  l0.Removed = self.f_box_ListWriter_30_Removed
  l0.Out = self.f_box_ListWriter_30_Out
  self.box_Multiple_AND_4 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_4
  l0._graph = self
  l0._name = "box_Multiple_AND_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1096812815"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_4_Out
  self.box_OnceOnly_v3_63 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_63
  l0._graph = self
  l0._name = "box_OnceOnly_v3_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1110740363"
  l0._DynamicAnchors = {In = 2}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1116887871"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_19 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_19
  l0._graph = self
  l0._name = "box_CLOController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1135594330"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOMonitor_54 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_54
  l0._graph = self
  l0._name = "box_CLOMonitor_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1145922895"
  l0.Enabled = self.f_box_CLOMonitor_54_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_54_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_54_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_54_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_ListWriter_11 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_11
  l0._graph = self
  l0._name = "box_ListWriter_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1204177542"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_11_Added
  l0.Removed = self.f_box_ListWriter_11_Removed
  l0.Out = self.f_box_ListWriter_11_Out
  self.box_CLOMonitor_2 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_2
  l0._graph = self
  l0._name = "box_CLOMonitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1330545525"
  l0.Enabled = self.f_box_CLOMonitor_2_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_2_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_2_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_2_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_HackableController_v2_50 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_50
  l0._graph = self
  l0._name = "box_HackableController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1351243300"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_50_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_60 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_60
  l0._graph = self
  l0._name = "box_Multiple_AND_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1418623157"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_60_Out
  self.box_ListWriter_12 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_12
  l0._graph = self
  l0._name = "box_ListWriter_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1498287443"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_12_Added
  l0.Removed = self.f_box_ListWriter_12_Removed
  l0.Out = self.f_box_ListWriter_12_Out
  self.box_CLOMonitor_21 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_21
  l0._graph = self
  l0._name = "box_CLOMonitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1535201958"
  l0.Enabled = self.f_box_CLOMonitor_21_Enabled
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
  self.box_CLOController_25 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_25
  l0._graph = self
  l0._name = "box_CLOController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1621780306"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOMonitor_23 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_23
  l0._graph = self
  l0._name = "box_CLOMonitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1644209301"
  l0.Enabled = self.f_box_CLOMonitor_23_Enabled
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
  self.box_Multiple_AND_24 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_24
  l0._graph = self
  l0._name = "box_Multiple_AND_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1654580579"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_24_Out
  self.box_HackableController_v2_58 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_58
  l0._graph = self
  l0._name = "box_HackableController_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1800202783"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_58_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_44 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_44
  l0._graph = self
  l0._name = "box_OnceOnly_v3_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1804346504"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_44_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_29 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_29
  l0._graph = self
  l0._name = "box_OnceOnly_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1860230646"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_29_Out
  l0.ResetOut = DummyFunction
  self.box_Multiple_AND_10 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_10
  l0._graph = self
  l0._name = "box_Multiple_AND_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1874958256"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_10_Out
  self.box_Multiple_AND_32 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_32
  l0._graph = self
  l0._name = "box_Multiple_AND_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1885728231"
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_box_Multiple_AND_32_Out
  self.box_CLOMonitor_7 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_7
  l0._graph = self
  l0._name = "box_CLOMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1913161250"
  l0.Enabled = self.f_box_CLOMonitor_7_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_7_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_7_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_7_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1942358818"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_52_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_40 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_40
  l0._graph = self
  l0._name = "box_OnceOnly_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2145262909"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_40_Out
  l0.ResetOut = DummyFunction
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
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|977071596"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_1_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_1_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_1_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|96213924", "96213924", "S14M060_GetCivilians_IDs", "In", "box_Ordered_Output_1.In", self, l0)
  l0:In()
end
function export:f_box_HackableController_v2_49_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_26()
  l0 = self.box_HackableController_v2_49
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1388019126", "1388019126", "S14M060_GetCivilians_IDs", "box_HackableController_v2_49.ProfileAssigned", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_56
  l0.CLO = "9223372050586490823"
  l0 = self.box_Multiple_AND_57
  l1 = self.box_CLOController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|381010976", "381010976", "S14M060_GetCivilians_IDs", "box_Multiple_AND_57.Out", "box_CLOController_56.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Multiple_AND_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|663679432"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_Multiple_AND_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2067940630", "2067940630", "S14M060_GetCivilians_IDs", "box_Multiple_AND_9.Out", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_47_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1257892109"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  l0 = self.box_HackableController_v2_47
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1062163845", "1062163845", "S14M060_GetCivilians_IDs", "box_HackableController_v2_47.ProfileAssigned", "box_Ordered_Output_38.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|213867636", "213867636", "S14M060_GetCivilians_IDs", "box_Ordered_Output_39.Out", "box_OnceOnly_v3_40.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_21()
  l0 = self.box_CLOMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1518064782", "1518064782", "S14M060_GetCivilians_IDs", "box_Ordered_Output_39.Out", "box_CLOMonitor_21.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_36_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_4()
  l0 = self.box_CLOMonitor_36
  l1 = self.box_Multiple_AND_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1886169136", "1886169136", "S14M060_GetCivilians_IDs", "box_CLOMonitor_36.Enabled", "box_Multiple_AND_4.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOMonitor_36_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_36
  self.LivingRoomCivilian_03 = l0.UserID
end
function export:f_box_CLOMonitor_36_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_36
  self.LivingRoomCivilian_03 = l0.UserID
end
function export:f_box_CLOMonitor_36_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_36
  self.LivingRoomCivilian_03 = l0.UserID
  l0 = self.box_HackableController_v2_45
  l0.HackableEntity = self.LivingRoomCivilian_03
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.NViteEmployeeFemale01",
    item = "",
    id = "4294988616"
  }
  l0 = self.box_CLOMonitor_36
  l1 = self.box_HackableController_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|44849951", "44849951", "S14M060_GetCivilians_IDs", "box_CLOMonitor_36.OnUserInPlace", "box_HackableController_v2_45.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_7()
  l0 = self.box_CLOMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1275248734", "1275248734", "S14M060_GetCivilians_IDs", "box_Ordered_Output_28.Out", "box_CLOMonitor_7.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_23()
  l0 = self.box_CLOMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1352190744", "1352190744", "S14M060_GetCivilians_IDs", "box_Ordered_Output_28.Out", "box_CLOMonitor_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_45_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_HackableController_v2_45
  l1 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1843028638", "1843028638", "S14M060_GetCivilians_IDs", "box_HackableController_v2_45.ProfileAssigned", "box_Multiple_AND_9.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Set_List_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.KitchenCivilians_OUT = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1373392370", "1373392370", "S14M060_GetCivilians_IDs", "box_Set_List_31.Out", "box_Multiple_AND_32.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_OnceOnly_v3_42_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.AcidBathGuy
  l0._graph = self
  l0._name = "box_Set_Entity_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1615078992"
  l0.Out = self.f_box_Set_Entity_43_Out
  l0 = self.box_OnceOnly_v3_42
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|511216839", "511216839", "S14M060_GetCivilians_IDs", "box_OnceOnly_v3_42.Out", "box_Set_Entity_43.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_CLOMonitor_6_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_4()
  l0 = self.box_CLOMonitor_6
  l1 = self.box_Multiple_AND_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1517302798", "1517302798", "S14M060_GetCivilians_IDs", "box_CLOMonitor_6.Enabled", "box_Multiple_AND_4.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOMonitor_6_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_6
  self.LivingRoomCivilian_01 = l0.UserID
end
function export:f_box_CLOMonitor_6_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_6
  self.LivingRoomCivilian_01 = l0.UserID
end
function export:f_box_CLOMonitor_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_6
  self.LivingRoomCivilian_01 = l0.UserID
  l0 = self.box_HackableController_v2_46
  l0.HackableEntity = self.LivingRoomCivilian_01
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.CampaignStaffMale02",
    item = "",
    id = "4294988651"
  }
  l0 = self.box_CLOMonitor_6
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1023338331", "1023338331", "S14M060_GetCivilians_IDs", "box_CLOMonitor_6.OnUserInPlace", "box_HackableController_v2_46.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Multiple_AND_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_19
  l0.CLO = "9223372050956213030"
  l0 = self.box_Multiple_AND_20
  l1 = self.box_CLOController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1889813087", "1889813087", "S14M060_GetCivilians_IDs", "box_Multiple_AND_20.Out", "box_CLOController_19.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_59_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_60()
  l0 = self.box_HackableController_v2_59
  l1 = self.box_Multiple_AND_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1890399687", "1890399687", "S14M060_GetCivilians_IDs", "box_HackableController_v2_59.ProfileAssigned", "box_Multiple_AND_60.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_65_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_65
  self.HackablePhonecallLady = l0.UserID
  l0 = self.box_HackableController_v2_66
  l0.HackableEntity = self.HackablePhonecallLady
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.CampaignStaffFemale02",
    item = "",
    id = "4294988654"
  }
  l0 = self.box_CLOController_65
  l1 = self.box_HackableController_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1816768152", "1816768152", "S14M060_GetCivilians_IDs", "box_CLOController_65.OnUserInPlace", "box_HackableController_v2_66.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_CLOMonitor_3_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_20()
  l0 = self.box_CLOMonitor_3
  l1 = self.box_Multiple_AND_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|626774334", "626774334", "S14M060_GetCivilians_IDs", "box_CLOMonitor_3.Enabled", "box_Multiple_AND_20.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOMonitor_3_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_3
  self.DiningRoomCivilian_02 = l0.UserID
end
function export:f_box_CLOMonitor_3_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_3
  self.DiningRoomCivilian_02 = l0.UserID
end
function export:f_box_CLOMonitor_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_3
  self.DiningRoomCivilian_02 = l0.UserID
  l0 = self.box_HackableController_v2_51
  l0.HackableEntity = self.DiningRoomCivilian_02
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.CampaignStaffMale01",
    item = "",
    id = "4294988650"
  }
  l0 = self.box_CLOMonitor_3
  l1 = self.box_HackableController_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|849500398", "849500398", "S14M060_GetCivilians_IDs", "box_CLOMonitor_3.OnUserInPlace", "box_HackableController_v2_51.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_OnceOnly_v3_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_12
  l0.Input = self.DiningRoomCivilians
  l0.Data[0] = self.DiningRoomCivilian_01
  l0.Data[1] = self.DiningRoomCivilian_02
  l0 = self.box_OnceOnly_v3_18
  l1 = self.box_ListWriter_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|828921507", "828921507", "S14M060_GetCivilians_IDs", "box_OnceOnly_v3_18.Out", "box_ListWriter_12.Add", l0, l1)
  l1:Add()
end
function export:f_box_HackableController_v2_51_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_HackableController_v2_51
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2109035440", "2109035440", "S14M060_GetCivilians_IDs", "box_HackableController_v2_51.ProfileAssigned", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_6()
  l0 = self.box_CLOMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|690316769", "690316769", "S14M060_GetCivilians_IDs", "box_Ordered_Output_35.Out", "box_CLOMonitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_36()
  l0 = self.box_CLOMonitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1013460650", "1013460650", "S14M060_GetCivilians_IDs", "box_Ordered_Output_35.Out", "box_CLOMonitor_36.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|585240554", "585240554", "S14M060_GetCivilians_IDs", "box_Ordered_Output_8.Out", "box_OnceOnly_v3_44.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|689926658"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1936070824", "1936070824", "S14M060_GetCivilians_IDs", "box_Ordered_Output_8.Out", "box_Ordered_Output_37.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_6()
  l0 = self.box_CLOMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1276881318", "1276881318", "S14M060_GetCivilians_IDs", "box_Ordered_Output_37.Out", "box_CLOMonitor_6.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_36()
  l0 = self.box_CLOMonitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2059209449", "2059209449", "S14M060_GetCivilians_IDs", "box_Ordered_Output_37.Out", "box_CLOMonitor_36.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_55_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_57()
  l0 = self.box_CLOMonitor_55
  l1 = self.box_Multiple_AND_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1512000379", "1512000379", "S14M060_GetCivilians_IDs", "box_CLOMonitor_55.Enabled", "box_Multiple_AND_57.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOMonitor_55_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_55
  self.TerasseBurningDocumentCivilian01 = l0.UserID
end
function export:f_box_CLOMonitor_55_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_55
  self.TerasseBurningDocumentCivilian01 = l0.UserID
end
function export:f_box_CLOMonitor_55_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_55
  self.TerasseBurningDocumentCivilian01 = l0.UserID
  l0 = self.box_HackableController_v2_58
  l0.HackableEntity = self.TerasseBurningDocumentCivilian01
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.CampaignStaffFemale01",
    item = "",
    id = "4294988653"
  }
  l0 = self.box_CLOMonitor_55
  l1 = self.box_HackableController_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1140353568", "1140353568", "S14M060_GetCivilians_IDs", "box_CLOMonitor_55.OnUserInPlace", "box_HackableController_v2_58.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Ordered_Output_62_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_55()
  l0 = self.box_CLOMonitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|405219931", "405219931", "S14M060_GetCivilians_IDs", "box_Ordered_Output_62.Out", "box_CLOMonitor_55.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_62_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_54()
  l0 = self.box_CLOMonitor_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1313383082", "1313383082", "S14M060_GetCivilians_IDs", "box_Ordered_Output_62.Out", "box_CLOMonitor_54.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Multiple_AND_26_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1175575254"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_Multiple_AND_26
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|474898403", "474898403", "S14M060_GetCivilians_IDs", "box_Multiple_AND_26.Out", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_48_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_26()
  l0 = self.box_HackableController_v2_48
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2014404999", "2014404999", "S14M060_GetCivilians_IDs", "box_HackableController_v2_48.ProfileAssigned", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|617066421"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1388937488", "1388937488", "S14M060_GetCivilians_IDs", "box_Ordered_Output_1.Out", "box_Ordered_Output_35.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1012594312"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_33_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_33_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_33_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2089614339", "2089614339", "S14M060_GetCivilians_IDs", "box_Ordered_Output_1.Out", "box_Ordered_Output_33.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2015129314"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|523319935", "523319935", "S14M060_GetCivilians_IDs", "box_Ordered_Output_1.Out", "box_Ordered_Output_34.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1750501443"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1583444235", "1583444235", "S14M060_GetCivilians_IDs", "box_Ordered_Output_1.Out", "box_Ordered_Output_53.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1980661400"
  l0.Out = self.f_box_Simple_Node_64_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|417274492", "417274492", "S14M060_GetCivilians_IDs", "box_Ordered_Output_1.Out", "box_Simple_Node_64.In", clone, l0)
  l0:In()
end
function export:f_box_CLOMonitor_22_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_CLOMonitor_22
  l1 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1072129554", "1072129554", "S14M060_GetCivilians_IDs", "box_CLOMonitor_22.Enabled", "box_Multiple_AND_24.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOMonitor_22_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_22
  self.AcidBathGuy = l0.UserID
end
function export:f_box_CLOMonitor_22_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_22
  self.AcidBathGuy = l0.UserID
end
function export:f_box_CLOMonitor_22_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_22
  self.AcidBathGuy = l0.UserID
  l0 = self.box_HackableController_v2_47
  l0.HackableEntity = self.AcidBathGuy
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.NViteEmployeeMale03",
    item = "",
    id = "4294988585"
  }
  l0 = self.box_CLOMonitor_22
  l1 = self.box_HackableController_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1994724979", "1994724979", "S14M060_GetCivilians_IDs", "box_CLOMonitor_22.OnUserInPlace", "box_HackableController_v2_47.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Ordered_Output_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_22()
  l0 = self.box_CLOMonitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1578543436", "1578543436", "S14M060_GetCivilians_IDs", "box_Ordered_Output_33.Out", "box_CLOMonitor_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_7()
  l0 = self.box_CLOMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1760791188", "1760791188", "S14M060_GetCivilians_IDs", "box_Ordered_Output_33.Out", "box_CLOMonitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_33_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_23()
  l0 = self.box_CLOMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|828230054", "828230054", "S14M060_GetCivilians_IDs", "box_Ordered_Output_33.Out", "box_CLOMonitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_33_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_21()
  l0 = self.box_CLOMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|184980177", "184980177", "S14M060_GetCivilians_IDs", "box_Ordered_Output_33.Out", "box_CLOMonitor_21.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_46_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_HackableController_v2_46
  l1 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1378675971", "1378675971", "S14M060_GetCivilians_IDs", "box_HackableController_v2_46.ProfileAssigned", "box_Multiple_AND_9.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ListWriter_30_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_30
  self.KitchenCivilians = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.KitchenCivilians
  l0._graph = self
  l0._name = "box_Set_List_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|206953356"
  l0.Out = self.f_box_Set_List_31_Out
  l0 = self.box_ListWriter_30
  l1 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|178807712", "178807712", "S14M060_GetCivilians_IDs", "box_ListWriter_30.Added", "box_Set_List_31.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_ListWriter_30_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_30
  self.KitchenCivilians = l0.Target
end
function export:f_box_ListWriter_30_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_30
  self.KitchenCivilians = l0.Target
end
function export:f_box_Multiple_AND_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  l0.CLO = "9223372050735878565"
  l0 = self.box_Multiple_AND_4
  l1 = self.box_CLOController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1779922808", "1779922808", "S14M060_GetCivilians_IDs", "box_Multiple_AND_4.Out", "box_CLOController_15.Activate", l0, l1)
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
  l0 = self.box_OnceOnly_v3_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|865596050", "865596050", "S14M060_GetCivilians_IDs", "box_Ordered_Output_61.Out", "box_OnceOnly_v3_63.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|768706757"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_62_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_62_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1055201998", "1055201998", "S14M060_GetCivilians_IDs", "box_Ordered_Output_61.Out", "box_Ordered_Output_62.In", clone, l0)
  l0:In()
end
function export:f_box_CLOMonitor_54_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_57()
  l0 = self.box_CLOMonitor_54
  l1 = self.box_Multiple_AND_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1050298744", "1050298744", "S14M060_GetCivilians_IDs", "box_CLOMonitor_54.Enabled", "box_Multiple_AND_57.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOMonitor_54_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_54
  self.TerasseBurningDocumentCivilian02 = l0.UserID
end
function export:f_box_CLOMonitor_54_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_54
  self.TerasseBurningDocumentCivilian02 = l0.UserID
end
function export:f_box_CLOMonitor_54_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_54
  self.TerasseBurningDocumentCivilian02 = l0.UserID
  l0 = self.box_HackableController_v2_59
  l0.HackableEntity = self.TerasseBurningDocumentCivilian02
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.CampaignStaffMale03",
    item = "",
    id = "4294988652"
  }
  l0 = self.box_CLOMonitor_54
  l1 = self.box_HackableController_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|443592891", "443592891", "S14M060_GetCivilians_IDs", "box_CLOMonitor_54.OnUserInPlace", "box_HackableController_v2_59.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1570807460", "1570807460", "S14M060_GetCivilians_IDs", "box_Ordered_Output_27.Out", "box_OnceOnly_v3_29.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|136600550"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_28_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1648807723", "1648807723", "S14M060_GetCivilians_IDs", "box_Ordered_Output_27.Out", "box_Ordered_Output_28.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_11_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_11
  self.LivingRoomCivilians = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.LivingRoomCivilians
  l0._graph = self
  l0._name = "box_Set_List_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1703122711"
  l0.Out = self.f_box_Set_List_13_Out
  l0 = self.box_ListWriter_11
  l1 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2023005686", "2023005686", "S14M060_GetCivilians_IDs", "box_ListWriter_11.Added", "box_Set_List_13.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_ListWriter_11_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_11
  self.LivingRoomCivilians = l0.Target
end
function export:f_box_ListWriter_11_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_11
  self.LivingRoomCivilians = l0.Target
end
function export:f_box_Set_List_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.DiningRoomCivilians_OUT = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|400352569", "400352569", "S14M060_GetCivilians_IDs", "box_Set_List_14.Out", "box_Multiple_AND_32.Condition", clone, l0)
  l0:Condition(4)
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1707261121", "1707261121", "S14M060_GetCivilians_IDs", "box_Ordered_Output_38.Out", "box_OnceOnly_v3_42.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_22()
  l0 = self.box_CLOMonitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|373909253", "373909253", "S14M060_GetCivilians_IDs", "box_Ordered_Output_38.Out", "box_CLOMonitor_22.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_2_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_20()
  l0 = self.box_CLOMonitor_2
  l1 = self.box_Multiple_AND_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|197669443", "197669443", "S14M060_GetCivilians_IDs", "box_CLOMonitor_2.Enabled", "box_Multiple_AND_20.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOMonitor_2_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_2
  self.DiningRoomCivilian_01 = l0.UserID
end
function export:f_box_CLOMonitor_2_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_2
  self.DiningRoomCivilian_01 = l0.UserID
end
function export:f_box_CLOMonitor_2_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_2
  self.DiningRoomCivilian_01 = l0.UserID
  l0 = self.box_HackableController_v2_52
  l0.HackableEntity = self.DiningRoomCivilian_01
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.NViteEmployeeFemale02",
    item = "",
    id = "4294988617"
  }
  l0 = self.box_CLOMonitor_2
  l1 = self.box_HackableController_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1937527532", "1937527532", "S14M060_GetCivilians_IDs", "box_CLOMonitor_2.OnUserInPlace", "box_HackableController_v2_52.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_HackableController_v2_50_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|108829157"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  l0 = self.box_HackableController_v2_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|359566578", "359566578", "S14M060_GetCivilians_IDs", "box_HackableController_v2_50.ProfileAssigned", "box_Ordered_Output_39.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_60_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1136377020"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0 = self.box_Multiple_AND_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|332461358", "332461358", "S14M060_GetCivilians_IDs", "box_Multiple_AND_60.Out", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_12_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_12
  self.DiningRoomCivilians = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.DiningRoomCivilians
  l0._graph = self
  l0._name = "box_Set_List_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1231946374"
  l0.Out = self.f_box_Set_List_14_Out
  l0 = self.box_ListWriter_12
  l1 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|552275059", "552275059", "S14M060_GetCivilians_IDs", "box_ListWriter_12.Added", "box_Set_List_14.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_ListWriter_12_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_12
  self.DiningRoomCivilians = l0.Target
end
function export:f_box_ListWriter_12_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_12
  self.DiningRoomCivilians = l0.Target
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1290623142", "1290623142", "S14M060_GetCivilians_IDs", "box_Ordered_Output_16.Out", "box_OnceOnly_v3_18.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1816141213"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|561219041", "561219041", "S14M060_GetCivilians_IDs", "box_Ordered_Output_16.Out", "box_Ordered_Output_17.In", clone, l0)
  l0:In()
end
function export:f_box_CLOMonitor_21_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_CLOMonitor_21
  l1 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|264030455", "264030455", "S14M060_GetCivilians_IDs", "box_CLOMonitor_21.Enabled", "box_Multiple_AND_24.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_CLOMonitor_21_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_21
  self.MicrowaveGuy = l0.UserID
end
function export:f_box_CLOMonitor_21_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_21
  self.MicrowaveGuy = l0.UserID
end
function export:f_box_CLOMonitor_21_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_21
  self.MicrowaveGuy = l0.UserID
  l0 = self.box_HackableController_v2_50
  l0.HackableEntity = self.MicrowaveGuy
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.NViteEmployeeMale04",
    item = "",
    id = "4294988590"
  }
  l0 = self.box_CLOMonitor_21
  l1 = self.box_HackableController_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1905646436", "1905646436", "S14M060_GetCivilians_IDs", "box_CLOMonitor_21.OnUserInPlace", "box_HackableController_v2_50.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Set_Entity_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.AcidBathGuy_OUT = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|343625105", "343625105", "S14M060_GetCivilians_IDs", "box_Set_Entity_43.Out", "box_Multiple_AND_32.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_CLOMonitor_23_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_CLOMonitor_23
  l1 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2041994596", "2041994596", "S14M060_GetCivilians_IDs", "box_CLOMonitor_23.Enabled", "box_Multiple_AND_24.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_CLOMonitor_23_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.KitchenCivilian03 = l0.UserID
end
function export:f_box_CLOMonitor_23_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.KitchenCivilian03 = l0.UserID
end
function export:f_box_CLOMonitor_23_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.KitchenCivilian03 = l0.UserID
  l0 = self.box_HackableController_v2_49
  l0.HackableEntity = self.KitchenCivilian03
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.NViteEmployeeMale01",
    item = "",
    id = "4294988583"
  }
  l0 = self.box_CLOMonitor_23
  l1 = self.box_HackableController_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|2044083448", "2044083448", "S14M060_GetCivilians_IDs", "box_CLOMonitor_23.OnUserInPlace", "box_HackableController_v2_49.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Multiple_AND_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_25
  l0.CLO = "9223372050956213034"
  l0 = self.box_Multiple_AND_24
  l1 = self.box_CLOController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1515416311", "1515416311", "S14M060_GetCivilians_IDs", "box_Multiple_AND_24.Out", "box_CLOController_25.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Set_List_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.LivingRoomCivilians_OUT = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|267852326", "267852326", "S14M060_GetCivilians_IDs", "box_Set_List_13.Out", "box_Multiple_AND_32.Condition", clone, l0)
  l0:Condition(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|662948461", "662948461", "S14M060_GetCivilians_IDs", "box_Ordered_Output_53.Out", "box_CLOMonitor_55.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_54()
  l0 = self.box_CLOMonitor_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1341294260", "1341294260", "S14M060_GetCivilians_IDs", "box_Ordered_Output_53.Out", "box_CLOMonitor_54.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_58_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_60()
  l0 = self.box_HackableController_v2_58
  l1 = self.box_Multiple_AND_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|26553360", "26553360", "S14M060_GetCivilians_IDs", "box_HackableController_v2_58.ProfileAssigned", "box_Multiple_AND_60.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_OnceOnly_v3_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_11
  l0.Input = self.LivingRoomCivilians
  l0.Data[0] = self.LivingRoomCivilian_01
  l0.Data[1] = self.LivingRoomCivilian_03
  l0 = self.box_OnceOnly_v3_44
  l1 = self.box_ListWriter_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|250117460", "250117460", "S14M060_GetCivilians_IDs", "box_OnceOnly_v3_44.Out", "box_ListWriter_11.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_2()
  l0 = self.box_CLOMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|553274346", "553274346", "S14M060_GetCivilians_IDs", "box_Ordered_Output_17.Out", "box_CLOMonitor_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_3()
  l0 = self.box_CLOMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1506050026", "1506050026", "S14M060_GetCivilians_IDs", "box_Ordered_Output_17.Out", "box_CLOMonitor_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Set_Entity_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.MicrowaveGuy_OUT = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|569476708", "569476708", "S14M060_GetCivilians_IDs", "box_Set_Entity_41.Out", "box_Multiple_AND_32.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_OnceOnly_v3_29_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_30
  l0.Input = self.KitchenCivilians
  l0.Data[0] = self.AcidBathGuy
  l0.Data[1] = self.KitchenCivilian02
  l0.Data[2] = self.KitchenCivilian03
  l0.Data[3] = self.MicrowaveGuy
  l0 = self.box_OnceOnly_v3_29
  l1 = self.box_ListWriter_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|681800602", "681800602", "S14M060_GetCivilians_IDs", "box_OnceOnly_v3_29.Out", "box_ListWriter_30.Add", l0, l1)
  l1:Add()
end
function export:f_box_Multiple_AND_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1518858514"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_Multiple_AND_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1376003964", "1376003964", "S14M060_GetCivilians_IDs", "box_Multiple_AND_10.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_32_Out()
  local l0
  self = self._graph
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1268684089", "1268684089", "S14M060_GetCivilians_IDs", "box_Multiple_AND_32.Out", "Out_AllCiviliansRegistered", l0, self)
  self:Out_AllCiviliansRegistered()
end
function export:f_box_CLOMonitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_CLOMonitor_7
  l1 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|190213629", "190213629", "S14M060_GetCivilians_IDs", "box_CLOMonitor_7.Enabled", "box_Multiple_AND_24.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOMonitor_7_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.KitchenCivilian02 = l0.UserID
end
function export:f_box_CLOMonitor_7_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.KitchenCivilian02 = l0.UserID
end
function export:f_box_CLOMonitor_7_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.KitchenCivilian02 = l0.UserID
  l0 = self.box_HackableController_v2_48
  l0.HackableEntity = self.KitchenCivilian02
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.NViteEmployeeMale02",
    item = "",
    id = "4294988584"
  }
  l0 = self.box_CLOMonitor_7
  l1 = self.box_HackableController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1733942438", "1733942438", "S14M060_GetCivilians_IDs", "box_CLOMonitor_7.OnUserInPlace", "box_HackableController_v2_48.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_HackableController_v2_52_ProfileAssigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_HackableController_v2_52
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1634733919", "1634733919", "S14M060_GetCivilians_IDs", "box_HackableController_v2_52.ProfileAssigned", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Simple_Node_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_65
  l0.CLO = "9223372052576303046"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1461965038", "1461965038", "S14M060_GetCivilians_IDs", "box_Simple_Node_64.Out", "box_CLOController_65.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_2()
  l0 = self.box_CLOMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|117028947", "117028947", "S14M060_GetCivilians_IDs", "box_Ordered_Output_34.Out", "box_CLOMonitor_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_3()
  l0 = self.box_CLOMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|912795423", "912795423", "S14M060_GetCivilians_IDs", "box_Ordered_Output_34.Out", "box_CLOMonitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_OnceOnly_v3_40_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.MicrowaveGuy
  l0._graph = self
  l0._name = "box_Set_Entity_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1858625656"
  l0.Out = self.f_box_Set_Entity_41_Out
  l0 = self.box_OnceOnly_v3_40
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_GetCivilians_IDs|1727546840", "1727546840", "S14M060_GetCivilians_IDs", "box_OnceOnly_v3_40.Out", "box_Set_Entity_41.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:OnEnter_box_Multiple_AND_57()
end
function export:OnEnter_box_Multiple_AND_9()
end
function export:OnEnter_box_CLOMonitor_36()
  local l0
  l0 = self.box_CLOMonitor_36
  l0.CLO = "9223372050735872154"
end
function export:OnEnter_box_CLOMonitor_6()
  local l0
  l0 = self.box_CLOMonitor_6
  l0.CLO = "9223372050956213032"
end
function export:OnEnter_box_Multiple_AND_20()
end
function export:OnEnter_box_CLOMonitor_3()
  local l0
  l0 = self.box_CLOMonitor_3
  l0.CLO = "9223372050956213028"
end
function export:OnEnter_box_CLOMonitor_55()
  local l0
  l0 = self.box_CLOMonitor_55
  l0.CLO = "9223372050956212543"
end
function export:OnEnter_box_Multiple_AND_26()
end
function export:OnEnter_box_CLOMonitor_22()
  local l0
  l0 = self.box_CLOMonitor_22
  l0.CLO = "9223372050956213023"
end
function export:OnEnter_box_Multiple_AND_4()
end
function export:OnEnter_box_CLOMonitor_54()
  local l0
  l0 = self.box_CLOMonitor_54
  l0.CLO = "9223372050586490804"
end
function export:OnEnter_box_CLOMonitor_2()
  local l0
  l0 = self.box_CLOMonitor_2
  l0.CLO = "9223372051034191595"
end
function export:OnEnter_box_Multiple_AND_60()
end
function export:OnEnter_box_CLOMonitor_21()
  local l0
  l0 = self.box_CLOMonitor_21
  l0.CLO = "9223372051681129693"
end
function export:OnEnter_box_CLOMonitor_23()
  local l0
  l0 = self.box_CLOMonitor_23
  l0.CLO = "9223372051551300304"
end
function export:OnEnter_box_Multiple_AND_24()
end
function export:OnEnter_box_Multiple_AND_10()
end
function export:OnEnter_box_Multiple_AND_32()
end
function export:OnEnter_box_CLOMonitor_7()
  local l0
  l0 = self.box_CLOMonitor_7
  l0.CLO = "9223372050956213022"
end
function export:Out_AllCiviliansRegistered()
end
_compilerVersion = 4
