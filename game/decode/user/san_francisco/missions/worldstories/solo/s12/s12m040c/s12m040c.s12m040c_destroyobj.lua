export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BreakableEntityController.lua")
  cbox:RegisterBox("domino/System/BreakableEntityMonitor_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/2177377099.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.AllBroken = DummyFunction
  self.BreakingATMEntity = nil
  self.FirstBreakingATMEntity = nil
  self[1] = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = self.f_1_Disabled
  l0.Breaking = self.f_1_Breaking
  l0.AllBroken = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[4]
  l0._graph = self
  l0.Shown = self.f_4_Shown
  l0.Hidden = self.f_4_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[12] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_12_AnimationFinished
  self[7] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_7_Closed
  self[9] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = self.f_9_Enabled
  l0.Disabled = DummyFunction
  self[13] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_13_Disabled
  self[3] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Stopped = self.f_3_Stopped
  l0.ForEach = self.f_3_ForEach
  l0.GotNext = self.f_3_GotNext
  l0.EndOfList = self.f_3_EndOfList
  l0.GotFirst = DummyFunction
  self[8] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  self[10] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = DummyFunction
  self[5] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_5_Out
  l0.ResetOut = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_14_Out
  self[16] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_16_Started
  l0.Finished = DummyFunction
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
  l0.EntityList = self.ATMGroupList
  l0:Enable()
end
function export:f_1_Breaking()
  local l0
  self = self._graph
  l0 = self[1]
  self.FirstBreakingATMEntity = l0.BrokenEntity
  self:en_1()
  l0:Disable()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.List = self.ATMGroupList
  l0:Start()
end
function export:f_1_Enabled()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Condition(0)
end
function export:f_4_Hidden()
  local l0
  self = self._graph
  l0 = self[8]
  l0.EntityList = self.ATMGroupList
  l0:Disable()
end
function export:f_4_Shown()
  self = self._graph
  self:Started()
end
function export:f_12_AnimationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.ParticleGroupList
  l0._graph = self
  l0.Started = self.f_15_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Condition(1)
end
function export:f_6_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BreakableEntityController.lua")]
  l0.BreakableEntity = self.BreakingATMEntity
  l0._graph = self
  l0.Broken = DummyFunction
  l0:Break()
end
function export:f_15_Started()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Entity = self.ObjectiveMapIcon
  l0.SoundId = "soundbinary/2177377099.bnk"
  l0:Play()
end
function export:f_7_Closed()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(0)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Close()
end
function export:f_9_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Entity = self.YInteractObject
  l0:Enable()
end
function export:f_13_Disabled()
  self = self._graph
  self:AllBroken()
end
function export:f_3_EndOfList()
  local l0
  self = self._graph
  l0 = self[3]
  self.BreakingATMEntity = l0.Data
  l0 = self[7]
  l0:In()
end
function export:f_3_ForEach()
  local l0
  self = self._graph
  l0 = self[3]
  self.BreakingATMEntity = l0.Data
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.BreakingATMEntity
  l0.Entity2 = self.FirstBreakingATMEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = DummyFunction
  l0.NotEqual = self.f_6_NotEqual
  l0:In()
end
function export:f_3_GotNext()
  local l0
  self = self._graph
  l0 = self[3]
  self.BreakingATMEntity = l0.Data
end
function export:f_3_Started()
  local l0
  self = self._graph
  l0 = self[3]
  self.BreakingATMEntity = l0.Data
end
function export:f_3_Stopped()
  local l0
  self = self._graph
  l0 = self[3]
  self.BreakingATMEntity = l0.Data
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Entity = self.YInteractObject
  l0:Disable()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Hide()
end
function export:f_14_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Show()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.InteractionScriptEntity = self.YInteractObject
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_16_Started()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(1)
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.BreakableEntitiesList = self.ATMGroupList
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.MapPoint = self.ObjectiveMapIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
end
function export:Started()
end
function export:Stopped()
end
function export:AllBroken()
end
_compilerVersion = 4
