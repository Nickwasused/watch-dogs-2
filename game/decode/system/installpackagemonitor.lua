InstallPackageMonitor = {}
function InstallPackageMonitor:Create(cbox)
end
function InstallPackageMonitor:Init(cbox)
  self.callidInstallFinished = nil
end
function InstallPackageMonitor:Enable()
  if self.ShowInstallProgressDialog == nil then
    self.ShowInstallProgressDialog = true
  end
  if IsInstallPackageGlobalInstalled() == 0 then
    if self.callidInstallFinished == nil then
      self.callidInstallFinished = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnInstallPackageGlobalInstalled", self, "OnInstallFinished")
    end
    if self.ShowInstallProgressDialog then
      ShowInstallPackageGlobalProgressDialog()
    end
    self:Enabled()
    self:IsInstalling()
  else
    self:Enabled()
    self:InstallFinished()
    self:IsNotInstalling()
  end
end
function InstallPackageMonitor:Disable()
  if self.callidInstallFinished ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnInstallPackageGlobalInstalled", self.callidInstallFinished)
    self.callidInstallFinished = nil
  end
  self:Disabled()
end
function InstallPackageMonitor:OnInstallFinished()
  if self.callidInstallFinished ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnInstallPackageGlobalInstalled", self.callidInstallFinished)
    self.callidInstallFinished = nil
  end
  self:InstallFinished()
end
function InstallPackageMonitor:ShutDown()
  if self.callidInstallFinished ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnInstallPackageGlobalInstalled", self.callidInstallFinished)
    self.callidInstallFinished = nil
  end
end
export = InstallPackageMonitor
InstallPackageMonitor = nil
