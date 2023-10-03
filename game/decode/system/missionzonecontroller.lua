MissionZoneController = {}
function MissionZoneController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function MissionZoneController:Init(cbox)
end
function MissionZoneController:ShutDown()
end
function MissionZoneController:Enable()
  local Out = self.Out
  local Enabled = self.Enabled
  if LuaLibCore:VerifyDataInputEntity(self.MissionZone, "MissionZone") then
    self:SetProperties()
    MissionAreaActivation(self.MissionZone, 1)
    Enabled(self)
  end
  Out(self)
end
function MissionZoneController:Disable()
  local Out = self.Out
  local Disabled = self.Disabled
  if LuaLibCore:VerifyDataInputEntity(self.MissionZone, "MissionZone") then
    MissionAreaActivation(self.MissionZone, 0)
    Disabled(self)
  end
  Out(self)
end
function MissionZoneController:UpdateProperties()
  local PropertiesUpdated = self.PropertiesUpdated
  local Out = self.Out
  self:SetProperties()
  PropertiesUpdated(self)
  Out(self)
end
function MissionZoneController:SetProperties()
  if LuaLibCore:VerifyDataInputEntity(self.MissionZone, "MissionZone") then
    if self.Red == nil or self.Green == nil or self.Blue ~= nil then
    end
    if self.Alpha ~= nil then
    end
    if self.DrawType ~= nil then
      SetMissionAreaDrawType(self.MissionZone, self.DrawType)
    end
    if self.ShapeType ~= nil then
      SetMissionAreaShapeType(self.MissionZone, self.ShapeType)
    end
    if self.Radius ~= nil then
      SetMissionAreaRadius(self.MissionZone, self.Radius)
    end
    if self.MinimapContext ~= nil then
    end
    if self.ObjectiveEnteringArea ~= nil then
      SetMissionAreaObjectiveEnteringArea(self.MissionZone, self.ObjectiveEnteringArea.id)
    end
    if self.ObjectiveExitingArea ~= nil then
      SetMissionAreaObjectiveExitingArea(self.MissionZone, self.ObjectiveExitingArea.id)
    end
  end
end
export = MissionZoneController
MissionZoneController = nil
