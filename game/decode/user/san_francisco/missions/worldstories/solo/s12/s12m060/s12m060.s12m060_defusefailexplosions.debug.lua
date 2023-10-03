export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3532819719.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/556803423.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3898191582.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S12M060_DefuseFailExplosions"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions"
  self.BombsExploded = DummyFunction
  self.Bunker_Explosion_NW_3 = "9223372067225348231"
  self.Bunker_Explosion_NW_5 = "9223372067225348235"
  self.Bunker_Explosion_NW_4 = "9223372067225348233"
  self.Bunker_ExplosionSoundPoint_NW_1 = "9223372067225348227"
  self.Bunker_ExplosionSoundPoint_NW_2 = "9223372067225348229"
  self.Bunker_ExplosionSound_Large = "soundbinary/3532819719.bnk"
  self.Bunker_Explosion_Final = "soundbinary/3898191582.bnk"
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1301385"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_68 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_68
  l0._graph = self
  l0._name = "box_PlaySound_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|43531490"
  l0.Out = self.f_box_PlaySound_v2_68_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_50 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_50
  l0._graph = self
  l0._name = "box_PlaySound_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|330628129"
  l0.Out = self.f_box_PlaySound_v2_50_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|351196863"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_55 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_55
  l0._graph = self
  l0._name = "box_PlaySound_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|393522840"
  l0.Out = self.f_box_PlaySound_v2_55_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_19 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_19
  l0._graph = self
  l0._name = "box_Timer_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|419629737"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_52 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_52
  l0._graph = self
  l0._name = "box_PlaySound_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|502528638"
  l0.Out = self.f_box_PlaySound_v2_52_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_60 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_60
  l0._graph = self
  l0._name = "box_PlaySound_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|512399969"
  l0.Out = self.f_box_PlaySound_v2_60_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|584153814"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_38 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_38
  l0._graph = self
  l0._name = "box_PlaySound_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|592614434"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_73 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_73
  l0._graph = self
  l0._name = "box_PlaySound_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|604609811"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|634491702"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_40 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_40
  l0._graph = self
  l0._name = "box_Timer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|639072766"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_25 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_25
  l0._graph = self
  l0._name = "box_Timer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|643434655"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_53 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_53
  l0._graph = self
  l0._name = "box_PlaySound_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|678251128"
  l0.Out = self.f_box_PlaySound_v2_53_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_57 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_57
  l0._graph = self
  l0._name = "box_PlaySound_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|691949166"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_47 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_47
  l0._graph = self
  l0._name = "box_Timer_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|695069876"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_47_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_70 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_70
  l0._graph = self
  l0._name = "box_PlaySound_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|735143516"
  l0.Out = self.f_box_PlaySound_v2_70_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_58 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_58
  l0._graph = self
  l0._name = "box_PlaySound_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|878458404"
  l0.Out = self.f_box_PlaySound_v2_58_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_71 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_71
  l0._graph = self
  l0._name = "box_PlaySound_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|906823905"
  l0.Out = self.f_box_PlaySound_v2_71_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|912490945"
  l0.Out = self.f_box_PlaySound_v2_62_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|930871101"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_72 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_72
  l0._graph = self
  l0._name = "box_PlaySound_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|993051492"
  l0.Out = self.f_box_PlaySound_v2_72_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_67 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_67
  l0._graph = self
  l0._name = "box_PlaySound_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1013162956"
  l0.Out = self.f_box_PlaySound_v2_67_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1064289829"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_31 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_31
  l0._graph = self
  l0._name = "box_Timer_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1071572730"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_31_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_22 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1147458162"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1179483467"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_28 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_28
  l0._graph = self
  l0._name = "box_Timer_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1209073211"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_61 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_61
  l0._graph = self
  l0._name = "box_Timer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1267447038"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1529332551"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_56 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_56
  l0._graph = self
  l0._name = "box_PlaySound_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1569783477"
  l0.Out = self.f_box_PlaySound_v2_56_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_37 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_37
  l0._graph = self
  l0._name = "box_Timer_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1666358293"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_37_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_59 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_59
  l0._graph = self
  l0._name = "box_PlaySound_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1683119762"
  l0.Out = self.f_box_PlaySound_v2_59_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_33 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_33
  l0._graph = self
  l0._name = "box_Timer_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1739747823"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_33_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_51 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_51
  l0._graph = self
  l0._name = "box_PlaySound_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1837451823"
  l0.Out = self.f_box_PlaySound_v2_51_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_44 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1858107543"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_24 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_24
  l0._graph = self
  l0._name = "box_Timer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1882390538"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_66 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_66
  l0._graph = self
  l0._name = "box_PlaySound_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1915689035"
  l0.Out = self.f_box_PlaySound_v2_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_35 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_35
  l0._graph = self
  l0._name = "box_Timer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1971286937"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_64 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_64
  l0._graph = self
  l0._name = "box_PlaySound_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1978917616"
  l0.Out = self.f_box_PlaySound_v2_64_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_69 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_69
  l0._graph = self
  l0._name = "box_PlaySound_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1982205456"
  l0.Out = self.f_box_PlaySound_v2_69_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_65 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_65
  l0._graph = self
  l0._name = "box_PlaySound_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2019668034"
  l0.Out = self.f_box_PlaySound_v2_65_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_54 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_54
  l0._graph = self
  l0._name = "box_PlaySound_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2034528787"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_1 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_1
  l0._graph = self
  l0._name = "box_Timer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2106766030"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_63 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_63
  l0._graph = self
  l0._name = "box_PlaySound_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2117144491"
  l0.Out = self.f_box_PlaySound_v2_63_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|816646504"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_21_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_21_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2070670132", "2070670132", "S12M060_DefuseFailExplosions", "Enable", "box_Ordered_Output_21.In", self, l0)
  l0:In()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977967"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1440452951"
  l0.Started = self.f_box_ParticleFXController_v2_6_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_8
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|167804662", "167804662", "S12M060_DefuseFailExplosions", "box_Timer_v2_8.TimeElapsed", "box_ParticleFXController_v2_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_19
  l0.Seconds = 0.3
  l0 = self.box_PlaySound_v2_68
  l1 = self.box_Timer_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1126882721", "1126882721", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_68.Out", "box_Timer_v2_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_34_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_60
  l0.Entity = "9223372067225348893"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|423561468", "423561468", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_34.Started", "box_PlaySound_v2_60.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_27_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_53
  l0.Entity = self.Bunker_Explosion_NW_5
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|118160772", "118160772", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_27.Started", "box_PlaySound_v2_53.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_51
  l0.Entity = self.Bunker_ExplosionSoundPoint_NW_2
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|455400372", "455400372", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_5.Started", "box_PlaySound_v2_51.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_9_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_72
  l0.Entity = "9223372067225348909"
  l0.SoundId = self.Bunker_ExplosionSound_Large
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|652520826", "652520826", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_9.Started", "box_PlaySound_v2_72.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_14_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_62
  l0.Entity = "9223372067225348911"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|649537988", "649537988", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_14.Started", "box_PlaySound_v2_62.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_2
  l0.Seconds = 0.25
  l0 = self.box_PlaySound_v2_50
  l1 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|658332653", "658332653", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_50.Out", "box_Timer_v2_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977983"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|193373709"
  l0.Started = self.f_box_ParticleFXController_v2_5_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_2
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1549041224", "1549041224", "S12M060_DefuseFailExplosions", "box_Timer_v2_2.TimeElapsed", "box_ParticleFXController_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_29_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_54
  l0.Entity = self.Bunker_Explosion_NW_4
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1452303630", "1452303630", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_29.Started", "box_PlaySound_v2_54.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_1
  l0.Seconds = 0.25
  l0 = self.box_PlaySound_v2_55
  l1 = self.box_Timer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|940408587", "940408587", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_55.Out", "box_Timer_v2_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_19_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978627"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2097071785"
  l0.Started = self.f_box_ParticleFXController_v2_18_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_19
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1729412496", "1729412496", "S12M060_DefuseFailExplosions", "box_Timer_v2_19.TimeElapsed", "box_ParticleFXController_v2_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_28
  l0.Seconds = 0.3
  l0 = self.box_PlaySound_v2_52
  l1 = self.box_Timer_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2006454657", "2006454657", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_52.Out", "box_Timer_v2_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_60_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_31
  l0.Seconds = 0.25
  l0 = self.box_PlaySound_v2_60
  l1 = self.box_Timer_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|687775232", "687775232", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_60.Out", "box_Timer_v2_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_17_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_65
  l0.Entity = "9223372067225348913"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1151134189", "1151134189", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_17.Started", "box_PlaySound_v2_65.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977979"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|538621224"
  l0.Started = self.f_box_ParticleFXController_v2_17_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|153763457", "153763457", "S12M060_DefuseFailExplosions", "box_Timer_v2_15.TimeElapsed", "box_ParticleFXController_v2_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977971"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1465077091"
  l0.Started = self.f_box_ParticleFXController_v2_11_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_10
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|409102245", "409102245", "S12M060_DefuseFailExplosions", "box_Timer_v2_10.TimeElapsed", "box_ParticleFXController_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_40_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978633"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|655371388"
  l0.Started = self.f_box_ParticleFXController_v2_39_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_40
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|287651300", "287651300", "S12M060_DefuseFailExplosions", "box_Timer_v2_40.TimeElapsed", "box_ParticleFXController_v2_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_25_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977975"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|980856498"
  l0.Started = self.f_box_ParticleFXController_v2_20_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_25
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1403730250", "1403730250", "S12M060_DefuseFailExplosions", "box_Timer_v2_25.TimeElapsed", "box_ParticleFXController_v2_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_39_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_66
  l0.Entity = "9223372067225348917"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|773465497", "773465497", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_39.Started", "box_PlaySound_v2_66.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_53_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_26
  l0.Seconds = 0.25
  l0 = self.box_PlaySound_v2_53
  l1 = self.box_Timer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|190919345", "190919345", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_53.Out", "box_Timer_v2_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_47_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978629"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1745347781"
  l0.Started = self.f_box_ParticleFXController_v2_46_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_47
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1557655214", "1557655214", "S12M060_DefuseFailExplosions", "box_Timer_v2_47.TimeElapsed", "box_ParticleFXController_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_32_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_57
  l0.Entity = "9223372067225348895"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|777306329", "777306329", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_32.Started", "box_PlaySound_v2_57.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_45
  l0.Seconds = 0.23
  l0 = self.box_PlaySound_v2_70
  l1 = self.box_Timer_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|459276766", "459276766", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_70.Out", "box_Timer_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977965"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|935680859"
  l0.Started = self.f_box_ParticleFXController_v2_3_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|246119302", "246119302", "S12M060_DefuseFailExplosions", "box_Ordered_Output_21.Out", "box_ParticleFXController_v2_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_16
  l0.Seconds = 0.25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1797964577", "1797964577", "S12M060_DefuseFailExplosions", "box_Ordered_Output_21.Out", "box_Timer_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_24
  l0.Seconds = 0.6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|279981188", "279981188", "S12M060_DefuseFailExplosions", "box_Ordered_Output_21.Out", "box_Timer_v2_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_21_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_25
  l0.Seconds = 0.75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1131416875", "1131416875", "S12M060_DefuseFailExplosions", "box_Ordered_Output_21.Out", "box_Timer_v2_25.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_21_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_73
  l0.SoundId = "soundbinary/556803423.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1133037339", "1133037339", "S12M060_DefuseFailExplosions", "box_Ordered_Output_21.Out", "box_PlaySound_v2_73.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_43_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_71
  l0.Entity = "9223372067225348903"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1748233793", "1748233793", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_43.Started", "box_PlaySound_v2_71.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l0.Seconds = 0.5
  l0 = self.box_PlaySound_v2_58
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1494292351", "1494292351", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_58.Out", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_71_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_47
  l0.Seconds = 0.4
  l0 = self.box_PlaySound_v2_71
  l1 = self.box_Timer_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1249010562", "1249010562", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_71.Out", "box_Timer_v2_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l0.Seconds = 0.4
  l0 = self.box_PlaySound_v2_62
  l1 = self.box_Timer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|583335822", "583335822", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_62.Out", "box_Timer_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978637"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1193115383"
  l0.Started = self.f_box_ParticleFXController_v2_12_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_13
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|964721158", "964721158", "S12M060_DefuseFailExplosions", "box_Timer_v2_13.TimeElapsed", "box_ParticleFXController_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_7_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_56
  l0.Entity = "9223372067225348891"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|374192200", "374192200", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_7.Started", "box_PlaySound_v2_56.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_3_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_50
  l0.Entity = self.Bunker_ExplosionSoundPoint_NW_1
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|441688489", "441688489", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_3.Started", "box_PlaySound_v2_50.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_20_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_67
  l0.Entity = "9223372067225348901"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|250258061", "250258061", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_20.Started", "box_PlaySound_v2_67.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_72_Out()
  local l0
  self = self._graph
  l0 = self.box_PlaySound_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1227933853", "1227933853", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_72.Out", "BombsExploded", l0, self)
  self:BombsExploded()
