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
   1200,
   700
  ],
  "openinpresentation": 1,
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      900.0,
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
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20.0,
      500.0,
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
     "numinlets": 1,
     "numoutlets": 17,
     "patching_rect": [
      20.0,
      530.0,
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
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      440.0,
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
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      200.0,
      470.0,
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
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200.0,
      500.0,
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
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      400.0,
      440.0,
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
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      400.0,
      470.0,
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
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      400.0,
      500.0,
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
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      300.0,
      500.0,
      70.0,
      22.0
     ],
     "text": "s fx.touch"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      20.0,
      80.0,
      20.0
     ],
     "text": "FILE FX",
     "presentation": 1,
     "presentation_rect": [
      4.0,
      2.0,
      80.0,
      20.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      40.0,
      260.0,
      20.0
     ],
     "text": "LFO target: File \u00b7 Learn works here too",
     "presentation": 1,
     "presentation_rect": [
      4.0,
      22.0,
      170.0,
      32.0
     ],
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      20.0,
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
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      50.0,
      60.0,
      22.0
     ],
     "text": "delay 500",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      100.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Speed",
     "presentation": 1,
     "presentation_rect": [
      172.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      100.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      180.0,
      16.0,
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
       "parameter_shortname": "Speed",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.6667
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      100.0,
      180.0,
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
     "id": "obj-19",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      100.0,
      210.0,
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
     "id": "obj-20",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      100.0,
      560.0,
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
     "id": "obj-21",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      190.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Pitch",
     "presentation": 1,
     "presentation_rect": [
      244.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      190.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      252.0,
      16.0,
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
       "parameter_shortname": "Pitch",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      190.0,
      180.0,
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
     "id": "obj-24",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      190.0,
      210.0,
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
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      190.0,
      560.0,
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
     "id": "obj-26",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      280.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Start",
     "presentation": 1,
     "presentation_rect": [
      316.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      280.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      324.0,
      16.0,
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
       "parameter_shortname": "Start",
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
     "id": "obj-28",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      280.0,
      180.0,
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
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      280.0,
      210.0,
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
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      280.0,
      560.0,
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
     "id": "obj-31",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      370.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Length",
     "presentation": 1,
     "presentation_rect": [
      388.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      370.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      396.0,
      16.0,
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
       "parameter_shortname": "Length",
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
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      370.0,
      180.0,
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
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      370.0,
      210.0,
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
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      370.0,
      560.0,
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
     "id": "obj-36",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      460.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Volume",
     "presentation": 1,
     "presentation_rect": [
      460.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      460.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      468.0,
      16.0,
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
       "parameter_shortname": "Volume",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.8
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      180.0,
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
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      210.0,
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
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      560.0,
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
     "id": "obj-41",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      550.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Width",
     "presentation": 1,
     "presentation_rect": [
      532.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      550.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      540.0,
      16.0,
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
       "parameter_shortname": "Width",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      550.0,
      180.0,
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
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      550.0,
      210.0,
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
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      550.0,
      560.0,
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
     "id": "obj-46",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      640.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Tone",
     "presentation": 1,
     "presentation_rect": [
      604.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      640.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      612.0,
      16.0,
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
       "parameter_shortname": "Tone",
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
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      180.0,
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
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      210.0,
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
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      640.0,
      560.0,
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
     "id": "obj-51",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      730.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Pan",
     "presentation": 1,
     "presentation_rect": [
      676.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      730.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      684.0,
      16.0,
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
       "parameter_shortname": "Pan",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      730.0,
      180.0,
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
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      730.0,
      210.0,
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
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      730.0,
      560.0,
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
     "id": "obj-56",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      820.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Fade In",
     "presentation": 1,
     "presentation_rect": [
      748.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      820.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      756.0,
      16.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k9",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k9",
       "parameter_shortname": "Fade In",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.05
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820.0,
      180.0,
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
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820.0,
      210.0,
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
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820.0,
      560.0,
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
     "id": "obj-61",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      910.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "Fade Out",
     "presentation": 1,
     "presentation_rect": [
      820.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      910.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      828.0,
      16.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k10",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k10",
       "parameter_shortname": "Fade Out",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_unitstyle": 1,
       "parameter_initial": [
        0.05
       ],
       "parameter_initial_enable": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      910.0,
      180.0,
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
     "id": "obj-64",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      910.0,
      210.0,
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
     "id": "obj-65",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      910.0,
      560.0,
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
     "id": "obj-66",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1000.0,
      100.0,
      60.0,
      16.0
     ],
     "text": "End",
     "presentation": 1,
     "presentation_rect": [
      892.0,
      0.0,
      60.0,
      16.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1000.0,
      130.0,
      44.0,
      40.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      900.0,
      16.0,
      44.0,
      40.0
     ],
     "parameter_enable": 1,
     "varname": "k11",
     "showname": 0,
     "shownumber": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "k11",
       "parameter_shortname": "End",
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
     "id": "obj-68",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      180.0,
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
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      210.0,
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
     "id": "obj-70",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000.0,
      560.0,
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
     "id": "obj-71",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      80.0,
      400.0,
      22.0
     ],
     "text": "Speed Pitch Start Length Volume Width Tone Pan Fade In Fade Out End",
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
      600.0,
      110.0,
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
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600.0,
      140.0,
      70.0,
      22.0
     ],
     "text": "s fx.labels"
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      80.0,
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
     "id": "obj-75",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      900.0,
      600.0,
      100.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      980.0,
      56.0
     ],
     "border": 1,
     "rounded": 0,
     "background": 1,
     "bgcolor": [
      0.14,
      0.1,
      0.05,
      1.0
     ],
     "bordercolor": [
      0.55,
      0.42,
      0.18,
      1.0
     ]
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      1
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
      "obj-5",
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
      "obj-6",
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
      "obj-7",
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
      "obj-2",
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
      "obj-2",
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
      "obj-11",
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
      "obj-17",
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
      "obj-17",
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
      "obj-2",
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
      "obj-11",
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
      "obj-25",
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
      "obj-22",
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
      "obj-22",
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
      "obj-28",
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
      "obj-2",
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
      "obj-29",
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
      "obj-11",
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
      "obj-27",
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
      "obj-27",
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
      "obj-33",
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
      "obj-2",
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
      "obj-34",
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
      "obj-11",
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
      "obj-35",
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
      "obj-32",
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
      "obj-32",
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
      "obj-38",
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
      "obj-2",
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
      "obj-11",
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
      "obj-37",
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
      "obj-37",
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
      "obj-2",
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
      "obj-44",
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
      "obj-11",
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
      "obj-42",
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
      "obj-42",
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
      "obj-2",
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
      "obj-49",
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
      "obj-11",
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
      "obj-47",
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
      "obj-47",
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
      "obj-2",
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
      "obj-11",
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
      "obj-55",
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
      "obj-52",
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
      "obj-52",
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
      "obj-2",
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
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      8
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
      "obj-57",
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
      "obj-57",
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
      "obj-2",
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
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      9
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
      "obj-65",
      0
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
      "obj-15",
      0
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
      "obj-2",
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
      "obj-69",
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
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      10
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
      "obj-15",
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
      "obj-15",
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
      "obj-71",
      0
     ]
    }
   }
  ]
 }
}