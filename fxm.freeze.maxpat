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
         "code": "Param freeze(0);\nParam size(250);\nParam blur(0.3);\nParam tone(12000);\nParam pitch(0);\nParam width(1);\nParam feed(0);\nParam level(1);\nData buf(768000, 2);\nHistory w(0);\nHistory fz(0);\nHistory ph1(0);\nHistory ph2(0.5);\nHistory o1(0);\nHistory o2(0);\nHistory lpl(0);\nHistory lpr(0);\nlen = dim(buf);\ntarget = freeze > 0.5;\nfz = fz + (target - fz) * 0.0006;\nif (target < 0.5) {\n    poke(buf, in1, w, 0);\n    poke(buf, in2, w, 1);\n    w = wrap(w + 1, 0, len);\n}\nS = mstosamps(clamp(size, 20, 2000));\nrate = pow(2, pitch / 12);\nph1 = ph1 + rate / S;\nif (ph1 >= 1) {\n    ph1 = ph1 - 1;\n    o1 = (noise() * 0.5 + 0.5) * blur * S * 4;\n}\nph2 = ph2 + rate / S;\nif (ph2 >= 1) {\n    ph2 = ph2 - 1;\n    o2 = (noise() * 0.5 + 0.5) * blur * S * 4;\n}\np1 = w - S * 3 - o1 + ph1 * S;\np2 = w - S * 3 - o2 + ph2 * S;\ng1 = sin(pi * ph1);\ng2 = sin(pi * ph2);\nxl = peek(buf, p1, 0, interp=\"linear\", boundmode=\"wrap\") * g1 + peek(buf, p2, 0, interp=\"linear\", boundmode=\"wrap\") * g2;\nxr = peek(buf, p1, 1, interp=\"linear\", boundmode=\"wrap\") * g1 + peek(buf, p2, 1, interp=\"linear\", boundmode=\"wrap\") * g2;\nmid = (xl + xr) * 0.5;\nside = (xl - xr) * 0.5 * width;\nc = 1 - exp(-twopi * clamp(tone, 200, 20000) / samplerate);\nlpl = lpl + c * ((mid + side) - lpl);\nlpr = lpr + c * ((mid - side) - lpr);\nout1 = in1 * (1 - fz) + (lpl * level + in1 * feed) * fz;\nout2 = in2 * (1 - fz) + (lpr * level + in2 * feed) * fz;\n",
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
     "text": "> 0.5",
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
     "text": "prepend freeze",
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
     "text": "expr 20.*exp($f1*4.605)",
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
     "text": "prepend size",
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
     "text": "prepend blur",
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
     "text": "* 24.",
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
      1280.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "- 12.",
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
      1280.0,
      162.0,
      150.0,
      22.0
     ],
     "text": "i",
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
      1280.0,
      188.0,
      150.0,
      22.0
     ],
     "text": "prepend pitch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      110.0,
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
     "id": "obj-20",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "prepend width",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "prepend feed",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
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
     "id": "obj-23",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
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
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      5
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
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
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
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
      7
     ],
     "destination": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
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