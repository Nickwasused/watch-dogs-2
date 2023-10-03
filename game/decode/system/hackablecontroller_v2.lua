HackableController = {}
function HackableController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function HackableController:Init(cbox)
  self.ProfileLinkedToHack = self.ProfileLinkedToHack or 0
end
function HackableController:ShutDown()
end
function HackableController:EnableHack()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      self:SetHack(v, 1)
    end
  end
  self:Enabled()
end
function HackableController:DisableHack()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      self:SetHack(v, 0)
    end
  end
  self:Disabled()
end
function HackableController:SetHack(hackableEntity, state)
  SetHackable(hackableEntity, state)
  self:SetProfiler(hackableEntity)
  if self.ProfileLinkedToHack == 1 then
    SetProfilingEnabled(hackableEntity, state)
  end
end
function HackableController:SetProfiler(hackableEntity)
  if self.OasisProfilerInfo ~= nil then
    SetProfilerInfoId(hackableEntity, self.OasisProfilerInfo.id)
  end
end
function HackableController:AssignProfile()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      self:SetProfiler(v)
    end
  end
  self:ProfileAssigned()
end
function HackableController:ResetProfile()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      ResetProfilerInfoId(v)
    end
  end
  self:ProfileReset()
end
function HackableController:EnableProfiling()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      self:SetProfiler(v)
      SetProfilingEnabled(v, 1)
    end
  end
  self:ProfilingEnabled()
end
function HackableController:DisableProfiling()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      SetProfilingEnabled(v, 0)
    end
  end
  self:ProfilingDisabled()
end
function HackableController:SetHackOccludable()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      SetHackOccludable(v, self.Occludable)
    end
  end
  self:OccludableSet()
end
function HackableController:ForceHack()
  self.Hacker = self.Hacker or GetLocalPlayerEntityId()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      ForceHackIngredient(v, self.Hacker)
    end
  end
  self:HackForced()
end
function HackableController:SetNoText()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      SetHackableNoText(v)
    end
  end
  self:NoTextSet()
end
function HackableController:SetOverrideHackingText()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      SetHackableOverrideHackingText(v, self.OasisHackingText.id)
    end
  end
  self:OverrideHackingTextSet()
end
function HackableController:VerifyAndCombineData()
  self.CombinedHackableList = {}
  if self.HackableEntityList ~= nil then
    if LuaLibCore:VerifyDataInputEntityList(self.HackableEntityList, "HackableEntityList") then
      for i, v in ipairs(self.HackableEntityList) do
        table.insert(self.CombinedHackableList, self.HackableEntityList[i])
      end
    else
      return false
    end
  end
  if self.HackableEntity ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.HackableEntity, "HackableEntity") then
      table.insert(self.CombinedHackableList, self.HackableEntity)
    else
      return false
    end
  end
  return true
end
export = HackableController
HackableController = nil
