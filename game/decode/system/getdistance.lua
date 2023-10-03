GetDistanceBox = {}
function GetDistanceBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function GetDistanceBox:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidViaRoad = nil
end
function GetDistanceBox:ShutDown()
  if self.callidViaRoad ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Entity1, self.callidViaRoad)
    self.callidViaRoad = nil
  end
end
function GetDistanceBox:Distance2D()
  if LuaLibCore:VerifyDataInputEntity(self.Entity1, "Entity1") and LuaLibCore:VerifyDataInputEntity(self.Entity2, "Entity2") then
    self.Distance = GetDistance2D(self.Entity1, self.Entity2)
  end
  self:Out()
end
function GetDistanceBox:Distance3D()
  if LuaLibCore:VerifyDataInputEntity(self.Entity1, "Entity1") and LuaLibCore:VerifyDataInputEntity(self.Entity2, "Entity2") then
    self.Distance = GetDistance3D(self.Entity1, self.Entity2)
  end
  self:Out()
end
function GetDistanceBox:DistanceViaRoad()
  self.MaxDistanceToRoad = self.MaxDistanceToRoad or 200
  if LuaLibCore:VerifyDataInputEntity(self.Entity1, "Entity1") and LuaLibCore:VerifyDataInputEntity(self.Entity2, "Entity2") then
    if self.callidViaRoad == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidViaRoad = instance:RegisterMissionEventCallback(self.Entity1, self, "ViaRoadCalculated_Event", "OnRoadPathfindRequestFinised", self.missionId)
      CalculateDistanceViaRoad(self.Entity1, self.Entity2, self.MaxDistanceToRoad)
    else
      LuaLibCore:DataError("DistanceViaRoad", "ERROR!! Already calculating a distance via road. Please wait until you have a result.")
    end
  end
end
function GetDistanceBox:ViaRoadCalculated_Event(entity, distance)
  self.Distance = distance
  self:OutViaRoad()
  if self.callidViaRoad ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(entity, self.callidViaRoad)
    self.callidViaRoad = nil
  end
end
export = GetDistanceBox
GetDistanceBox = nil
