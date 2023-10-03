VideoRecordingController = {}
function VideoRecordingController:Create(cbox)
end
function VideoRecordingController:Init(cbox)
end
function VideoRecordingController:ShutDown()
end
function VideoRecordingController:StartVideoRecording()
  StartRecording(self.MomentId.id)
  self:RecordingStarted()
end
function VideoRecordingController:StopVideoRecording()
  StopRecording()
  self:RecordingStopped()
end
export = VideoRecordingController
VideoRecordingController = nil
