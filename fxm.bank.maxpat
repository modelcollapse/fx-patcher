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
         "code": "ratio(k, sc) {\n    r = k + 1;\n    if (sc < 0.5) {\n        r = k + 1;\n    } else if (sc < 1.5) {\n        r = pow(2, k * 7 / 12);\n    } else if (sc < 2.5) {\n        r = pow(2, selector(k + 1, 0, 3, 5, 7, 10, 12, 15, 17) / 12);\n    } else {\n        r = selector(k + 1, 1, 2.76, 5.4, 8.93, 13.34, 18.64, 24.81, 31.87);\n    }\n    return r;\n}\nParam root(110);\nParam spread(0.5);\nParam decay(0.9);\nParam scale(0);\nParam tilt(0.3);\nParam drift(0);\nParam bands(8);\nParam input(1);\nHistory a0(0);\nHistory b0(0);\nHistory a1(0);\nHistory b1(0);\nHistory a2(0);\nHistory b2(0);\nHistory a3(0);\nHistory b3(0);\nHistory a4(0);\nHistory b4(0);\nHistory a5(0);\nHistory b5(0);\nHistory a6(0);\nHistory b6(0);\nHistory a7(0);\nHistory b7(0);\nrr = clamp(1 - (1 - clamp(decay, 0, 1)) * 0.012 - 0.00002, 0.9, 0.99998);\ndm = 1 + drift * 0.02 * cycle(0.07);\nsl = 0;\nsg = 0;\nf0 = clamp(root * pow(ratio(0, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny0 = (1 - rr) * in1 * input * 3 * pow(0 + 1, -tilt) * (0 < bands) + 2 * rr * cos(twopi * f0 / samplerate) * a0 - rr * rr * b0;\nb0 = a0;\na0 = y0;\nsl = sl + y0;\nf1 = clamp(root * pow(ratio(1, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny1 = (1 - rr) * in2 * input * 3 * pow(1 + 1, -tilt) * (1 < bands) + 2 * rr * cos(twopi * f1 / samplerate) * a1 - rr * rr * b1;\nb1 = a1;\na1 = y1;\nsg = sg + y1;\nf2 = clamp(root * pow(ratio(2, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny2 = (1 - rr) * in1 * input * 3 * pow(2 + 1, -tilt) * (2 < bands) + 2 * rr * cos(twopi * f2 / samplerate) * a2 - rr * rr * b2;\nb2 = a2;\na2 = y2;\nsl = sl + y2;\nf3 = clamp(root * pow(ratio(3, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny3 = (1 - rr) * in2 * input * 3 * pow(3 + 1, -tilt) * (3 < bands) + 2 * rr * cos(twopi * f3 / samplerate) * a3 - rr * rr * b3;\nb3 = a3;\na3 = y3;\nsg = sg + y3;\nf4 = clamp(root * pow(ratio(4, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny4 = (1 - rr) * in1 * input * 3 * pow(4 + 1, -tilt) * (4 < bands) + 2 * rr * cos(twopi * f4 / samplerate) * a4 - rr * rr * b4;\nb4 = a4;\na4 = y4;\nsl = sl + y4;\nf5 = clamp(root * pow(ratio(5, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny5 = (1 - rr) * in2 * input * 3 * pow(5 + 1, -tilt) * (5 < bands) + 2 * rr * cos(twopi * f5 / samplerate) * a5 - rr * rr * b5;\nb5 = a5;\na5 = y5;\nsg = sg + y5;\nf6 = clamp(root * pow(ratio(6, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny6 = (1 - rr) * in1 * input * 3 * pow(6 + 1, -tilt) * (6 < bands) + 2 * rr * cos(twopi * f6 / samplerate) * a6 - rr * rr * b6;\nb6 = a6;\na6 = y6;\nsl = sl + y6;\nf7 = clamp(root * pow(ratio(7, scale), 0.25 + spread * 1.5) * dm, 20, 18000);\ny7 = (1 - rr) * in2 * input * 3 * pow(7 + 1, -tilt) * (7 < bands) + 2 * rr * cos(twopi * f7 / samplerate) * a7 - rr * rr * b7;\nb7 = a7;\na7 = y7;\nsg = sg + y7;\nout1 = tanh(sl);\nout2 = tanh(sg);\n",
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
     "text": "expr 40.*exp($f1*3.9)",
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
     "text": "prepend root",
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
     "text": "prepend spread",
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
      940.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "prepend decay",
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
      1110.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "* 3.99",
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
      136.0,
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
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1110.0,
      162.0,
      150.0,
      22.0
     ],
     "text": "prepend scale",
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
     "text": "* 8.",
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
     "text": "i",
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
     "text": "+ 1",
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
     "text": "prepend bands",
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
     "text": "prepend tilt",
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
     "text": "prepend drift",
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
     "text": "prepend input",
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
      3
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