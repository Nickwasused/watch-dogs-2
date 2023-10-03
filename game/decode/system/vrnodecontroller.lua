VrNodeController = {}
function VrNodeController:Create(cbox)
end
function VrNodeController:Init(cbox)
end
function VrNodeController:ShutDown()
end
function VrNodeController:SetAsAlarm()
  local IsSetAsAlarm = self.IsSetAsAlarm
  local Out = self.Out
  self.AlarmTime = self.AlarmTime or 5
  VRSetAsAlarm(self.VRNode, self.AlarmTime)
  Out(self)
  IsSetAsAlarm(self)
end
function VrNodeController:UnSetAsAlarm()
  local IsUnSetAsAlarm = self.IsUnSetAsAlarm
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.VRNode, "CVRNodeComponent", "VRNode_UnSetAsAlarm")
  Out(self)
  IsUnSetAsAlarm(self)
end
function VrNodeController:RotateNode()
  local NodeRotated = self.NodeRotated
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.VRNode, "CVRNodeComponent", "VRNode_ForceRotateNode")
  Out(self)
  NodeRotated(self)
end
export = VrNodeController
VrNodeController = nil
