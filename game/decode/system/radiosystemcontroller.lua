RadioSystemController = {}
function RadioSystemController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibEvents.lua")
end
function RadioSystemController:Init(cbox)
end
function RadioSystemController:Unregister()
  LuaLibEvents:UnregisterEvent(self, "Event_BroadcastFinished", GetLocalPlayerEntityId())
end
function RadioSystemController:ShutDown()
  self:Unregister()
end
function RadioSystemController:StartBroadcast()
  if self.RadioBlog ~= nil then
    if LuaLibCore:IsPlugged(self, "BroadcastFinished") then
      LuaLibEvents:RegisterEvent(self, "Event_BroadcastFinished", GetLocalPlayerEntityId(), "RadioBlogFinishedEvent")
    end
    StartRadioBroadcast(self.RadioBlog)
  end
  self:BroadcastStarted()
end
function RadioSystemController:Event_BroadcastFinished()
  self:Unregister()
  self:BroadcastFinished()
end
export = RadioSystemController
RadioSystemController = nil
