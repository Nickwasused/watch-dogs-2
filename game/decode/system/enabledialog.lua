EnableDialog = {}
function EnableDialog:Create(cbox)
end
function EnableDialog:Init(cbox)
end
function EnableDialog:ShutDown()
end
function EnableDialog:In()
  if self.Enable == true then
    CDialogManager_GetInstance():SetMinimumPlayablePriority(0)
  else
    CDialogManager_GetInstance():SetMinimumPlayablePriority(-1)
  end
  self:Out()
end
export = EnableDialog
EnableDialog = nil
