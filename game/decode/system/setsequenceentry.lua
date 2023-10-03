SetSequenceEntry = {}
function SetSequenceEntry:Create(cbox)
end
function SetSequenceEntry:Init(cbox)
end
function SetSequenceEntry:ShutDown()
end
function SetSequenceEntry:Set()
  if self.CinematicEntity ~= nil and self.SequenceID ~= nil and self.TrackID ~= nil and self.EntityID ~= nil then
    GetSequenceManager():DominoModifySequenceEntry(self.CinematicEntity, self.SequenceID, self.TrackID, self.EntityID)
    return self:Out()
  end
end
export = SetSequenceEntry
SetSequenceEntry = nil
