ListCompare = {}
function ListCompare:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListCompare:Init(cbox)
end
function ListCompare:ShutDown()
end
function ListCompare:Diff2List(list1, list2)
  for x, y in ipairs(list1) do
    if list2[x] ~= y then
      return false
    end
  end
  return true
end
function ListCompare:PopulateDiff(l1, l2)
  self.Diff = {}
  local found = false
  for i, v in ipairs(l1) do
    found = false
    for x, y in ipairs(l2) do
      if v == y then
        found = true
        break
      end
    end
    if not found then
      table.insert(self.Diff, v)
    end
  end
end
function ListCompare:Compare()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    if #self.A == #self.B and self:Diff2List(self.A, self.B) then
      return self:Equal()
    end
    table.sort(self.A, function(a, b)
      return tonumber(a) < tonumber(b)
    end)
    table.sort(self.B, function(a, b)
      return tonumber(a) < tonumber(b)
    end)
    if #self.A == #self.B and self:Diff2List(self.A, self.B) then
      return self:EqualSorted()
    end
    self:PopulateDiff(self.A, self.B)
    if #self.Diff ~= 0 then
      self:Differ()
    end
    if #self.A > #self.B then
      self:A_is_bigger()
    end
    if #self.A < #self.B then
      if #self.Diff == 0 then
        self:PopulateDiff(self.B, self.A)
      end
      self:B_is_bigger()
    end
  end
end
export = ListCompare
ListCompare = nil
