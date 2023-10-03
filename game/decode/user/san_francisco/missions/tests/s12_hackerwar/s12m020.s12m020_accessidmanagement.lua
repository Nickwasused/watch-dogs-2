export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AccessIdController.lua")
end
function export:Init(cbox)
  local l0
  self.Blocked = DummyFunction
  self.Unblocked = DummyFunction
  self[5] = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self[5]
  l0._graph = self
  l0.AddedDisabledAccessId = self.f_5_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_5_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[2] = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self[2]
  l0._graph = self
  l0.AddedDisabledAccessId = self.f_2_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_2_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[1] = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self[1]
  l0._graph = self
  l0.AddedDisabledAccessId = self.f_1_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_1_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[4] = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self[4]
  l0._graph = self
  l0.AddedDisabledAccessId = self.f_4_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_4_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[3] = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self[3]
  l0._graph = self
  l0.AddedDisabledAccessId = self.f_3_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_3_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Block()
  local l0
  self:en_1()
  l0 = self[1]
  l0:BlockAccessId()
end
function export:Unblock()
  local l0
  self:en_1()
  l0 = self[1]
  l0:UnblockAccessId()
end
function export:f_5_AddedDisabledAccessId()
  self = self._graph
  self:Blocked()
end
function export:f_5_RemovedDisabledAccessId()
  self = self._graph
  self:Unblocked()
end
function export:f_2_AddedDisabledAccessId()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:BlockAccessId()
end
function export:f_2_RemovedDisabledAccessId()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:UnblockAccessId()
end
function export:f_1_AddedDisabledAccessId()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:BlockAccessId()
end
function export:f_1_RemovedDisabledAccessId()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:UnblockAccessId()
end
function export:f_4_AddedDisabledAccessId()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:BlockAccessId()
end
function export:f_4_RemovedDisabledAccessId()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:UnblockAccessId()
end
function export:f_3_AddedDisabledAccessId()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:BlockAccessId()
end
function export:f_3_RemovedDisabledAccessId()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:UnblockAccessId()
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.AccessId = "AccessId.9223372048779317208"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.AccessId = "AccessId.9223372048779317222"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.AccessId = "AccessId.9223372048779317221"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.AccessId = "AccessId.9223372048779317219"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.AccessId = "AccessId.9223372048779317209"
end
function export:Blocked()
end
function export:Unblocked()
end
_compilerVersion = 4
