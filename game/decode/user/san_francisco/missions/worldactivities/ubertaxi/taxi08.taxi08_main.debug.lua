export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
end
function export:Init(cbox)
  self._name = "Taxi08_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi08.domino|@Taxi08_Main"
  self.PlayerEntity = nil
  self.ClientCLO = "9223372046858693747"
  self.PlayerVehicle = nil
  self.Client = nil
  self.Mission = "MissionList.9223372046858837782"
  self.CurrentDestination = 0
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
_compilerVersion = 4
