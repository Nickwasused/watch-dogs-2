InteractionScriptController = {}
function InteractionScriptController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function InteractionScriptController:Init(cbox)
end
function InteractionScriptController:ShutDown()
end
function InteractionScriptController:Enable()
  self:Combinelist()
  local Enabled = self.Enabled
  local Out = self.Out
  if self.combinedInteractionList ~= nil then
    for i, v in ipairs(self.combinedInteractionList) do
      SetInteractionScriptState(v, 1)
    end
    Enabled(self)
  end
  Out(self)
end
function InteractionScriptController:Disable()
  self:Combinelist()
  local Disabled = self.Disabled
  local Out = self.Out
  if self.combinedInteractionList ~= nil then
    for i, v in ipairs(self.combinedInteractionList) do
      SetInteractionScriptState(v, 0)
    end
    Disabled(self)
  end
  Out(self)
end
function InteractionScriptController:SetEnableState()
  self:Combinelist()
  local EnableStateSet = self.EnableStateSet
  local Out = self.Out
  if self.combinedInteractionList ~= nil then
    for i, v in ipairs(self.combinedInteractionList) do
      SetInteractionScriptState(v, self.EnableState)
    end
    EnableStateSet(self)
  end
  Out(self)
end
function InteractionScriptController:ForceInteract()
  self:Combinelist()
  local InteractionForced = self.InteractionForced
  local Out = self.Out
  if self.combinedInteractionList ~= nil then
    for i, v in ipairs(self.combinedInteractionList) do
      ForceCompleteInteraction(v)
    end
    InteractionForced(self)
  end
  Out(self)
end
function InteractionScriptController:Combinelist()
  self.combinedInteractionList = {}
  if self.InteractionEntity ~= nil and LuaLibCore:VerifyDataInputEntity(self.InteractionEntity, "InteractionEntity") then
    table.insert(self.combinedInteractionList, self.InteractionEntity)
  end
  if self.InteractionEntityList ~= nil and LuaLibCore:VerifyDataInputEntityList(self.InteractionEntityList, "InteractionEntityList") then
    for i, v in ipairs(self.InteractionEntityList) do
      table.insert(self.combinedInteractionList, self.InteractionEntityList[i])
    end
  end
end
export = InteractionScriptController
InteractionScriptController = nil
