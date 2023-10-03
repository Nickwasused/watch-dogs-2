DPadHackableController = {
  HackCategoryType = {}
}
function DPadHackableController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function DPadHackableController:Init(cbox)
end
function DPadHackableController:ShutDown()
  self:EnableHacking()
end
function DPadHackableController:Set()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      RemoveAllHackingCategories(v)
      for i = 0, self._DynamicAnchors.HackCategoryType - 1 do
        OverrideHackingCategorie(self.HackCategoryType[i], v)
      end
    end
    self:IsSet()
  end
  self:Out()
end
function DPadHackableController:Add()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      for i = 0, self._DynamicAnchors.HackCategoryType - 1 do
        OverrideHackingCategorie(self.HackCategoryType[i], v)
      end
    end
    self:Added()
  end
  self:Out()
end
function DPadHackableController:Remove()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      for i = 0, self._DynamicAnchors.HackCategoryType - 1 do
        RemoveHackingCategories(self.HackCategoryType[i], v)
      end
    end
    self:Removed()
  end
  self:Out()
end
function DPadHackableController:RemoveAll()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      RemoveAllHackingCategories(v)
    end
    self:RemovedAll()
  end
  self:Out()
end
function DPadHackableController:DisableHacking()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      RemoveAllHackingCategories(v)
      DisableHackingSelector(v, 1)
    end
    self:HackingDisabled()
  end
  self:Out()
end
function DPadHackableController:EnableHacking()
  if self:VerifyAndCombineData() then
    for i, v in ipairs(self.CombinedHackableList) do
      DisableHackingSelector(v, 0)
    end
  end
end
function DPadHackableController:VerifyAndCombineData()
  self.CombinedHackableList = {}
  if self.HackableEntityList ~= nil then
    if LuaLibCore:VerifyDataInputEntityList(self.HackableEntityList, "HackableEntityList") then
      for i, v in ipairs(self.HackableEntityList) do
        table.insert(self.CombinedHackableList, self.HackableEntityList[i])
      end
    else
      return false
    end
  end
  if self.HackableEntity ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.HackableEntity, "HackableEntity") then
      table.insert(self.CombinedHackableList, self.HackableEntity)
    else
      return false
    end
  end
  return true
end
export = DPadHackableController
DPadHackableController = nil
