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
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.StandaloneLoader_1 = nil
  self[3] = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_3_Done
  self[10] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_10_Unloaded
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
  l0 = self[3]
  l0.SpawnPoint = "9223372048320953452"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_3_Done()
  local l0
  self = self._graph
  l0 = self[10]
  l0.LMALayerName = "SF_08_DusanPenthouse_LMA"
  l0:Unload()
end
function export:f_10_Unloaded()
  self = self._graph
  self:EndCine()
end
function export:EndCine()
end
_compilerVersion = 4
