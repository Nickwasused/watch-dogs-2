WitnessSystem = {}
function WitnessSystem:Create(cbox)
end
function WitnessSystem:Init(cbox)
end
function WitnessSystem:ShutDown()
end
function WitnessSystem:EnableDenunciator()
  local DenunciatorEnabled = self.DenunciatorEnabled
  local Out = self.Out
  EnableDenunciatorFunc(1)
  DenunciatorEnabled(self)
  Out(self)
end
function WitnessSystem:DisableDenunciator()
  local DenunciatorDisabled = self.DenunciatorDisabled
  local Out = self.Out
  EnableDenunciatorFunc(0)
  DenunciatorDisabled(self)
  Out(self)
end
function WitnessSystem:EnableDetector()
  local DetectorEnabled = self.DetectorEnabled
  local Out = self.Out
  EnableDetectorFunc(1)
  DetectorEnabled(self)
  Out(self)
end
function WitnessSystem:DisableDetector()
  local DetectorDisabled = self.DetectorDisabled
  local Out = self.Out
  EnableDetectorFunc(0)
  DetectorDisabled(self)
  Out(self)
end
export = WitnessSystem
WitnessSystem = nil
