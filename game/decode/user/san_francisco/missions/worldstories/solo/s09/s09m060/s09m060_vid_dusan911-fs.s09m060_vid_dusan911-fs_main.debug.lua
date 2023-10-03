export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M060_VID_Dusan911-FS_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main"
  self.EndVideo = DummyFunction
  self.PlayerEntity = nil
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|1132651092"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|1597477212"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|1789087704"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|1773475295", "1773475295", "S09M060_VID_Dusan911-FS_Main", "In", "box_Timer_v2_2.Start", self, l0)
  l0:Start()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372049192219231"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_Dusan911-FS_VID/s09_dusan911-fs_vid.seq"
  l0 = self.box_Timer_v2_2
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|1283409928", "1283409928", "S09M060_VID_Dusan911-FS_Main", "box_Timer_v2_2.TimeElapsed", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|412131985", "412131985", "S09M060_VID_Dusan911-FS_Main", "box_PlaySequence_v5_1.Finished", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|433033852", "433033852", "S09M060_VID_Dusan911-FS_Main", "box_PlaySequence_v5_1.Skipped", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_3_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060_VID_Dusan911-FS.domino|@S09M060_VID_Dusan911-FS_Main|34291056", "34291056", "S09M060_VID_Dusan911-FS_Main", "box_MultipleOR_3.Out", "EndVideo", l0, self)
  self:EndVideo()
end
function export:OnEnter_box_MultipleOR_3()
end
function export:EndVideo()
end
_compilerVersion = 4
