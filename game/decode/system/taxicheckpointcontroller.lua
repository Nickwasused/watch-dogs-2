TaxiCheckpointController = {}
function TaxiCheckpointController:Create(cbox)
  self.created = false
end
function TaxiCheckpointController:Init(cbox)
end
function TaxiCheckpointController:Stop()
  if self.created == true then
    self.created = false
    RemoveTaxiCheckpointMarker()
  end
end
function TaxiCheckpointController:ShutDown()
  if self.created == true then
    self.created = false
    RemoveTaxiCheckpointMarker()
  end
end
function TaxiCheckpointController:Enable()
  if self.created == false then
    self.created = true
    self.PathOrStart = self.PathOrStart or 0
    self.Destination = self.Destination or 0
    CreateTaxiCheckpointMarker(self.PathOrStart, self.Destination)
  end
  self:Enabled()
end
function TaxiCheckpointController:Disable()
  if self.created == true then
    self.created = false
    RemoveTaxiCheckpointMarker()
  end
  self:Disabled()
end
function TaxiCheckpointController:Show()
  if self.created == true then
    SetTaxiCheckpointMarkerVisiblility(1)
  end
  self:Shown()
end
function TaxiCheckpointController:Hide()
  if self.created == true then
    SetTaxiCheckpointMarkerVisiblility(0)
  end
  self:Hidden()
end
export = TaxiCheckpointController
TaxiCheckpointController = nil
