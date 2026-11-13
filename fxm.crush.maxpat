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
         "code": "Param bits(8);\nParam rate(4);\nParam drive(0);\nParam tone(18000);\nParam jitter(0);\nParam fold(0);\nParam level(1);\nHistory hl(0);\nHistory hr(0);\nHistory cnt(0);\nHistory lpl(0);\nHistory lpr(0);\ncnt = cnt + 1;\nrt = max(1, rate * (1 + jitter * noise()));\nif (cnt >= rt) {\n    cnt = 0;\n    hl = in1;\n    hr = in2;\n}\nq = pow(2, clamp(bits, 1, 16) - 1);\nyl = floor(hl * q + 0.5) / q;\nyr = floor(hr * q + 0.5) / q;\ndg = 1 + drive * 10;\nyl = drive > 0.001 ? tanh(yl * dg) / tanh(dg) : yl;\nyr = drive > 0.001 ? tanh(yr * dg) / tanh(dg) : yr;\nyl = fold > 0.001 ? sin(yl * (1 + fold * 6) * pi * 0.5) : yl;\nyr = fold > 0.001 ? sin(yr * (1 + fold * 6) * pi * 0.5) : yr;\nc = 1 - exp(-twopi * clamp(tone, 200, 20000) / samplerate);\nlpl = lpl + c * (yl - lpl);\nlpr = lpr + c * (yr - lpr);\nout1 = lpl * level;\nout2 = lpr * level;\n",
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
     "text": "scale 0. 1. 16. 1.",
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
     "text": "prepend bits",
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
     "text": "expr exp($f1*4.16)",
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
     "text": "prepend rate",
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
     "text": "prepend drive",
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
     "text": "expr 200.*exp($f1*4.605)",
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
      1110.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "prepend tone",
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
      110.0,
      150.0,
      22.0
     ],
     "text": "prepend jitter",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "prepend fold",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "* 2.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      246.0,
      150.0,
      22.0
     ],
     "text": "prepend level",
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
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      5
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
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
      6
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
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