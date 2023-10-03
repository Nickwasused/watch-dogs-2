PawnHealthMonitor = {}
function PawnHealthMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PawnHealthMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.HealthString = GetNoCaseStringID("health")
  self.callidCounterEvent = nil
  self.callidDie = nil
  self.callidListIsUnderwater = {}
  self.callidListCounterEvent = {}
  self.callidListDie = {}
end
function PawnHealthMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PawnHealthMonitor:Enable()
  self._type.UnregisterCallback(self)
  if self.Pawn ~= nil then
    self.currentHealth = GetCurrentHealth(self.Pawn)
  end
  self:CombineLists()
  if self.CheckNow == 1 then
    self:CheckIfDead()
  end
  self:RemoveDeadPawnsFromList()
  if self.CombinedPawnList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.CombinedPawnList) do
      if v ~= nil and self.callidListDie[i] == nil then
        self.callidListCounterEvent[i] = instance:RegisterMissionEventCallback(v, self, "Event_CounterEvent", "CCounterEvent", self.missionId)
        self.callidListDie[i] = instance:RegisterMissionEventCallback(v, self, "Event_Die", "Die", self.missionId)
        self.callidListIsUnderwater[i] = instance:RegisterMissionEventCallback(v, self, "Event_Underwater", "DominoIsUnderwater", self.missionId)
      end
    end
  end
  self:Enabled()
end
function PawnHealthMonitor:CombineLists()
  self.CombinedPawnList = {}
  if LuaLibCore:VerifyDataInputEntityList(self.PawnList, "PawnList") then
    for i, v in ipairs(self.PawnList) do
      if self.PawnList[i] ~= nil then
        table.insert(self.CombinedPawnList, self.PawnList[i])
      end
    end
  elseif self.Pawn ~= nil and LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") then
    table.insert(self.CombinedPawnList, self.Pawn)
  end
end
function PawnHealthMonitor:RemoveDeadPawnsFromList()
  self.tempList = {}
  self.tempList = self.CombinedPawnList
  self.CombinedPawnList = {}
  if self.tempList ~= nil then
    for i, v in ipairs(self.tempList) do
      if IsEntityValid(v, 1) == 1 and IsAlive(v) == 1 then
        table.insert(self.CombinedPawnList, v)
      end
    end
  end
end
function PawnHealthMonitor:CheckIfDead()
  if self.CombinedPawnList == nil then
    self:CombineLists()
  end
  if self.CombinedPawnList ~= nil then
    for i, v in ipairs(self.CombinedPawnList) do
      if IsWounded(v) == 1 and CanRevive(v) == 1 then
        self.Attacker = GetPawnInstigator(v)
        self.DamageAmount = 0
        self.Victim = v
        self.TakeDown = nil
        self.HitLocation = GetLastHitLocation(v)
        self.Reason = GetLastDamageReason(v)
        self:DBNO()
      elseif IsDead(v) == 1 then
        self.Attacker = GetPawnInstigator(v)
        self.DamageAmount = 0
        self.Victim = v
        self.TakeDown = nil
        self.HitLocation = GetLastHitLocation(v)
        self.Reason = GetLastDamageReason(v)
        table.remove(self.CombinedPawnList, i)
        self:Killed()
      end
    end
    if #self.CombinedPawnList == 0 then
      self:AllDead()
    end
    self:DeadChecked()
  end
end
function PawnHealthMonitor:CheckHealth()
  self.Health = GetPawnHealthPercentage(self.Pawn)
  self:HealthChecked()
end
function PawnHealthMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function PawnHealthMonitor:UnregisterCallback()
  if self.CombinedPawnList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.CombinedPawnList) do
      if v ~= nil and self.callidListDie[i] ~= nil and self.callidListCounterEvent[i] ~= nil and self.callidListIsUnderwater[i] ~= nil then
        instance:RemoveCallback(v, self.callidListCounterEvent[i])
        self.callidListCounterEvent[i] = nil
        instance:RemoveCallback(v, self.callidListDie[i])
        self.callidListDie[i] = nil
        instance:RemoveCallback(v, self.callidListIsUnderwater[i])
        self.callidListIsUnderwater[i] = nil
      end
    end
    self.callidListCounterEvent = {}
    self.callidListDie = {}
  end
end
function PawnHealthMonitor:Event_CounterEvent(counter, value, instigator, reason, hitLocation)
  if counter == self.HealthString then
    self.DamageAmount = value
    self.Attacker = GetPawnInstigator(instigator)
    self.Reason = reason
    self.HitLocation = hitLocation
    if self.Pawn ~= nil then
      self.Health = GetPawnHealthPercentage(self.Pawn)
      if self.currentHealth > GetCurrentHealth(self.Pawn) then
        self.DamageReceivedAmount = self.currentHealth - GetCurrentHealth(self.Pawn)
        self:DamageReceived()
      end
      self.currentHealth = GetCurrentHealth(self.Pawn)
    end
    self:Damaged()
  end
end
function PawnHealthMonitor:Event_Die(victim, instigator, reason, hitLocation, isTakeDown, isDyingFromWounded, isWounded)
  self.DamageAmount = 0
  self.TakeDown = isTakeDown
  self.Victim = victim
  self.HitLocation = hitLocation
  if reason == nil then
    self.Attacker = GetPawnInstigator(victim)
    self.Reason = instigator
  else
    self.Attacker = GetPawnInstigator(instigator)
    self.Reason = reason
  end
  local allDead = true
  if self.CombinedPawnList ~= nil then
    for i, v in ipairs(self.CombinedPawnList) do
      local removeCallback = false
      if v == victim and isWounded == 1 and CanRevive(v) == 1 then
        self:DBNO()
        allDead = false
      elseif v == victim then
        self:Killed()
        removeCallback = true
      elseif IsAlive(v) == 1 then
        allDead = false
      else
        removeCallback = true
      end
      if IsEntityValid(v, 1) == 0 then
        removeCallback = true
      end
      if removeCallback then
        instance = CScriptCallbackSystem_GetInstance()
        if self.callidListDie[i] ~= nil then
          instance:RemoveCallback(v, self.callidListDie[i])
          self.callidListDie[i] = nil
        end
      end
    end
  end
  if allDead then
    self:AllDead()
    self._type.UnregisterCallback(self)
    self.CombinedPawnList = {}
  end
end
function PawnHealthMonitor:Event_Underwater(event)
  return self:IsUnderwater()
end
export = PawnHealthMonitor
PawnHealthMonitor = nil
