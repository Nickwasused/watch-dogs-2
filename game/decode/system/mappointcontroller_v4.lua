MapPointController = {}
function MapPointController:Create(cbox)
end
function MapPointController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function MapPointController:ShutDown()
end
function MapPointController:Show()
  local Shown = self.Shown
  if self.MapPoint ~= nil then
    if self.LocMapMarkerTitle ~= nil and tonumber(self.LocMapMarkerTitle.id) ~= nil and self.LocMapMarkerDescription ~= nil and tonumber(self.LocMapMarkerDescription.id) ~= nil then
      SetMapMarkerPopUpDataWithMissionId(self.MapPoint, self.LocMapMarkerTitle.id, self.LocMapMarkerDescription.id, self.missionId)
    end
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil then
      IndicatorSetIsVisible(self.Player, self.MapPoint, 1)
      if self.LocText ~= nil and tonumber(self.LocText.id) ~= nil then
        IndicatorSetLocNameId(self.Player, self.MapPoint, self.LocText.id)
      end
    end
  end
  Shown(self)
end
function MapPointController:Hide()
  local Hidden = self.Hidden
  if self.MapPoint ~= nil then
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil then
      IndicatorSetIsVisible(self.Player, self.MapPoint, 0)
    end
  end
  Hidden(self)
end
function MapPointController:SetText()
  local TextSet = self.TextSet
  if self.MapPoint ~= nil then
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil and self.LocText ~= nil and tonumber(self.LocText.id) ~= nil then
      IndicatorSetLocNameId(self.Player, self.MapPoint, self.LocText.id)
    end
  end
  TextSet(self)
end
function MapPointController:HideText()
  local TextHidden = self.TextHidden
  if self.MapPoint ~= nil then
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil then
      local param1 = "-1"
      IndicatorSetLocNameId(self.Player, self.MapPoint, param1)
    end
  end
  TextHidden(self)
end
export = MapPointController
MapPointController = nil
