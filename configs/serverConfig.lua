Server = {
	activeAutomateds = {}
}

Doors = {}
DoorsFnc = {} 

Doors.ShownNotifs = {}

Doors.Player = {}

Doors.Utils = {
	ped = 0,
	pedCoords = vector3(0,0,0),
	isCuffed = false,
	coolDown = false
}

Doors.DoorList = {
	sandyPd_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1858.9814453125, 3685.7302246094, 33.974636077881), maxDst = 6.0, auto = { distance = 5.0, rate = 1.0 }}
		},
		doors = {
			{model = 1286535678, coords = vec3(1862.001953, 3687.521973, 33.015141)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_fence = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1846.5784912109, 3678.173828125, 33.974632263184), maxDst = 2.0}
		},
		doors = {
			{model = -1156020871, coords = vec3(1845.406982, 3677.485107, 34.611950)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_rear_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1823.2989501953, 3680.7233886719, 34.189178466797), maxDst = 2.0}
		},
		doors = {
			{model = -1501157055, coords = vec3(1823.863281, 3681.116943, 34.339008)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_cell_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1810.6053466797, 3675.6247558594, 34.189228057861), maxDst = 2.0}
		},
		doors = {
			{model = 2010487154, coords = vec3(1810.131104, 3676.464355, 34.396088)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_cell_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1808.9653320313, 3678.4262695313, 34.189228057861), maxDst = 2.0}
		},
		doors = {
			{model = 2010487154, coords = vec3(1808.629395, 3679.065430, 34.396088)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_cell_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1807.5303955078, 3681.03515625, 34.18924331665), maxDst = 2.0}
		},
		doors = {
			{model = 2010487154, coords = vec3(1807.131104, 3681.660400, 34.396088)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },
	
	sandyPd_to_cell = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1813.1767578125, 3674.8916015625, 34.233570098877), maxDst = 2.0}
		},
		doors = {
			{model = 2010487154, coords = vec3(1813.551270, 3675.055420, 34.396088)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_interog = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1812.6760253906, 3672.0798339844, 34.18924331665), maxDst = 2.0}
		},
		doors = {
			{model = 1364638935, coords = vec3(1812.306641, 3672.724365, 34.282230)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_toRearFromEntry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1830.0871582031, 3676.1540527344, 34.189147949219), maxDst = 2.0}
		},
		doors = {
			{model = -1264811159, coords = vec3(1830.650146, 3676.562256, 34.282230)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_officeFromEntry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1830.2338867188, 3673.1682128906, 34.189147949219), maxDst = 2.0}
		},
		doors = {
			{model = -1264811159, coords = vec3(1829.852783, 3673.788818, 34.282230)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_locker = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1837.5697021484, 3677.5708007813, 34.189178466797), maxDst = 2.0}
		},
		doors = {
			{model = 1364638935, coords = vec3(1838.006104, 3677.104004, 34.282230)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	sandyPd_entry_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(1836.171875, 3674.1303710938, 34.199081420898), maxDst = 2.0}
		},
		doors = {
			{model = -1501157055, coords = vec3(1837.378174, 3674.718262, 34.339008)},
			{model = -1501157055, coords = vec3(1835.126709, 3673.418457, 34.339008)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_entry_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(380.7673034668, -1593.4407958984, 30.051382064819), maxDst = 2.0}
		},
		doors = {
			{model = 1670919150, coords = vector3(379.78421020508, -1592.6057128906, 30.201282501221)},
			{model = 618295057, coords = vector3(381.77600097656, -1594.2769775391, 30.201282501221)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_entry_rear = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(370.58395385742, -1614.9934082031, 30.051361083984), maxDst = 2.0}
		},
		doors = {
			{model = 1670919150, coords = vector3(371.51196289063, -1615.8707275391, 30.201282501221)},
			{model = 618295057, coords = vector3(369.52017211914, -1614.1993408203, 30.201282501221)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_boss_office = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(362.34619140625, -1593.3043212891, 31.051416397095), maxDst = 2.0}
		},
		doors = {
			{model = -425870000, coords = vector3(361.60971069336, -1594.3302001953, 31.144569396973)},
			{model = -425870000, coords = vector3(363.14889526367, -1592.4958496094, 31.144569396973)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_jail_men_top = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(367.392578125, -1604.3536376953, 30.051361083984), maxDst = 2.0}
		},
		doors = {
			{model = -674638964, coords = vector3(368.26684570313, -1605.0159912109, 29.942127227783)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_jail_women_top = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(369.90228271484, -1606.4284667969, 30.051361083984), maxDst = 2.0}
		},
		doors = {
			{model = -674638964, coords = vector3(369.06692504883, -1605.6873779297, 29.942127227783)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_stairs_down_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(383.84997558594, -1602.5678710938, 30.051361083984), maxDst = 2.0}
		},
		doors = {
			{model = -1335406364, coords = vector3(384.42852783203, -1601.9597167969, 30.144508361816)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_stairs_down_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(375.16488647461, -1612.9578857422, 30.051364898682), maxDst = 2.0}
		},
		doors = {
			{model = -1335406364, coords = vector3(374.63595581055, -1613.6300048828, 30.144508361816)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_observ = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(375.0451965332, -1607.8370361328, 25.451566696167), maxDst = 2.0}
		},
		doors = {
			{model = -1335406364, coords = vector3(375.54299926758, -1608.1507568359, 25.544511795044)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_interog = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(372.45083618164, -1605.5504150391, 25.451566696167), maxDst = 2.0}
		},
		doors = {
			{model = -728950481, coords = vector3(371.95816040039, -1605.1427001953, 25.545440673828)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_to_lab = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(369.69436645508, -1599.5860595703, 25.451566696167), maxDst = 2.0}
		},
		doors = {
			{model = -1335406364, coords = vector3(368.86401367188, -1600.4317626953, 25.545440673828)},
			{model = -1335406364, coords = vector3(370.41070556641, -1598.5885009766, 25.545440673828)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(401.01684570313, -1609.5607910156, 29.316324234009), maxDst = 6.0}
		},
		doors = {
			{model = 1286535678, coords = vector3(397.88442993164, -1607.3837890625, 28.338136672974), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	davispd_small_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(392.69256591797, -1635.3016357422, 29.292070388794), maxDst = 2.0}
		},
		doors = {
			{model = -1156020871, coords = vector3(391.86016845703, -1636.0701904297, 29.974376678467)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(-437.85848999023, 6013.5966796875, 32.288593292236), maxDst = 2.0}
		},
		doors = {
			{model = 965382714, coords = vector3(-438.58654785156, 6014.3618164063, 32.288513183594)},
			{model = 733214349, coords = vector3(-437.17169189453, 6012.947265625, 32.288513183594)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_office_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-444.54141235352, 6016.6918945313, 32.288684844971), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-443.95999145508, 6017.162109375, 32.288513183594)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_hallway_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-447.33642578125, 6004.0903320313, 32.288684844971), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-446.65640258789, 6003.453125, 32.288513183594)},
			{model = 1857649811, coords = vector3(-448.0712890625, 6004.8681640625, 32.288513183594)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_exit_rear = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-454.11343383789, 5997.2387695313, 32.288646697998), maxDst = 2.0}
		},
		doors = {
			{model = 965382714, coords = vector3(-453.48675537109, 5996.6372070313, 32.288513183594)},
			{model = 733214349, coords = vector3(-454.90167236328, 5998.0517578125, 32.288513183594)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_stairs_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-450.80072021484, 6004.25390625, 32.288673400879), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-451.42471313477, 6003.4204101563, 32.288513183594)},
			{model = 1857649811, coords = vector3(-450.00982666016, 6004.8354492188, 32.288513183594)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_stairs_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-450.78787231445, 6004.1806640625, 27.581521987915), maxDst = 2.0}
		},
		doors = {
			{model = 1857649811, coords = vector3(-450.00982666016, 6004.8354492188, 27.581214904785)},
			{model = 1362051455, coords = vector3(-451.42471313477, 6003.4204101563, 27.581214904785)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_identification = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-450.03854370117, 6000.0073242188, 27.581521987915), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-449.5087890625, 5999.4682617188, 27.581214904785)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_to_interog = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-447.43103027344, 6000.7338867188, 27.581516265869), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-446.58392333984, 6001.3999023438, 27.581214904785)},
			{model = 1857649811, coords = vector3(-447.99884033203, 5999.9848632813, 27.581214904785)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_interog_left_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-443.54296875, 6000.3344726563, 27.581525802612), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-443.06121826172, 5999.8740234375, 27.581214904785)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_interog_left_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-441.54098510742, 5998.2314453125, 27.581491470337), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-441.94155883789, 5998.7543945313, 27.581214904785)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_interog_right_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-447.03094482422, 5996.94921875, 27.58148765564), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-446.47994995117, 5996.46875, 27.581214904785)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_interog_right_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-444.80795288086, 5994.8334960938, 27.581533432007), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-445.35357666016, 5995.3422851563, 27.581214904785)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_to_jail = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-444.11050415039, 6007.4033203125, 27.581525802612), maxDst = 2.0}
		},
		doors = {
			{model = -594854737, coords = vector3(-443.64050292969, 6006.97265625, 27.731000900269)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_to_cells = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-442.62579345703, 6012.0439453125, 27.581523895264), maxDst = 1.5}
		},
		doors = {
			{model = -594854737, coords = vector3(-442.24334716797, 6012.6196289063, 27.731000900269)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_cell_right_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-442.87619018555, 6014.9721679688, 27.581523895264), maxDst = 1.0}
		},
		doors = {
			{model = -594854737, coords = vector3(-443.39007568359, 6015.4360351563, 27.731000900269)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_cell_right_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-445.80117797852, 6017.8935546875, 27.581521987915), maxDst = 1.0}
		},
		doors = {
			{model = -594854737, coords = vector3(-446.36044311523, 6018.4067382813, 27.731000900269)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_cell_left_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-445.41159057617, 6012.3823242188, 27.581521987915), maxDst = 1.0}
		},
		doors = {
			{model = -594854737, coords = vector3(-445.94567871094, 6012.8803710938, 27.731000900269)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_3_cell_left_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-448.52450561523, 6015.3286132813, 27.581495285034), maxDst = 1.0}
		},
		doors = {
			{model = -594854737, coords = vector3(-448.91604614258, 6015.8510742188, 27.731000900269)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_2_stairs = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-450.80331420898, 6004.248046875, 36.995853424072), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-451.42471313477, 6003.4204101563, 36.9958152771)},
			{model = 1857649811, coords = vector3(-450.00982666016, 6004.8354492188, 36.9958152771)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	paletopd_2_armory = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-446.97058105469, 6011.98046875, 36.995624542236), maxDst = 2.0}
		},
		doors = {
			{model = 1362051455, coords = vector3(-447.44448852539, 6011.5122070313, 36.9958152771)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_entry_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(434.78454589844, -981.89276123047, 30.689977645874), maxDst = 2.0}
		},
		doors = {
			{model =-1547307588, coords = vector3(434.74444580078, -983.078125, 30.81530380249)},
			{model =-1547307588, coords = vector3(434.74444580078, -980.75555419922, 30.81530380249)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },
	
	mrpd_entrance_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(440.52008056641, -986.23345947266, 30.823192596436), maxDst = 2.0}
		},
		doors = {
			{model =-96679321, coords = vector3(440.52008056641, -986.23345947266, 30.823192596436)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_entrance_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(440.52008056641, -977.60107421875, 30.823192596436), maxDst = 2.0}
		},
		doors = {
			{model =-1406685646, coords = vector3(440.52008056641, -977.60107421875, 30.823192596436)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_entry_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(457.04992675781, -972.23388671875, 30.710111618042), maxDst = 3.0}
		},
		doors = {
			{model =-1547307588, coords = vector3(455.88616943359, -972.25427246094, 30.815307617188)},
			{model =-1547307588, coords = vector3(458.20874023438, -972.25427246094, 30.815307617188)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },
	
	mrpd_entry_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(441.94552612305, -998.87847900391, 30.726348876953), maxDst = 3.0}
		},
		doors = {
			{model =-1547307588, coords = vector3(443.06176757812, -998.74621582031, 30.81530380249)},
			{model =-1547307588, coords = vector3(440.73919677734, -998.74621582031, 30.81530380249)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_entry_roof = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(464.30856323242, -984.52844238281, 43.771240234375), maxDst = 3.0}
		},
		doors = {
			{model =-692649124, coords = vector3(464.30856323242, -984.52844238281, 43.771240234375)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_rear_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(494.90075683594, -1020.0621337891, 27.930063247681), maxDst = 5.0},
			{coords = vector3(482.05096435547, -1020.3302612305, 27.924043655396), maxDst = 5.0}
		},
		doors = {
			{model =-1603817716, coords = vector3(488.8948059082, -1017.2099609375, 27.145833969116)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_entry_read = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(468.56173706055, -1014.6272583008, 26.423267364502), maxDst = 3.0}
		},
		doors = {
			{model =-692649124, coords = vector3(467.36862182617, -1014.4060058594, 26.483816146851)},
			{model =-692649124, coords = vector3(469.77426147461, -1014.4060058594, 26.483816146851)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_cell_entry_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(476.61569213867, -1008.8754272461, 26.480054855347), maxDst = 2.0}
		},
		doors = {
			{model =-53345114, coords = vector3(476.61569213867, -1008.8754272461, 26.480054855347)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_cell_entry_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(481.93933105469, -1004.1165771484, 26.323028564453), maxDst = 2.0}
		},
		doors = {
			{model =-53345114, coords = vector3(481.00836181641, -1004.117980957, 26.480054855347)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_cell_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(477.91259765625, -1012.188659668, 26.480054855347), maxDst = 1.0}
		},
		doors = {
			{model =-53345114, coords = vector3(477.91259765625, -1012.188659668, 26.480054855347)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_cell_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(480.9128112793, -1012.188659668, 26.480054855347), maxDst = 1.0}
		},
		doors = {
			{model =-53345114, coords = vector3(480.9128112793, -1012.188659668, 26.480054855347)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_cell_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(483.91271972656, -1012.188659668, 26.480054855347), maxDst = 1.0}
		},
		doors = {
			{model =-53345114, coords = vector3(483.91271972656, -1012.188659668, 26.480054855347)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_cell_4 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(486.91311645508, -1012.188659668, 26.480054855347), maxDst = 1.0}
		},
		doors = {
			{model =-53345114, coords = vector3(486.91311645508, -1012.188659668, 26.480054855347)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_cell_5 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(484.17642211914, -1007.734375, 26.480054855347), maxDst = 1.0}
		},
		doors = {
			{model =-53345114, coords = vector3(484.17642211914, -1007.734375, 26.480054855347)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_id_room = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(479.05996704102, -1003.1729736328, 26.406503677368), maxDst = 2.0}
		},
		doors = {
			{model =-288803980, coords = vector3(479.05996704102, -1003.1729736328, 26.406503677368)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_intero_hallway_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(480.71157836914, -997.90686035156, 26.373908996582), maxDst = 1.5}
		},
		doors = {
			{model =149284793, coords = vector3(479.66375732422, -997.90997314453, 26.406503677368)},
			{model =149284793, coords = vector3(482.06857299805, -997.90997314453, 26.406503677368)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_interrogation_room_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(482.67025756836, -995.728515625, 26.40548324585), maxDst = 1.5}
		},
		doors = {
			{model =-1406685646, coords = vector3(482.67025756836, -995.728515625, 26.40548324585)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_observation_room_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(482.669921875, -992.29913330078, 26.40548324585), maxDst = 2.0}
		},
		doors = {
			{model =-1406685646, coords = vector3(482.669921875, -992.29913330078, 26.40548324585)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_interrogation_room_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(482.67013549805, -987.57916259766, 26.40548324585), maxDst = 2.0}
		},
		doors = {
			{model =-1406685646, coords = vector3(482.67013549805, -987.57916259766, 26.40548324585)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_observation_room_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(482.66943359375, -983.98681640625, 26.40548324585), maxDst = 2.0}
		},
		doors = {
			{model =-1406685646, coords = vector3(482.66943359375, -983.98681640625, 26.40548324585)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_intero_hallway_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(478.88983154297, -986.27825927734, 26.312210083008), maxDst = 2.0}
		},
		doors = {
			{model =149284793, coords = vector3(479.06240844727, -985.03234863281, 26.40548324585)},
			{model =149284793, coords = vector3(479.06240844727, -987.43756103516, 26.40548324585)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_door_bwtween_stairs = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(471.39172363281, -986.154296875, 26.373975753784), maxDst = 2.0}
		},
		doors = {
			{model =-1406685646, coords = vector3(471.37530517578, -985.03192138672, 26.40548324585)},
			{model =-96679321, coords = vector3(471.37530517578, -987.43737792969, 26.40548324585)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_garagedoor_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(464.15905761719, -974.66558837891, 26.370704650879), maxDst = 2.0}
		},
		doors = {
			{model =1830360419, coords = vector3(464.15905761719, -974.66558837891, 26.370704650879)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_garagedoor_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(464.15655517578, -997.50927734375, 26.370704650879), maxDst = 2.0}
		},
		doors = {
			{model =1830360419, coords = vector3(464.15655517578, -997.50927734375, 26.370704650879)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_basement_rearentry_hallway = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(468.7653503418, -1000.5859985352, 26.373979568481), maxDst = 2.0}
		},
		doors = {
			{model =-288803980, coords = vector3(467.52221679688, -1000.5437011719, 26.40548324585)},
			{model =-288803980, coords = vector3(469.92736816406, -1000.5437011719, 26.40548324585)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_garage_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(452.54055786133, -1006.4458618164, 26.987855911255), maxDst = 5.0},
			{coords = vector3(452.03329467773, -994.71478271484, 25.699922561646), maxDst = 3.0}
		},
		doors = {
			{model =2130672747, coords = vector3(452.3005065918, -1000.7716674805, 26.69660949707), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_garage_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(431.43658447266, -1006.860534668, 27.101442337036), maxDst = 5.0},
			{coords = vector3(431.42697143555, -995.28979492188, 25.699920654297), maxDst = 3.0}
		},
		doors = {
			{model = 2130672747, coords = vector3(431.41192626953, -1000.7716674805, 26.69660949707), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_bollard_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(415.09368896484, -1019.9506225586, 29.236074447632), maxDst = 5.0},
			{coords = vector3(406.04290771484, -1020.1423339844, 29.335838317871), maxDst = 5.0}
		},
		doors = {
			{model =-1868050792, coords = vector3(410.02578735352, -1024.2259521484, 29.218231201172), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mrpd_bollard_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(415.373046875, -1028.6882324219, 29.27917098999), maxDst = 5.0},
			{coords = vector3(405.69506835938, -1028.2894287109, 29.335836410522), maxDst = 5.0}
		},
		doors = {
			{model =-1635161509, coords = vector3(410.02777099609, -1024.2220458984, 29.218217849731), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	crips_entry_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1437.751953125, -1491.4853515625, 63.702964782715), maxDst = 3.0}
		},
		doors = {
			{model =-1085470028, coords = vector3(1438.4616699219, -1491.8352050781, 63.799293518066)},
			{model =406830232, coords = vector3(1436.7144775391, -1491.2385253906, 63.799293518066)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				crips = {rankMin = 0, rankMax = 4}
			}
        }
    },

	crips_entry_rear_doubledoors = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1446.5891113281, -1482.5593261719, 63.700233459473), maxDst = 3.0}
		},
		doors = {
			{model =406830232, coords = vector3(1447.4658203125, -1482.9890136719, 63.799293518066)},
			{model =-1085470028, coords = vector3(1445.7183837891, -1482.3919677734, 63.799293518066)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				crips = {rankMin = 0, rankMax = 4}
			}
        }
    },

	crips_entry_rear_single = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1440.4274902344, -1480.8397216797, 63.799293518066), maxDst = 2.0}
		},
		doors = {
			{model =558744515, coords = vector3(1440.4274902344, -1480.8397216797, 63.799293518066)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				crips = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_entry_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(115.03984832764, -1961.3630371094, 21.422700881958), maxDst = 2.0}
		},
		doors = {
			{model =23523831, coords = vector3(115.03984832764, -1961.3630371094, 21.422700881958)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_entry_kitchen = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(113.93273925781, -1973.5006103516, 21.423776626587), maxDst = 2.0}
		},
		doors = {
			{model =-1912632538, coords = vector3(113.93273925781, -1973.5006103516, 21.423776626587)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_entry_rear_doubledoors = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(118.25347900391, -1974.0788574219, 21.322378158569), maxDst = 2.0}
		},
		doors = {
			{model =989957872, coords = vector3(117.09940338135, -1974.3480224609, 21.419256210327)},
			{model =-204046185, coords = vector3(119.16741943359, -1973.6379394531, 21.419256210327)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_garage_1_garage_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(102.80137634277, -1956.1358642578, 20.74910736084), maxDst = 4.0},
			{coords = vector3(102.69416809082, -1962.8494873047, 20.8444480896), maxDst = 2.0}
		},
		doors = {
			{model =-1118363016, coords = vector3(102.73889923096, -1960.2591552734, 21.00860786438)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_garage_1_side_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(105.8596496582, -1964.7111816406, 20.880992889404), maxDst = 1.5}
		},
		doors = {
			{model =1122314606, coords = vector3(105.95836639404, -1963.8303222656, 20.940589904785)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_garage_2_side_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(111.43911743164, -1979.2913818359, 21.059942245483), maxDst = 2.0}
		},
		doors = {
			{model =-1730259609, coords = vector3(111.43911743164, -1979.2913818359, 21.059942245483)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_garage_2_froot_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(104.62538909912, -1977.1408691406, 21.061428070068), maxDst = 2.0}
		},
		doors = {
			{model =1122314606, coords = vector3(104.62538909912, -1977.1408691406, 21.061428070068)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_garage_2_froot_doubledoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(107.83125305176, -1975.998046875, 20.962535858154), maxDst = 2.0}
		},
		doors = {
			{model =1184805384, coords = vector3(109.13619232178, -1975.4603271484, 21.167804718018)},
			{model =1947176169, coords = vector3(106.51920318604, -1976.4456787109, 21.16915512085)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_garage_3_froot_doubledoor_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(94.680809020996, -1985.2878417969, 20.439496994019), maxDst = 2.0}
		},
		doors = {
			{model =1805008497, coords = vector3(95.830787658691, -1986.404296875, 20.620439529419)},
			{model =-167783606, coords = vector3(93.708824157715, -1984.1002197266, 20.620439529419)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	ballas_garage_3_froot_doubledoor_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(92.236305236816, -1982.6234130859, 20.475883483887), maxDst = 2.0}
		},
		doors = {
			{model =-167783606, coords = vector3(91.03685760498, -1981.2750244141, 20.620439529419)},
			{model =1805008497, coords = vector3(93.162826538086, -1983.576171875, 20.620439529419)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				ballas = {rankMin = 0, rankMax = 4}
			}
        }
    },

	families_pool_entry_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-139.9115447998, -1600.1881103516, 35.178482055664), maxDst = 2.0}
		},
		doors = {
			{model =852775515, coords = vector3(-139.9115447998, -1600.1881103516, 35.178482055664)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				families = {rankMin = 0, rankMax = 4}
			}
        }
    },

	families_pool_entry_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-148.56719970703, -1596.7427978516, 35.178482055664), maxDst = 2.0}
		},
		doors = {
			{model =852775515, coords = vector3(-148.56719970703, -1596.7427978516, 35.178482055664)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				families = {rankMin = 0, rankMax = 4}
			}
        }
    },

	families_patio_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-157.72702026367, -1596.4764404297, 35.257213592529), maxDst = 2.0}
		},
		doors = {
			{model =1150875108, coords = vector3(-157.72702026367, -1596.4764404297, 35.257213592529)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				families = {rankMin = 0, rankMax = 4}
			}
        }
    },

	fleeuriste_hallway_top = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1182.5135498047, -1189.8787841797, 7.9442281723022), maxDst = 2.0}
		},
		doors = {
			{model =-543497392, coords = vector3(-1182.5135498047, -1189.8787841797, 7.9442281723022)}
		},
        access = {
        }
    },

	fleeuriste_hallway_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1178.3819580078, -1189.8468017578, 7.9441361427307), maxDst = 1.5}
		},
		doors = {
			{model =1557126584, coords = vector3(-1178.3819580078, -1189.8468017578, 7.9441361427307)}
		},
        access = {
        }
    },

	fleeuriste_hallway_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1179.19140625, -1187.3658447266, 7.9441361427307), maxDst = 1.5}
		},
		doors = {
			{model =1557126584, coords = vector3(-1179.19140625, -1187.3658447266, 7.9441361427307)}
		},
        access = {
        }
    },

	fleeuriste_basement_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1182.6823730469, -1188.5853271484, 3.935163974762), maxDst = 1.5}
		},
		doors = {
			{model =-1230442770, coords = vector3(-1182.6823730469, -1188.5853271484, 3.935163974762)}
		},
        access = {
        }
    },

	fleeuriste_behind_exit = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1178.1085205078, -1185.2435302734, 5.893424987793), maxDst = 1.5}
		},
		doors = {
			{model =-626684119, coords = vector3(-1178.1085205078, -1185.2435302734, 5.893424987793)}
		},
        access = {
        }
    },

	lost_entry_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(959.88348388672, -140.04791259766, 74.486175537109), maxDst = 10.0}
		},
		doors = {
			{model =-930593859, coords = vector3(950.23406982422, -133.98440551758, 73.573791503906), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				lost = {rankMin = 0, rankMax = 4}
			}
        }
    },

	lost_gabz_garage_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(982.37933349609, -125.36629486084, 75.032646179199), maxDst = 8.0}
		},
		doors = {
			{model =-197537718, coords = vector3(982.37933349609, -125.36629486084, 75.032646179199), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				lost = {rankMin = 0, rankMax = 4}
			}
        }
    },

	lost_small_garage_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(958.6064453125, -121.11766052246, 75.011596679688), maxDst = 1.5}
		},
		doors = {
			{model =1335311341, coords = vector3(959.38232421875, -120.45116424561, 75.161575317383)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				lost = {rankMin = 0, rankMax = 4}
			}
        }
    },

	lost_gabz_garage_door_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(963.16540527344, -117.32843017578, 75.287269592285), maxDst = 5.0}
		},
		doors = {
			{model =-822900180, coords = vector3(963.16540527344, -117.32843017578, 75.287269592285), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				lost = {rankMin = 0, rankMax = 4}
			}
        }
    },

	lost_gabz_garage_door_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(968.76000976562, -112.10903930664, 75.289108276367), maxDst = 6.0}
		},
		doors = {
			{model =-822900180, coords = vector3(968.76000976562, -112.10903930664, 75.289108276367), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				lost = {rankMin = 0, rankMax = 4}
			}
        }
    },

	lost_main_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(981.15051269531, -103.25524902344, 74.993576049805), maxDst = 2.0}
		},
		doors = {
			{model =190770132, coords = vector3(981.15051269531, -103.25524902344, 74.993576049805)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				lost = {rankMin = 0, rankMax = 4}
			}
        }
    },

	hopital_ward_a_closet = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(303.95962524414, -572.55792236328, 43.433910369873), maxDst = 1.5}
		},
		doors = {
			{model =854291622, coords = vector3(303.95962524414, -572.55792236328, 43.433910369873)}
		},
        access = {
			jobs = {
				police = {rankMin = 3, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_a_lab = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(307.11819458008, -569.56896972656, 43.433910369873), maxDst = 1.5}
		},
		doors = {
			{model =854291622, coords = vector3(307.11819458008, -569.56896972656, 43.433910369873)}
		},
        access = {
			jobs = {
				police = {rankMin = 3, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_a_surgery_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(313.09921264648, -571.93933105469, 43.289928436279), maxDst = 3.0}
		},
		doors = {
			{model =-434783486, coords = vector3(312.00512695312, -571.34118652344, 43.433910369873)},
			{model =-1700911976, coords = vector3(314.4241027832, -572.22155761719, 43.433910369873)}
		},
        access = {
			jobs = {
				police = {rankMin = 3, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_a_surgery_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(319.08172607422, -573.79510498047, 43.289722442627), maxDst = 3.0}
		},
		doors = {
			{model =-434783486, coords = vector3(317.84255981445, -573.46588134766, 43.433910369873)},
			{model =-1700911976, coords = vector3(320.26153564453, -574.34631347656, 43.433910369873)}
		},
        access = {
			jobs = {
				police = {rankMin = 3, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_a_surgery_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(324.39862060547, -575.44195556641, 43.284114837646), maxDst = 3.0}
		},
		doors = {
			{model =-434783486, coords = vector3(323.23754882812, -575.42944335938, 43.433910369873)},
			{model =-1700911976, coords = vector3(325.6565246582, -576.30993652344, 43.433910369873)}
		},
        access = {
			jobs = {
				police = {rankMin = 3, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_a_to_b = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(326.21536254883, -579.25244140625, 43.286975860596), maxDst = 3.0}
		},
		doors = {
			{model =-434783486, coords = vector3(326.54989624023, -578.04064941406, 43.433910369873)},
			{model =-1700911976, coords = vector3(325.66946411133, -580.45959472656, 43.433910369873)}
		},
        access = {
			jobs = {
				police = {rankMin = 3, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_b_to_main = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(325.47613525391, -589.62652587891, 43.292114257812), maxDst = 3.0}
		},
		doors = {
			{model =-1700911976, coords = vector3(326.6549987793, -590.10662841797, 43.433910369873)},
			{model =-434783486, coords = vector3(324.23602294922, -589.22619628906, 43.433910369873)}
		},
        access = {
			jobs = {
				police = {rankMin = 3, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_main_hall_reception = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(313.48007202148, -595.45831298828, 43.433910369873), maxDst = 2.0}
		},
		doors = {
			{model =854291622, coords = vector3(313.48007202148, -595.45831298828, 43.433910369873)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_main_hall_staff = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(309.13372802734, -597.75146484375, 43.433910369873), maxDst = 2.0}
		},
		doors = {
			{model =854291622, coords = vector3(309.13372802734, -597.75146484375, 43.433910369873)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },
	
	hopital_ward_b_mri = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(336.16284179688, -580.14031982422, 43.433910369873), maxDst = 2.0}
		},
		doors = {
			{model =854291622, coords = vector3(336.16284179688, -580.14031982422, 43.433910369873)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_b_diagnostic = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(340.78182983398, -581.82147216797, 43.433910369873), maxDst = 2.0}
		},
		doors = {
			{model =854291622, coords = vector3(340.78182983398, -581.82147216797, 43.433910369873)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_b_xray = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(346.77392578125, -584.00244140625, 43.433910369873), maxDst = 2.0}
		},
		doors = {
			{model =854291622, coords = vector3(346.77392578125, -584.00244140625, 43.433910369873)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_ward_b_to_c = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(348.9196472168, -587.38366699219, 43.288841247559), maxDst = 3.0}
		},
		doors = {
			{model =-434783486, coords = vector3(349.3137512207, -586.32598876953, 43.433910369873)},
			{model =-1700911976, coords = vector3(348.4333190918, -588.74499511719, 43.433910369873)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_strawbery_garage_doubledoors = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(338.96716308594, -589.00830078125, 28.797077178955), maxDst = 3.0}
		},
		doors = {
			{model =-434783486, coords = vector3(338.44665527344, -590.05297851562, 28.947092056274)},
			{model =-1700911976, coords = vector3(339.32659912109, -587.63452148438, 28.947092056274)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_strawbery_garage_doubledoors_parking = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(319.75704956055, -560.18511962891, 28.744386672974), maxDst = 3.0}
		},
		doors = {
			{model =1248599813, coords = vector3(318.66561889648, -561.00860595703, 28.947238922119)},
			{model =-1421582160, coords = vector3(321.01483154297, -559.91271972656, 28.947238922119)}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_strawbery_garage_door_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(325.91946411133, -566.38714599609, 28.796863555908), maxDst = 5.0},
			{coords = vector3(332.35623168945, -555.11810302734, 28.744070053101), maxDst = 5.0}
		},
		doors = {
			{model =-820650556, coords = vector3(330.13827514648, -561.82391357422, 29.816598892212), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	hopital_strawbery_garage_door_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(336.83267211914, -570.89471435547, 28.796863555908), maxDst = 5.0},
			{coords = vector3(339.65151977539, -558.73992919922, 28.744068145752), maxDst = 5.0}
		},
		doors = {
			{model =-820650556, coords = vector3(337.27813720703, -564.43078613281, 29.780597686768), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				ambulance = {rankMin = 0, rankMax = 7},
				ambulanceoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vagos_parkingside_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(332.19961547852, -2017.7846679688, 22.523309707642), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(332.19961547852, -2017.7846679688, 22.523309707642)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_parkingside_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(335.89151000977, -2020.8823242188, 22.523307800293), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(335.89151000977, -2020.8823242188, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_parkingside_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(343.45492553711, -2027.1723632812, 22.394939422607), maxDst = 0.5}
		},
		doors = {
			{model = 1349340477, coords = vector3(344.19027709961, -2027.7866210938, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_parkingside_4 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(345.33465576172, -2028.7922363281, 22.395015716553), maxDst = 0.5}
		},
		doors = {
			{model = 1349340477, coords = vector3(344.59463500977, -2028.1844482422, 22.523305892944)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_parkingside_5 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(352.18417358398, -2034.5061035156, 22.394962310791), maxDst = 0.5}
		},
		doors = {
			{model = 1349340477, coords = vector3(352.91500854492, -2035.1082763672, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_parkingside_6 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(353.96447753906, -2036.26171875, 22.391942977905), maxDst = 0.5}
		},
		doors = {
			{model = 1349340477, coords = vector3(353.31973266602, -2035.5063476562, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_parkingside_7 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(360.62634277344, -2041.6372070312, 22.523305892944), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(360.62634277344, -2041.6372070312, 22.523305892944)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_parkingside_8 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(364.31777954102, -2044.7348632812, 22.523309707642), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(364.31777954102, -2044.7348632812, 22.523309707642)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_south_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(371.44235229492, -2039.9807128906, 22.523307800293), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(371.44235229492, -2039.9807128906, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_north_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(336.53979492188, -2010.6934814453, 22.523307800293), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(336.53979492188, -2010.6934814453, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_yard_side_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(344.64785766602, -2015.490234375, 22.523307800293), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(344.64785766602, -2015.490234375, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_yard_side_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(352.99795532227, -2022.4965820312, 22.523307800293), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(352.99795532227, -2022.4965820312, 22.523307800293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_yard_side_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(357.02136230469, -2025.8192138672, 22.523305892944), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(357.02136230469, -2025.8192138672, 22.523305892944)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_yard_side_4 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(361.34530639648, -2029.5067138672, 22.523303985596), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(361.34530639648, -2029.5067138672, 22.523303985596)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vagos_yard_side_5 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(365.37399291992, -2032.8229980469, 22.523305892944), maxDst = 2.0}
		},
		doors = {
			{model = 1349340477, coords = vector3(365.37399291992, -2032.8229980469, 22.523305892944)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				vagos = {rankMin = 0, rankMax = 4}
			}
        }
    },

	tunerShop_right_garagedoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(149.54565429688, -3024.0192871094, 7.0570788383484), maxDst = 3.0},
			{coords = vector3(159.59565734863, -3024.0859375, 6.901294708252), maxDst = 3.0}
		},
		doors = {
			{model = -456733639, coords = vector3(154.82208251953, -3023.8891601562, 8.5566473007202), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				tuner = {rankMin = 0, rankMax = 8}
			},
			gangs = {
				clown = {rankMin = 0, rankMax = 4}
			}
        }
    },

	tunerShop_left_garagedoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(149.46864318848, -3034.2553710938, 7.0570826530457), maxDst = 3.0},
			{coords = vector3(159.16976928711, -3033.7805175781, 6.940173625946), maxDst = 3.0}
		},
		doors = {
			{model = -456733639, coords = vector3(154.8228302002, -3034.0512695312, 8.5600185394287), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				tuner = {rankMin = 0, rankMax = 8}
			}
        }
    },

	tunerShop_smalldoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(154.93446350098, -3017.3229980469, 7.1906785964966), maxDst = 1.5}
		},
		doors = {
			{model = -2023754432, coords = vector3(154.93446350098, -3017.3229980469, 7.1906785964966)}
		},
        access = {
			jobs = {
				tuner = {rankMin = 0, rankMax = 8}
			},
			gangs = {
				clown = {rankMin = 0, rankMax = 4}
			}
        }
    },

	tunerShop_smalldoor_hidden = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(151.466796875, -3011.705078125, 7.2583665847778), maxDst = 1.5}
		},
		doors = {
			{model = -1229046235, coords = vector3(151.466796875, -3011.705078125, 7.2583665847778)}
		},
        access = {
			gangs = {
				clown = {rankMin = 0, rankMax = 4}
			}
        }
    },

	tunerShop_shop_to_underground = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1005.1677856445, -2998.2668457031, -39.496128082275), maxDst = 2.0}
		},
		doors = {
			{model = -267021114, coords = vector3(1005.1677856445, -2998.2668457031, -39.496128082275)}
		},
        access = {
			gangs = {
				clown = {rankMin = 0, rankMax = 4}
			}
        }
    },

	taco_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(12.54607963562, -1604.8531494141, 29.528324127197), maxDst = 2.0}
		},
		doors = {
			{model = -1215222675, coords = vector3(12.54607963562, -1604.8531494141, 29.528324127197)}
		},
        access = {
			jobs = {
				taco = {rankMin = 0, rankMax = 7},
				tacooff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	taco_side = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(9.3814992904663, -1600.0095214844, 29.530220031738), maxDst = 2.0}
		},
		doors = {
			{model = -1215222675, coords = vector3(9.3814992904663, -1600.0095214844, 29.530220031738)}
		},
        access = {
			jobs = {
				taco = {rankMin = 0, rankMax = 7},
				tacooff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	unicorn_entry_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(127.95006561279, -1298.5065917969, 29.419622421265), maxDst = 2.0}
		},
		doors = {
			{model = -1116041313, coords = vector3(127.95006561279, -1298.5065917969, 29.419622421265)}
		},
        access = {
			jobs = {
				unicorn = {rankMin = 0, rankMax = 7},
				unicornoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	unicorn_dj_booth = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(128.07080078125, -1279.3466796875, 29.436967849731), maxDst = 2.0}
		},
		doors = {
			{model = 1695461688, coords = vector3(128.07080078125, -1279.3466796875, 29.436967849731)}
		},
        access = {
			jobs = {
				unicorn = {rankMin = 0, rankMax = 7},
				unicornoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	unicorn_vip_booth = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(116.22776031494, -1294.5925292969, 29.435989379883), maxDst = 1.5}
		},
		doors = {
			{model = 390840000, coords = vector3(116.22776031494, -1294.5925292969, 29.435989379883)}
		},
        access = {
			jobs = {
				unicorn = {rankMin = 0, rankMax = 7},
				unicornoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	unicorn_dressing = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(113.41009521484, -1296.2600097656, 29.435989379883), maxDst = 1.5}
		},
		doors = {
			{model = 390840000, coords = vector3(113.41009521484, -1296.2600097656, 29.435989379883)}
		},
        access = {
			jobs = {
				unicorn = {rankMin = 0, rankMax = 7},
				unicornoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	unicorn_manager = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(99.083068847656, -1293.6890869141, 29.440404891968), maxDst = 2.0}
		},
		doors = {
			{model = 390840000, coords = vector3(99.083068847656, -1293.6890869141, 29.440404891968)}
		},
        access = {
			jobs = {
				unicorn = {rankMin = 0, rankMax = 7},
				unicornoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	unicorn_rear_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(96.091972351074, -1284.8537597656, 29.43878364563), maxDst = 2.0}
		},
		doors = {
			{model = 1695461688, coords = vector3(96.091972351074, -1284.8537597656, 29.43878364563)}
		},
        access = {
			jobs = {
				unicorn = {rankMin = 0, rankMax = 7},
				unicornoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	burgershot_entry_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(-1184.2445068359, -884.71423339844, 13.995225906372), maxDst = 2.0}
		},
		doors = {
			{model = -1475798232, coords = vector3(-1184.8918457031, -883.33770751953, 14.251130104065)},
			{model = 1517256706, coords = vector3(-1183.2069091797, -885.83123779297, 14.251130104065)}
		},
        access = {
			jobs = {
				burgershot = {rankMin = 0, rankMax = 7},
				burgershotoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	burgershot_entry_side = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1197.7854003906, -884.40643310547, 13.99510383606), maxDst = 2.0}
		},
		doors = {
			{model = 1517256706, coords = vector3(-1196.5395507812, -883.48516845703, 14.252590179443)},
			{model = -1475798232, coords = vector3(-1199.0330810547, -885.169921875, 14.252590179443)}
		},
        access = {
			jobs = {
				burgershot = {rankMin = 0, rankMax = 7},
				burgershotoff = {rankMin = 0, rankMax = 7}
			}
        }
    },
	
	burgershot_kitchen = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1200.9709472656, -892.87658691406, 14.248879432678), maxDst = 2.0}
		},
		doors = {
			{model = -1253427798, coords = vector3(-1200.9709472656, -892.87658691406, 14.248879432678)}
		},
        access = {
			jobs = {
				burgershot = {rankMin = 0, rankMax = 7},
				burgershotoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	burgershot_reardoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1199.2962646484, -904.02581787109, 14.050469398499), maxDst = 2.0}
		},
		doors = {
			{model = -1877571861, coords = vector3(-1199.2962646484, -904.02581787109, 14.050469398499)}
		},
        access = {
			jobs = {
				burgershot = {rankMin = 0, rankMax = 7},
				burgershotoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	burgershot_rearglass = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1193.6693115234, -905.83776855469, 13.998951911926), maxDst = 2.0}
		},
		doors = {
			{model = -1871759441, coords = vector3(-1193.2951660156, -906.97143554688, 12.993782997131), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				burgershot = {rankMin = 0, rankMax = 7},
				burgershotoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_gate_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1855.2760009766, 2608.7019042969, 45.672412872314), maxDst = 4.0},
			{coords = vector3(1838.3487548828, 2607.9177246094, 45.58589553833), maxDst = 4.0},
		},
		doors = {
			{model = 741314661, coords = vector3(1844.9984130859, 2604.8125, 44.639778137207), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_gate_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1825.6451416016, 2608.2758789062, 45.588653564453), maxDst = 4.0},
			{coords = vector3(1812.4141845703, 2607.7119140625, 45.589645385742), maxDst = 4.0},
		},
		doors = {
			{model = 741314661, coords = vector3(1818.5428466797, 2600.0505371094, 44.609661102295), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_gate_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1795.3614501953, 2617.1364746094, 45.565105438232), maxDst = 10.0}
		},
		doors = {
			{model = 741314661, coords = vector3(1802.9368896484, 2616.9753417969, 44.602104187012), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_entrance_fence = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1797.7608642578, 2596.5649414062, 46.387306213379), maxDst = 2.0}
		},
		doors = {
			{model = -1156020871, coords = vector3(1797.7608642578, 2596.5649414062, 46.387306213379)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_entrance_hallway_scanner = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1831.3399658203, 2594.9921875, 46.037910461426), maxDst = 2.0}
		},
		doors = {
			{model = -684929024, coords = vector3(1831.3399658203, 2594.9921875, 46.037910461426)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_entrance_hallway_photo = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1838.6169433594, 2593.705078125, 46.036357879639), maxDst = 2.0}
		},
		doors = {
			{model = -684929024, coords = vector3(1838.6169433594, 2593.705078125, 46.036357879639)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_information_desk = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1844.4038085938, 2576.9970703125, 46.03560256958), maxDst = 2.0}
		},
		doors = {
			{model = 2024969025, coords = vector3(1844.4038085938, 2576.9970703125, 46.03560256958)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_staff_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1837.6337890625, 2576.9916992188, 46.038597106934), maxDst = 2.0}
		},
		doors = {
			{model = 2024969025, coords = vector3(1837.6337890625, 2576.9916992188, 46.038597106934)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_bloc_security_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1775.4141845703, 2491.025390625, 49.840057373047), maxDst = 2.0}
		},
		doors = {
			{model = 241550507, coords = vector3(1775.4141845703, 2491.025390625, 49.840057373047)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_bloc_security_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1772.9385986328, 2495.3132324219, 49.840057373047), maxDst = 2.0}
		},
		doors = {
			{model = 241550507, coords = vector3(1772.9385986328, 2495.3132324219, 49.840057373047)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_medical_lab = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1767.3232421875, 2580.83203125, 45.747825622559), maxDst = 2.0}
		},
		doors = {
			{model = -1392981450, coords = vector3(1767.3232421875, 2580.83203125, 45.747825622559)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7}
			}
        }
    },

	bolingbroke_medical_surgery = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1767.169921875, 2583.5065917969, 45.729831695557), maxDst = 2.0}
		},
		doors = {
			{model = -1624297821, coords = vector3(1767.3208007813, 2584.6071777344, 45.753448486328)},
			{model = -1624297821, coords = vector3(1767.3208007813, 2582.3078613281, 45.753448486328)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				ambulance = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mecanoc_auto_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1418.0125732422, -431.4753112793, 35.975715637207), maxDst = 3.0},
			{coords = vector3(-1413.3526611328, -439.40777587891, 35.924533843994), maxDst = 3.0}
		},
		doors = {
			{model = 1715394473, coords = vector3(-1414.8688964844, -436.36752319336, 34.903518676758), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				mecano = {rankMin = 0, rankMax = 7},
				mecanooff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mecanoc_auto_mid = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1423.3740234375, -435.86138916016, 35.842906951904), maxDst = 3.0},
			{coords = vector3(-1419.3895263672, -443.19345092773, 35.90970993042), maxDst = 3.0}
		},
		doors = {
			{model = 1715394473, coords = vector3(-1421.1175537109, -440.27206420898, 34.90550994873), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				mecano = {rankMin = 0, rankMax = 7},
				mecanooff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mecanoc_auto_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1426.0090332031, -446.6223449707, 35.909713745117), maxDst = 3.0},
			{coords = vector3(-1429.6962890625, -440.17395019531, 35.718376159668), maxDst = 3.0}
		},
		doors = {
			{model = 1715394473, coords = vector3(-1427.3260498047, -444.15158081055, 34.903518676758), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				mecano = {rankMin = 0, rankMax = 7},
				mecanooff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	mecanoc_maindoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1434.1550292969, -448.58609008789, 36.059234619141), maxDst = 2.0}
		},
		doors = {
			{model = -634936098, coords = vector3(-1434.1550292969, -448.58609008789, 36.059234619141)}
		},
        access = {
			jobs = {
				mecano = {rankMin = 0, rankMax = 7},
				mecanooff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	cartel_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-112.64521026611, 986.16174316406, 235.75416564941), maxDst = 2.0}
		},
		doors = {
			{model = -2146494197, coords = vector3(-112.79807281494, 986.771484375, 236.35047912598)},
			{model = -2146494197, coords = vector3(-112.30475616455, 985.41192626953, 236.35047912598)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_entry_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-111.13840484619, 999.24865722656, 235.75778198242), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-112.19111633301, 998.7998046875, 235.87783813477)},
			{model = -435821409, coords = vector3(-110.15312957764, 999.56854248047, 235.87783813477)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_entry_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-104.60683441162, 976.69799804688, 235.75682067871), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-103.74085998535, 977.11999511719, 235.89433288574)},
			{model = -435821409, coords = vector3(-105.77964019775, 976.34942626953, 235.89433288574)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_entry2_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-97.736000061035, 989.20294189453, 235.75674438477), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-96.74585723877, 989.62609863281, 235.89433288574)},
			{model = -435821409, coords = vector3(-98.782867431641, 988.85870361328, 235.89433288574)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_entry2_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-102.74601745605, 1011.1514282227, 235.7599029541), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-103.03706359863, 1012.2847900391, 235.87783813477)},
			{model = -435821409, coords = vector3(-102.26998901367, 1010.2453613281, 235.87783813477)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_entry3_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-70.90510559082, 1008.9595947266, 234.39837646484), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-71.653411865234, 1009.4822998047, 234.51985168457)},
			{model = -435821409, coords = vector3(-69.963508605957, 1008.0981445312, 234.51985168457)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_entry4_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-62.206207275391, 998.49328613281, 234.39880371094), maxDst = 2.0}
		},
		doors = {
			{model = -2146494197, coords = vector3(-62.791988372803, 998.92962646484, 234.99281311035)},
			{model = -2146494197, coords = vector3(-61.687015533447, 998.00189208984, 234.99281311035)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_entry4_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-67.475952148438, 987.54949951172, 234.39910888672), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-68.356628417969, 988.31658935547, 234.52319335938)},
			{model = -435821409, coords = vector3(-66.676010131836, 986.93243408203, 234.52319335938)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_gym_top_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-59.355743408203, 989.5107421875, 235.22393798828), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-59.77668762207, 990.55413818359, 235.34979248047)},
			{model = -435821409, coords = vector3(-59.006816864014, 988.51226806641, 235.34979248047)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_gym_top_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-57.238807678223, 984.04095458984, 235.22384643555), maxDst = 2.0}
		},
		doors = {
			{model = -435821409, coords = vector3(-57.775505065918, 985.05114746094, 235.34979248047)},
			{model = -435821409, coords = vector3(-57.008506774902, 983.01055908203, 235.34979248047)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cartel_gym_bottom = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-58.243953704834, 980.16461181641, 232.86682128906), maxDst = 2.0}
		},
		doors = {
			{model = -2146494197, coords = vector3(-57.585247039795, 980.34185791016, 233.45501708984)},
			{model = -2146494197, coords = vector3(-58.94352722168, 979.84411621094, 233.45501708984)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cartel = {rankMin = 0, rankMax = 4}
			}
        }
    },

	vineyard_entry_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1889.1354980469, 2051.7094726563, 141.00601196289), maxDst = 2.0}
		},
		doors = {
			{model = 1077118233, coords = vector3(-1890.2250976563, 2052.2358398438, 141.3125)},
			{model = 1077118233, coords = vector3(-1887.9030761719, 2051.3869628906, 141.3115234375)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_entry_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1886.4154052734, 2050.8491210938, 141.00839233398), maxDst = 2.0}
		},
		doors = {
			{model = 1077118233, coords = vector3(-1887.5340576172, 2051.2338867188, 141.3125)},
			{model = 1077118233, coords = vector3(-1885.2110595703, 2050.3798828125, 141.30850219727)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_salon_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1908.8482666016, 2072.6206054688, 140.40232849121), maxDst = 2.0}
		},
		doors = {
			{model = 1843224684, coords = vector3(-1907.7320556641, 2071.8779296875, 140.91310119629)},
			{model = 1843224684, coords = vector3(-1909.6240234375, 2073.4719238281, 140.91519165039)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_salon_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1911.2200927734, 2074.7233886719, 140.39587402344), maxDst = 2.0}
		},
		doors = {
			{model = 1843224684, coords = vector3(-1910.208984375, 2073.9689941406, 140.91310119629)},
			{model = 1843224684, coords = vector3(-1912.1010742188, 2075.5600585938, 140.9149017334)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_salon_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1910.8944091797, 2079.6474609375, 140.39907836914), maxDst = 2.0}
		},
		doors = {
			{model = 1843224684, coords = vector3(-1911.8100585938, 2078.794921875, 140.91149902344)},
			{model = 1843224684, coords = vector3(-1910.2020263672, 2080.6789550781, 140.91149902344)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_salon_4 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1906.7398681641, 2084.6789550781, 140.3946685791), maxDst = 2.0}
		},
		doors = {
			{model = 1843224684, coords = vector3(-1907.5960693359, 2083.7438964844, 140.91149902344)},
			{model = 1843224684, coords = vector3(-1905.9940185547, 2085.626953125, 140.91149902344)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_salon_5 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1901.8284912109, 2085.6015625, 140.40711975098), maxDst = 2.0}
		},
		doors = {
			{model = 1843224684, coords = vector3(-1902.8820800781, 2086.544921875, 140.91679382324)},
			{model = 1843224684, coords = vector3(-1900.9938964844, 2084.947265625, 140.91883850098)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_salon_6 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1899.5222167969, 2083.6376953125, 140.40626525879), maxDst = 2.0}
		},
		doors = {
			{model = 1843224684, coords = vector3(-1898.5140380859, 2082.8520507813, 140.91525268555)},
			{model = 1843224684, coords = vector3(-1900.4060058594, 2084.4467773438, 140.91459655762)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_pool = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1893.6597900391, 2075.0615234375, 141.00784301758), maxDst = 2.0}
		},
		doors = {
			{model = 1077118233, coords = vector3(-1894.7299804688, 2075.9670410156, 141.3125)},
			{model = 1077118233, coords = vector3(-1892.8330078125, 2074.380859375, 141.30850219727)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_behind_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1886.0463867188, 2073.8466796875, 141.00588989258), maxDst = 2.0}
		},
		doors = {
			{model = 1077118233, coords = vector3(-1887.2430419922, 2074.3078613281, 141.3125)},
			{model = 1077118233, coords = vector3(-1884.9210205078, 2073.4619140625, 141.30850219727)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_behind_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1874.4871826172, 2069.4873046875, 140.99813842773), maxDst = 2.0}
		},
		doors = {
			{model = 1077118233, coords = vector3(-1875.6140136719, 2070.0678710938, 141.3125)},
			{model = 1077118233, coords = vector3(-1873.2939453125, 2069.2197265625, 141.30850219727)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_front_far_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1860.400390625, 2054.1875, 141.00965881348), maxDst = 2.0}
		},
		doors = {
			{model = 1077118233, coords = vector3(-1859.2139892578, 2054.1179199219, 141.35350036621)},
			{model = 1077118233, coords = vector3(-1861.6889648438, 2054.1159667969, 141.35359191895)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_fridge = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1864.4328613281, 2060.5278320313, 140.97676086426), maxDst = 2.0}
		},
		doors = {
			{model = 988364535, coords = vector3(-1864.2130126953, 2061.2651367188, 141.14559936523)},
			{model = -1141522158, coords = vector3(-1864.1999511719, 2059.8989257813, 141.14520263672)}
		},
        access = {
        }
    },

	vineyard_basement = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1878.9193115234, 2057.0993652344, 140.99557495117), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1879.1531982422, 2056.4060058594, 141.13409423828)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 0, rankMax = 7},
				vineyardoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	vineyard_second_floor_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1884.486328125, 2060.6286621094, 145.58424377441), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1883.2299804688, 2059.8811035156, 145.73190307617)},
			{model = 534758478, coords = vector3(-1885.6789550781, 2060.7749023438, 145.73190307617)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 2, rankMax = 7},
				vineyardoff = {rankMin = 2, rankMax = 7}
			}
        }
    },

	vineyard_office = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1880.6827392578, 2061.408203125, 145.5739440918), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1881.3580322266, 2060.3469238281, 145.73313903809)},
			{model = 534758478, coords = vector3(-1880.4650878906, 2062.7849121094, 145.72944641113)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 4, rankMax = 7},
			}
        }
    },

	vineyard_vip_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1886.3161621094, 2063.5222167969, 145.5739440918), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1886.7761230469, 2062.3168945313, 145.73039245605)},
			{model = 534758478, coords = vector3(-1885.9080810547, 2064.7719726563, 145.73190307617)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 2, rankMax = 7},
				vineyardoff = {rankMin = 2, rankMax = 7}
			}
        }
    },

	vineyard_vip_room = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1893.416015625, 2069.2326660156, 144.86277770996), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1894.2386474609, 2068.3933105469, 145.02021789551)},
			{model = 534758478, coords = vector3(-1892.5667724609, 2070.3862304688, 145.0207824707)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 2, rankMax = 7},
				vineyardoff = {rankMin = 2, rankMax = 7}
			}
        }
    },

	vineyard_bedroom = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1882.9643554688, 2064.9626464844, 145.57395935059), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1884.0130615234, 2065.3081054688, 145.73190307617)},
			{model = 534758478, coords = vector3(-1881.5749511719, 2064.4108886719, 145.73190307617)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 2, rankMax = 7},
				vineyardoff = {rankMin = 2, rankMax = 7}
			}
        }
    },

	vineyard_bedroom_bathroom = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1876.5935058594, 2067.16015625, 145.57392883301), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1876.4010009766, 2067.9089355469, 145.73515319824)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 2, rankMax = 7},
				vineyardoff = {rankMin = 2, rankMax = 7}
			}
        }
    },

	vineyard_bedroom_wardrobe = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1884.9333496094, 2071.4196777344, 145.5739440918), maxDst = 2.0}
		},
		doors = {
			{model = 534758478, coords = vector3(-1884.6470947266, 2072.4819335938, 145.73707580566)}
		},
        access = {
			jobs = {
				vineyard = {rankMin = 2, rankMax = 7},
				vineyardoff = {rankMin = 2, rankMax = 7}
			}
        }
    },

	bobcat_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(882.18560791016, -2258.3623046875, 32.461013793945), maxDst = 2.0}
		},
		doors = {
			{model = -1259801187, coords = vector3(883.48034667969, -2258.5297851563, 32.534858703613)},
			{model = -1563799200, coords = vector3(880.89514160156, -2258.3083496094, 32.534858703613)}
		},
        access = {
        }
    },

	bobcat_office_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(881.61706542969, -2264.6694335938, 32.591564178467), maxDst = 2.0}
		},
		doors = {
			{model = -551608542, coords = vector3(881.61706542969, -2264.6694335938, 32.591564178467)}
		},
        access = {
        }
    },

	bobcat_office_lockers = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(873.63140869141, -2266.4194335938, 32.591564178467), maxDst = 2.0}
		},
		doors = {
			{model = -551608542, coords = vector3(873.63140869141, -2266.4194335938, 32.591564178467)}
		},
        access = {
        }
    },

	bobcat_office_back = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(881.32244873047, -2268.2902832031, 32.441699981689), maxDst = 2.0}
		},
		doors = {
			{model = 933053701, coords = vector3(880.02978515625, -2268.181640625, 32.591602325439)},
			{model = 933053701, coords = vector3(882.61987304688, -2268.408203125, 32.591602325439)}
		},
        access = {
        }
    },

	bobcat_security = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(882.33679199219, -2295.2734375, 32.591564178467), maxDst = 2.0}
		},
		doors = {
			{model = -311575617, coords = vector3(882.33679199219, -2295.2734375, 32.591564178467)}
		},
        access = {
        }
    },

	arcade_manager_office = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1645.474609375, -1070.3953857422, 12.755405426025), maxDst = 2.0}
		},
		doors = {
			{model = 1044811355, coords = vector3(-1645.474609375, -1070.3953857422, 12.755405426025)}
		},
        access = {
			jobs = {
				arcadejack = {rankMin = 0, rankMax = 7},
				arcadejackoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	pdm_entry_est = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(-55.950740814209, -1088.0653076172, 27.613010406494), maxDst = 2.0}
		},
		doors = {
			{model = 1973010099, coords = vector3(-55.950740814209, -1088.0653076172, 27.613010406494)}
		},
        access = {
			jobs = {
				pdm = {rankMin = 0, rankMax = 7},
				pdmoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	pdm_entry_sud = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(-48.128204345703, -1103.4998779297, 27.613010406494), maxDst = 2.0}
		},
		doors = {
			{model = 1973010099, coords = vector3(-48.128204345703, -1103.4998779297, 27.613010406494)}
		},
        access = {
			jobs = {
				pdm = {rankMin = 0, rankMax = 7},
				pdmoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	pdm_office_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-32.642669677734, -1108.5592041016, 27.424587249756), maxDst = 2.0}
		},
		doors = {
			{model = 2089009131, coords = vector3(-32.642669677734, -1108.5592041016, 27.424587249756)}
		},
        access = {
			jobs = {
				pdm = {rankMin = 0, rankMax = 7},
				pdmoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	pdm_office_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-30.42845916748, -1102.4702148438, 27.424587249756), maxDst = 2.0}
		},
		doors = {
			{model = 2089009131, coords = vector3(-30.42845916748, -1102.4702148438, 27.424587249756)}
		},
        access = {
			jobs = {
				pdm = {rankMin = 0, rankMax = 7},
				pdmoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	pdm_garage_door_small_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-27.621047973633, -1094.7628173828, 27.424587249756), maxDst = 2.0}
		},
		doors = {
			{model = 2089009131, coords = vector3(-27.621047973633, -1094.7628173828, 27.424587249756)}
		},
        access = {
			jobs = {
				pdm = {rankMin = 0, rankMax = 7},
				pdmoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	pdm_garage_garage_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-21.500268936157, -1089.3681640625, 28.66912651062), maxDst = 3.5}
		},
		doors = {
			{model = 1010499530, coords = vector3(-21.500268936157, -1089.3681640625, 27.66912651062), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				pdm = {rankMin = 0, rankMax = 7},
				pdmoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	doj_police_entrance_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-506.89117431641, -200.1000213623, 34.253215789795), maxDst = 2.0}
		},
		doors = {
			{model = 605731446, coords = vector3(-506.08258056641, -200.83493041992, 34.404140472412)},
			{model = 605731446, coords = vector3(-507.16207885742, -198.95977783203, 34.404140472412)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	doj_police_to_cells = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-511.08334350586, -202.36254882813, 34.254661560059), maxDst = 2.0}
		},
		doors = {
			{model = -519068795, coords = vector3(-510.82229614258, -203.07275390625, 34.40230178833)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	doj_police_cells_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-514.15936279297, -205.07339477539, 34.4055519104), maxDst = 2.0}
		},
		doors = {
			{model = 631614199, coords = vector3(-514.15936279297, -205.07339477539, 34.4055519104)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	doj_police_cells_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-516.24353027344, -201.46334838867, 34.4055519104), maxDst = 2.0}
		},
		doors = {
			{model = 631614199, coords = vector3(-516.24353027344, -201.46334838867, 34.4055519104)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },

	doj_police_cells_entry_from_court = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-517.50946044922, -186.57873535156, 38.219173431396), maxDst = 2.0}
		},
		doors = {
			{model = 110411286, coords = vector3(-516.42150878906, -186.00367736816, 38.339706420898)},
			{model = 110411286, coords = vector3(-518.67755126953, -187.2984161377, 38.339706420898)}
		},
        access = {
			jobs = {
				police = {rankMin = 0, rankMax = 7},
				policeoff = {rankMin = 0, rankMax = 7}
			}
        }
    },
	
	mafia_entry_front_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1390.4686279297, 1162.3884277344, 114.33542633057), maxDst = 2.0}
		},
		doors = {
			{model = -1032171637, coords = vector3(1390.4114990234, 1161.2407226563, 114.48725128174)},
			{model = -52575179, coords = vector3(1390.4244384766, 1163.4377441406, 114.48725128174)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_entry_front_mid = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1396.0015869141, 1141.8453369141, 114.65299987793), maxDst = 2.0}
		},
		doors = {
			{model = -228773386, coords = vector3(1395.919921875, 1140.7045898438, 114.79020690918)},
			{model = -228773386, coords = vector3(1395.9202880859, 1142.9040527344, 114.79020690918)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_entry_front_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1390.5706787109, 1132.2482910156, 114.33399963379), maxDst = 2.0}
		},
		doors = {
			{model = -52575179, coords = vector3(1390.6657714844, 1133.3172607422, 114.48084259033)},
			{model = -1032171637, coords = vector3(1390.6657714844, 1131.1170654297, 114.48084259033)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_entry_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1400.5024414063, 1128.3040771484, 114.33533477783), maxDst = 2.0}
		},
		doors = {
			{model = -1032171637, coords = vector3(1401.5904541016, 1128.3142089844, 114.48359680176)},
			{model = -52575179, coords = vector3(1399.3929443359, 1128.3142089844, 114.48359680176)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_entry_left_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1406.8311767578, 1128.3426513672, 114.33528900146), maxDst = 2.0}
		},
		doors = {
			{model = -228773386, coords = vector3(1407.5482177734, 1128.3287353516, 114.48545074463)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_entry_rear = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1409.2889404297, 1147.3343505859, 114.33541870117), maxDst = 2.0}
		},
		doors = {
			{model = -1032171637, coords = vector3(1409.2921142578, 1146.2541503906, 114.48691558838)},
			{model = -52575179, coords = vector3(1409.2922363281, 1148.4543457031, 114.48691558838)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_entry_rear_right_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1408.1627197266, 1160.0424804688, 114.33556365967), maxDst = 2.0}
		},
		doors = {
			{model = -1032171637, coords = vector3(1408.1574707031, 1158.9558105469, 114.48725128174)},
			{model = -52575179, coords = vector3(1408.1674804688, 1161.1547851563, 114.48725128174)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_entry_rear_right_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1408.0989990234, 1164.7862548828, 114.33556365967), maxDst = 2.0}
		},
		doors = {
			{model = -1032171637, coords = vector3(1408.1705322266, 1163.6328125, 114.48725128174)},
			{model = -52575179, coords = vector3(1408.1655273438, 1165.8337402344, 114.48725128174)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_balcony_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1393.9157714844, 1152.7932128906, 117.72979736328), maxDst = 2.0}
		},
		doors = {
			{model = -52575179, coords = vector3(1394.0843505859, 1153.8551025391, 117.9245300293)},
			{model = -52575179, coords = vector3(1394.0716552734, 1151.6712646484, 117.9245300293)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_balcony_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1393.8786621094, 1141.8656005859, 117.80855560303), maxDst = 2.0}
		},
		doors = {
			{model = -52575179, coords = vector3(1393.9875488281, 1140.6975097656, 117.95588684082)},
			{model = -52575179, coords = vector3(1393.9875488281, 1142.8985595703, 117.95588684082)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_garage_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1413.9056396484, 1114.1376953125, 114.82920837402), maxDst = 4.0}
		},
		doors = {
			{model = -821436402, coords = vector3(1411.0179443359, 1113.9877929688, 113.69436645508), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_garage_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1401.4006347656, 1114.1450195313, 114.83669281006), maxDst = 4.0}
		},
		doors = {
			{model = -821436402, coords = vector3(1404.4672851563, 1113.9639892578, 113.69191741943), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	mafia_master_room_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(1400.7409667969, 1159.6195068359, 117.49301147461), maxDst = 2.0}
		},
		doors = {
			{model = 736699661, coords = vector3(1401.0603027344, 1158.9488525391, 117.64124298096)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				mafia = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_office_hidden = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1813.3304443359, 446.54122924805, 128.72782897949), maxDst = 2.0}
		},
		doors = {
			{model = -524036376, coords = vector3(-1813.3304443359, 446.54122924805, 128.72782897949)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_rear = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1804.1136474609, 429.08197021484, 128.9164276123), maxDst = 2.0}
		},
		doors = {
			{model = -1527723153, coords = vector3(-1804.1136474609, 429.08197021484, 128.9164276123)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1805.5792236328, 436.0505065918, 128.85438537598), maxDst = 2.0}
		},
		doors = {
			{model = -1527723153, coords = vector3(-1805.5792236328, 436.0505065918, 128.85438537598)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_hidden_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1796.8162841797, 441.15219116211, 128.17622375488), maxDst = 2.0}
		},
		doors = {
			{model = 655398764, coords = vector3(-1796.8162841797, 441.15219116211, 128.17622375488)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_hidden_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1799.8515625, 437.20556640625, 132.40113830566), maxDst = 2.0}
		},
		doors = {
			{model = -2133308674, coords = vector3(-1799.8515625, 437.20556640625, 132.40113830566)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_second_floor_window = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1816.8721923828, 428.62130737305, 132.59384155273), maxDst = 2.0}
		},
		doors = {
			{model = 656216807, coords = vector3(-1816.8721923828, 428.62130737305, 132.59384155273)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_master_room_window = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1791.5167236328, 419.01235961914, 132.53605651855), maxDst = 2.0}
		},
		doors = {
			{model = 2060651272, coords = vector3(-1791.5167236328, 419.01235961914, 132.53605651855)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_garage = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1786.7569580078, 463.25198364258, 128.36306762695), maxDst = 6.0}
		},
		doors = {
			{model = -1165779266, coords = vector3(-1786.7569580078, 463.25198364258, 128.36306762695), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_gate_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1798.2308349609, 468.82476806641, 133.77560424805), maxDst = 1.0}
		},
		doors = {
			{model = 724862427, coords = vector3(-1798.2308349609, 468.82476806641, 133.77560424805)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_gate_front = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1798.0137939453, 474.61419677734, 133.78913879395), maxDst = 4.0},
			{coords = vector3(-1803.0041503906, 472.10375976563, 133.61721801758), maxDst = 4.0}
		},
		doors = {
			{model = -1249591818, coords = vector3(-1801.96, 475.44, 133.95)},
			{model = 546378757, coords = vector3(-1799.03, 470.63, 133.95)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	cali_gate_rear = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-1864.2836914063, 349.37060546875, 88.819778442383), maxDst = 8.0}
		},
		doors = {
			{model = -1249591818, coords = vector3(-1862.48,351.44,89.79)},
			{model = 546378757, coords = vector3(-1867.52,349.26,89.79)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				cali = {rankMin = 0, rankMax = 4}
			}
        }
    },

	towing_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
        interactCoords = {
			{coords = vector3(-191.55795288086, -1160.4002685547, 23.673444747925), maxDst = 1.5}
		},
		doors = {
			{model = 97297972, coords = vector3(-190.71040344238, -1160.4645996094, 23.821239471436)}
		},
        access = {
			jobs = {
				tow = {rankMin = 0, rankMax = 5},
				towoff = {rankMin = 0, rankMax = 5}
			}
        }
    },

	towing_rear = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-188.93315124512, -1167.9849853516, 23.673440933228), maxDst = 1.5}
		},
		doors = {
			{model = 97297972, coords = vector3(-189.63600158691, -1167.8836669922, 23.821239471436)}
		},
        access = {
			jobs = {
				tow = {rankMin = 0, rankMax = 5},
				towoff = {rankMin = 0, rankMax = 5}
			}
        }
    },

	towing_office = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-187.06140136719, -1162.3486328125, 23.821239471436), maxDst = 1.5}
		},
		doors = {
			{model = -952356348, coords = vector3(-187.06140136719, -1162.3486328125, 23.821239471436)}
		},
        access = {
			jobs = {
				tow = {rankMin = 0, rankMax = 5},
				towoff = {rankMin = 0, rankMax = 5}
			}
        }
    },

	towing_right_yard = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-226.10665893555, -1180.4418945313, 23.044052124023), maxDst = 5.0}
		},
		doors = {
			{model = 1286535678, coords = vector3(-226.14630126953, -1176.3200683594, 22.080869674683), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				tow = {rankMin = 0, rankMax = 5},
				towoff = {rankMin = 0, rankMax = 5}
			}
        }
    },

	bsg_garage = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(157.95266723633, -1719.4683837891, 29.291723251343), maxDst = 4.0},
			{coords = vector3(152.60591125488, -1714.8818359375, 29.291431427002), maxDst = 4.0}
		},
		doors = {
			{model = -310158790, coords = vec3(155.367523, -1717.374512, 30.828831), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_garage_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(152.17213439941, -1721.2471923828, 29.291717529297), maxDst = 2.0}
		},
		doors = {
			{model = -329629312, coords = vec3(151.756271, -1721.861084, 29.596836)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_rear_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(148.25170898438, -1702.5372314453, 29.291725158691), maxDst = 2.0}
		},
		doors = {
			{model = -566975179, coords = vec3(148.693710, -1702.192505, 29.596836)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_to_downstairs = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(159.14796447754, -1707.7407226563, 29.291402816772), maxDst = 2.0}
		},
		doors = {
			{model = -5479653, coords = vec3(159.585663, -1707.048706, 29.383192)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_downstairs_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(150.77493286133, -1701.9759521484, 25.79140663147), maxDst = 2.0}
		},
		doors = {
			{model = -5479653, coords = vec3(150.118073, -1701.480103, 25.883163)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_downstairs_armory = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(155.28791809082, -1707.6597900391, 25.791439056396), maxDst = 2.0}
		},
		doors = {
			{model = 1335311341, coords = vec3(154.685410, -1708.420898, 25.940012)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_downstairs_back_armory = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(149.55781555176, -1711.2921142578, 25.791440963745), maxDst = 2.0}
		},
		doors = {
			{model = -274493186, coords = vec3(150.536011, -1712.142822, 25.940012)},
			{model = 47003473, coords = vec3(148.548553, -1710.468506, 25.940012)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_downstairs_weedspot = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(147.88879394531, -1703.3848876953, 25.791440963745), maxDst = 2.0}
		},
		doors = {
			{model = 1335311341, coords = vec3(147.097870, -1702.758545, 25.940012)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_secondfloor_office = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(151.1064453125, -1717.7319335938, 34.731624603271), maxDst = 2.0}
		},
		doors = {
			{model = 245182344, coords = vec3(151.827789, -1718.338379, 34.823338)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_secondfloor_doubledoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(140.09321594238, -1710.7579345703, 33.248264312744), maxDst = 2.0}
		},
		doors = {
			{model = -5479653, coords = vec3(141.161652, -1711.509766, 33.339859)},
			{model = -5479653, coords = vec3(139.157425, -1709.858032, 33.339859)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	bsg_secondfloor_bathroom = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(143.68241882324, -1705.8602294922, 33.248142242432), maxDst = 2.0}
		},
		doors = {
			{model = -5479653, coords = vec3(144.208908, -1706.391968, 33.339859)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			},
			gangs = {
				bsg = {rankMin = 0, rankMax = 4}
			}
        }
    },

	pac_bank_office_entry_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(251.7098236084, 216.50758361816, 106.28217315674), maxDst = 0.7}
		},
		doors = {
			{model = -2121568016, coords = vec3(251.519867, 215.713150, 106.370247)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_office_entry_right_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(267.64739990234, 213.80378723145, 106.28217315674), maxDst = 0.7}
		},
		doors = {
			{model = -2121568016, coords = vec3(267.369965, 213.407990, 106.370247)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_office_entry_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(256.34323120117, 229.12211608887, 106.28218078613), maxDst = 0.7}
		},
		doors = {
			{model = -2121568016, coords = vec3(256.606812, 229.689621, 106.370247)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_office_entry_left_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(270.07312011719, 220.82029724121, 106.28217315674), maxDst = 0.7}
		},
		doors = {
			{model = -2121568016, coords = vec3(270.230652, 221.267303, 106.370247)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },
	
	pac_bank_second_floor_office_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(253.63455200195, 213.36483764648, 110.17316436768), maxDst = 0.7}
		},
		doors = {
			{model = 1721645826, coords = vec3(252.789795, 213.759995, 110.280518)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_second_floor_office_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(263.06799316406, 210.04061889648, 110.17321014404), maxDst = 0.7}
		},
		doors = {
			{model = 1721645826, coords = vec3(262.183868, 210.340881, 110.280518)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_second_floor_office_3 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(259.52282714844, 230.24285888672, 110.17318725586), maxDst = 0.7}
		},
		doors = {
			{model = 1721645826, coords = vec3(258.816528, 230.376404, 110.280518)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_second_floor_office_4 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(268.84555053711, 226.75682067871, 110.17316436768), maxDst = 0.7}
		},
		doors = {
			{model = 1721645826, coords = vec3(268.210602, 226.957306, 110.280518)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_second_floor_office_main = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(272.89120483398, 215.8430480957, 110.17317962646), maxDst = 0.7}
		},
		doors = {
			{model = 1109357065, coords = vec3(273.183899, 216.862823, 110.280518)},
			{model = 1109357065, coords = vec3(272.472107, 214.907272, 110.280518)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_second_floor_stairs_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(272.29110717773, 206.68989562988, 110.17321014404), maxDst = 0.7}
		},
		doors = {
			{model = 267980221, coords = vec3(272.790466, 206.480453, 110.280518)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_first_floor_stairs_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(272.06195068359, 206.65925598145, 106.28202819824), maxDst = 0.7}
		},
		doors = {
			{model = 267980221, coords = vec3(272.790466, 206.480453, 106.382172)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_second_floor_stairs_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(278.1262512207, 223.29539489746, 110.17322540283), maxDst = 0.7}
		},
		doors = {
			{model = 267980221, coords = vec3(277.595306, 223.541580, 110.279175)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_first_floor_stairs_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(278.22491455078, 223.30880737305, 106.28218078613), maxDst = 0.7}
		},
		doors = {
			{model = 267980221, coords = vec3(277.595337, 223.541580, 106.380432)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },
	
	pac_bank_roof_top = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(272.76022338867, 234.9912109375, 123.815574646), maxDst = 0.7}
		},
		doors = {
			{model = 1577691629, coords = vec3(273.897034, 234.586227, 123.974808)},
			{model = 726025323, coords = vec3(271.453278, 235.475677, 123.974808)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_basement_entry_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(271.60116577148, 220.23092651367, 97.117126464844), maxDst = 0.7}
		},
		doors = {
			{model = 409280169, coords = vec3(272.642151, 219.898712, 97.317978)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_basement_entry_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(269.03570556641, 213.25538635254, 97.117126464844), maxDst = 0.7}
		},
		doors = {
			{model = 409280169, coords = vec3(270.103210, 212.922928, 97.317978)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },
	
	pac_bank_basement_office = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(265.32403564453, 224.9259185791, 97.117126464844), maxDst = 0.7}
		},
		doors = {
			{model = 409280169, coords = vec3(265.779083, 225.866806, 97.317978)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_basement_secured_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(249.4571685791, 233.74238586426, 97.117126464844), maxDst = 0.7}
		},
		doors = {
			{model = 409280169, coords = vec3(250.564209, 233.399384, 97.317978)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_basement_secured_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(243.55838012695, 217.28038024902, 97.117141723633), maxDst = 0.7}
		},
		doors = {
			{model = 409280169, coords = vec3(244.558014, 216.897278, 97.317978)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_basement_vault_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(236.15045166016, 229.09552001953, 97.117134094238), maxDst = 1.5}
		},
		doors = {
			{model = 961976194, coords = vec3(234.985733, 228.069611, 97.721848)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_basement_vault_lock_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(229.0076751709, 227.65716552734, 97.117141723633), maxDst = 0.7}
		},
		doors = {
			{model = 643152522, coords = vec3(229.890533, 227.342010, 97.323975)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	pac_bank_basement_vault_lock_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(226.6753692627, 228.56806945801, 97.117141723633), maxDst = 0.7}
		},
		doors = {
			{model = 643152522, coords = vec3(225.646286, 228.886780, 97.323975)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	fleeca_vinewood_vault_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(313.92529296875, -285.71078491211, 54.143028259277), maxDst = 0.8}
		},
		doors = {
			{model = -1591004109, coords = vec3(314.623871, -285.994476, 54.463009)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	fleeca_square_vault_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(149.47538757324, -1047.3817138672, 29.346324920654), maxDst = 0.8}
		},
		doors = {
			{model = -1591004109, coords = vec3(150.291321, -1047.629028, 29.666298)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	fleeca_centreville_vault_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(-351.33309936523, -56.362380981445, 49.014827728271), maxDst = 0.8}
		},
		doors = {
			{model = -1591004109, coords = vec3(-350.414368, -56.797054, 49.334797)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	fleeca_vescpucci_vault_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(-1208.0946044922, -335.42147827148, 37.759296417236), maxDst = 0.8}
		},
		doors = {
			{model = -1591004109, coords = vec3(-1207.328247, -335.128937, 38.079254)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	fleeca_beach_vault_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(-2956.1752929688, 484.65213012695, 15.675336837769), maxDst = 0.8}
		},
		doors = {
			{model = -1591004109, coords = vec3(-2956.116211, 485.420593, 15.995309)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	fleeca_sandy_vault_gate = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(1173.1110839844, 2713.0883789063, 38.066291809082), maxDst = 0.8}
		},
		doors = {
			{model = -1591004109, coords = vec3(1172.291138, 2713.146240, 38.386253)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_side_entrance_right_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4959.162109375, -5786.4965820313, 20.838098526001), maxDst = 1.0}
		},
		doors = {
			{model = -1439869581, coords = vec3(4960.498047, -5785.047363, 21.108732)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_side_entrance_right_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4964.3979492188, -5786.37109375, 20.877752304077), maxDst = 1.0}
		},
		doors = {
			{model = -1439869581, coords = vec3(4965.725586, -5787.680176, 21.108732)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_side_entrance_left_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5084.4311523438, -5731.5751953125, 15.772498130798), maxDst = 1.0}
		},
		doors = {
			{model = -1439869581, coords = vec3(5085.587891, -5733.124023, 15.952604)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_side_entrance_left_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5083.5986328125, -5736.7416992188, 15.677476882935), maxDst = 1.0}
		},
		doors = {
			{model = -1439869581, coords = vec3(5082.087891, -5737.809082, 15.952604)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_appartment_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5009.876953125, -5791.0517578125, 17.826713562012), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(5009.137695, -5791.290039, 18.027788)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_appartment_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5011.5522460938, -5784.3911132813, 17.831623077393), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(5011.866211, -5784.910156, 18.027788)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_mini_appartment_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5078.748046875, -5758.8715820313, 15.828651428223), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(5078.166016, -5758.353516, 16.025780)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_mini_appartment_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5085.2983398438, -5758.0112304688, 15.829655647278), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(5084.900879, -5758.598145, 16.025780)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_midle_appartment_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5026.73828125, -5733.2314453125, 17.864805221558), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(5027.139648, -5732.875977, 18.061674)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_midle_appartment_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5032.1484375, -5735.2143554688, 17.8570728302), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(5032.533691, -5735.610352, 18.061674)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_maingate_1 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4982.5517578125, -5711.1665039063, 19.880226135254), maxDst = 3.0}
		},
		doors = {
			{model = -1574151574, coords = vec3(4981.012207, -5712.747070, 20.781033)},
			{model = 1215477734, coords = vec3(4984.133789, -5709.248535, 20.781033)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_maingate_2 = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4989.1352539063, -5717.013671875, 19.880226135254), maxDst = 3.0}
		},
		doors = {
			{model = -1574151574, coords = vec3(4990.681152, -5715.105957, 20.781033)},
			{model = 1215477734, coords = vec3(4987.587402, -5718.634766, 20.781033)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_office_entrance = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5005.916015625, -5750.947265625, 28.84496307373), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(5006.242188, -5750.410645, 29.040907)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_office_elevator = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5011.7055664063, -5749.9252929688, 28.939210891724), maxDst = 1.5}
		},
		doors = {
			{model = -576022807, coords = vec3(5011.749023, -5750.071289, 27.944746), auto = { distance = 5.0, rate = 1.0 }}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_vault_main = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5008.0849609375, -5754.1049804688, 15.484435081482), maxDst = 0.8}
		},
		doors = {
			{model = -630812075, coords = vec3(5007.619629, -5753.608398, 15.572952)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_vault_room = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5001.7587890625, -5746.4907226563, 14.840528488159), maxDst = 0.8}
		},
		doors = {
			{model = -1360938964, coords = vec3(5002.29, -5746.74, 14.9)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_vault_entrance_middle = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4998.3110351563, -5742.5517578125, 14.840617179871), maxDst = 0.8}
		},
		doors = {
			{model = -2058786200, coords = vec3(4998.08, -5743.132, 14.94)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_vault_fuck_all = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4989.6928710938, -5735.673828125, 14.840592384338), maxDst = 1.5}
		},
		doors = {
			{model = -607013269, coords = vec3(4989.270996, -5735.334961, 15.071644)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_vault_entrance_right = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4992.2719726563, -5756.3447265625, 15.893159866333), maxDst = 0.8}
		},
		doors = {
			{model = -1360938964, coords = vec3(4992.82, -5756.65, 15.98)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_vault_entrance_left = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(5006.060546875, -5734.0522460938, 15.838903427124), maxDst = 0.8}
		},
		doors = {
			{model = -1360938964, coords = vec3(5006.60, -5734.46, 15.93)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_cage_panther = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4977.5395507813, -5765.201171875, 20.981952667236), maxDst = 1.5}
		},
		doors = {
			{model = -1697935936, coords = vec3(4977.377, -5765.718, 21.083)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	cayo_mansion_cage_box = {
		nuiLabel = "Intéragir",
		register = true,
		lock = false,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(4972.359375, -5763.5771484375, 20.981658935547), maxDst = 1.5}
		},
		doors = {
			{model = -1697935936, coords = vec3(4972.14, -5764.13, 21.08)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_office_door = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(-104.25981140137, 6474.3994140625, 31.64568901062), maxDst = 0.8}
		},
		doors = {
			{model = -368548260, coords = vec3(-104.705734, 6473.917969, 31.787983)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_minidoor = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vec3(-112.570831, 6468.007813, 31.214144), maxDst = 0.8}
		},
		doors = {
			{model = 1784650867, coords = vec3(-112.570831, 6468.007813, 31.214144)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_behind_desk = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-111.65210723877, 6474.9985351563, 31.644969940186), maxDst = 0.8}
		},
		doors = {
			{model = -56652918, coords = vec3(-111.042694, 6475.328125, 31.787979)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_side_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-115.99950408936, 6479.6494140625, 31.645626068115), maxDst = 0.8}
		},
		doors = {
			{model = 1248599813, coords = vec3(-116.512688, 6478.959961, 31.787979)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_rear_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-96.176170349121, 6473.4663085938, 31.645683288574), maxDst = 0.8}
		},
		doors = {
			{model = 1248599813, coords = vec3(-96.708656, 6474.056641, 31.787979)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_security = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-92.559844970703, 6468.388671875, 31.645536422729), maxDst = 0.8}
		},
		doors = {
			{model = -147325430, coords = vec3(-92.232231, 6468.960449, 31.787979)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_to_rear_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
        interactCoords = {
			{coords = vector3(-99.706268310547, 6473.9609375, 31.645639419556), maxDst = 0.8}
		},
		doors = {
			{model = -147325430, coords = vec3(-100.112297, 6474.392090, 31.787979)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	paleto_bank_vault = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vec3(-100.241867, 6464.549316, 31.884604), maxDst = 1.5}
		},
		doors = {
			{model = -2050208642, coords = vec3(-100.241867, 6464.549316, 31.884604)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	vangelico_entry = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(-631.19000244141, -237.43562316895, 38.076957702637), maxDst = 1.0}
		},
		doors = {
			{model = 9467943, coords = vec3(-630.426514, -238.437546, 38.206532)},
			{model = 1425919976, coords = vec3(-631.955383, -236.333267, 38.206532)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    },

	vangelico_office = {
		nuiLabel = "Intéragir",
		register = true,
		lock = true,
		lockOnly = true,
        interactCoords = {
			{coords = vector3(-628.44219970703, -229.66502380371, 38.057033538818), maxDst = 1.0}
		},
		doors = {
			{model = 1335309163, coords = vec3(-629.133850, -230.151703, 38.206585)}
		},
        access = {
			jobs = {
				police = {rankSpecific = 7}
			}
        }
    }
}

Doors.activeAutomateds = {}

Doors.Automated = {
	fleeca_vinewood_vault = {
		model = 2121050683, 
		heading = {close = 249.86596679688, open = 160.0, modifier = -0.01}, 
		coords = vector3(313, -282, 55)
	},

	fleeca_square_vault = {
		model = 2121050683, 
		heading = {close = 249.84596679688, open = 160.0, modifier = -0.01}, 
		coords = vector3(148, -1044, 29)
	},

	fleeca_centreville_vault = {
		model = 2121050683, 
		heading = {close = 250.859, open = 160.0, modifier = -0.01}, 
		coords = vector3(-352.7,-53.5,49.17)
	},

	fleeca_vescpucci_vault = {
		model = 2121050683, 
		heading = {close = 296.86596679688, open = 208.0, modifier = -0.01}, 
		coords = vector3(-1211,-334,37.9)
	},

	fleeca_beach_vault = {
		model = -63539571, 
		heading = {close = 357.54, open = 267.0, modifier = -0.01}, 
		coords = vector3(-2958,482,15.8)
	},

	fleeca_sandy_vault = {
		model = 2121050683, 
		heading = {close = 90.0, open = 1.0, modifier = -0.01}, 
		coords = vector3(1175, 2710, 38.2)
	},

	pacifique_vault = {
		model = 961976194, 
		heading = {close = 70.0, open = 303.0, modifier = -0.01}, 
		coords = vector3(234.98, 228.06, 97.72)
	}
}

for k,v in pairs(Doors.DoorList) do
	v.index = k
	v.access.groups = {}

	if v.access.jobs then
		for x,y in pairs(v.access.jobs) do
			v.access.groups[x] = y
		end
		v.access.jobs = nil
	end

	if v.access.gangs then
		for x,y in pairs(v.access.gangs) do
			v.access.groups[x] = y
		end
		v.access.gangs = nil
	end
end