end
function export:f_box_ParticleFXController_v2_4_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_58
  l0.Entity = "9223372067225348889"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|639731480", "639731480", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_4.Started", "box_PlaySound_v2_58.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_67_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l0.Seconds = 0.25
  l0 = self.box_PlaySound_v2_67
  l1 = self.box_Timer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2130402760", "2130402760", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_67.Out", "box_Timer_v2_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977969"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1000917192"
  l0.Started = self.f_box_ParticleFXController_v2_4_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_16
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1555023612", "1555023612", "S12M060_DefuseFailExplosions", "box_Timer_v2_16.TimeElapsed", "box_ParticleFXController_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_31_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978623"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1121340159"
  l0.Started = self.f_box_ParticleFXController_v2_30_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_31
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1808022140", "1808022140", "S12M060_DefuseFailExplosions", "box_Timer_v2_31.TimeElapsed", "box_ParticleFXController_v2_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_30_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_59
  l0.Entity = "9223372067225348897"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|6254674", "6254674", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_30.Started", "box_PlaySound_v2_59.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977973"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1627623682"
  l0.Started = self.f_box_ParticleFXController_v2_23_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_22
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1705851801", "1705851801", "S12M060_DefuseFailExplosions", "box_Timer_v2_22.TimeElapsed", "box_ParticleFXController_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978639"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1569395938"
  l0.Started = self.f_box_ParticleFXController_v2_42_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_45
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1724121231", "1724121231", "S12M060_DefuseFailExplosions", "box_Timer_v2_45.TimeElapsed", "box_ParticleFXController_v2_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_12_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_63
  l0.Entity = "9223372067225348921"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|718854539", "718854539", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_12.Started", "box_PlaySound_v2_63.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_28_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978615"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|109841625"
  l0.Started = self.f_box_ParticleFXController_v2_27_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_28
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|830730677", "830730677", "S12M060_DefuseFailExplosions", "box_Timer_v2_28.TimeElapsed", "box_ParticleFXController_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_61_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978635"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1300767307"
  l0.Started = self.f_box_ParticleFXController_v2_36_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_61
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1688452318", "1688452318", "S12M060_DefuseFailExplosions", "box_Timer_v2_61.TimeElapsed", "box_ParticleFXController_v2_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_36_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_38
  l0.Entity = "9223372067225348919"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|652652373", "652652373", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_36.Started", "box_PlaySound_v2_38.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_6_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_52
  l0.Entity = self.Bunker_Explosion_NW_3
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|2034818389", "2034818389", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_6.Started", "box_PlaySound_v2_52.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_11_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_55
  l0.Entity = "9223372067225348887"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|505003753", "505003753", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_11.Started", "box_PlaySound_v2_55.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978617"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|353690964"
  l0.Started = self.f_box_ParticleFXController_v2_29_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_26
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|52794978", "52794978", "S12M060_DefuseFailExplosions", "box_Timer_v2_26.TimeElapsed", "box_ParticleFXController_v2_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_42_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1803581330"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|608740661", "608740661", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_42.Started", "box_Ordered_Output_48.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_35
  l0.Seconds = 0.3
  l0 = self.box_PlaySound_v2_56
  l1 = self.box_Timer_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|645496897", "645496897", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_56.Out", "box_Timer_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_23_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_68
  l0.Entity = "9223372067225348899"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1342518207", "1342518207", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_23.Started", "box_PlaySound_v2_68.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_37_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978631"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1936716276"
  l0.Started = self.f_box_ParticleFXController_v2_41_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_37
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|835849289", "835849289", "S12M060_DefuseFailExplosions", "box_Timer_v2_37.TimeElapsed", "box_ParticleFXController_v2_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_33
  l0.Seconds = 0.3
  l0 = self.box_PlaySound_v2_59
  l1 = self.box_Timer_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|172204054", "172204054", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_59.Out", "box_Timer_v2_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_33_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978621"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|715119465"
  l0.Started = self.f_box_ParticleFXController_v2_32_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_33
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1050859903", "1050859903", "S12M060_DefuseFailExplosions", "box_Timer_v2_33.TimeElapsed", "box_ParticleFXController_v2_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_46_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_70
  l0.Entity = "9223372067225348907"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1752199542", "1752199542", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_46.Started", "box_PlaySound_v2_70.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765976085"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|260939658"
  l0.Started = self.f_box_ParticleFXController_v2_9_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1452209439", "1452209439", "S12M060_DefuseFailExplosions", "box_Ordered_Output_48.Out", "box_ParticleFXController_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066766156658"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|219003200"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|352290111", "352290111", "S12M060_DefuseFailExplosions", "box_Ordered_Output_48.Out", "box_ParticleFXController_v2_49.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_8
  l0.Seconds = 0.4
  l0 = self.box_PlaySound_v2_51
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|789670", "789670", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_51.Out", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978625"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|831951856"
  l0.Started = self.f_box_ParticleFXController_v2_43_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_44
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|41513978", "41513978", "S12M060_DefuseFailExplosions", "box_Timer_v2_44.TimeElapsed", "box_ParticleFXController_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_24_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977977"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|293422103"
  l0.Started = self.f_box_ParticleFXController_v2_14_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_24
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|479318302", "479318302", "S12M060_DefuseFailExplosions", "box_Timer_v2_24.TimeElapsed", "box_ParticleFXController_v2_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_37
  l0.Seconds = 0.25
  l0 = self.box_PlaySound_v2_66
  l1 = self.box_Timer_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|575977626", "575977626", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_66.Out", "box_Timer_v2_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_41_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_64
  l0.Entity = "9223372067225348915"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|294456812", "294456812", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_41.Started", "box_PlaySound_v2_64.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_35_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978619"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|100971639"
  l0.Started = self.f_box_ParticleFXController_v2_34_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_35
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1037027177", "1037027177", "S12M060_DefuseFailExplosions", "box_Timer_v2_35.TimeElapsed", "box_ParticleFXController_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_64_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_61
  l0.Seconds = 0.4
  l0 = self.box_PlaySound_v2_64
  l1 = self.box_Timer_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|879562229", "879562229", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_64.Out", "box_Timer_v2_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_69_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_44
  l0.Seconds = 0.2
  l0 = self.box_PlaySound_v2_69
  l1 = self.box_Timer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|1153920937", "1153920937", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_69.Out", "box_Timer_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_13
  l0.Seconds = 0.5
  l0 = self.box_PlaySound_v2_65
  l1 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|867764132", "867764132", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_65.Out", "box_Timer_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_18_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_69
  l0.Entity = "9223372067225348905"
  l0.SoundId = self.Bunker_Explosion_Final
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|231575920", "231575920", "S12M060_DefuseFailExplosions", "box_ParticleFXController_v2_18.Started", "box_PlaySound_v2_69.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_1_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977981"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|935120992"
  l0.Started = self.f_box_ParticleFXController_v2_7_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_1
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|79422045", "79422045", "S12M060_DefuseFailExplosions", "box_Timer_v2_1.TimeElapsed", "box_ParticleFXController_v2_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_40
  l0.Seconds = 0.32
  l0 = self.box_PlaySound_v2_63
  l1 = self.box_Timer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_DefuseFailExplosions|993284420", "993284420", "S12M060_DefuseFailExplosions", "box_PlaySound_v2_63.Out", "box_Timer_v2_40.Start", l0, l1)
  l1:Start()
end
function export:BombsExploded()
end
_compilerVersion = 4
