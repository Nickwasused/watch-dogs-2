PlayerPhoneMonitor = {}
function PlayerPhoneMonitor:Create(cbox)
end
function PlayerPhoneMonitor:Init(cbox)
  self.callidPhoneOpened = nil
  self.callidPhoneClosed = nil
  self.callidAppOpened = nil
  self.callidAppClosed = nil
  self.callidAppInstalled = nil
  self.appOpened = 0
end
function PlayerPhoneMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PlayerPhoneMonitor:Event_PhoneOpened()
  self:OnPhoneOpened()
end
function PlayerPhoneMonitor:Event_PhoneClosed()
  if self.appOpened == 0 then
    self:OnPhoneClosed()
  end
end
function PlayerPhoneMonitor:Event_AppOpened(appId)
  self.appOpened = 1
  if SmartphoneGetAppId(self.App) == appId then
    self:OnAppOpened()
  end
end
function PlayerPhoneMonitor:Event_AppClosed(appId)
  self.appOpened = 0
  if SmartphoneGetAppId(self.App) == appId then
    self:OnAppClosed()
  end
end
function PlayerPhoneMonitor:Event_AppInstalled(appId)
  if SmartphoneGetAppId(self.App) == appId then
    self:OnAppInstalled()
  end
end
function PlayerPhoneMonitor:Enable()
  self.PlayerID = self.PlayerID or GetLocalPlayerId()
  instance = CScriptCallbackSystem_GetInstance()
  if LuaLibCore:IsPlugged(self, "OnPhoneOpened") and self.callidPhoneOpened == nil then
    self.callidPhoneOpened = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_PhoneOpened", "OnPhoneOpened")
  end
  if (LuaLibCore:IsPlugged(self, "OnPhoneClosed") and self.callidPhoneClosed) == nil then
    self.callidPhoneClosed = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_PhoneClosed", "OnPhoneClosed")
  end
  if self.App ~= nil then
    if self.callidAppOpened == nil then
      self.callidAppOpened = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_AppOpened", "OnAppOpened")
    end
    if self.callidAppClosed == nil then
      self.callidAppClosed = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_AppClosed", "OnAppClosed")
    end
    if LuaLibCore:IsPlugged(self, "OnAppInstalled") and self.callidAppInstalled == nil then
      self.callidAppInstalled = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_AppInstalled", "OnAppInstalled")
    end
  end
  if self.CheckNow == 1 then
    if self.App ~= nil then
      self:CheckAppOpen()
    end
    self:CheckPhoneOpen()
  end
  self:Enabled()
end
function PlayerPhoneMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function PlayerPhoneMonitor:HasApp()
  if self.App ~= nil then
    if SmartphoneIsAppInstalled(self.App) == 1 then
      self:Has()
    else
      self:HasNOT()
    end
  end
end
function PlayerPhoneMonitor:CheckPhoneOpen()
  if SmartphoneIsOpened() == 1 then
    self:OnPhoneOpened()
  else
    self:OnPhoneClosed()
  end
end
function PlayerPhoneMonitor:CheckAppOpen()
  if SmartphoneIsAppOpened(self.App) == 1 then
    self:OnAppOpened()
  else
    self:OnAppClosed()
  end
end
function PlayerPhoneMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.PlayerID ~= nil then
    if self.callidPhoneOpened ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidPhoneOpened)
      self.callidPhoneOpened = nil
    end
    if self.callidPhoneClosed ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidPhoneClosed)
      self.callidPhoneClosed = nil
    end
    if self.callidAppOpened ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidAppOpened)
      self.callidAppOpened = nil
    end
    if self.callidAppClosed ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidAppClosed)
      self.callidAppClosed = nil
    end
    if self.callidAppInstalled ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidAppInstalled)
      self.callidAppInstalled = nil
    end
  end
end
export = PlayerPhoneMonitor
PlayerPhoneMonitor = nil
