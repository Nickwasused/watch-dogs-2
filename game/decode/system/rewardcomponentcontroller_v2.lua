RewardController = {ItemDB = nil}
function RewardController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function RewardController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.DisplayFeedback = 1
end
function RewardController:ShutDown()
end
function RewardController:ClearRewards()
  if LuaLibCore:VerifyDataInputEntity(self.entity, "entity") then
    ClearRewards(self.entity)
  end
  self:RewardsCleaned()
  self:Out()
end
function RewardController:RegisterRewards()
  self.ClearRewardsBeforeRegister = self.ClearRewardsBeforeRegister or 1
  self.DisplayFeedback = self.DisplayFeedback or 1
  if self.ClearRewardsBeforeRegister == 1 then
    if LuaLibCore:VerifyDataInputEntity(self.entity, "entity") then
      ClearRewards(self.entity)
    end
    self:RewardsCleaned()
  end
  if self.ItemDB ~= nil and self.RewardEvent ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.entity, "entity") then
      RegisterReward(self.entity, self.ItemDB, self:GetRewardEventEnumValue(self.RewardEvent))
    end
    self:RewardsRegistered()
  end
  if self.ItemDBList ~= nil and self.RewardEvent ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.entity, "entity") then
      RegisterRewardList(self.entity, self.ItemDBList, self:GetRewardEventEnumValue(self.RewardEvent))
    end
    self:RewardsRegistered()
  end
  self:Out()
end
function RewardController:ExecuteRewards()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  self.DisplayFeedback = self.DisplayFeedback or 1
  if self.ItemDB ~= nil then
    ExecuteReward_V2(self.pawn, self.ItemDB, self.DisplayFeedback)
    self:RewardsExecuted()
  end
  if self.ItemDBList ~= nil then
    ExecuteRewardList_V2(self.pawn, self.ItemDBList, self.DisplayFeedback)
    self:RewardsExecuted()
  end
  self:Out()
end
function RewardController:GetRewardEventEnumValue(rewardEvent)
  if rewardEvent == "Default" then
    return 0
  elseif rewardEvent == "OnLooted" then
    return 1
  elseif rewardEvent == "OnHackSuccess" then
    return 2
  elseif rewardEvent == "OnPickupTrigger" then
    return 3
  elseif rewardEvent == "OnPickedItem" then
    return 4
  end
  return -1
end
export = RewardController
RewardController = nil
