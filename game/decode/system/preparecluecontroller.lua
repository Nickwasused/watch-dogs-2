PrepareClueController = {}
function PrepareClueController:Create(cbox)
end
function PrepareClueController:Init(cbox)
end
function PrepareClueController:ShutDown()
end
function PrepareClueController:Enable()
  if self.ClueIds ~= nil then
    for i, v in ipairs(self.ClueIds) do
      SetPrepareClueState(v, 1)
    end
  else
    SetPrepareClueState(self.ClueId, 1)
  end
  self:Enabled()
end
function PrepareClueController:Disable()
  if self.ClueIds ~= nil then
    for i, v in ipairs(self.ClueIds) do
      SetPrepareClueState(v, 0)
    end
  else
    SetPrepareClueState(self.ClueId, 0)
  end
  self:Disabled()
end
function PrepareClueController:Activate()
  if self.ClueIds ~= nil then
    for i, v in ipairs(self.ClueIds) do
      SetPrepareClueState(v, 2)
    end
  else
    SetPrepareClueState(self.ClueId, 2)
  end
  self:Activated()
end
export = PrepareClueController
PrepareClueController = nil
