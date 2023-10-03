DebugExecuteConsole = {}
function DebugExecuteConsole:Create(cbox)
end
function DebugExecuteConsole:Init(cbox)
end
function DebugExecuteConsole:ShutDown()
end
function DebugExecuteConsole:Execute()
  local Executed = self.Executed
  if self.Command ~= nil then
    DoConsoleCommand(self.Command)
  end
  Executed(self)
end
export = DebugExecuteConsole
DebugExecuteConsole = nil
