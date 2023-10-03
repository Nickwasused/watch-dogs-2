TestIfNil = {}
function TestIfNil:Create(cbox)
end
function TestIfNil:Init(cbox)
end
function TestIfNil:ShutDown()
end
function TestIfNil:In()
  if self.Integer == nil and self.Float == nil and self.Boolean == nil and self.String == nil and self.Entity == nil and self.Animation == nil and self.Oasis == nil and self.List == nil and self.Sound == nil and self.DBObject == nil then
    return self:Is_nil()
  else
    return self:Is_not_nil()
  end
end
export = TestIfNil
TestIfNil = nil
