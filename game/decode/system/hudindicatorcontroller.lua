HudIndicatorController = {}
function HudIndicatorController:Create(cbox)
end
function HudIndicatorController:Init(cbox)
end
function HudIndicatorController:ShutDown()
end
function HudIndicatorController:Show()
  local Shown = self.Shown
  if self.Entity ~= nil then
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil then
      IndicatorSetIsVisible(self.Player, self.Entity, 1)
    end
    if self.Player ~= nil then
      if self.LocText ~= nil then
        IndicatorSetLocNameId(self.Player, self.Entity, self.LocText.id)
      elseif self.Text ~= nil then
        IndicatorSetName(self.Player, self.Entity, self.Text)
      end
    end
    if self.Player ~= nil and self.R ~= nil and self.G ~= nil and self.B ~= nil then
      IndicatorSetColor(self.Player, self.Entity, self.R, self.G, self.B)
    end
  end
  Shown(self)
end
function HudIndicatorController:Hide()
  local Hidden = self.Hidden
  if self.Entity ~= nil then
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil then
      IndicatorSetIsVisible(self.Player, self.Entity, 0)
    end
  end
  Hidden(self)
end
function HudIndicatorController:SetText()
  local TextSet = self.TextSet
  if self.Entity ~= nil and self.Text ~= nil then
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil then
      if self.LocText ~= nil then
        IndicatorSetLocNameId(self.Player, self.Entity, self.LocText.id)
      elseif self.Text ~= nil then
        IndicatorSetName(self.Player, self.Entity, self.Text)
      end
    end
    if self.Player ~= nil and self.R ~= nil and self.G ~= nil and self.B ~= nil then
      IndicatorSetColor(self.Player, self.Entity, self.R, self.G, self.B)
    end
  end
  TextSet(self)
end
function HudIndicatorController:SetColor()
  local ColorSet = self.ColorSet
  if self.Entity ~= nil then
    if self.Player == nil then
      self.Player = GetLocalPlayerId()
    end
    if self.Player ~= nil and self.R ~= nil and self.G ~= nil and self.B ~= nil then
      IndicatorSetColor(self.Player, self.Entity, self.R, self.G, self.B)
    end
  end
  ColorSet(self)
end
export = HudIndicatorController
HudIndicatorController = nil
