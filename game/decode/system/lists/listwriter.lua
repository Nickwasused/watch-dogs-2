ListWriter = {}
function ListWriter:Create(cbox)
  self.Data = {}
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListWriter:Init(cbox)
end
function ListWriter:ShutDown()
end
function ListWriter:Add()
  self.Index = self.Index or 0
  self.CopyTable(self)
  for i = 1, self._DynamicAnchors.Data do
    if self.Index <= 0 or self.Index > #self.Target then
      table.insert(self.Target, #self.Target + 1, self.Data[i - 1])
    elseif LuaLibCore:AssertNotNil(self.Target, "Target") and LuaLibCore:AssertNotNil(self.Data[i - 1], "Data " .. i) then
      table.insert(self.Target, self.Index - 1 + i, self.Data[i - 1])
    end
  end
  self:Added()
  self:Out()
end
function ListWriter:Remove()
  self.Index = self.Index or 0
  self.CopyTable(self)
  if LuaLibCore:AssertNotNil(self.Target, "Target") then
    if self._DynamicAnchors.Data == 0 then
      if self.Index <= 0 or self.Index > #self.Target then
        table.remove(self.Target, #self.Target)
      else
        table.remove(self.Target, self.Index)
      end
    else
      for i = 1, self._DynamicAnchors.Data do
        if self.Index == 0 then
          j = 1
          while j <= #self.Target do
            while self.Data[i - 1] == self.Target[j] do
              table.remove(self.Target, j)
            end
            j = j + 1
          end
        elseif self.Index < 0 or self.Index > #self.Target then
          if self.Target[#self.Target] == self.Data[i - 1] then
            table.remove(self.Target, #self.Target)
            break
          end
        elseif self.Target[self.Index] == self.Data[i - 1] then
          table.remove(self.Target, self.Index)
          break
        end
      end
    end
    self:Removed()
    self:Out()
  end
end
function ListWriter:CopyTable()
  self.Target = {}
  for i, x in pairs(self.Input) do
    self.Target[i] = x
  end
end
export = ListWriter
ListWriter = nil
