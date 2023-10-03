ConsoleCommand = {}
function ConsoleCommand:Create(cbox)
end
function ConsoleCommand:Init(cbox)
  self.CommandId = nil
end
function ConsoleCommand:ShutDown()
  if self.CommandId ~= nil then
    CDominoConsoleCommandManager_GetInstance():UnregisterConsoleCommand(self.CommandId)
  end
end
function ConsoleCommand:Enable()
  if self.Command ~= nil then
    self.CommandId = CDominoConsoleCommandManager_GetInstance():RegisterConsoleCommand(self.Command, self, "TriggerCommand")
  end
  self:Enabled()
end
function ConsoleCommand:Disable()
  if self.CommandId ~= nil then
    CDominoConsoleCommandManager_GetInstance():UnregisterConsoleCommand(self.CommandId)
    self.CommandId = nil
  end
  self:Disabled()
end
function ConsoleCommand:TriggerCommand(parameter)
  self.Parameter = parameter or ""
  return self:Executed()
end
export = ConsoleCommand
ConsoleCommand = nil
