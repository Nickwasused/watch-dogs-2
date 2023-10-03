ShowOrHideAllUI = {}
function ShowOrHideAllUI:Create(cbox)
end
function ShowOrHideAllUI:Init(cbox)
end
function ShowOrHideAllUI:ShutDown()
end
function ShowOrHideAllUI:Show()
  local Out = self.Out
  local Shown = self.Shown
  SendShowOrHideAllUIEvent(1)
  Out(self)
  Shown(self)
end
function ShowOrHideAllUI:Hide()
  local Out = self.Out
  local Hidden = self.Hidden
  SendShowOrHideAllUIEvent(0)
  Out(self)
  Hidden(self)
end
export = ShowOrHideAllUI
ShowOrHideAllUI = nil
