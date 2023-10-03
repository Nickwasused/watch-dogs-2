ListReaderSoundID = {}
function ListReaderSoundID:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListReaderSoundID:Init(cbox)
  self.CursorPos = 0
  self.AssertOnNextPass = nil
end
function ListReaderSoundID:ShutDown()
  self.CursorPos = nil
  self.AssertOnNextPass = nil
end
function ListReaderSoundID:Read()
  if LuaLibCore:AssertNotNil(self.Input, "Input") then
    if self.Index == nil then
      if self.CursorPos == nil then
        self.CursorPos = 0
      end
      self.CursorPos = self.CursorPos + 1
      if self.CursorPos > #self.Input then
        if self.Loop == 1 then
          self.CursorPos = 1
        else
          if self.AssertOnNextPass == nil then
            self.AssertOnNextPass = 1
          else
            LuaLibCore:DataError("Read", "Although the list reader loop is false, the script still tries to read beyond the length of the list. This is suspicious script design and should be considered.")
          end
          return
        end
      end
      self.SoundID = self.Input[self.CursorPos]
      if self.CursorPos == #self.Input then
        self:EndOfList()
      end
    elseif self.Index <= 0 or self.Index > #self.Input then
      LuaLibCore:DataError("Index", "Index is out of bound.")
    else
      self.CursorPos = self.Index
      self.SoundID = self.Input[self.Index]
    end
  end
  return self:Out()
end
function ListReaderSoundID:ResetRead()
  self.CursorPos = 0
  self.AssertOnNextPass = nil
  self:Read()
end
export = ListReaderSoundID
ListReaderSoundID = nil
