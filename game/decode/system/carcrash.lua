CarCrash = {}
function CarCrash:Create(cbox)
end
function CarCrash:Init(cbox)
  self.HBStartDist = 0
  self.HBDir = 3
  self.KillNPCs = 0
  self.AmplifyDamage = 0
end
function CarCrash:ShutDown()
end
function CarCrash:Start()
  local Out = self.Out
  if self.Vehicle ~= nil and self.CrashEntity ~= nil then
    DoCarCrash(self.Vehicle, self.CrashEntity, self.HBStartDist, self.HBDir, self.KillNPCs, self.AmplifyDamage)
  end
  Out(self)
end
export = CarCrash
CarCrash = nil
