export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlayerPhoneMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.vehiclePlayer = nil
  self.Miranda = nil
  self.PlayerVehicle = nil
  self._9223372046876295800 = nil
  self.TalkStarted = 0
  self.MirandaEntity = nil
  self[4] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
  self[8] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.MessageCompleted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_9_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = DummyFunction
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = self.f_9_OnAppInstalled
  self[7] = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Has = self.f_7_Has
  l0.HasNOT = self.f_7_HasNOT
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = DummyFunction
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[1]
  l0._graph = self
  l0.NewBeatStarted = self.f_1_NewBeatStarted
  self[6] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_6_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[3]
  l0._graph = self
  l0.NewBeatStarted = self.f_3_NewBeatStarted
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[2]
  l0._graph = self
  l0.NewBeatStarted = self.f_2_NewBeatStarted
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
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_2()
  l0 = self[2]
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:en_3()
  l0 = self[3]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:StartNewBeat()
end
function export:f_8_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_9_OnAppInstalled()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_7_Has()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_7_HasNOT()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective010A",
    item = "Notification",
    id = "355778"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:StartNewBeat()
end
function export:f_1_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[1]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[7]
  l0.App = "UIAppCatalogDB.9223372046454257059"
  l0:HasApp()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:StartNewBeat()
end
function export:f_6_OnMissionSucceeded()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_3_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[3]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[4]
  l0:Succeed()
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_2_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective010B",
    item = "Notification",
    id = "359058"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.App = "UIAppCatalogDB.9223372046454257059"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372073068887396"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Mission = "MissionList.9223372048769206856"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.ProgressionLayer = "ProgressionLayers.9223372073068887396"
  l0.Checkpoint = "CheckPoint_2"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ProgressionLayer = "ProgressionLayers.9223372073068887396"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
