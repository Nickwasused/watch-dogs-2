PlayerPostFXController = {}
function PlayerPostFXController:Create(cbox)
end
function PlayerPostFXController:Init(cbox)
  self.callidPlayed = nil
  self.callidStopped = nil
end
function PlayerPostFXController:ShutDown()
end
function PlayerPostFXController:StartPostFX()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  self.callidPlayed = StartPostFxOnPlayer(self.PlayerEntity, self.SequenceName, self, "Event_Played")
end
function PlayerPostFXController:StopPostFX()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  self.callidStopped = StopPostFxOnPlayer(self.PlayerEntity, self.SequenceName, self, "Event_Stopped")
end
function PlayerPostFXController:Event_Played()
  self.callidPlayed = nil
  self:Played()
end
function PlayerPostFXController:Event_Stopped()
  self.callidStopped = nil
  self:Stopped()
end
export = PlayerPostFXController
PlayerPostFXController = nil
