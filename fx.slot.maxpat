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
   1800,
   950
  ],
  "openinpresentation": 1,
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      20.0,
      50.0,
      22.0
     ],
     "text": "inlet",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      20.0,
      50.0,
      22.0
     ],
     "text": "inlet",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      600.0,
      60.0,
      20.0
     ],
     "text": "Slot",
     "presentation": 1,
     "presentation_rect": [
      2.0,
      2.0,
      62.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      100.0,
      600.0,
      80.0,
      22.0
     ],
     "text": "loadmess #1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      100.0,
      630.0,
      110.0,
      22.0
     ],
     "text": "prepend set Slot",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400.0,
      600.0,
      154.0,
      295.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      154.0,
      294.8
     ],
     "border": 1,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 9,
     "patching_rect": [
      1900.0,
      40.0,
      300.0,
      22.0
     ],
     "text": "select 1 2 3 4 5 6 7 8",
     "outlettype": [
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
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 9,
     "patching_rect": [
      1900.0,
      400.0,
      300.0,
      22.0
     ],
     "text": "select 1 2 3 4 5 6 7 8",
     "outlettype": [
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
     "id": "obj-9",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      80.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.85 0.25 0.25 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      440.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.119 0.035 0.035 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      110.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.9 0.55 0.15 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      470.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.126 0.077 0.021 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      140.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.85 0.75 0.2 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      500.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.119 0.105 0.028 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      170.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.35 0.75 0.35 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      530.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.049 0.105 0.049 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      200.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.2 0.7 0.65 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      560.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.028 0.098 0.091 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      230.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.3 0.55 0.9 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      590.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.042 0.077 0.126 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      260.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.6 0.4 0.85 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      620.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.084 0.056 0.119 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      290.0,
      220.0,
      22.0
     ],
     "text": "bordercolor 0.9 0.35 0.65 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      650.0,
      220.0,
      22.0
     ],
     "text": "bgcolor 0.126 0.049 0.091 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      220.0,
      600.0,
      62.0,
      18.0
     ],
     "text": "Focus",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      68.0,
      2.0,
      62.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Focus",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "focus",
       "parameter_shortname": "Focus",
       "parameter_type": 2,
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_mmax": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      1400.0,
      900.0,
      70.0,
      22.0
     ],
     "text": "autopattr",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      300.0,
      600.0,
      62.0,
      18.0
     ],
     "text": "Bypass",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      2.0,
      46.0,
      62.0,
      18.0
     ],
     "parameter_enable": 1,
     "varname": "bypass",
     "mode": 1,
     "texton": "Bypass",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "bypass",
       "parameter_shortname": "Bypass",
       "parameter_type": 2,
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_mmax": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      380.0,
      600.0,
      128.0,
      15.0
     ],
     "outlettype": [
      "",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      2.0,
      24.0,
      128.0,
      15.0
     ],
     "parameter_enable": 1,
     "varname": "module",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "module",
       "parameter_shortname": "module",
       "parameter_type": 2,
       "parameter_enum": [
        "Empty",
        "Heat",
        "Drift",
        "Shimmer",
        "Memory",
        "Shift",
        "Bank",
        "Freeze",
        "Grain",
        "Tape",
        "Freq",
        "Loop",
        "Swell",
        "Filter",
        "Crush"
       ],
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_mmax": 14
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      20.0,
      60.0,
      115.0,
      26.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "float",
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      32.8,
      248.0,
      115.0,
      26.0
     ],
     "orientation": 1,
     "showname": 0,
     "shownumber": 0,
     "parameter_enable": 1,
     "varname": "in",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "in",
       "parameter_shortname": "in",
       "parameter_type": 0,
       "parameter_mmin": -70.0,
       "parameter_mmax": 6.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150.0,
      60.0,
      30.0,
      20.0
     ],
     "text": "in",
     "presentation": 1,
     "presentation_rect": [
      2.0,
      244.0,
      28.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150.0,
      420.0,
      30.0,
      20.0
     ],
     "text": "out",
     "presentation": 1,
     "presentation_rect": [
      2.0,
      266.0,
      28.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      20.0,
      120.0,
      160.0,
      22.0
     ],
     "text": "poly~ fxm.empty 1",
     "outlettype": [
      "signal",
      "signal",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      300.0,
      50.0,
      22.0
     ],
     "text": "*~ 0.",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      300.0,
      50.0,
      22.0
     ],
     "text": "*~ 0.",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      80.0,
      330.0,
      50.0,
      22.0
     ],
     "text": "*~ 1.",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      260.0,
      330.0,
      50.0,
      22.0
     ],
     "text": "*~ 1.",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      370.0,
      40.0,
      22.0
     ],
     "text": "+~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      370.0,
      40.0,
      22.0
     ],
     "text": "+~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      20.0,
      400.0,
      115.0,
      26.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "float",
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      32.8,
      270.0,
      115.0,
      26.0
     ],
     "orientation": 1,
     "showname": 0,
     "shownumber": 0,
     "parameter_enable": 1,
     "varname": "out",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "out",
       "parameter_shortname": "out",
       "parameter_type": 0,
       "parameter_mmin": -70.0,
       "parameter_mmax": 6.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      460.0,
      80.0,
      22.0
     ],
     "text": "tapin~ 100",
     "outlettype": [
      "tapconnect"
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      490.0,
      80.0,
      22.0
     ],
     "text": "tapout~ 0",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      520.0,
      170.0,
      22.0
     ],
     "text": "biquad~ 1. -1. 0. -0.9997 0.",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      550.0,
      50.0,
      22.0
     ],
     "text": "tanh~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      580.0,
      50.0,
      22.0
     ],
     "text": "outlet"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      460.0,
      80.0,
      22.0
     ],
     "text": "tapin~ 100",
     "outlettype": [
      "tapconnect"
     ]
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      490.0,
      80.0,
      22.0
     ],
     "text": "tapout~ 0",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      520.0,
      170.0,
      22.0
     ],
     "text": "biquad~ 1. -1. 0. -0.9997 0.",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      550.0,
      50.0,
      22.0
     ],
     "text": "tanh~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      200.0,
      580.0,
      50.0,
      22.0
     ],
     "text": "outlet"
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
      40.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      94.4,
      196.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "mix",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "mix",
       "parameter_shortname": "Mix",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      20.0,
      60.0,
      16.0
     ],
     "text": "Mix",
     "presentation": 1,
     "presentation_rect": [
      86.4,
      182.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      100.0,
      60.0,
      22.0
     ],
     "text": "pak f f",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      130.0,
      120.0,
      22.0
     ],
     "text": "expr $f1*(1.-$f2)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
      160.0,
      50.0,
      22.0
     ],
     "text": "t f f",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      190.0,
      130.0,
      22.0
     ],
     "text": "expr cos($f1*1.5708)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      850.0,
      190.0,
      130.0,
      22.0
     ],
     "text": "expr sin($f1*1.5708)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      220.0,
      70.0,
      22.0
     ],
     "text": "pack f 30",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
      250.0,
      50.0,
      22.0
     ],
     "text": "line~",
     "outlettype": [
      "signal",
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      220.0,
      70.0,
      22.0
     ],
     "text": "pack f 30",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
      250.0,
      50.0,
      22.0
     ],
     "text": "line~",
     "outlettype": [
      "signal",
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300.0,
      640.0,
      100.0,
      22.0
     ],
     "text": "prepend mute 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      300.0,
      60.0,
      22.0
     ],
     "text": "gate 1 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1000.0,
      330.0,
      90.0,
      22.0
     ],
     "text": "s fx.panel.in"
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1200.0,
      20.0,
      100.0,
      22.0
     ],
     "text": "r fx.panel.out",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1200.0,
      50.0,
      60.0,
      22.0
     ],
     "text": "gate 1 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 17,
     "patching_rect": [
      1200.0,
      80.0,
      500.0,
      22.0
     ],
     "text": "route 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16",
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
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1000.0,
      560.0,
      90.0,
      22.0
     ],
     "text": "v8 fxmod.js",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1000.0,
      590.0,
      70.0,
      22.0
     ],
     "text": "route k17",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 18,
     "patching_rect": [
      1000.0,
      620.0,
      520.0,
      22.0
     ],
     "text": "route 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17",
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
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      70.0,
      90.0,
      22.0
     ],
     "text": "prepend base 17",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      800.0,
      70.0,
      90.0,
      22.0
     ],
     "text": "prepend #1 17",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      800.0,
      100.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      500.0,
      60.0,
      22.0
     ],
     "text": "r fx.mod",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1100.0,
      530.0,
      60.0,
      22.0
     ],
     "text": "route #1",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      560.0,
      80.0,
      22.0
     ],
     "text": "prepend mod",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      590.0,
      60.0,
      22.0
     ],
     "text": "r fx.midi",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1100.0,
      620.0,
      60.0,
      22.0
     ],
     "text": "route #1",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      650.0,
      80.0,
      22.0
     ],
     "text": "prepend base",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1200.0,
      560.0,
      70.0,
      22.0
     ],
     "text": "s fx.touch"
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300.0,
      700.0,
      70.0,
      22.0
     ],
     "text": "s fx.labels"
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      600.0,
      90.0,
      22.0
     ],
     "text": "r fx.labels.ask",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      670.0,
      70.0,
      22.0
     ],
     "text": "prepend #1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      640.0,
      80.0,
      22.0
     ],
     "text": "append Mix",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      630.0,
      50.0,
      22.0
     ],
     "text": "zl reg",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1000.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      2.0,
      82.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k1",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k1",
       "parameter_shortname": "k1",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-86",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1000.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      -6.0,
      68.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1050.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      48.2,
      82.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k2",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k2",
       "parameter_shortname": "k2",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1050.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      40.2,
      68.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1050.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1050.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1050.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1050.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1050.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1100.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      94.4,
      82.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k3",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k3",
       "parameter_shortname": "k3",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1100.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      86.4,
      68.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1150.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      2.0,
      139.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k4",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k4",
       "parameter_shortname": "k4",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1150.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      -6.0,
      125.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1150.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k4",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1150.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 4",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1150.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 4",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1150.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1150.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k4",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1200.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      48.2,
      139.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k5",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k5",
       "parameter_shortname": "k5",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1200.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      40.2,
      125.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-115",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1200.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1200.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1200.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1200.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1200.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1250.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      94.4,
      139.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k6",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k6",
       "parameter_shortname": "k6",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1250.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      86.4,
      125.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1250.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k6",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1250.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 6",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1250.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 6",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1250.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1250.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k6",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1300.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      2.0,
      196.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k7",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k7",
       "parameter_shortname": "k7",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      -6.0,
      182.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1350.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      48.2,
      196.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k8",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k8",
       "parameter_shortname": "k8",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1350.0,
      120.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      40.2,
      182.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1350.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1350.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1350.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1350.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1350.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1400.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k9",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k9",
       "parameter_shortname": "k9",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k9",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 9",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 9",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k9",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1450.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k10",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k10",
       "parameter_shortname": "k10",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k10",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 10",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 10",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k10",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1500.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k11",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k11",
       "parameter_shortname": "k11",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k11",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 11",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 11",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k11",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1550.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k12",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k12",
       "parameter_shortname": "k12",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1550.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k12",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1550.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 12",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-162",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1550.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 12",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1550.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1550.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k12",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1600.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k13",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k13",
       "parameter_shortname": "k13",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-166",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k13",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 13",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 13",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k13",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1650.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k14",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k14",
       "parameter_shortname": "k14",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-172",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1650.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k14",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1650.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 14",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-174",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1650.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 14",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-175",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1650.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-176",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1650.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k14",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1700.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k15",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k15",
       "parameter_shortname": "k15",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-178",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k15",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-179",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 15",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-180",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 15",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-181",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-182",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k15",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1750.0,
      150.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "varname": "k16",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k16",
       "parameter_shortname": "k16",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1750.0,
      200.0,
      70.0,
      22.0
     ],
     "text": "prepend k16",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1750.0,
      230.0,
      80.0,
      22.0
     ],
     "text": "prepend base 16",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1750.0,
      260.0,
      80.0,
      22.0
     ],
     "text": "prepend #1 16",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1750.0,
      650.0,
      70.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-188",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1750.0,
      680.0,
      70.0,
      22.0
     ],
     "text": "prepend k16",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-189",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      220.0,
      640.0,
      30.0,
      22.0
     ],
     "text": "t b",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      220.0,
      670.0,
      40.0,
      22.0
     ],
     "text": "i #1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      220.0,
      700.0,
      70.0,
      22.0
     ],
     "text": "s fx.focus"
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      640.0,
      70.0,
      22.0
     ],
     "text": "r fx.focus",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      670.0,
      50.0,
      22.0
     ],
     "text": "== #1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      500.0,
      700.0,
      60.0,
      22.0
     ],
     "text": "t i i i",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      730.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      600.0,
      730.0,
      40.0,
      22.0
     ],
     "text": "sel 1",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      800.0,
      640.0,
      50.0,
      22.0
     ],
     "text": "zl reg",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      640.0,
      50.0,
      22.0
     ],
     "text": "zl reg",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      600.0,
      760.0,
      60.0,
      22.0
     ],
     "text": "t b b b",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-200",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      800.0,
      700.0,
      100.0,
      22.0
     ],
     "text": "prepend labels",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      800.0,
      730.0,
      80.0,
      22.0
     ],
     "text": "zl slice 8",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      800.0,
      760.0,
      200.0,
      22.0
     ],
     "text": "unpack s s s s s s s s",
     "outlettype": [
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
     "id": "obj-203",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      800.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      890.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      980.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1070.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1160.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-208",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1250.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1340.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-210",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1430.0,
      790.0,
      80.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-211",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      700.0,
      150.0,
      22.0
     ],
     "text": "prepend title Slot #1 \u00b7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 16,
     "patching_rect": [
      380.0,
      700.0,
      300.0,
      22.0
     ],
     "text": "sel 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      380.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-214",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.empty",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-215",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Empty",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-216",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "\u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-217",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-218",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      380.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-219",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      640.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-220",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.heat",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-221",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Heat",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-222",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Drive Tone Shape Bias Follow Attack Release Out Filter Reso Feedbk FbTime Input ToneHz FbTone Routing",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-223",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.3 0.5 0. 0.5 0. 0.1 0.3 0.66 1. 0. 0. 0.2 0.5 0.5 0.8 0.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-224",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      640.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-225",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      900.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-226",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.drift",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-227",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Drift",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-228",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Time Wander Erase Smear Ratio Spread Tone Rate Lowcut FbDrive Freeze Input \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-229",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.55 0.3 0.35 0.3 0.3 0.5 0.6 0.3 0.3 0. 0. 1. 0. 0. 0. 0.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-230",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      900.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-231",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      1160.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-232",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1160.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.shimmer",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-233",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1160.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Shimmer",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1160.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Size Decay Shimmer Pitch Damp Diffuse Mod Freeze FrzIn Lowcut \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1160.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.7 0.55 0.4 1. 0.4 0.7 0.3 0. 0. 0.15 0. 0. 0. 0. 0. 0.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-236",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      1160.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-237",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      1420.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-238",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1420.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.memory",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-239",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1420.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Memory",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-240",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1420.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Feedbk Blur Drift Mode Size Capture Hold Width Pitch Reverse HalfSpd Drive HPF LPF Style Erase",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-241",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1420.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.745 0.32 0.45 0.0 0.0 1.0 0.0 0.5 1.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-242",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      1420.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-243",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      1680.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-244",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1680.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.shift",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-245",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1680.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Shift",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-246",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1680.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Pitch Micro Feedbk Window Delay Spread Tone Pitch2 Level2 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-247",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1680.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.75 0.5 0.0 0.5 0.0 0.2 1.0 0.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-248",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      1680.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-249",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      1940.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-250",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1940.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.bank",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-251",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1940.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Bank",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-252",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1940.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Root Spread Decay Scale Bands Tilt Drift Input \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-253",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1940.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.5 0.4 0.85 0.0 1.0 0.15 0.2 0.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-254",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      1940.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-255",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      2200.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-256",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.freeze",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-257",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Freeze",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Freeze Size Blur Tone Pitch Width Feed Level \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-259",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.0 0.5 0.3 0.8 0.5 0.5 0.0 0.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      2200.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-261",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      2460.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-262",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2460.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.grain",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-263",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2460.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Grain",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-264",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2460.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Size Density Pitch Spray Position Reverse Width Feedbk PSpray \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-265",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2460.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.55 0.6 0.5 0.3 0.15 0.0 0.7 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-266",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      2460.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-267",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      2720.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-268",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2720.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.tape",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-269",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2720.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Tape",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-270",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2720.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Wow Flutter Age Hiss Drop Sat Tone Speed \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-271",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2720.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.3 0.2 0.3 0.1 0.0 0.3 0.6 0.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-272",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      2720.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-273",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      2980.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-274",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2980.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.freq",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-275",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2980.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Freq",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-276",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2980.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Shift Fine Feedbk Delay Spread \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-277",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2980.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.55 0.5 0.3 0.05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-278",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      2980.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-279",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      3240.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-280",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3240.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.loop",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-281",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3240.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Loop",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-282",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3240.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Rec Length Speed Erase Dub Reverse Tone Start \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-283",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3240.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "1.0 0.6 0.6667 0.1 1.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-284",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      3240.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-285",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      3500.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-286",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3500.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.swell",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-287",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3500.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Swell",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-288",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3500.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Attack Thresh Sens Depth Hold Cycle \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-289",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3500.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.6 0.3 0.85 1.0 0.03 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-290",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      3500.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-291",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      3760.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-292",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3760.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.filter",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-293",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3760.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Filter",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-294",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3760.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Cutoff Reso Type Drive Rate Depth Env EnvSpd Spread \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-295",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3760.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.6 0.3 0.0 0.0 0.3 0.0 0.0 0.3 0.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-296",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      3760.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-297",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      4020.0,
      740.0,
      80.0,
      22.0
     ],
     "text": "t b b b b",
     "outlettype": [
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-298",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4020.0,
      780.0,
      180.0,
      22.0
     ],
     "text": "assignpatcher 1 fxm.crush",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-299",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4020.0,
      810.0,
      60.0,
      22.0
     ],
     "text": "Crush",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-300",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4020.0,
      840.0,
      250.0,
      22.0
     ],
     "text": "Bits Rate Drive Tone Jitter Fold Level \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013 \u2013",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-301",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4020.0,
      870.0,
      250.0,
      22.0
     ],
     "text": "0.5 0.3 0.0 1.0 0.0 0.0 0.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-302",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      4020.0,
      900.0,
      250.0,
      22.0
     ],
     "text": "unpack f f f f f f f f f f f f f f f f",
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
      ""
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-4",
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
      "obj-5",
      0
     ],
     "destination": [
      "obj-3",
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
      "obj-7",
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
      "obj-7",
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
      "obj-6",
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
      "obj-6",
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      1
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      2
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      2
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      3
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      3
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      4
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      4
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      5
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      6
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      7
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      7
     ],
     "destination": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
      0
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
      "obj-1",
      0
     ],
     "destination": [
      "obj-29",
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
      "obj-29",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      1
     ],
     "destination": [
      "obj-32",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      1
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      1
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-37",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-34",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-38",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      0
     ],
     "destination": [
      "obj-39",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-43",
      0
     ],
     "destination": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      1
     ],
     "destination": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-46",
      0
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      0
     ],
     "destination": [
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-52",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-52",
      0
     ],
     "destination": [
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
      0
     ],
     "destination": [
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      0
     ],
     "destination": [
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      1
     ],
     "destination": [
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
     ],
     "destination": [
      "obj-58",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-58",
      0
     ],
     "destination": [
      "obj-33",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-58",
      0
     ],
     "destination": [
      "obj-34",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      0
     ],
     "destination": [
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
      0
     ],
     "destination": [
      "obj-60",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
      0
     ],
     "destination": [
      "obj-35",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
      0
     ],
     "destination": [
      "obj-36",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      0
     ],
     "destination": [
      "obj-63",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      0
     ],
     "destination": [
      "obj-65",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-65",
      0
     ],
     "destination": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      0
     ],
     "destination": [
      "obj-68",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      0
     ],
     "destination": [
      "obj-52",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      1
     ],
     "destination": [
      "obj-32",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      1
     ],
     "destination": [
      "obj-69",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-50",
      0
     ],
     "destination": [
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-50",
      0
     ],
     "destination": [
      "obj-71",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      16
     ],
     "destination": [
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-73",
      0
     ],
     "destination": [
      "obj-74",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      0
     ],
     "destination": [
      "obj-75",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-75",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      0
     ],
     "destination": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      0
     ],
     "destination": [
      "obj-78",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-78",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-82",
      0
     ],
     "destination": [
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-83",
      0
     ],
     "destination": [
      "obj-82",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-81",
      0
     ],
     "destination": [
      "obj-84",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-85",
      0
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-87",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-85",
      0
     ],
     "destination": [
      "obj-88",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-88",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-85",
      0
     ],
     "destination": [
      "obj-89",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-89",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      0
     ],
     "destination": [
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-90",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      0
     ],
     "destination": [
      "obj-91",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-91",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-92",
      0
     ],
     "destination": [
      "obj-94",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-94",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-92",
      0
     ],
     "destination": [
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-92",
      0
     ],
     "destination": [
      "obj-96",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      1
     ],
     "destination": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-97",
      0
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      1
     ],
     "destination": [
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-98",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-101",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-102",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-102",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-103",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      2
     ],
     "destination": [
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      0
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      2
     ],
     "destination": [
      "obj-105",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-105",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-108",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-108",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-109",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-109",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-110",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-110",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      3
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      0
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      3
     ],
     "destination": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-112",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-115",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-117",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-117",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      4
     ],
     "destination": [
      "obj-118",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-118",
      0
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      4
     ],
     "destination": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      0
     ],
     "destination": [
      "obj-122",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-122",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      0
     ],
     "destination": [
      "obj-123",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-123",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      0
     ],
     "destination": [
      "obj-124",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      5
     ],
     "destination": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-125",
      0
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      5
     ],
     "destination": [
      "obj-126",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-126",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-127",
      0
     ],
     "destination": [
      "obj-129",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-127",
      0
     ],
     "destination": [
      "obj-130",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-130",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-127",
      0
     ],
     "destination": [
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      6
     ],
     "destination": [
      "obj-132",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
      0
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      6
     ],
     "destination": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      0
     ],
     "destination": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      0
     ],
     "destination": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-137",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      0
     ],
     "destination": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-138",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      7
     ],
     "destination": [
      "obj-139",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-139",
      0
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      7
     ],
     "destination": [
      "obj-140",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-142",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-143",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-143",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-144",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      8
     ],
     "destination": [
      "obj-145",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-145",
      0
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      8
     ],
     "destination": [
      "obj-146",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-146",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      0
     ],
     "destination": [
      "obj-148",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-148",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      0
     ],
     "destination": [
      "obj-149",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-149",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-150",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      9
     ],
     "destination": [
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-151",
      0
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      9
     ],
     "destination": [
      "obj-152",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-152",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-153",
      0
     ],
     "destination": [
      "obj-154",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-154",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-153",
      0
     ],
     "destination": [
      "obj-155",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-155",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-153",
      0
     ],
     "destination": [
      "obj-156",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      10
     ],
     "destination": [
      "obj-157",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      10
     ],
     "destination": [
      "obj-158",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-158",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-159",
      0
     ],
     "destination": [
      "obj-160",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-160",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-159",
      0
     ],
     "destination": [
      "obj-161",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-161",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-159",
      0
     ],
     "destination": [
      "obj-162",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-162",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      11
     ],
     "destination": [
      "obj-163",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      0
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      11
     ],
     "destination": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      0
     ],
     "destination": [
      "obj-166",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-166",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      0
     ],
     "destination": [
      "obj-167",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-167",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      0
     ],
     "destination": [
      "obj-168",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-168",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      12
     ],
     "destination": [
      "obj-169",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-169",
      0
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      12
     ],
     "destination": [
      "obj-170",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-170",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-171",
      0
     ],
     "destination": [
      "obj-172",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-172",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-171",
      0
     ],
     "destination": [
      "obj-173",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-173",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-171",
      0
     ],
     "destination": [
      "obj-174",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-174",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      13
     ],
     "destination": [
      "obj-175",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-175",
      0
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      13
     ],
     "destination": [
      "obj-176",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-176",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-177",
      0
     ],
     "destination": [
      "obj-178",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-178",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-177",
      0
     ],
     "destination": [
      "obj-179",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-179",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-177",
      0
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      14
     ],
     "destination": [
      "obj-181",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-181",
      0
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      14
     ],
     "destination": [
      "obj-182",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-182",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-183",
      0
     ],
     "destination": [
      "obj-184",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-184",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-183",
      0
     ],
     "destination": [
      "obj-185",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-185",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-183",
      0
     ],
     "destination": [
      "obj-186",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-186",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      15
     ],
     "destination": [
      "obj-187",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      0
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      15
     ],
     "destination": [
      "obj-188",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-188",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-189",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-189",
      0
     ],
     "destination": [
      "obj-190",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-190",
      0
     ],
     "destination": [
      "obj-191",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-192",
      0
     ],
     "destination": [
      "obj-193",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-193",
      0
     ],
     "destination": [
      "obj-194",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-194",
      2
     ],
     "destination": [
      "obj-195",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-195",
      0
     ],
     "destination": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-194",
      1
     ],
     "destination": [
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-194",
      1
     ],
     "destination": [
      "obj-65",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-194",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-196",
      0
     ],
     "destination": [
      "obj-199",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      2
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      1
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-197",
      0
     ],
     "destination": [
      "obj-200",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-200",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-197",
      0
     ],
     "destination": [
      "obj-201",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-201",
      0
     ],
     "destination": [
      "obj-202",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      0
     ],
     "destination": [
      "obj-203",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-203",
      0
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      1
     ],
     "destination": [
      "obj-204",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-204",
      0
     ],
     "destination": [
      "obj-93",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      2
     ],
     "destination": [
      "obj-205",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-205",
      0
     ],
     "destination": [
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      3
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      0
     ],
     "destination": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      4
     ],
     "destination": [
      "obj-207",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-207",
      0
     ],
     "destination": [
      "obj-114",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      5
     ],
     "destination": [
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-208",
      0
     ],
     "destination": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      6
     ],
     "destination": [
      "obj-209",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-209",
      0
     ],
     "destination": [
      "obj-128",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      7
     ],
     "destination": [
      "obj-210",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-210",
      0
     ],
     "destination": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-198",
      0
     ],
     "destination": [
      "obj-211",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-211",
      0
     ],
     "destination": [
      "obj-62",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-212",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      0
     ],
     "destination": [
      "obj-213",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-213",
      3
     ],
     "destination": [
      "obj-214",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-214",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-213",
      2
     ],
     "destination": [
      "obj-215",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-215",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-213",
      1
     ],
     "destination": [
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-213",
      0
     ],
     "destination": [
      "obj-217",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-217",
      0
     ],
     "destination": [
      "obj-218",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      1
     ],
     "destination": [
      "obj-219",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      3
     ],
     "destination": [
      "obj-220",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      2
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-221",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      1
     ],
     "destination": [
      "obj-222",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-222",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-222",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-222",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      0
     ],
     "destination": [
      "obj-223",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-223",
      0
     ],
     "destination": [
      "obj-224",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      2
     ],
     "destination": [
      "obj-225",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      3
     ],
     "destination": [
      "obj-226",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-226",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      2
     ],
     "destination": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-227",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      1
     ],
     "destination": [
      "obj-228",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      0
     ],
     "destination": [
      "obj-229",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-229",
      0
     ],
     "destination": [
      "obj-230",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      3
     ],
     "destination": [
      "obj-231",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      3
     ],
     "destination": [
      "obj-232",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-232",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      2
     ],
     "destination": [
      "obj-233",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-233",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      1
     ],
     "destination": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-234",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-234",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-234",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      0
     ],
     "destination": [
      "obj-235",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-235",
      0
     ],
     "destination": [
      "obj-236",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      4
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      3
     ],
     "destination": [
      "obj-238",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-238",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      2
     ],
     "destination": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-239",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      1
     ],
     "destination": [
      "obj-240",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-240",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-240",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-240",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      0
     ],
     "destination": [
      "obj-241",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-241",
      0
     ],
     "destination": [
      "obj-242",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      5
     ],
     "destination": [
      "obj-243",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      3
     ],
     "destination": [
      "obj-244",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-244",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      2
     ],
     "destination": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-245",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      1
     ],
     "destination": [
      "obj-246",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-246",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-246",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-246",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-247",
      0
     ],
     "destination": [
      "obj-248",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      6
     ],
     "destination": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-249",
      3
     ],
     "destination": [
      "obj-250",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-250",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-249",
      2
     ],
     "destination": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-251",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-249",
      1
     ],
     "destination": [
      "obj-252",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-252",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-252",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-252",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-249",
      0
     ],
     "destination": [
      "obj-253",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-253",
      0
     ],
     "destination": [
      "obj-254",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      7
     ],
     "destination": [
      "obj-255",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
      3
     ],
     "destination": [
      "obj-256",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
      2
     ],
     "destination": [
      "obj-257",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-257",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
      1
     ],
     "destination": [
      "obj-258",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
      0
     ],
     "destination": [
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-259",
      0
     ],
     "destination": [
      "obj-260",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      8
     ],
     "destination": [
      "obj-261",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-261",
      3
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-262",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-261",
      2
     ],
     "destination": [
      "obj-263",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-263",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-261",
      1
     ],
     "destination": [
      "obj-264",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-264",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-264",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-264",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-261",
      0
     ],
     "destination": [
      "obj-265",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-265",
      0
     ],
     "destination": [
      "obj-266",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      9
     ],
     "destination": [
      "obj-267",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-267",
      3
     ],
     "destination": [
      "obj-268",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-268",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-267",
      2
     ],
     "destination": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-269",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-267",
      1
     ],
     "destination": [
      "obj-270",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-270",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-270",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-270",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-267",
      0
     ],
     "destination": [
      "obj-271",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-271",
      0
     ],
     "destination": [
      "obj-272",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      10
     ],
     "destination": [
      "obj-273",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-273",
      3
     ],
     "destination": [
      "obj-274",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-274",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-273",
      2
     ],
     "destination": [
      "obj-275",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-273",
      1
     ],
     "destination": [
      "obj-276",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-276",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-276",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-276",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-273",
      0
     ],
     "destination": [
      "obj-277",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-277",
      0
     ],
     "destination": [
      "obj-278",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      11
     ],
     "destination": [
      "obj-279",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-279",
      3
     ],
     "destination": [
      "obj-280",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-280",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-279",
      2
     ],
     "destination": [
      "obj-281",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-281",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-279",
      1
     ],
     "destination": [
      "obj-282",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-282",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-282",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-282",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-279",
      0
     ],
     "destination": [
      "obj-283",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-283",
      0
     ],
     "destination": [
      "obj-284",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      12
     ],
     "destination": [
      "obj-285",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      3
     ],
     "destination": [
      "obj-286",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-286",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      2
     ],
     "destination": [
      "obj-287",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-287",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      1
     ],
     "destination": [
      "obj-288",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-288",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-288",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-288",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      0
     ],
     "destination": [
      "obj-289",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-289",
      0
     ],
     "destination": [
      "obj-290",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      13
     ],
     "destination": [
      "obj-291",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-291",
      3
     ],
     "destination": [
      "obj-292",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-292",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-291",
      2
     ],
     "destination": [
      "obj-293",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-293",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-291",
      1
     ],
     "destination": [
      "obj-294",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-294",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-294",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-294",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-291",
      0
     ],
     "destination": [
      "obj-295",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-295",
      0
     ],
     "destination": [
      "obj-296",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      14
     ],
     "destination": [
      "obj-297",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-297",
      3
     ],
     "destination": [
      "obj-298",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-298",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-297",
      2
     ],
     "destination": [
      "obj-299",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-299",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-297",
      1
     ],
     "destination": [
      "obj-300",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-300",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-300",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-300",
      0
     ],
     "destination": [
      "obj-84",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-297",
      0
     ],
     "destination": [
      "obj-301",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-301",
      0
     ],
     "destination": [
      "obj-302",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      1
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      2
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      3
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      4
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      5
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      6
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      7
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      8
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      9
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      10
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      11
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      12
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      13
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      14
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      15
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   }
  ]
 }
}