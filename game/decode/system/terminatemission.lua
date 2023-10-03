TerminateMission = {}
function TerminateMission:Create(cbox)
end
function TerminateMission:Init(cbox)
end
function TerminateMission:ShutDown()
end
function TerminateMission:In()
  MissionEnded()
end
export = TerminateMission
TerminateMission = nil
