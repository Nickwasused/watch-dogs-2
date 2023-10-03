ListForEachSoundID = {}
function ListForEachSoundID:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListForEachSoundID:Init(cbox)
  self.index = 1
end
function ListForEachSoundID:ShutDown()
end
function ListForEachSoundID:Start()
  self:Started()
  isStopped = 0
  if LuaLibCore:AssertNotNil(self.List, "List") then
    for i, v in ipairs(self.List) do
      if isStopped == 1 then
        return
      end
      self.SoundID = v
      self.Index = i
      self:ForEach()
    end
  end
  return self:EndOfList()
end
function ListForEachSoundID:Stop()
  isStopped = 1
  return self:Stopped()
end
function ListForEachSoundID:GetNext()
  if LuaLibCore:AssertNotNil(self.List, "List") then
    self.Loop = self.Loop or 0
    self.SoundID = self.List[self.index]
    self.Index = self.index
    self:GotNext()
    if self.index >= #self.List then
      self.index = #self.List
      self.Index = self.index
      self:EndOfList()
      if self.Loop == 1 then
        self.index = 1
        return
      end
    end
    self.index = self.index + 1
  end
end
export = ListForEachSoundID
ListForEachSoundID = nil
