RandomOutput = {}
function RandomOutput:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function RandomOutput:Init(cbox)
  self.Output = {}
  self.Probability = {}
  self.OutputSent = {}
  self.ProbCurrentTable = {}
  self.ProbInitTable = {}
end
function RandomOutput:ShutDown()
end
function RandomOutput:In()
  self:CalculateInitPropTable()
  self:CalculateCurrentPropTable()
  local randomPercent = math.random()
  local callnone = true
  for i = 0, self._DynamicAnchors.Output - 1 do
    if randomPercent <= self.ProbCurrentTable[i] then
      self.OutputSent[i] = 1
      if self.AutoReset == 1 then
        self:Reset()
      end
      self.OutputNb = i + 1
      self.Output[i](self)
      callnone = false
      break
    end
  end
  if callnone then
    self.OutputNb = 0
    self:None()
  end
  self:Out()
end
function RandomOutput:Reset()
  self.OutputSent = {}
  if self.AutoReset == 0 then
    self:ResetOut()
  end
end
function RandomOutput:CalculateInitPropTable()
  self.ProbInitTable = {}
  local probAvailable = 1
  local unsetnb = 0
  for i = 0, self._DynamicAnchors.Output - 1 do
    if self.Probability[i] ~= nil then
      if 1 < self.Probability[i] or 0 > self.Probability[i] then
        LuaLibCore:DataError("Probability" .. i + 1, "Cannot use this value {" .. self.Probability[i] .. "}. Must be between 0 and 1 or equal")
        self.ProbInitTable[i] = 0
      else
        self.ProbInitTable[i] = self.Probability[i]
        probAvailable = probAvailable - self.Probability[i]
      end
    else
      unsetnb = unsetnb + 1
    end
  end
  if probAvailable < 0 then
    probAvailable = 0
  end
  self.TotalProb = 0
  for i = 0, self._DynamicAnchors.Output - 1 do
    if self.ProbInitTable[i] == nil then
      self.ProbInitTable[i] = probAvailable / unsetnb
    end
    self.TotalProb = self.TotalProb + self.ProbInitTable[i]
  end
end
function RandomOutput:CalculateCurrentPropTable()
  self.ProbCurrentTable = {}
  local delta = 0
  for i = 0, self._DynamicAnchors.Output - 1 do
    if self.OutputSent[i] == 1 then
      delta = delta + self.ProbInitTable[i] / self.TotalProb
    end
  end
  local previous = 0
  for i = 0, self._DynamicAnchors.Output - 1 do
    if 0 >= self.ProbInitTable[i] or self.ProbInitTable[i] == nil or self.OutputSent[i] == 1 then
      self.ProbCurrentTable[i] = 0
    else
      self.ProbCurrentTable[i] = previous + self.ProbInitTable[i] / self.TotalProb / (1 - delta)
      previous = self.ProbCurrentTable[i]
    end
  end
end
export = RandomOutput
RandomOutput = nil
