PlayerConflictMonitor = {}
function PlayerConflictMonitor:Create(cbox)
end
function PlayerConflictMonitor:Init(cbox)
  self.callidPlayerInConflict = nil
  self.callidPlayerNotInConflict = nil
end
function PlayerConflictMonitor:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function PlayerConflictMonitor:Enable()
  if self.callidPlayerInConflict == nil then
    self.callidPlayerInConflict = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("DominoLocalPlayerInConflict", self, "Event_PlayerInConflict")
    self.callidPlayerNotInConflict = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("DominoLocalPlayerNotInConflict", self, "Event_PlayerNotInConflict")
  end
  LocalPlayerConflictRequest()
  self:Enabled()
end
function PlayerConflictMonitor:Disable()
  self._type.UnregisterCallbacks(self)
  self:Disabled()
end
function PlayerConflictMonitor:UnregisterCallbacks()
  if self.callidPlayerInConflict ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("DominoLocalPlayerInConflict", self.callidPlayerInConflict)
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("DominoLocalPlayerNotInConflict", self.callidPlayerNotInConflict)
    self.callidPlayerInConflict = nil
    self.callidPlayerNotInConflict = nil
  end
end
function PlayerConflictMonitor:Event_PlayerInConflict()
  self:InConflict()
end
function PlayerConflictMonitor:Event_PlayerNotInConflict()
  self:NOTInConflict()
end
export = PlayerConflictMonitor
PlayerConflictMonitor = nil
