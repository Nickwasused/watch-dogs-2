ListLength = {}
function ListLength:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListLength:Init(cbox)
end
function ListLength:ShutDown()
end
function ListLength:GetLength()
  if LuaLibCore:AssertNotNil(self.Input, "Input") then
    self.Length = #self.Input
    if #self.Input == 0 then
      self:Empty()
    else
      self:NotEmpty()
    end
  end
  return self:Out()
end
export = ListLength
ListLength = nil
