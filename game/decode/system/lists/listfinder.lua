ListFinder = {}
function ListFinder:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListFinder:Find()
  if LuaLibCore:AssertNotNil(self.Input, "Input") then
    for i, v in ipairs(self.Input) do
      if self.Data == v then
        self.Index = i
        self:Found()
        return
      end
    end
  end
  self:NotFound()
end
function ListFinder:FindByName()
  if LuaLibCore:AssertNotNil(self.Input, "Input") then
    for i, v in ipairs(self.Input) do
      if self.Name == GetEntityName(v) then
        self.Index = i
        self:Found()
        return
      end
    end
  end
  self:NotFound()
end
export = ListFinder
ListFinder = nil
