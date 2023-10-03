export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_CIN_DusanPenthouseOutro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_dusanpenthouseoutro.domino|@S17M010_CIN_DusanPenthouseOutro_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.StandaloneLoader_1 = nil
  self.box_TeleportPlayerInsideHma_3 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_3
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_dusanpenthouseoutro.domino|@S17M010_CIN_DusanPenthouseOutro_Main|1071956856"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_3_Done
  self.box_LMA_Layer_Controller_10 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_10
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_dusanpenthouseoutro.domino|@S17M010_CIN_DusanPenthouseOutro_Main|1244055014"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_10_Unloaded
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
  l0 = self.box_TeleportPlayerInsideHma_3
  l0.SpawnPoint = "9223372048320953452"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_dusanpenthouseoutro.domino|@S17M010_CIN_DusanPenthouseOutro_Main|1531056997", "1531056997", "S17M010_CIN_DusanPenthouseOutro_Main", "In", "box_TeleportPlayerInsideHma_3.In", self, l0)
  l0:In()
end
function export:f_box_TeleportPlayerInsideHma_3_Done()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_10
  l0.LMALayerName = "SF_08_DusanPenthouse_LMA"
  l0 = self.box_TeleportPlayerInsideHma_3
  l1 = self.box_LMA_Layer_Controller_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_dusanpenthouseoutro.domino|@S17M010_CIN_DusanPenthouseOutro_Main|611916319", "611916319", "S17M010_CIN_DusanPenthouseOutro_Main", "box_TeleportPlayerInsideHma_3.Done", "box_LMA_Layer_Controller_10.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_LMA_Layer_Controller_10_Unloaded()
  local l0
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_dusanpenthouseoutro.domino|@S17M010_CIN_DusanPenthouseOutro_Main|1495031161", "1495031161", "S17M010_CIN_DusanPenthouseOutro_Main", "box_LMA_Layer_Controller_10.Unloaded", "EndCine", l0, self)
  self:EndCine()
end
function export:EndCine()
end
_compilerVersion = 4
