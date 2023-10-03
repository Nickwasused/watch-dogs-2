export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
end
function export:Init(cbox)
  self._name = "L36M020_IOP_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Activation"
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
_compilerVersion = 4
