PrepareEngageMonitor = {}
function PrepareEngageMonitor:Create(cbox)
end
function PrepareEngageMonitor:Init(cbox)
  self.MissionArea = GetInvalidEntityId()
  self.callidEngaged = nil
  self.HoldTime = 2.5
end
function PrepareEngageMonitor:ShutDown()
  DisablePrepareEngage()
  self._type.UnregisterCallback(self)
end
function PrepareEngageMonitor:Enable()
  local instance = CScriptCallbackSystem_GetInstance()
  self.TextDelay = self.TextDelay or 0
  local insideAreaText = "511489"
  if self.InsideAreaText ~= nil then
    insideAreaText = self.InsideAreaText.id
  end
  local outsideAreaText = "652716"
  if self.OutOfAreaText ~= nil then
    outsideAreaText = self.OutOfAreaText.id
  end
  local progressBarText = "317607"
  if self.ProgressBarText ~= nil then
    progressBarText = self.ProgressBarText.id
  end
  if self.MissionArea == nil then
    self.MissionArea = GetInvalidEntityId()
  end
  if self.callidEngaged == nil then
    self.callidEngaged = instance:RegisterNoEntityCallback("PrepareEngageActivated", self, "Event_OnEngaged")
  end
  EnablePrepareEngage_v2(self.MissionArea, insideAreaText, outsideAreaText, progressBarText, self.HoldTime, self.TextDelay)
  self:Enabled()
end
function PrepareEngageMonitor:Event_OnEngaged()
  self:Engaged()
end
function PrepareEngageMonitor:UnregisterCallback()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidEngaged ~= nil then
    instance:RemoveNoEntityCallback("PrepareEngageActivated", self.callidEngaged)
  end
end
function PrepareEngageMonitor:Disable()
  DisablePrepareEngage()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
export = PrepareEngageMonitor
PrepareEngageMonitor = nil
