RaceController = {}
function RaceController:Create(cbox)
end
function RaceController:Init(cbox)
  self.callidOnPlayerTeleportedToStart = nil
  self.callidOnRaceSetupFinished = nil
  self.callidOnRaceStarted = nil
  self.callidOnRaceFinished = nil
  self.callidOnRaceResultsShown = nil
  self.callidOnRaceResultsClosed = nil
  self.callidOnRaceStopped = nil
  self.missionId = cbox:GetParentMissionId()
  self.Racer = {}
  self.RacerVehicle = {}
  self.IsReplay = 0
  self.IsRaceSetup = 0
  self.PlayerId = self.PlayerId or GetLocalPlayerId()
  self:RegisterCallbacks()
end
function RaceController:ShutDown()
  self:UnregisterCallbacks()
end
function RaceController:SetupRace()
  if self.IsRaceSetup == 0 then
    local racerVehicles = self:GetRacerVehicles()
    SetupRace(self.Race, racerVehicles)
    self.IsRaceSetup = 1
  end
end
function RaceController:StartRace()
  self:SetupRace()
  StartRace(self.Race)
end
function RaceController:ShowRaceResults()
  ShowRaceResults(self.Race)
end
function RaceController:StopRace()
  StopRace(self.Race)
end
function RaceController:RegisterCallbacks()
  if self.PlayerId ~= nil then
    local playerEntityId = GetPawnIdFromPlayerId(self.PlayerId)
    if self.callidOnPlayerTeleportedToStart == nil then
      self.callidOnPlayerTeleportedToStart = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(playerEntityId, self, "Event_OnPlayerTeleportedToStart", "OnPlayerTeleportedToStart", self.missionId)
    end
    if self.callidOnRaceSetupFinished == nil then
      self.callidOnRaceSetupFinished = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(playerEntityId, self, "Event_OnRaceSetupFinished", "OnRaceSetupFinished", self.missionId)
    end
    if self.callidOnRaceStarted == nil then
      self.callidOnRaceStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(playerEntityId, self, "Event_OnRaceStarted", "OnRaceStarted", self.missionId)
    end
    if self.callidOnRaceFinished == nil then
      self.callidOnRaceFinished = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(playerEntityId, self, "Event_OnRaceFinished", "OnRaceFinished", self.missionId)
    end
    if self.callidOnRaceResultsShown == nil then
      self.callidOnRaceResultsShown = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(playerEntityId, self, "Event_OnRaceResultsShown", "OnRaceResultsShown", self.missionId)
    end
    if self.callidOnRaceResultsClosed == nil then
      self.callidOnRaceResultsClosed = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(playerEntityId, self, "Event_OnRaceResultsClosed", "OnRaceResultsClosed", self.missionId)
    end
    if self.callidOnRaceStopped == nil then
      self.callidOnRaceStopped = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(playerEntityId, self, "Event_OnRaceStopped", "OnRaceStopped", self.missionId)
    end
  end
end
function RaceController:UnregisterCallbacks()
  if self.PlayerId ~= nil then
    local playerEntityId = GetPawnIdFromPlayerId(self.PlayerId)
    if self.callidOnRaceSetupFinished ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(playerEntityId, self.callidOnRaceSetupFinished)
    end
    if self.callidOnRaceStarted ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(playerEntityId, self.callidOnRaceStarted)
    end
    if self.callidOnRaceFinished ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(playerEntityId, self.callidOnRaceFinished)
    end
    if self.callidOnRaceResultsShown ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(playerEntityId, self.callidOnRaceResultsShown)
    end
    if self.callidOnRaceResultsClosed ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(playerEntityId, self.callidOnRaceResultsClosed)
    end
    if self.callidOnRaceStopped ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(playerEntityId, self.callidOnRaceStopped)
    end
  end
end
function RaceController:GetRacerVehicles()
  local vehicles = {}
  if self._DynamicAnchors.RacerVehicle ~= nil then
    local lastIndex = self._DynamicAnchors.RacerVehicle - 1
    for i = 0, lastIndex do
      if self.RacerVehicle[i] ~= nil then
        table.insert(vehicles, self.RacerVehicle[i])
      end
    end
  end
  return vehicles
end
function RaceController:Event_OnPlayerTeleportedToStart(isReplay)
  self.IsReplay = tonumber(isReplay)
  self:OnPlayerTeleportedToStart()
end
function RaceController:Event_OnRaceSetupFinished()
  self:OnRaceSetupFinished()
end
function RaceController:Event_OnRaceStarted()
  self:OnRaceStarted()
end
function RaceController:Event_OnRaceFinished(playerRank)
  self.PlayerRank = tonumber(playerRank) + 1
  self:OnRaceFinished()
end
function RaceController:Event_OnRaceResultsShown()
  self:OnRaceResultsShown()
end
function RaceController:Event_OnRaceResultsClosed()
  self:OnRaceResultsClosed()
end
function RaceController:Event_OnRaceStopped()
  self:OnRaceStopped()
end
export = RaceController
RaceController = nil
