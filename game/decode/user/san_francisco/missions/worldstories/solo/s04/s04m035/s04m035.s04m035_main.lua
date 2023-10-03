export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M035/s04_m035_cin_hackaton.S04_M035_CIN_Hackaton_Main.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Sitara = {}
  self.Josh = {}
  self.Wrench = {}
  self.HQ_list = {}
  self[9] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[9]
  l0._graph = self
  l0.GotNPCList = self.f_9_GotNPCList
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[8] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_8_Unloaded
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M035/s04_m035_cin_hackaton.S04_M035_CIN_Hackaton_Main.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  self[12] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[7]
  l0._graph = self
  self[13] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[13]
  l0._graph = self
  l0.GotNPCList = self.f_13_GotNPCList
  self[21] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[21]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_21_PostOut
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
  l0 = self[3]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[3]
  l0:Input(0)
end
function export:f_9_GotNPCList()
  local l0
  self = self._graph
  l0 = self[9]
  self.HQ_list = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_list
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_11_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S04M035_Main"
  l0:Load()
end
function export:f_5_Hidden()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[12]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_8_Unloaded()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Succeed()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_20_Shown()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LayerName = "S04M035_Main"
  l0:Unload()
end
function export:f_13_GotNPCList()
  local l0
  self = self._graph
  l0 = self[13]
  self.HQ_list = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_list
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_5_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_21_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_20_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_11_Shown()
  local l0
  self = self._graph
  l0 = self[21]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
_compilerVersion = 4
