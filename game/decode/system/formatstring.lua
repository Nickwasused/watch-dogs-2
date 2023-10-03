FormatString = {}
function FormatString:Create(cbox)
  self.String = {}
  self.Float = {}
  self.Integer = {}
  self.Boolean = {}
end
function FormatString:Init(cbox)
end
function FormatString:ShutDown()
end
function FormatString:Format()
  self.Target = ""
  currIndexString = 0
  currIndexFloat = 0
  currIndexInteger = 0
  currIndexBoolean = 0
  params = {}
  errorOutput = ""
  for w in string.gmatch(self.FormatString, "%%.-([%a])") do
    if w == "s" then
      if currIndexString < self._DynamicAnchors.String then
        table.insert(params, self.String[currIndexString])
        currIndexString = currIndexString + 1
      else
        errorOutput = "<ERROR in FormatString:  not enough STRING data inputs>"
        break
      end
    elseif w == "f" then
      if currIndexFloat < self._DynamicAnchors.Float then
        table.insert(params, self.Float[currIndexFloat])
        currIndexFloat = currIndexFloat + 1
      else
        errorOutput = "<ERROR in FormatString:  not enough FLOAT data inputs>"
        break
      end
    elseif w == "d" then
      if currIndexInteger < self._DynamicAnchors.Integer then
        table.insert(params, self.Integer[currIndexInteger])
        currIndexInteger = currIndexInteger + 1
      else
        errorOutput = "<ERROR in FormatString:  not enough INTEGER data inputs>"
        break
      end
    elseif w == "b" then
      if currIndexBoolean < self._DynamicAnchors.Boolean then
        table.insert(params, tostring(self.Boolean[currIndexBoolean]))
        currIndexBoolean = currIndexBoolean + 1
      else
        errorOutput = "<ERROR in FormatString:  not enough BOOLEAN data inputs>"
        break
      end
    else
      errorOutput = "<ERROR in FormatString:  unknown parameter in FORMATSTRING data input:  %" .. w .. ">"
      break
    end
  end
  if errorOutput == "" then
    newFormatString = string.gsub(self.FormatString, "%%b", "%%s")
    self.Target = string.format(newFormatString, unpack(params))
  else
    self.Target = errorOutput
  end
  self:Formatted()
end
export = FormatString
FormatString = nil
