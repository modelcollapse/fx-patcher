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
   40,
   30,
   1300,
   1652
  ],
  "openinpresentation": 1,
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      12.0,
      12.0,
      348.0,
      20.0
     ],
     "text": "FX PATCHER v13.2",
     "presentation": 1,
     "presentation_rect": [
      12.0,
      12.0,
      348.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      12.0,
      34.0,
      84.0,
      18.0
     ],
     "text": "Audio",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      12.0,
      36.0,
      84.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Audio",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "audio",
       "parameter_shortname": "Audio",
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
     "id": "obj-3",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      100.0,
      34.0,
      84.0,
      18.0
     ],
     "text": "Panic",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      100.0,
      36.0,
      84.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Panic",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panic",
       "parameter_shortname": "Panic",
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
     "id": "obj-4",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      188.0,
      34.0,
      84.0,
      18.0
     ],
     "text": "Clear all",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      188.0,
      36.0,
      84.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Clear all",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "clear",
       "parameter_shortname": "Clear all",
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
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      848.0,
      34.0,
      60.0,
      20.0
     ],
     "text": "Master",
     "presentation": 1,
     "presentation_rect": [
      848.0,
      36.0,
      60.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      1300.0,
      800.0,
      240.0,
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
      910.0,
      40.0,
      240.0,
      26.0
     ],
     "orientation": 1,
     "showname": 0,
     "shownumber": 0,
     "parameter_enable": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "master",
       "parameter_shortname": "master",
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
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1156.0,
      34.0,
      40.0,
      20.0
     ],
     "text": "Out",
     "presentation": 1,
     "presentation_rect": [
      1156.0,
      36.0,
      40.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1300.0,
      860.0,
      72.0,
      15.0
     ],
     "outlettype": [
      "",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1200.0,
      36.0,
      72.0,
      15.0
     ],
     "parameter_enable": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "output",
       "parameter_shortname": "output",
       "parameter_type": 2,
       "parameter_enum": [
        "1/2",
        "3/4",
        "5/6",
        "7/8"
       ],
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_mmax": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2400.0,
      150.0,
      1262.8,
      28.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      70.0,
      1262.8,
      28.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2400.0,
      180.0,
      56.0,
      20.0
     ],
     "text": "Tempo",
     "presentation": 1,
     "presentation_rect": [
      16.0,
      74.0,
      56.0,
      20.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2440.0,
      180.0,
      32.0,
      20.0
     ],
     "text": "BPM",
     "presentation": 1,
     "presentation_rect": [
      90.0,
      74.0,
      32.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2480.0,
      180.0,
      40.0,
      15.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      126.0,
      76.0,
      40.0,
      15.0
     ],
     "parameter_enable": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "bpm",
       "parameter_shortname": "bpm",
       "parameter_type": 1,
       "parameter_mmin": 20,
       "parameter_mmax": 300,
       "parameter_initial": [
        120
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2540.0,
      180.0,
      60.0,
      18.0
     ],
     "text": "Beats/bar",
     "presentation": 1,
     "presentation_rect": [
      180.0,
      74.0,
      60.0,
      18.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2610.0,
      180.0,
      30.0,
      15.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      246.0,
      76.0,
      30.0,
      15.0
     ],
     "parameter_enable": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "beats",
       "parameter_shortname": "beats",
       "parameter_type": 1,
       "parameter_mmin": 1,
       "parameter_mmax": 16,
       "parameter_initial": [
        4
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2650.0,
      180.0,
      220.0,
      18.0
     ],
     "text": "Used by the LFOs' Sync rates",
     "presentation": 1,
     "presentation_rect": [
      290.0,
      76.0,
      220.0,
      18.0
     ],
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2700.0,
      180.0,
      36.0,
      20.0
     ],
     "text": "MIDI",
     "presentation": 1,
     "presentation_rect": [
      560.0,
      74.0,
      36.0,
      20.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2740.0,
      180.0,
      56.0,
      18.0
     ],
     "text": "Learn",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      600.0,
      74.0,
      56.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Learn",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "midi_learn",
       "parameter_shortname": "Learn",
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
     "id": "obj-18",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2800.0,
      180.0,
      90.0,
      18.0
     ],
     "text": "Clear MIDI",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1140.0,
      74.0,
      110.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Clear MIDI",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "midi_clear",
       "parameter_shortname": "Clear MIDI",
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
     "id": "obj-19",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2900.0,
      180.0,
      420.0,
      18.0
     ],
     "text": "MIDI Learn off (0 mapped)",
     "presentation": 1,
     "presentation_rect": [
      662.0,
      74.0,
      470.0,
      18.0
     ],
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      12.0,
      78.0,
      128.0,
      20.0
     ],
     "text": "INPUT",
     "presentation": 1,
     "presentation_rect": [
      12.0,
      104.0,
      128.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      12.0,
      100.0,
      20.0,
      20.0
     ],
     "text": "A",
     "presentation": 1,
     "presentation_rect": [
      12.0,
      126.0,
      20.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      56.0,
      100.0,
      92.0,
      15.0
     ],
     "outlettype": [
      "",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      56.0,
      126.0,
      92.0,
      15.0
     ],
     "parameter_enable": 1,
     "varname": "srcA_in",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "srcA_in",
       "parameter_shortname": "srcA_in",
       "parameter_type": 2,
       "parameter_enum": [
        "Off",
        "1/2",
        "3/4",
        "File A",
        "File B"
       ],
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_mmax": 4
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      12.0,
      126.0,
      172.0,
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
      12.0,
      148.0,
      172.0,
      26.0
     ],
     "orientation": 1,
     "showname": 0,
     "shownumber": 0,
     "parameter_enable": 1,
     "varname": "srcA",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "srcA",
       "parameter_shortname": "srcA",
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
     "id": "obj-24",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      12.0,
      166.0,
      20.0,
      20.0
     ],
     "text": "B",
     "presentation": 1,
     "presentation_rect": [
      12.0,
      188.0,
      20.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      56.0,
      166.0,
      92.0,
      15.0
     ],
     "outlettype": [
      "",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      56.0,
      188.0,
      92.0,
      15.0
     ],
     "parameter_enable": 1,
     "varname": "srcB_in",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "srcB_in",
       "parameter_shortname": "srcB_in",
       "parameter_type": 2,
       "parameter_enum": [
        "Off",
        "1/2",
        "3/4",
        "File A",
        "File B"
       ],
       "parameter_initial": [
        2
       ],
       "parameter_initial_enable": 1,
       "parameter_mmax": 4
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      12.0,
      192.0,
      172.0,
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
      12.0,
      210.0,
      172.0,
      26.0
     ],
     "orientation": 1,
     "showname": 0,
     "shownumber": 0,
     "parameter_enable": 1,
     "varname": "srcB",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "srcB",
       "parameter_shortname": "srcB",
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
     "id": "obj-27",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      188.0,
      78.0,
      172.0,
      20.0
     ],
     "text": "ROUTING",
     "presentation": 1,
     "presentation_rect": [
      188.0,
      104.0,
      172.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "crosspatch",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      600.0,
      100.0,
      436.0,
      246.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      188.0,
      128.0,
      436.0,
      246.0
     ],
     "embed": 1,
     "showgain": 1,
     "numins": 10,
     "numouts": 9,
     "inlabels": [
      "A",
      "B",
      "Slot 1",
      "Slot 2",
      "Slot 3",
      "Slot 4",
      "Slot 5",
      "Slot 6",
      "Slot 7",
      "Slot 8"
     ],
     "outlabels": [
      "Slot 1",
      "Slot 2",
      "Slot 3",
      "Slot 4",
      "Slot 5",
      "Slot 6",
      "Slot 7",
      "Slot 8",
      "Master"
     ],
     "linecolor": [
      0.85,
      0.25,
      0.25,
      1.0
     ],
     "candycane2": [
      0.9,
      0.55,
      0.15,
      1.0
     ],
     "candycane3": [
      0.85,
      0.75,
      0.2,
      1.0
     ],
     "candycane4": [
      0.35,
      0.75,
      0.35,
      1.0
     ],
     "candycane5": [
      0.2,
      0.7,
      0.65,
      1.0
     ],
     "candycane6": [
      0.3,
      0.55,
      0.9,
      1.0
     ],
     "candycane7": [
      0.6,
      0.4,
      0.85,
      1.0
     ],
     "candycane8": [
      0.9,
      0.35,
      0.65,
      1.0
     ],
     "candycane": 7,
     "candymode": 0,
     "incolormap": [
      1,
      2,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      700.0,
      900.0,
      100.0,
      22.0
     ],
     "text": "adc~ 1 2 3 4",
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 8,
     "numoutlets": 5,
     "patching_rect": [
      700.0,
      960.0,
      140.0,
      22.0
     ],
     "text": "matrix~ 8 4",
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "list"
     ]
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      860.0,
      930.0,
      110.0,
      22.0
     ],
     "text": "loadmess ramp 30",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10.0,
      316.0,
      1262.8,
      180.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      376.0,
      1262.8,
      180.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1,
     "bordercolor": [
      0.85,
      0.25,
      0.25,
      1.0
     ],
     "bgcolor": [
      0.05,
      0.05,
      0.06,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      16.0,
      341.0,
      40.0,
      20.0
     ],
     "text": "FILE A",
     "presentation": 1,
     "presentation_rect": [
      16.0,
      380.0,
      38.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      56.0,
      342.0,
      36.0,
      18.0
     ],
     "text": "Load",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      56.0,
      380.0,
      36.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Load",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_load",
       "parameter_shortname": "Load",
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
     "id": "obj-35",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      94.0,
      342.0,
      44.0,
      18.0
     ],
     "text": "Loop",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      94.0,
      380.0,
      44.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Loop",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_loop",
       "parameter_shortname": "Loop",
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
     "id": "obj-36",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      140.0,
      342.0,
      44.0,
      18.0
     ],
     "text": "Clear",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      140.0,
      380.0,
      44.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Clear",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_clear",
       "parameter_shortname": "Clear",
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
     "id": "obj-37",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      188.0,
      342.0,
      40.0,
      18.0
     ],
     "text": "Rec",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      188.0,
      380.0,
      40.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Rec",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_rec",
       "parameter_shortname": "Rec",
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
     "id": "obj-38",
     "maxclass": "playlist~",
     "numinlets": 1,
     "numoutlets": 5,
     "patching_rect": [
      10.0,
      900.0,
      600.0,
      88.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      404.0,
      1262.8,
      88.0
     ],
     "channelcount": 2,
     "varname": "fileplayer"
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      950.0,
      90.0,
      22.0
     ],
     "text": "prepend loop",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      870.0,
      600.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      404.0,
      1262.8,
      88.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1,
     "varname": "dropbg",
     "bordercolor": [
      0.25,
      0.45,
      0.55,
      1.0
     ],
     "bgcolor": [
      0.04,
      0.08,
      0.1,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      900.0,
      600.0,
      50.0
     ],
     "text": "DROP LOOP A HERE  \u00b7  or press Load",
     "presentation": 1,
     "presentation_rect": [
      10.0,
      426.0,
      1262.8,
      44.0
     ],
     "fontsize": 28.0,
     "fontface": 1,
     "textjustification": 1,
     "ignoreclick": 1,
     "varname": "droplabel"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "dropfile",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620.0,
      860.0,
      600.0,
      30.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      404.0,
      1262.8,
      88.0
     ],
     "varname": "dropzone"
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620.0,
      1100.0,
      80.0,
      22.0
     ],
     "text": "thispatcher",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      1040.0,
      420.0,
      22.0
     ],
     "text": "script show dropbg, script show droplabel, script show dropzone, script hide fileplayer",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      1070.0,
      420.0,
      22.0
     ],
     "text": "script hide dropbg, script hide droplabel, script hide dropzone, script show fileplayer",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      1010.0,
      60.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      760.0,
      990.0,
      40.0,
      22.0
     ],
     "text": "clear",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      680.0,
      930.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      620.0,
      960.0,
      40.0,
      22.0
     ],
     "text": "t l b b b",
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
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      990.0,
      100.0,
      22.0
     ],
     "text": "prepend append",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300.0,
      950.0,
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
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      300.0,
      980.0,
      110.0,
      22.0
     ],
     "text": "opendialog sound",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      760.0,
      960.0,
      40.0,
      22.0
     ],
     "text": "t b b",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 2,
     "patching_rect": [
      200.0,
      1050.0,
      200.0,
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
         "numinlets": 3,
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
         "code": "Param fvol(1);\nParam fpan(0.5);\nParam fwid(1);\nParam ftone(20000);\nParam loopstart(0);\nParam loopend(1);\nParam fadein(0.05);\nParam fadeout(0.05);\nHistory sl(0);\nHistory sr(0);\nHistory gl(1);\nHistory gr(1);\nmm = (in1 + in2) * 0.5;\nss = (in1 - in2) * 0.5;\nla = mm + ss * fwid;\nra = mm - ss * fwid;\ntl = fvol * min(1, 2 * (1 - fpan));\ntr = fvol * min(1, 2 * fpan);\ngl = gl + (tl - gl) * 0.002;\ngr = gr + (tr - gr) * 0.002;\ncf = 1 - exp(-twopi * clamp(ftone, 100, 20000) / samplerate);\nsl = sl + cf * (la - sl);\nsr = sr + cf * (ra - sr);\n// loop in/out envelope, from playlist~'s own position signal (in3 = clip.fraction)\npos = in3 - floor(in3);\nlen = max(0.001, loopend - loopstart);\nrel = clamp((pos - loopstart) / len, 0, 1);\nfi = clamp(fadein, 0, 0.5);\nfo = clamp(fadeout, 0, 0.5);\nenvIn = fi > 0 ? clamp(rel / fi, 0, 1) : 1;\nenvOut = fo > 0 ? clamp((1 - rel) / fo, 0, 1) : 1;\nenv = min(envIn, envOut);\nout1 = sl * gl * env;\nout2 = sr * gr * env;\n",
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
          230.0,
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
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          410.0,
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
         "id": "obj-5",
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
         "id": "obj-6",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          230.0,
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
          "obj-4",
          0
         ],
         "destination": [
          "obj-1",
          2
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
          "obj-5",
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
          "obj-6",
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
     "id": "obj-55",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      1200.0,
      980.0,
      56.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      496.0,
      980.0,
      56.0
     ],
     "name": "fx.filectl.maxpat",
     "args": [
      9
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "filectl"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 12,
     "patching_rect": [
      200.0,
      1270.0,
      370.0,
      22.0
     ],
     "text": "route k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      1300.0,
      160.0,
      22.0
     ],
     "text": "expr 0.25*exp($f1*2.0794)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      1330.0,
      90.0,
      22.0
     ],
     "text": "prepend speed",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      1300.0,
      130.0,
      22.0
     ],
     "text": "expr ($f1-0.5)*2400.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      380.0,
      1330.0,
      40.0,
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
     "id": "obj-61",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      1390.0,
      140.0,
      22.0
     ],
     "text": "prepend pitchshiftcent",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      440.0,
      1360.0,
      100.0,
      22.0
     ],
     "text": "expr abs($f1)>5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      440.0,
      1390.0,
      50.0,
      22.0
     ],
     "text": "change",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      440.0,
      1420.0,
      120.0,
      22.0
     ],
     "text": "prepend timestretch",
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
      560.0,
      1300.0,
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
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      1330.0,
      110.0,
      22.0
     ],
     "text": "expr min($f1\\,0.98)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      1360.0,
      330.0,
      22.0
     ],
     "text": "expr min($f1\\,0.98) + max(0.02\\, $f2*(1.-min($f1\\,0.98)))",
     "outlettype": [
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
      560.0,
      1330.0,
      40.0,
      22.0
     ],
     "text": "t l l",
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
     "numoutlets": 2,
     "patching_rect": [
      560.0,
      1390.0,
      70.0,
      22.0
     ],
     "text": "unpack f f",
     "outlettype": [
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
     "numoutlets": 2,
     "patching_rect": [
      640.0,
      1390.0,
      40.0,
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
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      1300.0,
      70.0,
      22.0
     ],
     "text": "pak f f f",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      1330.0,
      280.0,
      22.0
     ],
     "text": "expr $f1+0.02+$f3*($f2-$f1-0.02)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      1420.0,
      60.0,
      22.0
     ],
     "text": "pack f f",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      1450.0,
      110.0,
      22.0
     ],
     "text": "prepend selection",
     "outlettype": [
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
      640.0,
      1480.0,
      110.0,
      22.0
     ],
     "text": "prepend loopstart",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      1510.0,
      110.0,
      22.0
     ],
     "text": "prepend loopend",
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
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      1480.0,
      60.0,
      22.0
     ],
     "text": "* 100.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      1510.0,
      40.0,
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
     "id": "obj-79",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      1540.0,
      130.0,
      22.0
     ],
     "text": "sprintf set End %d pct",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1000.0,
      1200.0,
      150.0,
      20.0
     ],
     "text": "End \u2014",
     "presentation": 1,
     "presentation_rect": [
      1000.0,
      514.0,
      150.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      1300.0,
      50.0,
      22.0
     ],
     "text": "* 1.25",
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
      900.0,
      1330.0,
      80.0,
      22.0
     ],
     "text": "prepend fvol",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      1300.0,
      40.0,
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
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      1330.0,
      80.0,
      22.0
     ],
     "text": "prepend fwid",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      1300.0,
      150.0,
      22.0
     ],
     "text": "expr 100.*exp($f1*5.298)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-86",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1100.0,
      1330.0,
      80.0,
      22.0
     ],
     "text": "prepend ftone",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1260.0,
      1330.0,
      80.0,
      22.0
     ],
     "text": "prepend fpan",
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
      1360.0,
      1330.0,
      90.0,
      22.0
     ],
     "text": "prepend fadein",
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
      1460.0,
      1330.0,
      100.0,
      22.0
     ],
     "text": "prepend fadeout",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      1570.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      380.0,
      1570.0,
      60.0,
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
     "id": "obj-92",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      1600.0,
      40.0,
      22.0
     ],
     "text": "A",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      380.0,
      1630.0,
      110.0,
      22.0
     ],
     "text": "s fx.capturereq"
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      1570.0,
      100.0,
      22.0
     ],
     "text": "r fx.capturepath",
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
     "numoutlets": 2,
     "patching_rect": [
      500.0,
      1600.0,
      80.0,
      22.0
     ],
     "text": "route A",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      1720.0,
      260.0,
      22.0
     ],
     "text": "",
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
      500.0,
      1630.0,
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
     "id": "obj-98",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620.0,
      1615.0,
      60.0,
      22.0
     ],
     "text": "t b l",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      1630.0,
      90.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      1660.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      380.0,
      1690.0,
      60.0,
      22.0
     ],
     "text": "sel 0",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      1720.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      1750.0,
      70.0,
      22.0
     ],
     "text": "delay 100",
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
     "numoutlets": 4,
     "patching_rect": [
      380.0,
      1780.0,
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
     "id": "obj-105",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300.0,
      1810.0,
      40.0,
      22.0
     ],
     "text": "clear",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      1810.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      1810.0,
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
     "id": "obj-108",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      1840.0,
      100.0,
      22.0
     ],
     "text": "prepend append",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10.0,
      2500.0,
      1262.8,
      180.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      560.0,
      1262.8,
      180.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1,
     "bordercolor": [
      0.9,
      0.55,
      0.15,
      1.0
     ],
     "bgcolor": [
      0.05,
      0.05,
      0.06,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      16.0,
      2341.0,
      40.0,
      20.0
     ],
     "text": "FILE B",
     "presentation": 1,
     "presentation_rect": [
      16.0,
      564.0,
      38.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      56.0,
      2342.0,
      36.0,
      18.0
     ],
     "text": "Load",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      56.0,
      564.0,
      36.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Load",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_load_b",
       "parameter_shortname": "Load",
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
     "id": "obj-112",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      94.0,
      2342.0,
      44.0,
      18.0
     ],
     "text": "Loop",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      94.0,
      564.0,
      44.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Loop",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_loop_b",
       "parameter_shortname": "Loop",
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
     "id": "obj-113",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      140.0,
      2342.0,
      44.0,
      18.0
     ],
     "text": "Clear",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      140.0,
      564.0,
      44.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Clear",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_clear_b",
       "parameter_shortname": "Clear",
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
     "id": "obj-114",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      188.0,
      2342.0,
      40.0,
      18.0
     ],
     "text": "Rec",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      188.0,
      564.0,
      40.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Rec",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "file_rec_b",
       "parameter_shortname": "Rec",
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
     "id": "obj-115",
     "maxclass": "playlist~",
     "numinlets": 1,
     "numoutlets": 5,
     "patching_rect": [
      10.0,
      2900.0,
      600.0,
      88.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      588.0,
      1262.8,
      88.0
     ],
     "channelcount": 2,
     "varname": "fileplayerB"
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      2950.0,
      90.0,
      22.0
     ],
     "text": "prepend loop",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      2870.0,
      600.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      588.0,
      1262.8,
      88.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1,
     "varname": "dropbgB",
     "bordercolor": [
      0.25,
      0.45,
      0.55,
      1.0
     ],
     "bgcolor": [
      0.04,
      0.08,
      0.1,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      2900.0,
      600.0,
      50.0
     ],
     "text": "DROP LOOP B HERE  \u00b7  or press Load",
     "presentation": 1,
     "presentation_rect": [
      10.0,
      610.0,
      1262.8,
      44.0
     ],
     "fontsize": 28.0,
     "fontface": 1,
     "textjustification": 1,
     "ignoreclick": 1,
     "varname": "droplabelB"
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "dropfile",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620.0,
      2860.0,
      600.0,
      30.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      588.0,
      1262.8,
      88.0
     ],
     "varname": "dropzoneB"
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620.0,
      3100.0,
      80.0,
      22.0
     ],
     "text": "thispatcher",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      3040.0,
      420.0,
      22.0
     ],
     "text": "script show dropbgB, script show droplabelB, script show dropzoneB, script hide fileplayerB",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      3070.0,
      420.0,
      22.0
     ],
     "text": "script hide dropbgB, script hide droplabelB, script hide dropzoneB, script show fileplayerB",
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
      620.0,
      3010.0,
      60.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      760.0,
      2990.0,
      40.0,
      22.0
     ],
     "text": "clear",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      680.0,
      2930.0,
      30.0,
      22.0
     ],
     "text": "1",
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
     "numoutlets": 4,
     "patching_rect": [
      620.0,
      2960.0,
      40.0,
      22.0
     ],
     "text": "t l b b b",
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
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      2990.0,
      100.0,
      22.0
     ],
     "text": "prepend append",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300.0,
      2950.0,
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
     "id": "obj-129",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      300.0,
      2980.0,
      110.0,
      22.0
     ],
     "text": "opendialog sound",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      760.0,
      2960.0,
      40.0,
      22.0
     ],
     "text": "t b b",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 2,
     "patching_rect": [
      200.0,
      3050.0,
      200.0,
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
         "numinlets": 3,
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
         "code": "Param fvol(1);\nParam fpan(0.5);\nParam fwid(1);\nParam ftone(20000);\nParam loopstart(0);\nParam loopend(1);\nParam fadein(0.05);\nParam fadeout(0.05);\nHistory sl(0);\nHistory sr(0);\nHistory gl(1);\nHistory gr(1);\nmm = (in1 + in2) * 0.5;\nss = (in1 - in2) * 0.5;\nla = mm + ss * fwid;\nra = mm - ss * fwid;\ntl = fvol * min(1, 2 * (1 - fpan));\ntr = fvol * min(1, 2 * fpan);\ngl = gl + (tl - gl) * 0.002;\ngr = gr + (tr - gr) * 0.002;\ncf = 1 - exp(-twopi * clamp(ftone, 100, 20000) / samplerate);\nsl = sl + cf * (la - sl);\nsr = sr + cf * (ra - sr);\n// loop in/out envelope, from playlist~'s own position signal (in3 = clip.fraction)\npos = in3 - floor(in3);\nlen = max(0.001, loopend - loopstart);\nrel = clamp((pos - loopstart) / len, 0, 1);\nfi = clamp(fadein, 0, 0.5);\nfo = clamp(fadeout, 0, 0.5);\nenvIn = fi > 0 ? clamp(rel / fi, 0, 1) : 1;\nenvOut = fo > 0 ? clamp((1 - rel) / fo, 0, 1) : 1;\nenv = min(envIn, envOut);\nout1 = sl * gl * env;\nout2 = sr * gr * env;\n",
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
          230.0,
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
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          410.0,
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
         "id": "obj-5",
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
         "id": "obj-6",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          230.0,
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
          "obj-4",
          0
         ],
         "destination": [
          "obj-1",
          2
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
          "obj-5",
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
          "obj-6",
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
     "id": "obj-132",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      3200.0,
      980.0,
      56.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      680.0,
      980.0,
      56.0
     ],
     "name": "fx.filectl.maxpat",
     "args": [
      10
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "filectlB"
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 12,
     "patching_rect": [
      200.0,
      3270.0,
      370.0,
      22.0
     ],
     "text": "route k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      3300.0,
      160.0,
      22.0
     ],
     "text": "expr 0.25*exp($f1*2.0794)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      3330.0,
      90.0,
      22.0
     ],
     "text": "prepend speed",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      3300.0,
      130.0,
      22.0
     ],
     "text": "expr ($f1-0.5)*2400.",
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
     "numoutlets": 2,
     "patching_rect": [
      380.0,
      3330.0,
      40.0,
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
     "id": "obj-138",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      3390.0,
      140.0,
      22.0
     ],
     "text": "prepend pitchshiftcent",
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
      440.0,
      3360.0,
      100.0,
      22.0
     ],
     "text": "expr abs($f1)>5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      440.0,
      3390.0,
      50.0,
      22.0
     ],
     "text": "change",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      440.0,
      3420.0,
      120.0,
      22.0
     ],
     "text": "prepend timestretch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      3300.0,
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
     "id": "obj-143",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      3330.0,
      110.0,
      22.0
     ],
     "text": "expr min($f1\\,0.98)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      3360.0,
      330.0,
      22.0
     ],
     "text": "expr min($f1\\,0.98) + max(0.02\\, $f2*(1.-min($f1\\,0.98)))",
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
     "numoutlets": 2,
     "patching_rect": [
      560.0,
      3330.0,
      40.0,
      22.0
     ],
     "text": "t l l",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      560.0,
      3390.0,
      70.0,
      22.0
     ],
     "text": "unpack f f",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      640.0,
      3390.0,
      40.0,
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
     "id": "obj-148",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      3300.0,
      70.0,
      22.0
     ],
     "text": "pak f f f",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      3330.0,
      280.0,
      22.0
     ],
     "text": "expr $f1+0.02+$f3*($f2-$f1-0.02)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      3420.0,
      60.0,
      22.0
     ],
     "text": "pack f f",
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
      560.0,
      3450.0,
      110.0,
      22.0
     ],
     "text": "prepend selection",
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
      640.0,
      3480.0,
      110.0,
      22.0
     ],
     "text": "prepend loopstart",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      3510.0,
      110.0,
      22.0
     ],
     "text": "prepend loopend",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      3480.0,
      60.0,
      22.0
     ],
     "text": "* 100.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      3510.0,
      40.0,
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
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      3540.0,
      130.0,
      22.0
     ],
     "text": "sprintf set End %d pct",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1000.0,
      3200.0,
      150.0,
      20.0
     ],
     "text": "End \u2014",
     "presentation": 1,
     "presentation_rect": [
      1000.0,
      698.0,
      150.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      3300.0,
      50.0,
      22.0
     ],
     "text": "* 1.25",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      3330.0,
      80.0,
      22.0
     ],
     "text": "prepend fvol",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      3300.0,
      40.0,
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
     "id": "obj-161",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      3330.0,
      80.0,
      22.0
     ],
     "text": "prepend fwid",
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
      1100.0,
      3300.0,
      150.0,
      22.0
     ],
     "text": "expr 100.*exp($f1*5.298)",
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
      1100.0,
      3330.0,
      80.0,
      22.0
     ],
     "text": "prepend ftone",
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
      1260.0,
      3330.0,
      80.0,
      22.0
     ],
     "text": "prepend fpan",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1360.0,
      3330.0,
      90.0,
      22.0
     ],
     "text": "prepend fadein",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-166",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1460.0,
      3330.0,
      100.0,
      22.0
     ],
     "text": "prepend fadeout",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      3570.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      380.0,
      3570.0,
      60.0,
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
     "id": "obj-169",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      3600.0,
      40.0,
      22.0
     ],
     "text": "B",
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
     "numoutlets": 0,
     "patching_rect": [
      380.0,
      3630.0,
      110.0,
      22.0
     ],
     "text": "s fx.capturereq"
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      3570.0,
      100.0,
      22.0
     ],
     "text": "r fx.capturepath",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-172",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      500.0,
      3600.0,
      80.0,
      22.0
     ],
     "text": "route B",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      3720.0,
      260.0,
      22.0
     ],
     "text": "",
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
      500.0,
      3630.0,
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
     "id": "obj-175",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620.0,
      3615.0,
      60.0,
      22.0
     ],
     "text": "t b l",
     "outlettype": [
      "",
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
      620.0,
      3630.0,
      90.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620.0,
      3660.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-178",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      380.0,
      3690.0,
      60.0,
      22.0
     ],
     "text": "sel 0",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-179",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      3720.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-180",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      3750.0,
      70.0,
      22.0
     ],
     "text": "delay 100",
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
     "numoutlets": 4,
     "patching_rect": [
      380.0,
      3780.0,
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
     "id": "obj-182",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300.0,
      3810.0,
      40.0,
      22.0
     ],
     "text": "clear",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      3810.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      3810.0,
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
     "id": "obj-185",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      3840.0,
      100.0,
      22.0
     ],
     "text": "prepend append",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      930.0,
      110.0,
      22.0
     ],
     "text": "p input-picker",
     "outlettype": [
      ""
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
      "classnamespace": "box",
      "rect": [
       100,
       100,
       700,
       620
      ],
      "openinpresentation": 0,
      "boxes": [
       {
        "box": {
         "id": "obj-1",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          10.0,
          30.0,
          22.0
         ],
         "text": "inlet",
         "outlettype": [
          ""
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
          320.0,
          10.0,
          30.0,
          22.0
         ],
         "text": "inlet",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20.0,
          560.0,
          30.0,
          22.0
         ],
         "text": "outlet"
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 6,
         "patching_rect": [
          20.0,
          50.0,
          130.0,
          22.0
         ],
         "text": "sel 0 1 2 3 4",
         "outlettype": [
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
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          90.0,
          280.0,
          40.0
         ],
         "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          140.0,
          280.0,
          40.0
         ],
         "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 0 0 1., 1 1 1.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          190.0,
          280.0,
          40.0
         ],
         "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 2 0 1., 3 1 1.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          240.0,
          280.0,
          40.0
         ],
         "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 4 0 1., 5 1 1.",
         "outlettype": [
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
          20.0,
          290.0,
          280.0,
          40.0
         ],
         "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 6 0 1., 7 1 1.",
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
         "numoutlets": 6,
         "patching_rect": [
          320.0,
          50.0,
          130.0,
          22.0
         ],
         "text": "sel 0 1 2 3 4",
         "outlettype": [
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
         "id": "obj-11",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          320.0,
          90.0,
          280.0,
          40.0
         ],
         "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0.",
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
          320.0,
          140.0,
          280.0,
          40.0
         ],
         "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 0 2 1., 1 3 1.",
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
          320.0,
          190.0,
          280.0,
          40.0
         ],
         "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 2 2 1., 3 3 1.",
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
          320.0,
          240.0,
          280.0,
          40.0
         ],
         "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 4 2 1., 5 3 1.",
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
          320.0,
          290.0,
          280.0,
          40.0
         ],
         "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 6 2 1., 7 3 1.",
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
          "obj-6",
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
          2
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
          "obj-7",
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
          3
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
          "obj-3",
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
          "obj-3",
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
          "obj-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-10",
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
          "obj-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-10",
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
          "obj-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-10",
          3
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
          "obj-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-10",
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
          "obj-3",
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
     "id": "obj-187",
     "maxclass": "newobj",
     "numinlets": 10,
     "numoutlets": 10,
     "patching_rect": [
      600.0,
      1000.0,
      500.0,
      22.0
     ],
     "text": "matrix~ 10 9",
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "list"
     ]
    }
   },
   {
    "box": {
     "id": "obj-188",
     "maxclass": "newobj",
     "numinlets": 10,
     "numoutlets": 10,
     "patching_rect": [
      600.0,
      1100.0,
      500.0,
      22.0
     ],
     "text": "matrix~ 10 9",
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "list"
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
      1120.0,
      970.0,
      110.0,
      22.0
     ],
     "text": "loadmess ramp 30",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      20.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      1
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot1"
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      190.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      168.4,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      2
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot2"
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      360.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      326.8,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      3
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot3"
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      530.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      485.20000000000005,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      4
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot4"
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      643.6,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      5
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot5"
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      870.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      802.0,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      6
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot6"
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1040.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      960.4000000000001,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      7
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot7"
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1210.0,
      1150.0,
      154.0,
      295.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      1118.8,
      744.0,
      154.0,
      294.8
     ],
     "name": "fx.slot.maxpat",
     "args": [
      8
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "slot8"
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "spectroscope~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      900.0,
      172.0,
      104.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      12.0,
      244.0,
      172.0,
      104.0
     ],
     "logfreq": 1,
     "logamp": 1,
     "domain": [
      20.0,
      20000.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      870.0,
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
     "id": "obj-200",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 3,
     "patching_rect": [
      1300.0,
      700.0,
      90.0,
      22.0
     ],
     "text": "omx.peaklim~",
     "outlettype": [
      "signal",
      "signal",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 3,
     "patching_rect": [
      1400.0,
      700.0,
      90.0,
      22.0
     ],
     "text": "omx.peaklim~",
     "outlettype": [
      "signal",
      "signal",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      152.0,
      100.0,
      32.0,
      15.0
     ],
     "text": "Mon",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      152.0,
      126.0,
      32.0,
      15.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Mon",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "monA",
       "parameter_shortname": "Mon",
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
     "id": "obj-203",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      152.0,
      166.0,
      32.0,
      15.0
     ],
     "text": "Mon",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      152.0,
      188.0,
      32.0,
      15.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Mon",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "monB",
       "parameter_shortname": "Mon",
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
     "id": "obj-204",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      660.0,
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
     "id": "obj-205",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      660.0,
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
     "id": "obj-206",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      680.0,
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
     "id": "obj-207",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1400.0,
      680.0,
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
     "id": "obj-208",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      600.0,
      60.0,
      22.0
     ],
     "text": "pack f 20",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1500.0,
      630.0,
      40.0,
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
     "id": "obj-210",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      660.0,
      40.0,
      22.0
     ],
     "text": "*~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-211",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1550.0,
      660.0,
      40.0,
      22.0
     ],
     "text": "*~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      600.0,
      60.0,
      22.0
     ],
     "text": "pack f 20",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1700.0,
      630.0,
      40.0,
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
     "id": "obj-214",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      660.0,
      40.0,
      22.0
     ],
     "text": "*~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-215",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1750.0,
      660.0,
      40.0,
      22.0
     ],
     "text": "*~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-216",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 9,
     "patching_rect": [
      1300.0,
      900.0,
      120.0,
      22.0
     ],
     "text": "matrix~ 2 8",
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "list"
     ]
    }
   },
   {
    "box": {
     "id": "obj-217",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1430.0,
      870.0,
      110.0,
      22.0
     ],
     "text": "loadmess ramp 20",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-218",
     "maxclass": "newobj",
     "numinlets": 8,
     "numoutlets": 0,
     "patching_rect": [
      1300.0,
      940.0,
      160.0,
      22.0
     ],
     "text": "dac~ 1 2 3 4 5 6 7 8"
    }
   },
   {
    "box": {
     "id": "obj-219",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300.0,
      870.0,
      110.0,
      22.0
     ],
     "text": "p output-picker",
     "outlettype": [
      ""
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
      "classnamespace": "box",
      "rect": [
       100,
       100,
       700,
       620
      ],
      "openinpresentation": 0,
      "boxes": [
       {
        "box": {
         "id": "obj-1",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          10.0,
          30.0,
          22.0
         ],
         "text": "inlet",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20.0,
          560.0,
          30.0,
          22.0
         ],
         "text": "outlet"
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 5,
         "patching_rect": [
          20.0,
          50.0,
          100.0,
          22.0
         ],
         "text": "sel 0 1 2 3",
         "outlettype": [
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
         "id": "obj-4",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          90.0,
          600.0,
          50.0
         ],
         "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 0 1., 1 1 1.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          150.0,
          600.0,
          50.0
         ],
         "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 2 1., 1 3 1.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          210.0,
          600.0,
          50.0
         ],
         "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 4 1., 1 5 1.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          270.0,
          600.0,
          50.0
         ],
         "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 6 1., 1 7 1.",
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
          "obj-1",
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
          "obj-4",
          0
         ],
         "destination": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-3",
          1
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
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-3",
          2
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
          "obj-6",
          0
         ],
         "destination": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-3",
          3
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
          "obj-7",
          0
         ],
         "destination": [
          "obj-2",
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
     "id": "obj-220",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      1000.0,
      60.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-221",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      1030.0,
      60.0,
      22.0
     ],
     "text": "delay 300",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-222",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1500.0,
      1060.0,
      40.0,
      20.0
     ],
     "text": "Out",
     "presentation": 1,
     "presentation_rect": [
      848.0,
      12.0,
      40.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-223",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      1090.0,
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
     "id": "obj-224",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1560.0,
      1090.0,
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
     "id": "obj-225",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      1120.0,
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
     "id": "obj-226",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1560.0,
      1120.0,
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
     "id": "obj-227",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      1150.0,
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
     "id": "obj-228",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1560.0,
      1150.0,
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
     "id": "obj-229",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      1180.0,
      240.0,
      8.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      910.0,
      14.0,
      240.0,
      8.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-230",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1500.0,
      1200.0,
      240.0,
      8.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      910.0,
      24.0,
      240.0,
      8.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-231",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      100.0,
      700.0,
      70.0,
      22.0
     ],
     "text": "p panic",
     "outlettype": [
      ""
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
      "classnamespace": "box",
      "rect": [
       100,
       100,
       700,
       620
      ],
      "openinpresentation": 0,
      "boxes": [
       {
        "box": {
         "id": "obj-1",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          10.0,
          30.0,
          22.0
         ],
         "text": "inlet",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20.0,
          560.0,
          30.0,
          22.0
         ],
         "text": "outlet"
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          50.0,
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
         "id": "obj-4",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20.0,
          90.0,
          600.0,
          200.0
         ],
         "text": "list 2 0 0, list 2 1 0, list 2 2 0, list 2 3 0, list 2 4 0, list 2 5 0, list 2 6 0, list 2 7 0, list 3 0 0, list 3 1 0, list 3 2 0, list 3 3 0, list 3 4 0, list 3 5 0, list 3 6 0, list 3 7 0, list 4 0 0, list 4 1 0, list 4 2 0, list 4 3 0, list 4 4 0, list 4 5 0, list 4 6 0, list 4 7 0, list 5 0 0, list 5 1 0, list 5 2 0, list 5 3 0, list 5 4 0, list 5 5 0, list 5 6 0, list 5 7 0, list 6 0 0, list 6 1 0, list 6 2 0, list 6 3 0, list 6 4 0, list 6 5 0, list 6 6 0, list 6 7 0, list 7 0 0, list 7 1 0, list 7 2 0, list 7 3 0, list 7 4 0, list 7 5 0, list 7 6 0, list 7 7 0, list 8 0 0, list 8 1 0, list 8 2 0, list 8 3 0, list 8 4 0, list 8 5 0, list 8 6 0, list 8 7 0, list 9 0 0, list 9 1 0, list 9 2 0, list 9 3 0, list 9 4 0, list 9 5 0, list 9 6 0, list 9 7 0",
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
          "obj-1",
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
          "obj-4",
          0
         ],
         "destination": [
          "obj-2",
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
     "id": "obj-232",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      190.0,
      700.0,
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
     "id": "obj-233",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      190.0,
      730.0,
      40.0,
      22.0
     ],
     "text": "clear",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      20.0,
      644.8,
      270.0
     ],
     "presentation": 1,
     "presentation_rect": [
      628.0,
      104.0,
      644.8,
      270.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      650.0,
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
     "id": "obj-236",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 9,
     "patching_rect": [
      1600.0,
      680.0,
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
     "id": "obj-237",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 9,
     "patching_rect": [
      1950.0,
      680.0,
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
     "id": "obj-238",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      720.0,
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
     "id": "obj-239",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      720.0,
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
     "id": "obj-240",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      746.0,
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
     "id": "obj-241",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      746.0,
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
     "id": "obj-242",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      772.0,
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
     "id": "obj-243",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      772.0,
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
     "id": "obj-244",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      798.0,
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
     "id": "obj-245",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      798.0,
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
     "id": "obj-246",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      824.0,
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
     "id": "obj-247",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      824.0,
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
     "id": "obj-248",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      850.0,
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
     "id": "obj-249",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      850.0,
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
     "id": "obj-250",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      876.0,
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
     "id": "obj-251",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      876.0,
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
     "id": "obj-252",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      902.0,
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
     "id": "obj-253",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1950.0,
      902.0,
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
     "id": "obj-254",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      0.0,
      348.0,
      20.0
     ],
     "text": "FOCUSED \u00b7 click Focus on a strip",
     "presentation": 1,
     "presentation_rect": [
      636.0,
      104.0,
      400.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-255",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      320.0,
      90.0,
      22.0
     ],
     "text": "r fx.panel.in",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-256",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 19,
     "patching_rect": [
      1600.0,
      350.0,
      800.0,
      22.0
     ],
     "text": "route title labels k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16",
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
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-257",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      380.0,
      150.0,
      22.0
     ],
     "text": "prepend set FOCUSED \u00b7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 16,
     "patching_rect": [
      1600.0,
      410.0,
      500.0,
      22.0
     ],
     "text": "unpack s s s s s s s s s s s s s s s s",
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
     "id": "obj-259",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      560.0,
      100.0,
      22.0
     ],
     "text": "s fx.panel.out"
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      640.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-261",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1600.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      650.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k1",
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
     "id": "obj-262",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      440.0,
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
     "id": "obj-263",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      530.0,
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
     "id": "obj-264",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-265",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1660.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      717.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-266",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1660.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      727.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k2",
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
     "id": "obj-267",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1660.0,
      440.0,
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
     "id": "obj-268",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1660.0,
      530.0,
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
     "id": "obj-269",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1660.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-270",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1720.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      794.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-271",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1720.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      804.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k3",
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
     "id": "obj-272",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1720.0,
      440.0,
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
     "id": "obj-273",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1720.0,
      530.0,
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
     "id": "obj-274",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1720.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-275",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1780.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      871.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-276",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1780.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      881.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k4",
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
     "id": "obj-277",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1780.0,
      440.0,
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
     "id": "obj-278",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1780.0,
      530.0,
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
     "id": "obj-279",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1780.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 4",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-280",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1840.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      948.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-281",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1840.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      958.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k5",
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
     "id": "obj-282",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1840.0,
      440.0,
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
     "id": "obj-283",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1840.0,
      530.0,
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
     "id": "obj-284",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1840.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-285",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1900.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      1025.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-286",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1900.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1035.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k6",
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
     "id": "obj-287",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      440.0,
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
     "id": "obj-288",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      530.0,
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
     "id": "obj-289",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 6",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-290",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1960.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      1102.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-291",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1960.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1112.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k7",
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
     "id": "obj-292",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1960.0,
      440.0,
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
     "id": "obj-293",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1960.0,
      530.0,
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
     "id": "obj-294",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1960.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-295",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2020.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      1179.0,
      134.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-296",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2020.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1189.0,
      150.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k8",
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
     "id": "obj-297",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2020.0,
      440.0,
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
     "id": "obj-298",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2020.0,
      530.0,
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
     "id": "obj-299",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2020.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-300",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2080.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      640.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-301",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2080.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      650.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k9",
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
     "id": "obj-302",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2080.0,
      440.0,
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
     "id": "obj-303",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2080.0,
      530.0,
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
     "id": "obj-304",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2080.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 9",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-305",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2140.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      717.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-306",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2140.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      727.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k10",
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
     "id": "obj-307",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2140.0,
      440.0,
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
     "id": "obj-308",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2140.0,
      530.0,
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
     "id": "obj-309",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2140.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 10",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-310",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2200.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      794.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-311",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2200.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      804.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k11",
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
     "id": "obj-312",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      440.0,
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
     "id": "obj-313",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      530.0,
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
     "id": "obj-314",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 11",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-315",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2260.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      871.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-316",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2260.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      881.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k12",
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
     "id": "obj-317",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2260.0,
      440.0,
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
     "id": "obj-318",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2260.0,
      530.0,
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
     "id": "obj-319",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2260.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 12",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-320",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2320.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      948.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-321",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2320.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      958.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k13",
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
     "id": "obj-322",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2320.0,
      440.0,
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
     "id": "obj-323",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2320.0,
      530.0,
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
     "id": "obj-324",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2320.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 13",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-325",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2380.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      1025.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-326",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2380.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1035.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k14",
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
     "id": "obj-327",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2380.0,
      440.0,
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
     "id": "obj-328",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2380.0,
      530.0,
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
     "id": "obj-329",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2380.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 14",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-330",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2440.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      1102.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-331",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2440.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1112.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k15",
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
     "id": "obj-332",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2440.0,
      440.0,
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
     "id": "obj-333",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2440.0,
      530.0,
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
     "id": "obj-334",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2440.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 15",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-335",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2500.0,
      450.0,
      60.0,
      16.0
     ],
     "text": "\u2013",
     "presentation": 1,
     "presentation_rect": [
      1179.0,
      214.0,
      64.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-336",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2500.0,
      480.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1189.0,
      230.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "panel_k16",
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
     "id": "obj-337",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      440.0,
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
     "id": "obj-338",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      530.0,
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
     "id": "obj-339",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      520.0,
      60.0,
      22.0
     ],
     "text": "prepend 16",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-340",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      600.0,
      300.0,
      20.0
     ],
     "text": "Knobs 1\u20138 mirror the strip \u00b7 9\u201316 live only here",
     "presentation": 1,
     "presentation_rect": [
      650.0,
      344.0,
      400.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-341",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      5000.0,
      100.0,
      100.0,
      22.0
     ],
     "text": "v8 fxmidimap.js",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-342",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      5000.0,
      140.0,
      70.0,
      22.0
     ],
     "text": "s fx.midi"
    }
   },
   {
    "box": {
     "id": "obj-343",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 3,
     "patching_rect": [
      5000.0,
      180.0,
      120.0,
      22.0
     ],
     "text": "ctlin",
     "outlettype": [
      "int",
      "int",
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-344",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      210.0,
      80.0,
      22.0
     ],
     "text": "pack 0 0 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-345",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      240.0,
      90.0,
      22.0
     ],
     "text": "prepend cc",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-346",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5150.0,
      180.0,
      90.0,
      22.0
     ],
     "text": "prepend learn",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-347",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      5150.0,
      220.0,
      70.0,
      22.0
     ],
     "text": "r fx.touch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-348",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5150.0,
      250.0,
      90.0,
      22.0
     ],
     "text": "prepend touch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-349",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      5150.0,
      290.0,
      70.0,
      22.0
     ],
     "text": "r fx.labels",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-350",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5150.0,
      320.0,
      90.0,
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
     "id": "obj-351",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      5000.0,
      400.0,
      160.0,
      22.0
     ],
     "text": "coll fxmidimap_data",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-352",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      370.0,
      90.0,
      22.0
     ],
     "text": "prepend list",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-353",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5150.0,
      430.0,
      110.0,
      22.0
     ],
     "text": "prepend dumpaddr",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-354",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      430.0,
      110.0,
      22.0
     ],
     "text": "prepend dumpdata",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-355",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5150.0,
      100.0,
      40.0,
      22.0
     ],
     "text": "t b b",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-356",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5150.0,
      130.0,
      70.0,
      22.0
     ],
     "text": "clearmap",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-357",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5220.0,
      130.0,
      50.0,
      22.0
     ],
     "text": "clear",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-358",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      460.0,
      60.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-359",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      490.0,
      70.0,
      22.0
     ],
     "text": "delay 600",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-360",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      520.0,
      150.0,
      22.0
     ],
     "text": "read fxmidimap.txt",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-361",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      550.0,
      50.0,
      22.0
     ],
     "text": "dump",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-362",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2400.0,
      1046.0,
      1262.8,
      390.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      1046.0,
      1262.8,
      390.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-363",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2400.0,
      1046.0,
      16.0,
      20.0
     ],
     "text": "\u25be",
     "presentation": 1,
     "presentation_rect": [
      14.0,
      1048.0,
      16.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-364",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2420.0,
      1046.0,
      200.0,
      20.0
     ],
     "text": "MODULATION",
     "presentation": 1,
     "presentation_rect": [
      30.0,
      1048.0,
      200.0,
      20.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-365",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2620.0,
      1046.0,
      800.0,
      20.0
     ],
     "text": "16 LFOs \u00b7 each can drive 3 knobs \u00b7 press Learn, then move any knob on a strip or in Focus",
     "presentation": 1,
     "presentation_rect": [
      240.0,
      1048.0,
      900.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-366",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4400.0,
      100.0,
      90.0,
      22.0
     ],
     "text": "v8 fxlfo.js",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-367",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4400.0,
      40.0,
      60.0,
      22.0
     ],
     "text": "r fx.lfo",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-368",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4500.0,
      40.0,
      70.0,
      22.0
     ],
     "text": "r fx.touch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-369",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4500.0,
      70.0,
      90.0,
      22.0
     ],
     "text": "prepend touch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-370",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      40.0,
      110.0,
      22.0
     ],
     "text": "metro 20 @active 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-371",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      70.0,
      100.0,
      22.0
     ],
     "text": "prepend setbpm",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-372",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      70.0,
      100.0,
      22.0
     ],
     "text": "prepend setbpb",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-373",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4400.0,
      140.0,
      60.0,
      22.0
     ],
     "text": "s fx.mod"
    }
   },
   {
    "box": {
     "id": "obj-374",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4900.0,
      40.0,
      70.0,
      22.0
     ],
     "text": "r fx.labels",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-375",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4900.0,
      70.0,
      90.0,
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
     "id": "obj-376",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4500.0,
      140.0,
      80.0,
      22.0
     ],
     "text": "s fx.lfo.set"
    }
   },
   {
    "box": {
     "id": "obj-377",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4600.0,
      140.0,
      80.0,
      22.0
     ],
     "text": "s fx.lfo.val"
    }
   },
   {
    "box": {
     "id": "obj-378",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      140.0,
      60.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-379",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      170.0,
      70.0,
      22.0
     ],
     "text": "delay 1500",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-380",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4700.0,
      200.0,
      90.0,
      22.0
     ],
     "text": "s fx.lfo.dump"
    }
   },
   {
    "box": {
     "id": "obj-381",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      170.0,
      70.0,
      22.0
     ],
     "text": "delay 1200",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-382",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4800.0,
      200.0,
      90.0,
      22.0
     ],
     "text": "s fx.labels.ask"
    }
   },
   {
    "box": {
     "id": "obj-383",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      4400.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      1
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo1"
    }
   },
   {
    "box": {
     "id": "obj-384",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      4560.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      168.4,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      2
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo2"
    }
   },
   {
    "box": {
     "id": "obj-385",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      4720.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      326.8,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      3
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo3"
    }
   },
   {
    "box": {
     "id": "obj-386",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      4880.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      485.20000000000005,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      4
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo4"
    }
   },
   {
    "box": {
     "id": "obj-387",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      5040.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      643.6,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      5
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo5"
    }
   },
   {
    "box": {
     "id": "obj-388",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      5200.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      802.0,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      6
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo6"
    }
   },
   {
    "box": {
     "id": "obj-389",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      5360.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      960.4000000000001,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      7
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo7"
    }
   },
   {
    "box": {
     "id": "obj-390",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      5520.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1118.8,
      1072.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      8
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo8"
    }
   },
   {
    "box": {
     "id": "obj-391",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      5680.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      9
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo9"
    }
   },
   {
    "box": {
     "id": "obj-392",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      5840.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      168.4,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      10
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo10"
    }
   },
   {
    "box": {
     "id": "obj-393",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      6000.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      326.8,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      11
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo11"
    }
   },
   {
    "box": {
     "id": "obj-394",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      6160.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      485.20000000000005,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      12
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo12"
    }
   },
   {
    "box": {
     "id": "obj-395",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      6320.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      643.6,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      13
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo13"
    }
   },
   {
    "box": {
     "id": "obj-396",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      6480.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      802.0,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      14
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo14"
    }
   },
   {
    "box": {
     "id": "obj-397",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      6640.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      960.4000000000001,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      15
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo15"
    }
   },
   {
    "box": {
     "id": "obj-398",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      6800.0,
      300.0,
      154.0,
      178.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1118.8,
      1254.0,
      154.0,
      178.0
     ],
     "name": "fx.lfo.maxpat",
     "args": [
      16
     ],
     "embed": 0,
     "viewvisibility": 1,
     "varname": "lfo16"
    }
   },
   {
    "box": {
     "id": "obj-399",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2400.0,
      1442.0,
      1262.8,
      170.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.0,
      1442.0,
      1262.8,
      170.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-400",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2400.0,
      1442.0,
      16.0,
      20.0
     ],
     "text": "\u25be",
     "presentation": 1,
     "presentation_rect": [
      14.0,
      1444.0,
      16.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-401",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2420.0,
      1442.0,
      200.0,
      20.0
     ],
     "text": "RECORD",
     "presentation": 1,
     "presentation_rect": [
      30.0,
      1444.0,
      200.0,
      20.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-402",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2620.0,
      1442.0,
      800.0,
      20.0
     ],
     "text": "One WAV per armed source \u00b7 every take gets its own dated folder \u00b7 nothing is overwritten",
     "presentation": 1,
     "presentation_rect": [
      240.0,
      1444.0,
      900.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-403",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3600.0,
      0.0,
      200.0,
      24.0
     ],
     "text": "Output recording",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      1470.0,
      200.0,
      24.0
     ],
     "fontsize": 16.0,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-404",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3600.0,
      30.0,
      90.0,
      24.0
     ],
     "text": "00:00.0",
     "presentation": 1,
     "presentation_rect": [
      230.0,
      1470.0,
      90.0,
      24.0
     ],
     "fontsize": 16.0,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-405",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3700.0,
      30.0,
      400.0,
      20.0
     ],
     "text": "Ready to record",
     "presentation": 1,
     "presentation_rect": [
      330.0,
      1474.0,
      560.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-406",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3600.0,
      60.0,
      140.0,
      30.0
     ],
     "text": "\u25cf Record",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      1502.0,
      140.0,
      30.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "\u25cf Record",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "rec_go",
       "parameter_shortname": "\u25cf Record",
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
     "id": "obj-407",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3750.0,
      60.0,
      90.0,
      18.0
     ],
     "text": "Open folder",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      166.0,
      1508.0,
      90.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Open folder",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "rec_open",
       "parameter_shortname": "Open folder",
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
     "id": "obj-408",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      3850.0,
      60.0,
      120.0,
      20.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      262.0,
      1507.0,
      130.0,
      20.0
     ],
     "items": [
      "24-bit WAV",
      ",",
      "32-bit float WAV"
     ]
    }
   },
   {
    "box": {
     "id": "obj-409",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3600.0,
      100.0,
      40.0,
      18.0
     ],
     "text": "Arm",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      1542.0,
      40.0,
      18.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-410",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      400.0,
      80.0,
      22.0
     ],
     "text": "r fx.rec.go",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-411",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      400.0,
      80.0,
      22.0
     ],
     "text": "r fx.rec.stop",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-412",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3600.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Master",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      60.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Master",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm0",
       "parameter_shortname": "Master",
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
     "id": "obj-413",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      60.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-414",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-415",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      430.0,
      30.0,
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
     "id": "obj-416",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3600.0,
      460.0,
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
     "id": "obj-417",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-418",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3640.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-419",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3710.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "A",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      168.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "A",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm1",
       "parameter_shortname": "A",
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
     "id": "obj-420",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3710.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      168.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-421",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3710.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-422",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3710.0,
      430.0,
      30.0,
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
     "id": "obj-423",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3710.0,
      460.0,
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
     "id": "obj-424",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3710.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-425",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3750.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-426",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3820.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "B",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      276.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "B",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm2",
       "parameter_shortname": "B",
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
     "id": "obj-427",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      276.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-428",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-429",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      430.0,
      30.0,
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
     "id": "obj-430",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3820.0,
      460.0,
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
     "id": "obj-431",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-432",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3860.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-433",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3930.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 1",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      384.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 1",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm3",
       "parameter_shortname": "Slot 1",
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
     "id": "obj-434",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3930.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      384.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-435",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3930.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-436",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3930.0,
      430.0,
      30.0,
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
     "id": "obj-437",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3930.0,
      460.0,
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
     "id": "obj-438",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3930.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-439",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3970.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-440",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4040.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 2",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      492.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 2",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm4",
       "parameter_shortname": "Slot 2",
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
     "id": "obj-441",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4040.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      492.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-442",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4040.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-443",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4040.0,
      430.0,
      30.0,
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
     "id": "obj-444",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4040.0,
      460.0,
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
     "id": "obj-445",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4040.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-446",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4080.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-447",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4150.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 3",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      600.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm5",
       "parameter_shortname": "Slot 3",
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
     "id": "obj-448",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4150.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      600.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-449",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4150.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-450",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4150.0,
      430.0,
      30.0,
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
     "id": "obj-451",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4150.0,
      460.0,
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
     "id": "obj-452",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4150.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-453",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4190.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-454",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4260.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 4",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      708.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 4",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm6",
       "parameter_shortname": "Slot 4",
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
     "id": "obj-455",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4260.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      708.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-456",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4260.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-457",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4260.0,
      430.0,
      30.0,
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
     "id": "obj-458",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4260.0,
      460.0,
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
     "id": "obj-459",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4260.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-460",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-461",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4370.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 5",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      816.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 5",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm7",
       "parameter_shortname": "Slot 5",
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
     "id": "obj-462",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4370.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      816.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-463",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4370.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-464",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4370.0,
      430.0,
      30.0,
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
     "id": "obj-465",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4370.0,
      460.0,
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
     "id": "obj-466",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4370.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-467",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4410.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-468",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4480.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 6",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      924.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 6",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm8",
       "parameter_shortname": "Slot 6",
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
     "id": "obj-469",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4480.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      924.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-470",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4480.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-471",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4480.0,
      430.0,
      30.0,
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
     "id": "obj-472",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4480.0,
      460.0,
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
     "id": "obj-473",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4480.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-474",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4520.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-475",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4590.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 7",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1032.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 7",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm9",
       "parameter_shortname": "Slot 7",
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
     "id": "obj-476",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4590.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      1032.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-477",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4590.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-478",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4590.0,
      430.0,
      30.0,
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
     "id": "obj-479",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4590.0,
      460.0,
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
     "id": "obj-480",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4590.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-481",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4630.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-482",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4700.0,
      130.0,
      100.0,
      18.0
     ],
     "text": "Slot 8",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1140.0,
      1542.0,
      100.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 1,
     "texton": "Slot 8",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "arm10",
       "parameter_shortname": "Slot 8",
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
     "id": "obj-483",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      160.0,
      100.0,
      18.0
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      1140.0,
      1564.0,
      100.0,
      18.0
     ],
     "orientation": 1
    }
   },
   {
    "box": {
     "id": "obj-484",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      300.0,
      90.0,
      22.0
     ],
     "text": "sfrecord~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-485",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      430.0,
      30.0,
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
     "id": "obj-486",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4700.0,
      460.0,
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
     "id": "obj-487",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-488",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
      490.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-489",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      100.0,
      70.0,
      22.0
     ],
     "text": "loadmess 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-490",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3600.0,
      200.0,
      60.0,
      18.0
     ],
     "text": "Save to",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      1588.0,
      60.0,
      18.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-491",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3660.0,
      200.0,
      420.0,
      18.0
     ],
     "text": "\u2026",
     "presentation": 1,
     "presentation_rect": [
      80.0,
      1588.0,
      520.0,
      18.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-492",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4100.0,
      200.0,
      80.0,
      18.0
     ],
     "text": "Choose\u2026",
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      604.0,
      1588.0,
      80.0,
      18.0
     ],
     "parameter_enable": 1,
     "mode": 0,
     "texton": "Choose\u2026",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "rec_choose",
       "parameter_shortname": "Choose\u2026",
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
     "id": "obj-493",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4200.0,
      200.0,
      300.0,
      18.0
     ],
     "text": "",
     "presentation": 1,
     "presentation_rect": [
      700.0,
      1588.0,
      560.0,
      18.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-494",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3600.0,
      600.0,
      220.0,
      22.0
     ],
     "text": "node.script fxrec.js @autostart 1",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-495",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 7,
     "patching_rect": [
      3600.0,
      640.0,
      280.0,
      22.0
     ],
     "text": "route folder open go take status capturepath",
     "outlettype": [
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
     "id": "obj-496",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      560.0,
      90.0,
      22.0
     ],
     "text": "r fx.capturereq",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-497",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      580.0,
      100.0,
      22.0
     ],
     "text": "prepend capture",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-498",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3850.0,
      670.0,
      100.0,
      22.0
     ],
     "text": "s fx.capturepath"
    }
   },
   {
    "box": {
     "id": "obj-499",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      670.0,
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
     "id": "obj-500",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 12,
     "patching_rect": [
      3700.0,
      670.0,
      260.0,
      22.0
     ],
     "text": "route 0 1 2 3 4 5 6 7 8 9 10",
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
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-501",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-502",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3760.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-503",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-504",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3880.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-505",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3940.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-506",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-507",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4060.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-508",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4120.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-509",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4180.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-510",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4240.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-511",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      700.0,
      80.0,
      22.0
     ],
     "text": "prepend open",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-512",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3600.0,
      730.0,
      80.0,
      22.0
     ],
     "text": "s fx.rec.go"
    }
   },
   {
    "box": {
     "id": "obj-513",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3800.0,
      730.0,
      110.0,
      22.0
     ],
     "text": "prepend set Take:",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-514",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3950.0,
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
     "id": "obj-515",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      3850.0,
      90.0,
      60.0,
      22.0
     ],
     "text": "sel 0 1",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-516",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3850.0,
      120.0,
      100.0,
      22.0
     ],
     "text": "samptype int24",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-517",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3960.0,
      120.0,
      110.0,
      22.0
     ],
     "text": "samptype float32",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-518",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3850.0,
      60.0,
      70.0,
      22.0
     ],
     "text": "loadmess 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-519",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4100.0,
      230.0,
      100.0,
      22.0
     ],
     "text": "opendialog fold",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-520",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      215.0,
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
     "id": "obj-521",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      260.0,
      110.0,
      22.0
     ],
     "text": "prepend setfolder",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-522",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3750.0,
      90.0,
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
     "id": "obj-523",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3790.0,
      90.0,
      70.0,
      22.0
     ],
     "text": "openfolder",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-524",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      540.0,
      60.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-525",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      565.0,
      70.0,
      22.0
     ],
     "text": "delay 3000",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-526",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      585.0,
      40.0,
      22.0
     ],
     "text": "init",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-527",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      800.0,
      80.0,
      22.0
     ],
     "text": "r fx.recbtn",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-528",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3600.0,
      770.0,
      80.0,
      22.0
     ],
     "text": "s fx.recbtn"
    }
   },
   {
    "box": {
     "id": "obj-529",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      830.0,
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
     "id": "obj-530",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      3600.0,
      860.0,
      60.0,
      22.0
     ],
     "text": "sel 1 0",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-531",
     "maxclass": "newobj",
     "numinlets": 11,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      890.0,
      400.0,
      22.0
     ],
     "text": "pak 0 0 0 0 0 0 0 0 0 0 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-532",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      920.0,
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
     "id": "obj-533",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      950.0,
      200.0,
      22.0
     ],
     "text": "vexpr $i1*$i2 @scalarmode 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-534",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      920.0,
      160.0,
      22.0
     ],
     "text": "1 2 3 4 5 6 7 8 9 10 11",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-535",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      890.0,
      60.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-536",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3600.0,
      980.0,
      80.0,
      22.0
     ],
     "text": "zl filter 0",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-537",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      1010.0,
      180.0,
      22.0
     ],
     "text": "vexpr $i1-1 @scalarmode 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-538",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      1040.0,
      90.0,
      22.0
     ],
     "text": "prepend start",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-539",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      1040.0,
      100.0,
      22.0
     ],
     "text": "set Recording\u2026",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-540",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3900.0,
      1040.0,
      90.0,
      22.0
     ],
     "text": "s fx.rec.stop"
    }
   },
   {
    "box": {
     "id": "obj-541",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3900.0,
      1010.0,
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
     "id": "obj-542",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      1040.0,
      200.0,
      22.0
     ],
     "text": "set Saved \u00b7 Open folder to listen",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-543",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3600.0,
      1100.0,
      40.0,
      22.0
     ],
     "text": "t b b",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-544",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      1130.0,
      70.0,
      22.0
     ],
     "text": "metro 100",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-545",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3680.0,
      1100.0,
      30.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-546",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3720.0,
      1100.0,
      30.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-547",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 4,
     "patching_rect": [
      3600.0,
      1160.0,
      60.0,
      22.0
     ],
     "text": "counter",
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
     "id": "obj-548",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3680.0,
      1130.0,
      40.0,
      22.0
     ],
     "text": "set 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-549",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      1190.0,
      90.0,
      22.0
     ],
     "text": "expr ($i1/600)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-550",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      1190.0,
      110.0,
      22.0
     ],
     "text": "expr ($i1/10)%60",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-551",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3820.0,
      1190.0,
      80.0,
      22.0
     ],
     "text": "expr $i1%10",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-552",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      3600.0,
      1220.0,
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
     "id": "obj-553",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      1250.0,
      80.0,
      22.0
     ],
     "text": "pak 0 0 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-554",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      1280.0,
      150.0,
      22.0
     ],
     "text": "sprintf set %02d:%02d.%d",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-555",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3600.0,
      1400.0,
      900.0,
      20.0
     ],
     "text": "Audio on \u00b7 pick sources \u00b7 cable it \u00b7 pick effects \u00b7 Focus to edit \u00b7 arm sources and press Record",
     "presentation": 1,
     "presentation_rect": [
      12.0,
      1618.0,
      900.0,
      20.0
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-30",
      0
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
      "obj-30",
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
      "obj-30",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      2
     ],
     "destination": [
      "obj-30",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      3
     ],
     "destination": [
      "obj-30",
      3
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
      "obj-39",
      0
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
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
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
      "obj-45",
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
      "obj-46",
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
      "obj-47",
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
      "obj-48",
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
      "obj-42",
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
      "obj-49",
      3
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
      "obj-49",
      2
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
      "obj-49",
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
      "obj-49",
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
      "obj-50",
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
      "obj-34",
      0
     ],
     "destination": [
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
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
      "obj-52",
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
      "obj-36",
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
      1
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
      "obj-53",
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
      "obj-38",
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
      "obj-38",
      1
     ],
     "destination": [
      "obj-54",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      2
     ],
     "destination": [
      "obj-54",
      2
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
      "obj-56",
      0
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
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      1
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
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
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
      "obj-63",
      0
     ],
     "destination": [
      "obj-64",
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
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      2
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
      "obj-56",
      3
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
      "obj-69",
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
      "obj-67",
      1
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
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      1
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
      "obj-70",
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
      "obj-66",
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
      "obj-67",
      0
     ],
     "destination": [
      "obj-71",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      10
     ],
     "destination": [
      "obj-71",
      2
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
      "obj-73",
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
      "obj-73",
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
      "obj-38",
      0
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
      "obj-54",
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
      "obj-76",
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
      "obj-54",
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
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-79",
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
      "obj-56",
      4
     ],
     "destination": [
      "obj-81",
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
      "obj-82",
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
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      5
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
      "obj-83",
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
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      6
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
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-86",
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
      "obj-56",
      7
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
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      8
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
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      9
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
      "obj-54",
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
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      1
     ],
     "destination": [
      "obj-90",
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
      "obj-93",
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
      "obj-96",
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
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-98",
      1
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
      "obj-90",
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
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-100",
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
      "obj-37",
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
      "obj-90",
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
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      3
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
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      2
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
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
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
      "obj-104",
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
      "obj-107",
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
      "obj-38",
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
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-121",
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
      "obj-122",
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
      "obj-123",
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
      "obj-124",
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
      "obj-125",
      0
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
      "obj-119",
      0
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
      3
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
      "obj-126",
      2
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
      "obj-126",
      1
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
      "obj-126",
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
      "obj-127",
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
      "obj-111",
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
      "obj-128",
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
      "obj-126",
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
      "obj-130",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-130",
      1
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
      "obj-130",
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
      "obj-115",
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
      "obj-115",
      1
     ],
     "destination": [
      "obj-131",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-115",
      2
     ],
     "destination": [
      "obj-131",
      2
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
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-135",
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
      "obj-133",
      1
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
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-137",
      1
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
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      2
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
      "obj-133",
      3
     ],
     "destination": [
      "obj-142",
      1
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
      "obj-146",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-146",
      1
     ],
     "destination": [
      "obj-144",
      1
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
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      1
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
      "obj-147",
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
      "obj-148",
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
      "obj-148",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      10
     ],
     "destination": [
      "obj-148",
      2
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
      "obj-150",
      1
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
      "obj-115",
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
      "obj-131",
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
      "obj-131",
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
      "obj-157",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      4
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
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      5
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
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      6
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
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      7
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
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      8
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
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      9
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
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
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
      "obj-26",
      1
     ],
     "destination": [
      "obj-167",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
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
      "obj-170",
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
      "obj-173",
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
      "obj-175",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-175",
      1
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
      "obj-167",
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
      "obj-167",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
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
      "obj-167",
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
      "obj-181",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-181",
      3
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
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-181",
      2
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
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-181",
      1
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
      "obj-181",
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
      "obj-115",
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
      "obj-30",
      4
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
      "obj-30",
      5
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
      "obj-30",
      6
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      1
     ],
     "destination": [
      "obj-30",
      7
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
      "obj-186",
      0
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
      "obj-186",
      1
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
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
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
      "obj-30",
      1
     ],
     "destination": [
      "obj-23",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      2
     ],
     "destination": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      3
     ],
     "destination": [
      "obj-26",
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
      "obj-187",
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
      "obj-187",
      0
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
      "obj-188",
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
      "obj-188",
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
      "obj-187",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      1
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
      "obj-26",
      0
     ],
     "destination": [
      "obj-187",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      1
     ],
     "destination": [
      "obj-188",
      1
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
      "obj-190",
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
      "obj-190",
      1
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
      "obj-187",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-190",
      1
     ],
     "destination": [
      "obj-188",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      1
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
      "obj-188",
      1
     ],
     "destination": [
      "obj-191",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
      0
     ],
     "destination": [
      "obj-187",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
      1
     ],
     "destination": [
      "obj-188",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      2
     ],
     "destination": [
      "obj-192",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-188",
      2
     ],
     "destination": [
      "obj-192",
      1
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
      "obj-187",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-192",
      1
     ],
     "destination": [
      "obj-188",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      3
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
      "obj-188",
      3
     ],
     "destination": [
      "obj-193",
      1
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
      "obj-187",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-193",
      1
     ],
     "destination": [
      "obj-188",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      4
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
      "obj-188",
      4
     ],
     "destination": [
      "obj-194",
      1
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
      "obj-187",
      6
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
      "obj-188",
      6
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      5
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
      "obj-188",
      5
     ],
     "destination": [
      "obj-195",
      1
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
      "obj-187",
      7
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-195",
      1
     ],
     "destination": [
      "obj-188",
      7
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      6
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
      "obj-188",
      6
     ],
     "destination": [
      "obj-196",
      1
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
      "obj-187",
      8
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-196",
      1
     ],
     "destination": [
      "obj-188",
      8
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      7
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
      "obj-188",
      7
     ],
     "destination": [
      "obj-197",
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
      "obj-187",
      9
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-197",
      1
     ],
     "destination": [
      "obj-188",
      9
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      8
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
      "obj-188",
      8
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
      "obj-204",
      0
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
      "obj-205",
      0
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
      "obj-202",
      0
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
      "obj-209",
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
      "obj-210",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      1
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
      "obj-209",
      0
     ],
     "destination": [
      "obj-210",
      1
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
      "obj-211",
      1
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
      "obj-204",
      1
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
      "obj-205",
      1
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
      "obj-26",
      0
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
      "obj-26",
      1
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
      "obj-213",
      0
     ],
     "destination": [
      "obj-214",
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
      "obj-215",
      1
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
      "obj-206",
      1
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
      "obj-207",
      1
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
      "obj-200",
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
      "obj-201",
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
      "obj-6",
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
      "obj-6",
      1
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
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      0
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
      "obj-6",
      1
     ],
     "destination": [
      "obj-216",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
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
      "obj-6",
      1
     ],
     "destination": [
      "obj-199",
      1
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
      "obj-198",
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
      "obj-218",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      1
     ],
     "destination": [
      "obj-218",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      2
     ],
     "destination": [
      "obj-218",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      3
     ],
     "destination": [
      "obj-218",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      4
     ],
     "destination": [
      "obj-218",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      5
     ],
     "destination": [
      "obj-218",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      6
     ],
     "destination": [
      "obj-218",
      6
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      7
     ],
     "destination": [
      "obj-218",
      7
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
      "obj-218",
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
      "obj-219",
      0
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
      "obj-216",
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
      "obj-8",
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
      "obj-223",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      2
     ],
     "destination": [
      "obj-223",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      4
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
      "obj-216",
      6
     ],
     "destination": [
      "obj-225",
      1
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
      "obj-227",
      0
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
      "obj-227",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      1
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
      "obj-216",
      3
     ],
     "destination": [
      "obj-224",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      5
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
      "obj-216",
      7
     ],
     "destination": [
      "obj-226",
      1
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
      "obj-228",
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
      "obj-228",
      1
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
      "obj-229",
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
      "obj-230",
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
      "obj-231",
      0
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
      "obj-28",
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
      "obj-28",
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
      "obj-235",
      0
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
      "obj-236",
      0
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
      "obj-234",
      0
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
      "obj-234",
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
      "obj-234",
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
      "obj-234",
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
      "obj-234",
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
      "obj-243",
      0
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
      "obj-234",
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
      "obj-234",
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
      "obj-234",
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
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      4
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
      "obj-234",
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
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      5
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
      0
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
      "obj-236",
      6
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
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      6
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
      "obj-234",
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
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      7
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
      "obj-234",
      0
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
      "obj-254",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
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
      "obj-260",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
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
      "obj-261",
      0
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      1
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
      "obj-256",
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      2
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
      "obj-270",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      4
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      3
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
      "obj-275",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      5
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
      "obj-279",
      0
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      4
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
      "obj-280",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      6
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      5
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
      "obj-285",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      7
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      6
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
      "obj-290",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      8
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
      "obj-291",
      0
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      7
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
      "obj-256",
      9
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      8
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
      "obj-300",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      10
     ],
     "destination": [
      "obj-303",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-303",
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
      "obj-304",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-304",
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
      "obj-258",
      9
     ],
     "destination": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-307",
      0
     ],
     "destination": [
      "obj-305",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      11
     ],
     "destination": [
      "obj-308",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-308",
      0
     ],
     "destination": [
      "obj-306",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      0
     ],
     "destination": [
      "obj-309",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-309",
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
      "obj-258",
      10
     ],
     "destination": [
      "obj-312",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-312",
      0
     ],
     "destination": [
      "obj-310",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      12
     ],
     "destination": [
      "obj-313",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-313",
      0
     ],
     "destination": [
      "obj-311",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-311",
      0
     ],
     "destination": [
      "obj-314",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-314",
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
      "obj-258",
      11
     ],
     "destination": [
      "obj-317",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-317",
      0
     ],
     "destination": [
      "obj-315",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      13
     ],
     "destination": [
      "obj-318",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-318",
      0
     ],
     "destination": [
      "obj-316",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-316",
      0
     ],
     "destination": [
      "obj-319",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-319",
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
      "obj-258",
      12
     ],
     "destination": [
      "obj-322",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-322",
      0
     ],
     "destination": [
      "obj-320",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      14
     ],
     "destination": [
      "obj-323",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-323",
      0
     ],
     "destination": [
      "obj-321",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-321",
      0
     ],
     "destination": [
      "obj-324",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-324",
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
      "obj-258",
      13
     ],
     "destination": [
      "obj-327",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-327",
      0
     ],
     "destination": [
      "obj-325",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      15
     ],
     "destination": [
      "obj-328",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-328",
      0
     ],
     "destination": [
      "obj-326",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-326",
      0
     ],
     "destination": [
      "obj-329",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-329",
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
      "obj-258",
      14
     ],
     "destination": [
      "obj-332",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-332",
      0
     ],
     "destination": [
      "obj-330",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      16
     ],
     "destination": [
      "obj-333",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-333",
      0
     ],
     "destination": [
      "obj-331",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-331",
      0
     ],
     "destination": [
      "obj-334",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-334",
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
      "obj-258",
      15
     ],
     "destination": [
      "obj-337",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-337",
      0
     ],
     "destination": [
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      17
     ],
     "destination": [
      "obj-338",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-338",
      0
     ],
     "destination": [
      "obj-336",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-336",
      0
     ],
     "destination": [
      "obj-339",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-339",
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
      "obj-341",
      0
     ],
     "destination": [
      "obj-342",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-343",
      2
     ],
     "destination": [
      "obj-344",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-343",
      1
     ],
     "destination": [
      "obj-344",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-343",
      0
     ],
     "destination": [
      "obj-344",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-344",
      0
     ],
     "destination": [
      "obj-345",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-345",
      0
     ],
     "destination": [
      "obj-341",
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
      "obj-346",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-346",
      0
     ],
     "destination": [
      "obj-341",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-347",
      0
     ],
     "destination": [
      "obj-348",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-348",
      0
     ],
     "destination": [
      "obj-341",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-349",
      0
     ],
     "destination": [
      "obj-350",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-350",
      0
     ],
     "destination": [
      "obj-341",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-341",
      2
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
      "obj-341",
      1
     ],
     "destination": [
      "obj-352",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-352",
      0
     ],
     "destination": [
      "obj-351",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-351",
      1
     ],
     "destination": [
      "obj-353",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-353",
      0
     ],
     "destination": [
      "obj-341",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-351",
      0
     ],
     "destination": [
      "obj-354",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-354",
      0
     ],
     "destination": [
      "obj-341",
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
      "obj-355",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-355",
      0
     ],
     "destination": [
      "obj-356",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-356",
      0
     ],
     "destination": [
      "obj-341",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-355",
      1
     ],
     "destination": [
      "obj-357",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-357",
      0
     ],
     "destination": [
      "obj-351",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-358",
      0
     ],
     "destination": [
      "obj-359",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-359",
      0
     ],
     "destination": [
      "obj-360",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-360",
      0
     ],
     "destination": [
      "obj-351",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-351",
      2
     ],
     "destination": [
      "obj-361",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-361",
      0
     ],
     "destination": [
      "obj-351",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-367",
      0
     ],
     "destination": [
      "obj-366",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-368",
      0
     ],
     "destination": [
      "obj-369",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-369",
      0
     ],
     "destination": [
      "obj-366",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-370",
      0
     ],
     "destination": [
      "obj-366",
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
      "obj-371",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-371",
      0
     ],
     "destination": [
      "obj-366",
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
      "obj-372",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-372",
      0
     ],
     "destination": [
      "obj-366",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-366",
      0
     ],
     "destination": [
      "obj-373",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-374",
      0
     ],
     "destination": [
      "obj-375",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-375",
      0
     ],
     "destination": [
      "obj-366",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-366",
      1
     ],
     "destination": [
      "obj-376",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-366",
      2
     ],
     "destination": [
      "obj-377",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-378",
      0
     ],
     "destination": [
      "obj-379",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-379",
      0
     ],
     "destination": [
      "obj-380",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-378",
      0
     ],
     "destination": [
      "obj-381",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-381",
      0
     ],
     "destination": [
      "obj-382",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      0
     ],
     "destination": [
      "obj-413",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      0
     ],
     "destination": [
      "obj-414",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      1
     ],
     "destination": [
      "obj-414",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-412",
      0
     ],
     "destination": [
      "obj-415",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-415",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-415",
      0
     ],
     "destination": [
      "obj-416",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-416",
      0
     ],
     "destination": [
      "obj-417",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-417",
      0
     ],
     "destination": [
      "obj-414",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-418",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-418",
      0
     ],
     "destination": [
      "obj-414",
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
      "obj-420",
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
      "obj-421",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      1
     ],
     "destination": [
      "obj-421",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-419",
      0
     ],
     "destination": [
      "obj-422",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-422",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-422",
      0
     ],
     "destination": [
      "obj-423",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-423",
      0
     ],
     "destination": [
      "obj-424",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-424",
      0
     ],
     "destination": [
      "obj-421",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-425",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-425",
      0
     ],
     "destination": [
      "obj-421",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      0
     ],
     "destination": [
      "obj-427",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      0
     ],
     "destination": [
      "obj-428",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      1
     ],
     "destination": [
      "obj-428",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-426",
      0
     ],
     "destination": [
      "obj-429",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-429",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-429",
      0
     ],
     "destination": [
      "obj-430",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-430",
      0
     ],
     "destination": [
      "obj-431",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-431",
      0
     ],
     "destination": [
      "obj-428",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-432",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-432",
      0
     ],
     "destination": [
      "obj-428",
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
      "obj-434",
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
      "obj-435",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-190",
      1
     ],
     "destination": [
      "obj-435",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-433",
      0
     ],
     "destination": [
      "obj-436",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-436",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-436",
      0
     ],
     "destination": [
      "obj-437",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-437",
      0
     ],
     "destination": [
      "obj-438",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-438",
      0
     ],
     "destination": [
      "obj-435",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-439",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-439",
      0
     ],
     "destination": [
      "obj-435",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
      0
     ],
     "destination": [
      "obj-441",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
      0
     ],
     "destination": [
      "obj-442",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
      1
     ],
     "destination": [
      "obj-442",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-440",
      0
     ],
     "destination": [
      "obj-443",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-443",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-443",
      0
     ],
     "destination": [
      "obj-444",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-444",
      0
     ],
     "destination": [
      "obj-445",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-445",
      0
     ],
     "destination": [
      "obj-442",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-446",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-446",
      0
     ],
     "destination": [
      "obj-442",
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
      "obj-448",
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
      "obj-449",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-192",
      1
     ],
     "destination": [
      "obj-449",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-447",
      0
     ],
     "destination": [
      "obj-450",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-450",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-450",
      0
     ],
     "destination": [
      "obj-451",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-451",
      0
     ],
     "destination": [
      "obj-452",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-452",
      0
     ],
     "destination": [
      "obj-449",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-453",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-453",
      0
     ],
     "destination": [
      "obj-449",
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
      "obj-455",
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
      "obj-456",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-193",
      1
     ],
     "destination": [
      "obj-456",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-454",
      0
     ],
     "destination": [
      "obj-457",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-457",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-457",
      0
     ],
     "destination": [
      "obj-458",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-458",
      0
     ],
     "destination": [
      "obj-459",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-459",
      0
     ],
     "destination": [
      "obj-456",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-460",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-460",
      0
     ],
     "destination": [
      "obj-456",
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
      "obj-462",
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
      "obj-463",
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
      "obj-463",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-461",
      0
     ],
     "destination": [
      "obj-464",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-464",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-464",
      0
     ],
     "destination": [
      "obj-465",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-465",
      0
     ],
     "destination": [
      "obj-466",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-466",
      0
     ],
     "destination": [
      "obj-463",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-467",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-467",
      0
     ],
     "destination": [
      "obj-463",
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
      "obj-469",
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
      "obj-470",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-195",
      1
     ],
     "destination": [
      "obj-470",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-468",
      0
     ],
     "destination": [
      "obj-471",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-471",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-471",
      0
     ],
     "destination": [
      "obj-472",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-472",
      0
     ],
     "destination": [
      "obj-473",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-473",
      0
     ],
     "destination": [
      "obj-470",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-474",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-474",
      0
     ],
     "destination": [
      "obj-470",
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
      "obj-476",
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
      "obj-477",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-196",
      1
     ],
     "destination": [
      "obj-477",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-475",
      0
     ],
     "destination": [
      "obj-478",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-478",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-478",
      0
     ],
     "destination": [
      "obj-479",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-479",
      0
     ],
     "destination": [
      "obj-480",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-480",
      0
     ],
     "destination": [
      "obj-477",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-481",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-481",
      0
     ],
     "destination": [
      "obj-477",
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
      "obj-483",
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
      "obj-484",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-197",
      1
     ],
     "destination": [
      "obj-484",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-482",
      0
     ],
     "destination": [
      "obj-485",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-410",
      0
     ],
     "destination": [
      "obj-485",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-485",
      0
     ],
     "destination": [
      "obj-486",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-486",
      0
     ],
     "destination": [
      "obj-487",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-487",
      0
     ],
     "destination": [
      "obj-484",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-411",
      0
     ],
     "destination": [
      "obj-488",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-488",
      0
     ],
     "destination": [
      "obj-484",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-489",
      0
     ],
     "destination": [
      "obj-412",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-494",
      0
     ],
     "destination": [
      "obj-495",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-496",
      0
     ],
     "destination": [
      "obj-497",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-497",
      0
     ],
     "destination": [
      "obj-494",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-495",
      0
     ],
     "destination": [
      "obj-499",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-499",
      0
     ],
     "destination": [
      "obj-491",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-495",
      1
     ],
     "destination": [
      "obj-500",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      0
     ],
     "destination": [
      "obj-501",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-501",
      0
     ],
     "destination": [
      "obj-414",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      1
     ],
     "destination": [
      "obj-502",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-502",
      0
     ],
     "destination": [
      "obj-421",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      2
     ],
     "destination": [
      "obj-503",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-503",
      0
     ],
     "destination": [
      "obj-428",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      3
     ],
     "destination": [
      "obj-504",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-504",
      0
     ],
     "destination": [
      "obj-435",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      4
     ],
     "destination": [
      "obj-505",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-505",
      0
     ],
     "destination": [
      "obj-442",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      5
     ],
     "destination": [
      "obj-506",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-506",
      0
     ],
     "destination": [
      "obj-449",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      6
     ],
     "destination": [
      "obj-507",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-507",
      0
     ],
     "destination": [
      "obj-456",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      7
     ],
     "destination": [
      "obj-508",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-508",
      0
     ],
     "destination": [
      "obj-463",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      8
     ],
     "destination": [
      "obj-509",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-509",
      0
     ],
     "destination": [
      "obj-470",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      9
     ],
     "destination": [
      "obj-510",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-510",
      0
     ],
     "destination": [
      "obj-477",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-500",
      10
     ],
     "destination": [
      "obj-511",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-511",
      0
     ],
     "destination": [
      "obj-484",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-495",
      2
     ],
     "destination": [
      "obj-512",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-495",
      3
     ],
     "destination": [
      "obj-513",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-513",
      0
     ],
     "destination": [
      "obj-493",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-495",
      4
     ],
     "destination": [
      "obj-514",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-514",
      0
     ],
     "destination": [
      "obj-405",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-495",
      5
     ],
     "destination": [
      "obj-498",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-408",
      0
     ],
     "destination": [
      "obj-515",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-515",
      0
     ],
     "destination": [
      "obj-516",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-515",
      1
     ],
     "destination": [
      "obj-517",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-414",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-414",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-421",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-421",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-428",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-428",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-435",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-435",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-442",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-442",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-449",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-449",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-456",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-456",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-463",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-463",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-470",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-470",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-477",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-477",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-516",
      0
     ],
     "destination": [
      "obj-484",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-517",
      0
     ],
     "destination": [
      "obj-484",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-518",
      0
     ],
     "destination": [
      "obj-408",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-492",
      0
     ],
     "destination": [
      "obj-520",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-520",
      0
     ],
     "destination": [
      "obj-519",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-519",
      0
     ],
     "destination": [
      "obj-521",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-521",
      0
     ],
     "destination": [
      "obj-494",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-407",
      0
     ],
     "destination": [
      "obj-522",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-522",
      0
     ],
     "destination": [
      "obj-523",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-523",
      0
     ],
     "destination": [
      "obj-494",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-524",
      0
     ],
     "destination": [
      "obj-525",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-525",
      0
     ],
     "destination": [
      "obj-526",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-526",
      0
     ],
     "destination": [
      "obj-494",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-406",
      0
     ],
     "destination": [
      "obj-528",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-527",
      0
     ],
     "destination": [
      "obj-529",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-529",
      0
     ],
     "destination": [
      "obj-406",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-527",
      0
     ],
     "destination": [
      "obj-530",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-412",
      0
     ],
     "destination": [
      "obj-531",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-419",
      0
     ],
     "destination": [
      "obj-531",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-426",
      0
     ],
     "destination": [
      "obj-531",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-433",
      0
     ],
     "destination": [
      "obj-531",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-440",
      0
     ],
     "destination": [
      "obj-531",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-447",
      0
     ],
     "destination": [
      "obj-531",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-454",
      0
     ],
     "destination": [
      "obj-531",
      6
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-461",
      0
     ],
     "destination": [
      "obj-531",
      7
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-468",
      0
     ],
     "destination": [
      "obj-531",
      8
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-475",
      0
     ],
     "destination": [
      "obj-531",
      9
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-482",
      0
     ],
     "destination": [
      "obj-531",
      10
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-531",
      0
     ],
     "destination": [
      "obj-532",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-530",
      0
     ],
     "destination": [
      "obj-532",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-532",
      0
     ],
     "destination": [
      "obj-533",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-535",
      0
     ],
     "destination": [
      "obj-534",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-534",
      0
     ],
     "destination": [
      "obj-533",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-533",
      0
     ],
     "destination": [
      "obj-536",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-536",
      0
     ],
     "destination": [
      "obj-537",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-537",
      0
     ],
     "destination": [
      "obj-538",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-538",
      0
     ],
     "destination": [
      "obj-494",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-530",
      0
     ],
     "destination": [
      "obj-539",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-539",
      0
     ],
     "destination": [
      "obj-405",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-530",
      1
     ],
     "destination": [
      "obj-541",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-541",
      0
     ],
     "destination": [
      "obj-540",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-541",
      0
     ],
     "destination": [
      "obj-542",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-542",
      0
     ],
     "destination": [
      "obj-405",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-530",
      0
     ],
     "destination": [
      "obj-543",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-543",
      0
     ],
     "destination": [
      "obj-545",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-545",
      0
     ],
     "destination": [
      "obj-544",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-541",
      0
     ],
     "destination": [
      "obj-546",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-546",
      0
     ],
     "destination": [
      "obj-544",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-543",
      1
     ],
     "destination": [
      "obj-548",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-548",
      0
     ],
     "destination": [
      "obj-547",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-544",
      0
     ],
     "destination": [
      "obj-547",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-547",
      0
     ],
     "destination": [
      "obj-552",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-552",
      2
     ],
     "destination": [
      "obj-551",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-552",
      1
     ],
     "destination": [
      "obj-550",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-552",
      0
     ],
     "destination": [
      "obj-549",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-549",
      0
     ],
     "destination": [
      "obj-553",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-550",
      0
     ],
     "destination": [
      "obj-553",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-551",
      0
     ],
     "destination": [
      "obj-553",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-553",
      0
     ],
     "destination": [
      "obj-554",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-554",
      0
     ],
     "destination": [
      "obj-404",
      0
     ]
    }
   }
  ]
 }
}