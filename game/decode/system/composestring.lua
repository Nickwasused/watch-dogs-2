ComposeString = {}
function ComposeString:Create(cbox)
  self.String = {}
end
function ComposeString:Init(cbox)
end
function ComposeString:ShutDown()
end
function ComposeString:Compose()
  self.Target = ""
  if self.Separator == nil then
    self.Separator = ""
  end
  for i = 1, self._DynamicAnchors.String do
    if self.String[i - 1] ~= nil then
      self.Target = string.format("%s%s", self.Target, self.String[i - 1])
      if self.String[i] ~= nil then
        self.Target = string.format("%s%s", self.Target, self.Separator)
      end
    end
  end
  return self:Out()
end
export = ComposeString
ComposeString = nil
