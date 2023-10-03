export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
end
function export:Init(cbox)
  self._name = "ReplaceMe"
  self._elementPathId = "DocumentContainer|Gyms\\_Do_Not_Delete\\ReplaceMe.domino|@ReplaceMe"
  self.PlayerEntity = nil
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
_compilerVersion = 4
