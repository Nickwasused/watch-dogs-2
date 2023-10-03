ListPrettyPrint = {}
function ListPrettyPrint:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListPrettyPrint:In()
  if LuaLibCore:AssertNotNil(self.Input, "Input") then
    if self.Duration == nil then
      self.Duration = 5
    end
    local textToPrint = ""
    for k, v in pairs(self.Input) do
      textToPrint = k .. " " .. (GetEntityName(v) or tostring(v)) .. " "
      DrawTextToScreen(textToPrint, self.Duration, "white")
    end
  end
  return self:Out()
end
export = ListPrettyPrint
ListPrettyPrint = nil
