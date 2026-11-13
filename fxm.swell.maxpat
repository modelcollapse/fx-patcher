{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   100,
   100,
   1700,
   620
  ],
  "openinpresentation": 0,
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      20.0,
      50.0,
      22.0
     ],
     "text": "in~ 1",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300.0,
      20.0,
      50.0,
      22.0
     ],
     "text": "in~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      20.0,
      40.0,
      22.0
     ],
     "text": "in 3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 17,
     "patching_rect": [
      600.0,
      60.0,
      700.0,
      22.0
     ],
     "text": "route k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16",
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      560.0,
      50.0,
      22.0
     ],
     "text": "out~ 1"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      300.0,
      560.0,
      50.0,
      22.0
     ],
     "text": "out~ 2"
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      20.0,
      480.0,
      300.0,
      22.0
     ],
     "text": "gen~",
     "outlettype": [
      "signal",
      "signal"
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       100,
       100,
       700,
       830
      ],
      "openinpresentation": 0,
      "boxes": [
       {
        "box": {
         "id": "obj-1",
         "maxclass": "codebox",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          50.0,
          60.0,
          600.0,
          700.0
         ],
         "outlettype": [
          "",
          ""
         ],
         "code": "Param attack(800);\nParam thresh(0.02);\nParam sens(0.5);\nParam depth(1);\nParam hold(50);\nHistory ef(0);\nHistory es(0);\nHistory g(1);\nHistory lock(0);\nx = max(abs(in1), abs(in2));\nef = ef + (x - ef) * (1 - exp(-1 / (0.003 * samplerate)));\nes = es + (x - es) * (1 - exp(-1 / (0.25 * samplerate)));\nonset = (ef > thresh) && (ef > es * (1.2 + (1 - sens) * 3)) && (lock <= 0);\nif (onset) {\n    g = 1 - depth;\n    lock = mstosamps(hold) + mstosamps(attack) * 0.5;\n}\nlock = lock - 1;\ng = g + (1 - g) * (1 - exp(-1 / mstosamps(max(attack, 5))));\nout1 = in1 * g;\nout2 = in2 * g;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 12.0
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          50.0,
          20.0,
          40.0,
          22.0
         ],
         "text": "in 1",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600.0,
          20.0,
          40.0,
          22.0
         ],
         "text": "in 2",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          50.0,
          780.0,
          40.0,
          22.0
         ],
         "text": "out 1"
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          600.0,
          780.0,
          40.0,
          22.0
         ],
         "text": "out 2"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-2",
          0
         ],
         "destination": [
          "obj-1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-3",
          0
         ],
         "destination": [
          "obj-1",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-1",
          0
         ],
         "destination": [
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-1",
          1
         ],
         "destination": [
          "obj-5",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "expr 5.*exp($f1*6.68)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "prepend attack",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "expr 0.001*exp($f1*5.3)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "prepend thresh",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      940.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "prepend sens",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1110.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "prepend depth",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "* 2000.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "prepend hold",
     "outlettype": [
      ""
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-7",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      1
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      1
     ],
     "destination": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      2
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      3
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      4
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   }
  ]
 }
}