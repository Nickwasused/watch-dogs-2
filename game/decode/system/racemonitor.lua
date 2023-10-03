RaceMonitor = {}
function RaceMonitor:Create(cbox)
end
function RaceMonitor:Init(cbox)
  self.callidOnPlayerRankUpdated = nil
  self.playerId = GetLocalPlayerId()
  self.playerEntityId = GetPawnIdFromPlayerId(self.playerId)
  self.missionId = cbox:GetParentMissionId()
end
function RaceMonitor:ShutDown()
  self:UnregisterCallbacks()
end
function RaceMonitor:GetPlayerRank()
  self:RegisterCallbacks()
  UpdateRacePlayerRank(self.Race)
end
function RaceMonitor:RegisterCallbacks()
  if self.playerEntityId ~= nil and self.callidOnPlayerRankUpdated == nil then
    self.callidOnPlayerRankUpdated = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.playerEntityId, self, "Event_OnRacePlayerRankUpdated", "OnRacePlayerRankUpdated", self.missionId)
  end
end
function RaceMonitor:UnregisterCallbacks()
  if self.playerEntityId ~= nil and self.callidOnPlayerRankUpdated ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.playerEntityId, self.callidOnPlayerRankUpdated)
    self.callidOnPlayerRankUpdated = nil
  end
end
function RaceMonitor:Event_OnRacePlayerRankUpdated(playerRank)
  self.PlayerRank = tonumber(playerRank) + 1
  self:OnPlayerRankUpdated()
  self:UnregisterCallbacks()
end
export = RaceMonitor
RaceMonitor = nil
