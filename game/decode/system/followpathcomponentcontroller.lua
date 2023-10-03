FollowPathController = {}
function FollowPathController:Create(cbox)
end
function FollowPathController:Init(cbox)
end
function FollowPathController:ShutDown()
end
function FollowPathController:Start()
  self.Range = self.Range or 200
  if self.Entity ~= nil and self.Path ~= nil then
    StartFollow(self.Entity, self.Path, self.Range)
    self:SetSpeed()
    self:SetText()
  end
  self:Started()
end
function FollowPathController:Stop()
  if self.Entity ~= nil then
    StopFollow(self.Entity)
  end
  self:Stopped()
end
function FollowPathController:SetSpeed()
  self.Speed = self.Speed or 1
  if self.Entity ~= nil then
    SetFollowSpeed(self.Entity, self.Speed)
  end
  self:SpeedSet()
end
function FollowPathController:SetText()
  if self.Entity ~= nil and self.LocText ~= nil and tonumber(self.LocText.id) ~= nil then
    SetFollowMarkerText(self.Entity, self.LocText.id)
  end
  self:TextSet()
end
function FollowPathController:HideMarker()
  if self.Entity ~= nil then
    HideMarker(self.Entity)
    self:MarkerHidden()
  end
end
function FollowPathController:ShowMarker()
  if self.Entity ~= nil then
    ShowMarker(self.Entity)
    self:MarkerShown()
  end
end
function FollowPathController:StartRangeCheck()
  if self.Entity ~= nil then
    ToggleRangeCheck(self.Entity, 1)
    self:RangeCheckStarted()
  end
end
export = FollowPathController
FollowPathController = nil
