ForceWitness = {}
function ForceWitness:Create(cbox)
end
function ForceWitness:Init(cbox)
  self.OnDetect = nil
  self.OnDenunciate = nil
end
function ForceWitness:Enable()
  if self.Denunciator ~= nil then
    if self.Fake ~= nil then
      ForceFakeDenunciatorEntityFunc(self.User, self.Duration)
    else
      ForceDenunciatorEntityFunc(self.User)
    end
  elseif self.Detector ~= nil then
    if self.Fake ~= nil then
      ForceFakeDetectorEntityFunc(self.User, self.Duration)
    else
      ForceDetectorEntityFunc(self.User)
    end
  end
  self:Out()
end
function ForceWitness:ShutDown()
end
export = ForceWitness
ForceWitness = nil
