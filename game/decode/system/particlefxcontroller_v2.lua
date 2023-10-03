ParticleFXController = {}
function ParticleFXController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ParticleFXController:Init(cbox)
end
function ParticleFXController:ShutDown()
end
function ParticleFXController:Start()
  local Started = self.Started
  self:Combinelist()
  if self.combinedParticleList ~= nil then
    for i, v in ipairs(self.combinedParticleList) do
      CDominoManager_GetInstance():SendRegisteredEventToEntity(v, "CNewParticlesComponent", "PlayParticles")
    end
  end
  Started(self)
end
function ParticleFXController:Pause()
  local Paused = self.Paused
  self:Combinelist()
  if self.combinedParticleList ~= nil then
    for i, v in ipairs(self.combinedParticleList) do
      CDominoManager_GetInstance():SendRegisteredEventToEntity(v, "CNewParticlesComponent", "PauseParticles")
    end
  end
  Paused(self)
end
function ParticleFXController:Stop()
  local Stopped = self.Stopped
  self:Combinelist()
  if self.combinedParticleList ~= nil then
    for i, v in ipairs(self.combinedParticleList) do
      CDominoManager_GetInstance():SendRegisteredEventToEntity(v, "CNewParticlesComponent", "StopParticles")
    end
  end
  Stopped(self)
end
function ParticleFXController:Clean()
  local Cleaned = self.Cleaned
  self:Combinelist()
  if self.combinedParticleList ~= nil then
    for i, v in ipairs(self.combinedParticleList) do
      CDominoManager_GetInstance():SendRegisteredEventToEntity(v, "CNewParticlesComponent", "CleanParticles")
    end
  end
  Cleaned(self)
end
function ParticleFXController:Combinelist()
  self.combinedParticleList = {}
  if self.ParticleEmitter ~= nil and LuaLibCore:VerifyDataInputEntity(self.ParticleEmitter, "ParticleEmitter") then
    table.insert(self.combinedParticleList, self.ParticleEmitter)
  end
  if self.ParticleEmitterList ~= nil and LuaLibCore:VerifyDataInputEntityList(self.ParticleEmitterList, "ParticleEmitterList") then
    for i, v in ipairs(self.ParticleEmitterList) do
      table.insert(self.combinedParticleList, self.ParticleEmitterList[i])
    end
  end
end
export = ParticleFXController
ParticleFXController = nil
