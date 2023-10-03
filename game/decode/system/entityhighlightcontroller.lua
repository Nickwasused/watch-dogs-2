EntityHighlightController = {}
function EntityHighlightController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function EntityHighlightController:Init(cbox)
end
function EntityHighlightController:ShutDown()
end
function EntityHighlightController:GetColorID(color)
  if color == "White" then
    return 0
  elseif color == "Yellow" then
    return 1
  elseif color == "Red" then
    return 2
  elseif color == "Blue" then
    return 3
  elseif color == "Green" then
    return 4
  elseif color == "Purple" then
    return 5
  end
  return 0
end
function EntityHighlightController:Enable()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    StartEntityHighlight(self.Entity, self:GetColorID(self.Color))
  end
  return self:Enabled()
end
function EntityHighlightController:Disable()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    StopEntityHighlight(self.Entity)
  end
  return self:Disabled()
end
export = EntityHighlightController
EntityHighlightController = nil
