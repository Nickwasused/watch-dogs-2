TextToScreen = {Duration = 1, Color = "white"}
function TextToScreen:Create(cbox)
end
function TextToScreen:Init(cbox)
end
function TextToScreen:ShutDown()
end
function TextToScreen:In()
  local Out = self.Out
  if self.Text ~= nil then
    if self.Duration == nil then
      self.Duration = 1
    end
    if self.Color == nil then
      self.Color = "white"
    end
    if type(self.Text) ~= "table" then
      DrawTextToScreen(self.Text, self.Duration, self.Color)
    else
      local textToPrint = "Array="
      for i, v in self.Text, nil, nil do
        textToPrint = textToPrint .. " " .. v
      end
      DrawTextToScreen(textToPrint, self.Duration, self.Color)
    end
  end
  Out(self)
end
export = TextToScreen
TextToScreen = nil
