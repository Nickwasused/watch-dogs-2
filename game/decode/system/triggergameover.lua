TriggerGameOver = {}
function TriggerGameOver:Create(cbox)
end
function TriggerGameOver:Init(cbox)
end
function TriggerGameOver:ShutDown()
end
function TriggerGameOver:GameOver()
  local Out = self.Out
  self.PlayerId = self.PlayerId or GetLocalPlayerId()
  GameOver(self.PlayerId)
  Out(self)
end
export = TriggerGameOver
TriggerGameOver = nil
