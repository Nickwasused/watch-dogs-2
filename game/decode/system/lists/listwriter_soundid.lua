ListWriterSoundID = {}
function ListWriterSoundID:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
  self.SoundID = {}
end
function ListWriterSoundID:Init(cbox)
end
function ListWriterSoundID:ShutDown()
end
function ListWriterSoundID:Add()
  self.CopyTable(self)
  for i = 1, self._DynamicAnchors.SoundID do
    if self.Index == nil or self.Index <= 0 or self.Index > #self.Target then
      self.Index = #self.Target + 1
    end
    if LuaLibCore:AssertNotNil(self.Target, "Target") and LuaLibCore:AssertNotNil(self.SoundID[i - 1], "SoundID" .. i) then
      table.insert(self.Target, self.Index - 1 + i, self.SoundID[i - 1])
    end
  end
  self:Added()
  self:Out()
end
function ListWriterSoundID:Remove()
  self.CopyTable(self)
  if LuaLibCore:AssertNotNil(self.Target, "Target") then
    if self._DynamicAnchors.SoundID == 0 then
      if self.Index == nil or 0 >= self.Index or self.Index > #self.Target then
        self.Index = #self.Target
      end
      table.remove(self.Target, self.Index)
    else
      for i = 1, self._DynamicAnchors.SoundID do
        if self.Index == nil then
          j = 1
          while j <= #self.Target do
            while self.SoundID[i - 1] == self.Target[j] do
              table.remove(self.Target, j)
            end
            j = j + 1
          end
        else
          if 0 >= self.Index or self.Index > #self.Target then
            self.Index = #self.Target
          end
          if self.Target[self.Index] == self.SoundID[i - 1] then
            table.remove(self.Target, self.Index)
            break
          end
        end
      end
    end
    self:Removed()
    self:Out()
  end
end
function ListWriterSoundID:CopyTable()
  self.Target = {}
  for i, x in pairs(self.Input) do
    self.Target[i] = x
  end
end
export = ListWriterSoundID
ListWriterSoundID = nil
