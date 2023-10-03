LanesRestrictionsControlBox = {}
function LanesRestrictionsControlBox:Create(cbox)
end
function LanesRestrictionsControlBox:Init(cbox)
end
function LanesRestrictionsControlBox:ShutDown()
end
function LanesRestrictionsControlBox:In()
  local Out = self.Out
  self.ApplyToEnticers = self.ApplyToEnticers or 1
  self.RestrictTraffic = self.RestrictTraffic or 1
  self.RestrictPedestrians = self.RestrictPedestrians or 1
  self.RestrictParking = self.RestrictParking or 1
  self.ResetLivingCity = self.ResetLivingCity or 0
  self.ResetMissionWithLivingCity = self.ResetMissionWithLivingCity or 0
  self.TrafficDensityScale = self.TrafficDensityScale or -1
  self.CivilianDensityDbObject = self.CivilianDensityDbObject or ""
  self.ParkedCarsDensityDbObject = self.ParkedCarsDensityDbObject or ""
  self.ApplyToRoadNetwork = self.ApplyToRoadNetwork or 1
  self.RestrictHumanOnFoot = self.RestrictHumanOnFoot or 1
  self.RestrictHumanPassenger = self.RestrictHumanPassenger or 1
  self.RestrictAnimal = self.RestrictAnimal or 1
  self.RestrictRobot = self.RestrictRobot or 1
  self.RestrictRoadVehicle = self.RestrictRoadVehicle or 1
  self.RestrictRail = self.RestrictRail or 1
  self.RestrictBoat = self.RestrictBoat or 1
  self.RestrictParkedCar = self.RestrictParkedCar or 1
  self.RestrictParkedBoat = self.RestrictParkedBoat or 1
  self.RestrictWorldAI = self.RestrictWorldAI or 1
  self.RestrictReinforcementAI = self.RestrictReinforcementAI or 1
  self.RestrictMissionAI = self.RestrictMissionAI or 1
  self.RestrictCityObject = self.RestrictCityObject or 1
  self.RestrictMissionObject = self.RestrictMissionObject or 1
  local spawnRestrictions = 0
  spawnRestrictions = spawnRestrictions + (self.RestrictHumanOnFoot == 1 and 1 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictHumanPassenger == 1 and 2 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictAnimal == 1 and 4 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictRobot == 1 and 8 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictRoadVehicle == 1 and 16 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictRail == 1 and 32 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictBoat == 1 and 64 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictParkedCar == 1 and 128 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictParkedBoat == 1 and 256 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictWorldAI == 1 and 512 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictReinforcementAI == 1 and 1024 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictMissionAI == 1 and 2048 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictCityObject == 1 and 4096 or 0)
  spawnRestrictions = spawnRestrictions + (self.RestrictMissionObject == 1 and 8192 or 0)
  LanesRestrictionsControl(self.LaneRestrictionsController, self.RestrictTraffic, self.RestrictPedestrians, self.RestrictParking, self.CivilianDensityDbObject, self.ParkedCarsDensityDbObject, self.TrafficDensityScale, self.ApplyToEnticers, self.ApplyToRoadNetwork, spawnRestrictions)
  if self.ResetLivingCity == 1 then
    UnspawnRestricted(self.LaneRestrictionsController, self.ResetMissionWithLivingCity)
  end
  Out(self)
end
export = LanesRestrictionsControlBox
LanesRestrictionsControlBox = nil
