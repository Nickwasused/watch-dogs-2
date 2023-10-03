export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Laptop_L25M010 = "9223372050409555933"
  self.NotActivatedByDefault_0 = "9223372050409555941"
  self[4] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = self.f_4_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_4_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_3_MessageCompleted
  self[5] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_5_Hidden
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
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Hide()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Show()
end
function export:f_4_HackSuccess()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.Objective = {
    section = "",
    item = "",
    id = "550060"
  }
  l0:ShowNewObjective()
end
function export:f_3_MessageCompleted()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_5_Hidden()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Succeed()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.HackableEntity = self.Laptop_L25M010
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MapPoint = self.NotActivatedByDefault_0
end
_compilerVersion = 4
