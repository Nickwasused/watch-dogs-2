ListForEach = {}
function ListForEach:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListForEach:Init(cbox)
  self.index = 0
  self.isStopped = 0
end
function ListForEach:ShutDown()
end
function ListForEach:Start()
  self:Started()
  self.isStopped = 0
  if LuaLibCore:AssertNotNil(self.List, "List") then
    for i, v in ipairs(self.List) do
      if self.isStopped == 1 then
        return
      end
      self.Data = v
      self.Index = i
      self:ForEach()
    end
  end
  self:EndOfList()
end
function ListForEach:Stop()
  self.isStopped = 1
  return self:Stopped()
end
function ListForEach:GetNext()
  if LuaLibCore:AssertNotNil(self.List, "List") then
    if self.index == #self.List then
      self:EndOfList()
      if self.Loop == 1 then
        self.index = 0
      else
        return
      end
    end
    self.index = self.index + 1
    self.Loop = self.Loop or 0
    self.Data = self.List[self.index]
    self.Index = self.index
    self:GotNext()
  end
end
export = ListForEach
ListForEach = nil
