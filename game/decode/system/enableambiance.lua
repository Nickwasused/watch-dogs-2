EnableAmbiance = {}
function EnableAmbiance:Create(cbox)
end
function EnableAmbiance:Init(cbox)
end
function EnableAmbiance:ShutDown()
end
function EnableAmbiance:In()
  CDominoSoundManager_GetInstance():SetEnableAmbiance(self.Enable)
  self:Out()
end
export = EnableAmbiance
EnableAmbiance = nil
