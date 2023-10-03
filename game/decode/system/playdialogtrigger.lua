PlayDialogTrigger = {}
function PlayDialogTrigger:Create(cbox)
end
function PlayDialogTrigger:Init(cbox)
end
function PlayDialogTrigger:Play()
  self.DialogPriority = self.DialogPriority or "ForcePlay"
  if self.Entity ~= nil then
    RequestPlayTrigger(self.Entity, self.TriggerName, self.DialogPriority)
  end
  return self:Out()
end
export = PlayDialogTrigger
PlayDialogTrigger = nil
