export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Cinematic"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic"
  self.Finished = DummyFunction
  self.Started = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_15 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_15
  l0._graph = self
  l0._name = "box_CinematicPrep_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|1024753277"
  l0.PreOut = self.f_box_CinematicPrep_15_PreOut
  l0.PostOut = DummyFunction
  self.box_CinematicPrep_14 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_14
  l0._graph = self
  l0._name = "box_CinematicPrep_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|1163796546"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_14_PostOut
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|1211234041"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_PlaySequence_v5_13 = cbox:CreateBox("Domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_13
  l0._graph = self
  l0._name = "box_PlaySequence_v5_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|1849884397"
  l0.Started = self.f_box_PlaySequence_v5_13_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_13_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_13_Finished
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = self.box_CinematicPrep_15
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = self.KeepDrones
  l0.ForceStopVehicle = self.ForceStopVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|2108073247", "2108073247", "Cinematic", "Start", "box_CinematicPrep_15.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_15_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_13
  l0.SceneEntity = self.SceneEntity
  l0.SequenceFile = self.SequenceFile
  l0 = self.box_CinematicPrep_15
  l1 = self.box_PlaySequence_v5_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|1653462545", "1653462545", "Cinematic", "box_CinematicPrep_15.PreOut", "box_PlaySequence_v5_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_14_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|498442255", "498442255", "Cinematic", "box_CinematicPrep_14.PostOut", "Finished", l0, self)
  self:Finished()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_14
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = self.KeepDrones
  l0.ForceStopVehicle = self.ForceStopVehicle
  l0 = self.box_MultipleOR_12
  l1 = self.box_CinematicPrep_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|2142835078", "2142835078", "Cinematic", "box_MultipleOR_12.Out", "box_CinematicPrep_14.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_13_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|1756041538", "1756041538", "Cinematic", "box_PlaySequence_v5_13.Finished", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_13_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|1981761969", "1981761969", "Cinematic", "box_PlaySequence_v5_13.Skipped", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_13_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Cinematic.domino|@Cinematic|198547047", "198547047", "Cinematic", "box_PlaySequence_v5_13.Started", "Started", l0, self)
  self:Started()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:Finished()
end
function export:Started()
end
_compilerVersion = 4
