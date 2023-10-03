export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOMonitor.lua")
  cbox:RegisterBox("Domino/System/DiscoveryController.lua")
  cbox:RegisterBox("Domino/System/IntelController.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PhotoDetectionMonitor.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.PhotoTaken = DummyFunction
  self.Target = nil
  self[1] = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = self.f_1_Disabled
  l0.GotUser = self.f_1_GotUser
  l0.NotGotUser = self.f_1_NotGotUser
  l0.OnUserInPlace = self.f_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = self.f_1_OnUserUnspawn
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[10] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[10]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_10_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_8_HasNOT
  self[6] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_6_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_4_RewardsExecuted
  self[2] = cbox:CreateBox("Domino/System/PhotoDetectionMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ValidPhotoTaken = self.f_2_ValidPhotoTaken
  l0.TargetInView = DummyFunction
  l0.TargetNotInView = DummyFunction
  self[9] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[9]
  l0._graph = self
  l0.Shown = self.f_9_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[17] = cbox:CreateBox("Domino/System/IntelController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_17_Disabled
  self[16] = cbox:CreateBox("Domino/System/IntelController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = self.f_16_Enabled
  l0.Disabled = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[11]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_11_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_15_Out
  l0.ResetOut = self.f_15_ResetOut
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = self[9]
  l0.MapPoint = self.MapPoint
  l0:Show()
end
function export:Stop()
  local l0
  l0 = self[11]
  l0.MapPoint = self.MapPoint
  l0:Hide()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_14_Out_1()
  self = self._graph
  self:Stopped()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_1_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:GetUser()
end
function export:f_1_GotUser()
  local l0
  self = self._graph
  l0 = self[1]
  self.Target = l0.UserID
  l0 = self[15]
  l0:In(0)
end
function export:f_1_NotGotUser()
  local l0
  self = self._graph
  l0 = self[1]
  self.Target = l0.UserID
end
function export:f_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[1]
  self.Target = l0.UserID
  l0 = self[15]
  l0:In(1)
end
function export:f_1_OnUserUnspawn()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Reset()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_10_Hidden()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Entity = self.Target
  l0:Disable()
end
function export:f_8_HasNOT()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_6_TagIsOwned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_4_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[10]
  l0.MapPoint = self.MapPoint
  l0:Hide()
end
function export:f_2_ValidPhotoTaken()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DiscoveryController.lua")]
  l0.Entity = nil
  l0.CLO = self.CLO
  l0._graph = self
  l0.DiscoveryStopped = self.f_18_DiscoveryStopped
  l0:StopDiscovery()
end
function export:f_18_DiscoveryStopped()
  local l0
  self = self._graph
  l0 = self[4]
  l0.ItemDB = self.ProgressionTagItem
  l0:ExecuteRewards()
end
function export:f_9_Shown()
  local l0
  self = self._graph
  l0 = self[8]
  l0.ProgressionTag = self.ProgressionTag
  l0:HasProgressionTag()
end
function export:f_3_Out_0()
  self = self._graph
  self:Started()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_17_Disabled()
  self = self._graph
  self:PhotoTaken()
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_16_Enabled()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Entity = self.Target
  l0:Enable()
end
function export:f_15_ResetOut()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.CLO = self.CLO
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.ProgressionTag = self.ProgressionTag
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.TargetEntity = self.Target
  l0.TargetInViewText = self.TargetInViewText
  l0.PhotoType = self.PhotoType
end
function export:Stopped()
end
function export:Started()
end
function export:PhotoTaken()
end
_compilerVersion = 4
