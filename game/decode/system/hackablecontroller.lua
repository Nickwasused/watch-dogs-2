HackableController = {}
function HackableController:Create(cbox)
end
function HackableController:Init(cbox)
  self.ProfileLinkedToHack = self.ProfileLinkedToHack or 0
end
function HackableController:ShutDown()
end
function HackableController:EnableHack()
  if self.HackableEntity ~= nil then
    SetHackable(self.HackableEntity, 1)
    if self.OasisProfilerInfo ~= nil then
      SetProfilerInfoId(self.HackableEntity, self.OasisProfilerInfo.id)
    elseif self.ProfilerInfo ~= nil then
      System:Warning("HackableController:EnableHack: ERROR!!  Invalid Parameter : OasisProfilerInfo is nil! You should use OasisProfilerInfo and not ProfilerInfo")
    end
    if self.ProfileLinkedToHack == 1 then
      SetProfilingEnabled(self.HackableEntity, 1)
    end
    self:Enabled()
  else
    System:Warning("HackableController: ERROR!!  please specify required parameters")
  end
end
function HackableController:DisableHack()
  if self.HackableEntity ~= nil then
    SetHackable(self.HackableEntity, 0)
    self:Disabled()
    if self.ProfileLinkedToHack == 1 then
      SetProfilingEnabled(self.HackableEntity, 0)
    end
  else
    System:Warning("HackableController: ERROR!!  please specify required parameters")
  end
end
function HackableController:AssignProfile()
  if self.HackableEntity ~= nil then
    if self.OasisProfilerInfo ~= nil then
      SetProfilerInfoId(self.HackableEntity, self.OasisProfilerInfo.id)
    elseif self.ProfilerInfo ~= nil then
      System:Warning("HackableController:AssignProfile: ERROR!!  Invalid Parameter : OasisProfilerInfo is nil! You should use OasisProfilerInfo and not ProfilerInfo")
    end
    self:ProfileAssigned()
  else
    System:Warning("HackableController: ERROR!!  please specify required parameters")
  end
end
function HackableController:ResetProfile()
  if self.HackableEntity ~= nil then
    ResetProfilerInfoId(self.HackableEntity)
    self:ProfileReset()
  else
    System:Warning("HackableController: ERROR!!  please specify required parameters")
  end
end
function HackableController:EnableProfiling()
  if self.HackableEntity ~= nil then
    if self.OasisProfilerInfo ~= nil then
      SetProfilerInfoId(self.HackableEntity, self.OasisProfilerInfo.id)
    elseif self.ProfilerInfo ~= nil then
      System:Warning("HackableController:EnableProfiling: ERROR!!  Invalid Parameter : OasisProfilerInfo is nil! You should use OasisProfilerInfo and not ProfilerInfo")
    end
    SetProfilingEnabled(self.HackableEntity, 1)
    self:ProfilingEnabled()
  else
    System:Warning("HackableController: ERROR!!  please specify required parameters")
  end
end
function HackableController:DisableProfiling()
  if self.HackableEntity ~= nil then
    SetProfilingEnabled(self.HackableEntity, 0)
    self:ProfilingDisabled()
  else
    System:Warning("HackableController: ERROR!!  please specify required parameters")
  end
end
function HackableController:SetHackOccludable()
  if self.HackableEntity ~= nil and self.Occludable ~= nil then
    SetHackOccludable(self.HackableEntity, self.Occludable)
    self:OccludableSet()
  end
end
function HackableController:ForceHack()
  self.Hacker = self.Hacker or GetLocalPlayerEntityId()
  if self.HackableEntity ~= nil then
    ForceHackIngredient(self.HackableEntity, self.Hacker)
  end
  self:HackForced()
end
function HackableController:SetNoText()
  if self.HackableEntity ~= nil then
    SetHackableNoText(self.HackableEntity)
  end
  self:NoTextSet()
end
function HackableController:SetOverrideHackingText()
  if self.HackableEntity ~= nil and self.OasisHackingText ~= nil then
    SetHackableOverrideHackingText(self.HackableEntity, self.OasisHackingText.id)
  end
  self:OverrideHackingTextSet()
end
export = HackableController
HackableController = nil
