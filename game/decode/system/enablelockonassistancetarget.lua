EnableLockOnAssistanceTargetBox = {}
function EnableLockOnAssistanceTargetBox:Create(cbox)
end
function EnableLockOnAssistanceTargetBox:Init(cbox)
end
function EnableLockOnAssistanceTargetBox:ShutDown()
end
function EnableLockOnAssistanceTargetBox:Enable()
  EnabledLockOnAssistanceTarget(1)
  self:Out()
end
function EnableLockOnAssistanceTargetBox:Disable()
  EnabledLockOnAssistanceTarget(0)
  self:Out()
end
export = EnableLockOnAssistanceTargetBox
EnableLockOnAssistanceTargetBox = nil
