{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 134.0, 95.0, 1300.0, 988.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 12.0, 348.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 12.0, 348.0, 20.0 ],
                    "text": "FX PATCHER v13.1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 12.0, 34.0, 84.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 36.0, 84.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "audio",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Audio",
                            "parameter_type": 2
                        }
                    },
                    "text": "Audio",
                    "texton": "Audio",
                    "varname": "live.text"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 100.0, 34.0, 84.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 100.0, 36.0, 84.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "panic",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Panic",
                            "parameter_type": 2
                        }
                    },
                    "text": "Panic",
                    "texton": "Panic",
                    "varname": "live.text[1]"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 188.0, 34.0, 84.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 188.0, 36.0, 84.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "clear",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Clear all",
                            "parameter_type": 2
                        }
                    },
                    "text": "Clear all",
                    "texton": "Clear all",
                    "varname": "live.text[2]"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 848.0, 34.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 848.0, 36.0, 60.0, 20.0 ],
                    "text": "Master"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1300.0, 800.0, 240.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 910.0, 40.0, 240.0, 26.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "master",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "master",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "shownumber": 0,
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1156.0, 34.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1156.0, 36.0, 40.0, 20.0 ],
                    "text": "Out"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1300.0, 860.0, 72.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1200.0, 36.0, 72.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "1/2", "3/4", "5/6", "7/8" ],
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "output",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "output",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.menu"
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 1,
                    "id": "obj-9",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2400.0, 150.0, 1262.8, 28.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 70.0, 1262.8, 28.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2400.0, 180.0, 56.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 74.0, 56.0, 20.0 ],
                    "text": "Tempo"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2440.0, 180.0, 35.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 90.0, 74.0, 35.0, 20.0 ],
                    "text": "BPM"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2480.0, 180.0, 40.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 126.0, 76.0, 40.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 120 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "bpm",
                            "parameter_mmax": 275.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "bpm",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.numbox"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2540.0, 180.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 74.0, 60.0, 20.0 ],
                    "text": "Beats/bar"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2610.0, 180.0, 30.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 246.0, 76.0, 30.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 4 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "beats",
                            "parameter_mmax": 16.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "beats",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.numbox[1]"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2650.0, 180.0, 220.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 290.0, 76.0, 220.0, 18.0 ],
                    "text": "Used by the LFOs' Sync rates"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2700.0, 180.0, 36.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 74.0, 36.0, 20.0 ],
                    "text": "MIDI"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2740.0, 180.0, 56.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 600.0, 74.0, 56.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "midi_learn",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Learn",
                            "parameter_type": 2
                        }
                    },
                    "text": "Learn",
                    "texton": "Learn",
                    "varname": "live.text[3]"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2800.0, 180.0, 90.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1140.0, 74.0, 110.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "midi_clear",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Clear MIDI",
                            "parameter_type": 2
                        }
                    },
                    "text": "Clear MIDI",
                    "texton": "Clear MIDI",
                    "varname": "live.text[4]"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2900.0, 180.0, 420.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 662.0, 74.0, 470.0, 18.0 ],
                    "text": "MIDI Learn off (0 mapped)"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 78.0, 128.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 104.0, 128.0, 20.0 ],
                    "text": "INPUT"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 100.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 126.0, 20.0, 20.0 ],
                    "text": "A"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 56.0, 100.0, 92.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 56.0, 126.0, 92.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Off", "1/2", "3/4", "File A", "File B" ],
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "srcA_in",
                            "parameter_mmax": 4,
                            "parameter_modmode": 0,
                            "parameter_shortname": "srcA_in",
                            "parameter_type": 2
                        }
                    },
                    "varname": "srcA_in"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 12.0, 126.0, 172.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 148.0, 172.0, 26.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "srcA",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "srcA",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "shownumber": 0,
                    "varname": "srcA"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 166.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 188.0, 20.0, 20.0 ],
                    "text": "B"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 56.0, 166.0, 92.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 56.0, 188.0, 92.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Off", "1/2", "3/4", "File A", "File B" ],
                            "parameter_initial": [ 2 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "srcB_in",
                            "parameter_mmax": 4,
                            "parameter_modmode": 0,
                            "parameter_shortname": "srcB_in",
                            "parameter_type": 2
                        }
                    },
                    "varname": "srcB_in"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 12.0, 192.0, 172.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 210.0, 172.0, 26.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "srcB",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "srcB",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "shownumber": 0,
                    "varname": "srcB"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 188.0, 78.0, 172.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 188.0, 104.0, 172.0, 20.0 ],
                    "text": "ROUTING"
                }
            },
            {
                "box": {
                    "candycane": 7,
                    "candycane2": [ 0.9, 0.55, 0.15, 1.0 ],
                    "candycane3": [ 0.85, 0.75, 0.2, 1.0 ],
                    "candycane4": [ 0.35, 0.75, 0.35, 1.0 ],
                    "candycane5": [ 0.2, 0.7, 0.65, 1.0 ],
                    "candycane6": [ 0.3, 0.55, 0.9, 1.0 ],
                    "candycane7": [ 0.6, 0.4, 0.85, 1.0 ],
                    "candycane8": [ 0.9, 0.35, 0.65, 1.0 ],
                    "dividers": "none",
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-28",
                    "incolormap": [ 1, 2, 1, 2, 3, 4, 5, 6, 7, 8 ],
                    "inlabels": [ "A", "B", "Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5", "Slot 6", "Slot 7", "Slot 8" ],
                    "linecolor": [ 0.85, 0.25, 0.25, 1.0 ],
                    "maxclass": "crosspatch",
                    "numinlets": 1,
                    "numins": 10,
                    "numoutlets": 2,
                    "numouts": 9,
                    "outcolormap": "none",
                    "outlabels": [ "Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5", "Slot 6", "Slot 7", "Slot 8", "Master" ],
                    "outlettype": [ "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 600.0, 100.0, 436.0, 246.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 188.0, 128.0, 436.0, 246.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 700.0, 900.0, 100.0, 22.0 ],
                    "text": "adc~ 1 2 3 4"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "signal", "" ],
                    "patching_rect": [ 700.0, 960.0, 140.0, 22.0 ],
                    "text": "matrix~ 8 4"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 860.0, 930.0, 110.0, 22.0 ],
                    "text": "loadmess ramp 30"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.05, 0.05, 0.06, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.85, 0.25, 0.25, 1.0 ],
                    "id": "obj-32",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 290.0, 1262.8, 180.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 350.0, 1262.8, 180.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 341.0, 45.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 354.0, 45.0, 20.0 ],
                    "text": "FILE A"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 56.0, 342.0, 36.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 56.0, 354.0, 36.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "file_load",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Load",
                            "parameter_type": 2
                        }
                    },
                    "text": "Load",
                    "texton": "Load",
                    "varname": "live.text[5]"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 94.0, 342.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 94.0, 354.0, 44.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "file_loop",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Loop",
                            "parameter_type": 2
                        }
                    },
                    "text": "Loop",
                    "texton": "Loop",
                    "varname": "live.text[6]"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 140.0, 342.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 140.0, 354.0, 44.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "file_clear",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Clear",
                            "parameter_type": 2
                        }
                    },
                    "text": "Clear",
                    "texton": "Clear",
                    "varname": "live.text[7]"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": []
                    },
                    "hidden": 1,
                    "id": "obj-37",
                    "maxclass": "playlist~",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 900.0, 600.0, 88.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 378.0, 1262.8, 88.0 ],
                    "quality": 0,
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    },
                    "varname": "fileplayer"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 950.0, 90.0, 22.0 ],
                    "text": "prepend loop"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.04, 0.08, 0.1, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.25, 0.45, 0.55, 1.0 ],
                    "id": "obj-39",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 620.0, 870.0, 600.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 378.0, 1262.8, 88.0 ],
                    "rounded": 0,
                    "varname": "dropbg"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 28.0,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 620.0, 900.0, 600.0, 38.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 400.0, 1262.8, 38.0 ],
                    "text": "DROP LOOP A HERE  ·  or press Load",
                    "textjustification": 1,
                    "varname": "droplabel"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 620.0, 860.0, 600.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 378.0, 1262.8, 88.0 ],
                    "varname": "dropzone"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 620.0, 1100.0, 80.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 1040.0, 461.0, 22.0 ],
                    "text": "script show dropbg, script show droplabel, script show dropzone, script hide fileplayer"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 1070.0, 451.0, 22.0 ],
                    "text": "script hide dropbg, script hide droplabel, script hide dropzone, script show fileplayer"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 620.0, 1010.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 760.0, 990.0, 40.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 930.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "bang", "bang", "bang" ],
                    "patching_rect": [ 620.0, 960.0, 48.0, 22.0 ],
                    "text": "t l b b b"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 990.0, 100.0, 22.0 ],
                    "text": "prepend append"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 300.0, 950.0, 30.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 300.0, 980.0, 110.0, 22.0 ],
                    "text": "opendialog sound"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 760.0, 960.0, 40.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 100.0, 100.0, 700.0, 830.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "code": "Param fvol(1);\nParam fpan(0.5);\nParam fwid(1);\nParam ftone(20000);\nParam loopstart(0);\nParam loopend(1);\nParam fadein(0.05);\nParam fadeout(0.05);\nHistory sl(0);\nHistory sr(0);\nHistory gl(1);\nHistory gr(1);\nmm = (in1 + in2) * 0.5;\nss = (in1 - in2) * 0.5;\nla = mm + ss * fwid;\nra = mm - ss * fwid;\ntl = fvol * min(1, 2 * (1 - fpan));\ntr = fvol * min(1, 2 * fpan);\ngl = gl + (tl - gl) * 0.002;\ngr = gr + (tr - gr) * 0.002;\ncf = 1 - exp(-twopi * clamp(ftone, 100, 20000) / samplerate);\nsl = sl + cf * (la - sl);\nsr = sr + cf * (ra - sr);\n// loop in/out envelope, from playlist~'s own position signal (in3 = clip.fraction)\npos = in3 - floor(in3);\nlen = max(0.001, loopend - loopstart);\nrel = clamp((pos - loopstart) / len, 0, 1);\nfi = clamp(fadein, 0, 0.5);\nfo = clamp(fadeout, 0, 0.5);\nenvIn = fi > 0 ? clamp(rel / fi, 0, 1) : 1;\nenvOut = fo > 0 ? clamp((1 - rel) / fo, 0, 1) : 1;\nenv = min(envIn, envOut);\nout1 = sl * gl * env;\nout2 = sr * gr * env;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 60.0, 600.0, 700.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 20.0, 40.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 20.0, 40.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 410.0, 20.0, 40.0, 22.0 ],
                                    "text": "in 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 780.0, 40.0, 22.0 ],
                                    "text": "out 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 230.0, 780.0, 40.0, 22.0 ],
                                    "text": "out 2"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 200.0, 1050.0, 200.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "args": [ 9 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-54",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.filectl.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 1200.0, 980.0, 56.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 470.0, 980.0, 56.0 ],
                    "varname": "filectl",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 12,
                    "numoutlets": 12,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 200.0, 1270.0, 370.0, 22.0 ],
                    "text": "route k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 1300.0, 160.0, 22.0 ],
                    "text": "expr 0.25*exp($f1*2.0794)"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 1330.0, 90.0, 22.0 ],
                    "text": "prepend speed"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1300.0, 130.0, 22.0 ],
                    "text": "expr ($f1-0.5)*2400."
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 380.0, 1330.0, 40.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1390.0, 140.0, 22.0 ],
                    "text": "prepend pitchshiftcent"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 1360.0, 100.0, 22.0 ],
                    "text": "expr abs($f1)>5"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 440.0, 1390.0, 50.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 1420.0, 120.0, 22.0 ],
                    "text": "prepend timestretch"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 1300.0, 60.0, 22.0 ],
                    "text": "pak f f"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 1330.0, 110.0, 22.0 ],
                    "text": "expr min($f1\\,0.98)"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 1360.0, 330.0, 22.0 ],
                    "text": "expr min($f1\\,0.98) + max(0.02\\, $f2*(1.-min($f1\\,0.98)))"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 560.0, 1330.0, 40.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 560.0, 1390.0, 70.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 640.0, 1390.0, 40.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 1300.0, 70.0, 22.0 ],
                    "text": "pak f f f"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 1330.0, 280.0, 22.0 ],
                    "text": "expr $f1+0.02+$f3*($f2-$f1-0.02)"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 1420.0, 60.0, 22.0 ],
                    "text": "pack f f"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 1450.0, 110.0, 22.0 ],
                    "text": "prepend selection"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 1480.0, 110.0, 22.0 ],
                    "text": "prepend loopstart"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 1510.0, 110.0, 22.0 ],
                    "text": "prepend loopend"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 560.0, 1480.0, 60.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 560.0, 1510.0, 40.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 1540.0, 130.0, 22.0 ],
                    "text": "sprintf set End %d pct"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 900.0, 1300.0, 50.0, 22.0 ],
                    "text": "* 1.25"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0, 1330.0, 80.0, 22.0 ],
                    "text": "prepend fvol"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1000.0, 1300.0, 40.0, 22.0 ],
                    "text": "* 2."
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1000.0, 1330.0, 80.0, 22.0 ],
                    "text": "prepend fwid"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1300.0, 150.0, 22.0 ],
                    "text": "expr 100.*exp($f1*5.298)"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1330.0, 83.0, 22.0 ],
                    "text": "prepend ftone"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1260.0, 1330.0, 80.0, 22.0 ],
                    "text": "prepend fpan"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1360.0, 1330.0, 90.0, 22.0 ],
                    "text": "prepend fadein"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1460.0, 1330.0, 100.0, 22.0 ],
                    "text": "prepend fadeout"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.05, 0.05, 0.06, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.9, 0.55, 0.15, 1.0 ],
                    "id": "obj-89",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 2474.0, 1262.8, 180.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 534.0, 1262.8, 180.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 2341.0, 45.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 538.0, 45.0, 20.0 ],
                    "text": "FILE B"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 56.0, 2342.0, 36.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 56.0, 538.0, 36.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "file_load_b",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Load",
                            "parameter_type": 2
                        }
                    },
                    "text": "Load",
                    "texton": "Load",
                    "varname": "live.text[8]"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 94.0, 2342.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 94.0, 538.0, 44.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "file_loop_b",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Loop",
                            "parameter_type": 2
                        }
                    },
                    "text": "Loop",
                    "texton": "Loop",
                    "varname": "live.text[9]"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 140.0, 2342.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 140.0, 538.0, 44.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "file_clear_b",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Clear",
                            "parameter_type": 2
                        }
                    },
                    "text": "Clear",
                    "texton": "Clear",
                    "varname": "live.text[10]"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": []
                    },
                    "hidden": 1,
                    "id": "obj-94",
                    "maxclass": "playlist~",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 2900.0, 600.0, 88.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 562.0, 1262.8, 88.0 ],
                    "quality": 0,
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    },
                    "varname": "fileplayerB"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 2950.0, 90.0, 22.0 ],
                    "text": "prepend loop"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.04, 0.08, 0.1, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.25, 0.45, 0.55, 1.0 ],
                    "id": "obj-96",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 620.0, 2870.0, 600.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 562.0, 1262.8, 88.0 ],
                    "rounded": 0,
                    "varname": "dropbgB"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 28.0,
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 620.0, 2900.0, 600.0, 38.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 584.0, 1262.8, 38.0 ],
                    "text": "DROP LOOP B HERE  ·  or press Load",
                    "textjustification": 1,
                    "varname": "droplabelB"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 620.0, 2860.0, 600.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 562.0, 1262.8, 88.0 ],
                    "varname": "dropzoneB"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 620.0, 3100.0, 80.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 3040.0, 493.0, 22.0 ],
                    "text": "script show dropbgB, script show droplabelB, script show dropzoneB, script hide fileplayerB"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 3070.0, 483.0, 22.0 ],
                    "text": "script hide dropbgB, script hide droplabelB, script hide dropzoneB, script show fileplayerB"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 620.0, 3010.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 760.0, 2990.0, 40.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 2930.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "bang", "bang", "bang" ],
                    "patching_rect": [ 620.0, 2960.0, 48.0, 22.0 ],
                    "text": "t l b b b"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 2990.0, 100.0, 22.0 ],
                    "text": "prepend append"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 300.0, 2950.0, 30.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 300.0, 2980.0, 110.0, 22.0 ],
                    "text": "opendialog sound"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 760.0, 2960.0, 40.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 100.0, 100.0, 700.0, 830.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "code": "Param fvol(1);\nParam fpan(0.5);\nParam fwid(1);\nParam ftone(20000);\nParam loopstart(0);\nParam loopend(1);\nParam fadein(0.05);\nParam fadeout(0.05);\nHistory sl(0);\nHistory sr(0);\nHistory gl(1);\nHistory gr(1);\nmm = (in1 + in2) * 0.5;\nss = (in1 - in2) * 0.5;\nla = mm + ss * fwid;\nra = mm - ss * fwid;\ntl = fvol * min(1, 2 * (1 - fpan));\ntr = fvol * min(1, 2 * fpan);\ngl = gl + (tl - gl) * 0.002;\ngr = gr + (tr - gr) * 0.002;\ncf = 1 - exp(-twopi * clamp(ftone, 100, 20000) / samplerate);\nsl = sl + cf * (la - sl);\nsr = sr + cf * (ra - sr);\n// loop in/out envelope, from playlist~'s own position signal (in3 = clip.fraction)\npos = in3 - floor(in3);\nlen = max(0.001, loopend - loopstart);\nrel = clamp((pos - loopstart) / len, 0, 1);\nfi = clamp(fadein, 0, 0.5);\nfo = clamp(fadeout, 0, 0.5);\nenvIn = fi > 0 ? clamp(rel / fi, 0, 1) : 1;\nenvOut = fo > 0 ? clamp((1 - rel) / fo, 0, 1) : 1;\nenv = min(envIn, envOut);\nout1 = sl * gl * env;\nout2 = sr * gr * env;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 60.0, 600.0, 700.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 20.0, 40.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 20.0, 40.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 410.0, 20.0, 40.0, 22.0 ],
                                    "text": "in 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 780.0, 40.0, 22.0 ],
                                    "text": "out 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 230.0, 780.0, 40.0, 22.0 ],
                                    "text": "out 2"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 200.0, 3050.0, 200.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "args": [ 10 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-111",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.filectl.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 3200.0, 980.0, 56.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 654.0, 980.0, 56.0 ],
                    "varname": "filectlB",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 12,
                    "numoutlets": 12,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 200.0, 3270.0, 370.0, 22.0 ],
                    "text": "route k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 3300.0, 160.0, 22.0 ],
                    "text": "expr 0.25*exp($f1*2.0794)"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 3330.0, 90.0, 22.0 ],
                    "text": "prepend speed"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 3300.0, 130.0, 22.0 ],
                    "text": "expr ($f1-0.5)*2400."
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 380.0, 3330.0, 40.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 3390.0, 140.0, 22.0 ],
                    "text": "prepend pitchshiftcent"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 3360.0, 100.0, 22.0 ],
                    "text": "expr abs($f1)>5"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 440.0, 3390.0, 50.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 3420.0, 120.0, 22.0 ],
                    "text": "prepend timestretch"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 3300.0, 60.0, 22.0 ],
                    "text": "pak f f"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 3330.0, 110.0, 22.0 ],
                    "text": "expr min($f1\\,0.98)"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 3360.0, 330.0, 22.0 ],
                    "text": "expr min($f1\\,0.98) + max(0.02\\, $f2*(1.-min($f1\\,0.98)))"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 560.0, 3330.0, 40.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 560.0, 3390.0, 70.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 640.0, 3390.0, 40.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 3300.0, 70.0, 22.0 ],
                    "text": "pak f f f"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 3330.0, 280.0, 22.0 ],
                    "text": "expr $f1+0.02+$f3*($f2-$f1-0.02)"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 3420.0, 60.0, 22.0 ],
                    "text": "pack f f"
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 3450.0, 110.0, 22.0 ],
                    "text": "prepend selection"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 3480.0, 110.0, 22.0 ],
                    "text": "prepend loopstart"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 3510.0, 110.0, 22.0 ],
                    "text": "prepend loopend"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 560.0, 3480.0, 60.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 560.0, 3510.0, 40.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 3540.0, 130.0, 22.0 ],
                    "text": "sprintf set End %d pct"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 900.0, 3300.0, 50.0, 22.0 ],
                    "text": "* 1.25"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0, 3330.0, 80.0, 22.0 ],
                    "text": "prepend fvol"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1000.0, 3300.0, 40.0, 22.0 ],
                    "text": "* 2."
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1000.0, 3330.0, 80.0, 22.0 ],
                    "text": "prepend fwid"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 3300.0, 150.0, 22.0 ],
                    "text": "expr 100.*exp($f1*5.298)"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 3330.0, 83.0, 22.0 ],
                    "text": "prepend ftone"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1260.0, 3330.0, 80.0, 22.0 ],
                    "text": "prepend fpan"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1360.0, 3330.0, 90.0, 22.0 ],
                    "text": "prepend fadein"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1460.0, 3330.0, 100.0, 22.0 ],
                    "text": "prepend fadeout"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 700.0, 620.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 10.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 10.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 560.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 6,
                                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 20.0, 50.0, 130.0, 22.0 ],
                                    "text": "sel 0 1 2 3 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 90.0, 280.0, 40.0 ],
                                    "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 140.0, 280.0, 40.0 ],
                                    "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 0 0 1., 1 1 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 190.0, 280.0, 40.0 ],
                                    "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 2 0 1., 3 1 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 240.0, 280.0, 40.0 ],
                                    "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 4 0 1., 5 1 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 290.0, 280.0, 40.0 ],
                                    "text": "0 0 0., 1 0 0., 2 0 0., 3 0 0., 4 0 0., 5 0 0., 6 0 0., 7 0 0., 0 1 0., 1 1 0., 2 1 0., 3 1 0., 4 1 0., 5 1 0., 6 1 0., 7 1 0., 6 0 1., 7 1 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 6,
                                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 320.0, 50.0, 130.0, 22.0 ],
                                    "text": "sel 0 1 2 3 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 90.0, 280.0, 40.0 ],
                                    "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 140.0, 280.0, 40.0 ],
                                    "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 0 2 1., 1 3 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 190.0, 280.0, 40.0 ],
                                    "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 2 2 1., 3 3 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 240.0, 280.0, 40.0 ],
                                    "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 4 2 1., 5 3 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 290.0, 280.0, 40.0 ],
                                    "text": "0 2 0., 1 2 0., 2 2 0., 3 2 0., 4 2 0., 5 2 0., 6 2 0., 7 2 0., 0 3 0., 1 3 0., 2 3 0., 3 3 0., 4 3 0., 5 3 0., 6 3 0., 7 3 0., 6 2 1., 7 3 1."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-10", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-10", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-10", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-4", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-4", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-4", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 700.0, 930.0, 110.0, 22.0 ],
                    "text": "p input-picker"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                    "patching_rect": [ 600.0, 1000.0, 500.0, 22.0 ],
                    "text": "matrix~ 10 9"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                    "patching_rect": [ 600.0, 1100.0, 500.0, 22.0 ],
                    "text": "matrix~ 10 9"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1120.0, 970.0, 110.0, 22.0 ],
                    "text": "loadmess ramp 30"
                }
            },
            {
                "box": {
                    "args": [ 1 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-150",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 20.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 718.0, 154.0, 294.8 ],
                    "varname": "slot1",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 2 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-151",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 190.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 168.4, 718.0, 154.0, 294.8 ],
                    "varname": "slot2",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 3 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-152",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 360.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 326.8, 718.0, 154.0, 294.8 ],
                    "varname": "slot3",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 4 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-153",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 530.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 485.20000000000005, 718.0, 154.0, 294.8 ],
                    "varname": "slot4",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 5 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-154",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 700.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 643.6, 718.0, 154.0, 294.8 ],
                    "varname": "slot5",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 6 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-155",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 870.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 802.0, 718.0, 154.0, 294.8 ],
                    "varname": "slot6",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 7 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-156",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1040.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 960.4000000000001, 718.0, 154.0, 294.8 ],
                    "varname": "slot7",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 8 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-157",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.slot.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1210.0, 1150.0, 154.0, 295.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1118.8, 718.0, 154.0, 294.8 ],
                    "varname": "slot8",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "domain": [ 20.0, 20000.0 ],
                    "id": "obj-158",
                    "logfreq": 1,
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1500.0, 900.0, 172.0, 104.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 244.0, 172.0, 104.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1500.0, 870.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "list", "list" ],
                    "patching_rect": [ 1300.0, 700.0, 90.0, 22.0 ],
                    "text": "omx.peaklim~"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "list", "list" ],
                    "patching_rect": [ 1400.0, 700.0, 90.0, 22.0 ],
                    "text": "omx.peaklim~"
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 152.0, 100.0, 32.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 152.0, 126.0, 32.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "monA",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mon",
                            "parameter_type": 2
                        }
                    },
                    "text": "Mon",
                    "texton": "Mon",
                    "varname": "live.text[11]"
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 152.0, 166.0, 32.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 152.0, 188.0, 32.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "monB",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mon",
                            "parameter_type": 2
                        }
                    },
                    "text": "Mon",
                    "texton": "Mon",
                    "varname": "live.text[12]"
                }
            },
            {
                "box": {
                    "id": "obj-164",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1300.0, 660.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1400.0, 660.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-166",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1300.0, 680.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-167",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1400.0, 680.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-168",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1500.0, 600.0, 60.0, 22.0 ],
                    "text": "pack f 20"
                }
            },
            {
                "box": {
                    "id": "obj-169",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1500.0, 630.0, 40.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-170",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1500.0, 660.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-171",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1550.0, 660.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-172",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1700.0, 600.0, 60.0, 22.0 ],
                    "text": "pack f 20"
                }
            },
            {
                "box": {
                    "id": "obj-173",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1700.0, 630.0, 40.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1700.0, 660.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1750.0, 660.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 9,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                    "patching_rect": [ 1300.0, 900.0, 120.0, 22.0 ],
                    "text": "matrix~ 2 8"
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1430.0, 870.0, 110.0, 22.0 ],
                    "text": "loadmess ramp 20"
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 0,
                    "patching_rect": [ 1300.0, 940.0, 160.0, 22.0 ],
                    "text": "dac~ 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-179",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 700.0, 620.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 10.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 560.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "bang", "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 20.0, 50.0, 100.0, 22.0 ],
                                    "text": "sel 0 1 2 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 90.0, 600.0, 50.0 ],
                                    "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 0 1., 1 1 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 150.0, 600.0, 50.0 ],
                                    "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 2 1., 1 3 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 210.0, 600.0, 50.0 ],
                                    "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 4 1., 1 5 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 270.0, 600.0, 50.0 ],
                                    "text": "0 0 0., 0 1 0., 0 2 0., 0 3 0., 0 4 0., 0 5 0., 0 6 0., 0 7 0., 1 0 0., 1 1 0., 1 2 0., 1 3 0., 1 4 0., 1 5 0., 1 6 0., 1 7 0., 0 6 1., 1 7 1."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1300.0, 870.0, 110.0, 22.0 ],
                    "text": "p output-picker"
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1500.0, 1000.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-181",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1500.0, 1030.0, 61.0, 22.0 ],
                    "text": "delay 300"
                }
            },
            {
                "box": {
                    "id": "obj-182",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1500.0, 1060.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 848.0, 12.0, 40.0, 20.0 ],
                    "text": "Out"
                }
            },
            {
                "box": {
                    "id": "obj-183",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1500.0, 1090.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-184",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1560.0, 1090.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-185",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1500.0, 1120.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-186",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1560.0, 1120.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-187",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1500.0, 1150.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-188",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1560.0, 1150.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-189",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1500.0, 1180.0, 240.0, 8.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 910.0, 14.0, 240.0, 8.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-190",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1500.0, 1200.0, 240.0, 8.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 910.0, 24.0, 240.0, 8.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-191",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 700.0, 620.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 10.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 560.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 20.0, 50.0, 30.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 6,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 90.0, 600.0, 200.0 ],
                                    "text": "list 2 0 0, list 2 1 0, list 2 2 0, list 2 3 0, list 2 4 0, list 2 5 0, list 2 6 0, list 2 7 0, list 3 0 0, list 3 1 0, list 3 2 0, list 3 3 0, list 3 4 0, list 3 5 0, list 3 6 0, list 3 7 0, list 4 0 0, list 4 1 0, list 4 2 0, list 4 3 0, list 4 4 0, list 4 5 0, list 4 6 0, list 4 7 0, list 5 0 0, list 5 1 0, list 5 2 0, list 5 3 0, list 5 4 0, list 5 5 0, list 5 6 0, list 5 7 0, list 6 0 0, list 6 1 0, list 6 2 0, list 6 3 0, list 6 4 0, list 6 5 0, list 6 6 0, list 6 7 0, list 7 0 0, list 7 1 0, list 7 2 0, list 7 3 0, list 7 4 0, list 7 5 0, list 7 6 0, list 7 7 0, list 8 0 0, list 8 1 0, list 8 2 0, list 8 3 0, list 8 4 0, list 8 5 0, list 8 6 0, list 8 7 0, list 9 0 0, list 9 1 0, list 9 2 0, list 9 3 0, list 9 4 0, list 9 5 0, list 9 6 0, list 9 7 0"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 100.0, 700.0, 70.0, 22.0 ],
                    "text": "p panic"
                }
            },
            {
                "box": {
                    "id": "obj-192",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 190.0, 700.0, 30.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-193",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 730.0, 40.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 1,
                    "id": "obj-194",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1600.0, 20.0, 644.8, 270.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 628.0, 128.0, 644.8, 220.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "id": "obj-195",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 650.0, 70.0, 22.0 ],
                    "text": "r fx.focus"
                }
            },
            {
                "box": {
                    "id": "obj-196",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 9,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
                    "patching_rect": [ 1600.0, 680.0, 300.0, 22.0 ],
                    "text": "select 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-197",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 9,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
                    "patching_rect": [ 1950.0, 680.0, 300.0, 22.0 ],
                    "text": "select 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-198",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 720.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.85 0.25 0.25 1."
                }
            },
            {
                "box": {
                    "id": "obj-199",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 720.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.119 0.035 0.035 1."
                }
            },
            {
                "box": {
                    "id": "obj-200",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 746.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.9 0.55 0.15 1."
                }
            },
            {
                "box": {
                    "id": "obj-201",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 746.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.126 0.077 0.021 1."
                }
            },
            {
                "box": {
                    "id": "obj-202",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 772.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.85 0.75 0.2 1."
                }
            },
            {
                "box": {
                    "id": "obj-203",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 772.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.119 0.105 0.028 1."
                }
            },
            {
                "box": {
                    "id": "obj-204",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 798.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.35 0.75 0.35 1."
                }
            },
            {
                "box": {
                    "id": "obj-205",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 798.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.049 0.105 0.049 1."
                }
            },
            {
                "box": {
                    "id": "obj-206",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 824.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.2 0.7 0.65 1."
                }
            },
            {
                "box": {
                    "id": "obj-207",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 824.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.028 0.098 0.091 1."
                }
            },
            {
                "box": {
                    "id": "obj-208",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 850.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.3 0.55 0.9 1."
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 850.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.042 0.077 0.126 1."
                }
            },
            {
                "box": {
                    "id": "obj-210",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 876.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.6 0.4 0.85 1."
                }
            },
            {
                "box": {
                    "id": "obj-211",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 876.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.084 0.056 0.119 1."
                }
            },
            {
                "box": {
                    "id": "obj-212",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 902.0, 220.0, 22.0 ],
                    "text": "bordercolor 0.9 0.35 0.65 1."
                }
            },
            {
                "box": {
                    "id": "obj-213",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1950.0, 902.0, 220.0, 22.0 ],
                    "text": "bgcolor 0.126 0.049 0.091 1."
                }
            },
            {
                "box": {
                    "id": "obj-214",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1600.0, 0.0, 348.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 630.0, 104.0, 400.0, 20.0 ],
                    "text": "FOCUSED · click Focus on a strip"
                }
            },
            {
                "box": {
                    "id": "obj-215",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 320.0, 90.0, 22.0 ],
                    "text": "r fx.panel.in"
                }
            },
            {
                "box": {
                    "id": "obj-216",
                    "maxclass": "newobj",
                    "numinlets": 19,
                    "numoutlets": 19,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 1600.0, 350.0, 800.0, 22.0 ],
                    "text": "route title labels k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16"
                }
            },
            {
                "box": {
                    "id": "obj-217",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 380.0, 150.0, 22.0 ],
                    "text": "prepend set FOCUSED ·"
                }
            },
            {
                "box": {
                    "id": "obj-218",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 16,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 1600.0, 410.0, 500.0, 22.0 ],
                    "text": "unpack s s s s s s s s s s s s s s s s"
                }
            },
            {
                "box": {
                    "id": "obj-219",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1600.0, 560.0, 100.0, 22.0 ],
                    "text": "s fx.panel.out"
                }
            },
            {
                "box": {
                    "id": "obj-220",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1600.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 644.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-221",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1600.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 654.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k1",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k1",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-222",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-223",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-224",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1600.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 1"
                }
            },
            {
                "box": {
                    "id": "obj-225",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1660.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 721.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-226",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1660.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 731.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k2",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k2",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "obj-227",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1660.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-228",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1660.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-229",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1660.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 2"
                }
            },
            {
                "box": {
                    "id": "obj-230",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1720.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 798.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-231",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1720.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 808.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k3",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k3",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "obj-232",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1720.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-233",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1720.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-234",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1720.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 3"
                }
            },
            {
                "box": {
                    "id": "obj-235",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1780.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 875.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-236",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1780.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 885.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k4",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k4",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "id": "obj-237",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1780.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-238",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1780.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-239",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1780.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 4"
                }
            },
            {
                "box": {
                    "id": "obj-240",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1840.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 952.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-241",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1840.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 962.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k5",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k5",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[4]"
                }
            },
            {
                "box": {
                    "id": "obj-242",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1840.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-243",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1840.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-244",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1840.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 5"
                }
            },
            {
                "box": {
                    "id": "obj-245",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1900.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1029.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-246",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1900.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1039.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k6",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k6",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[5]"
                }
            },
            {
                "box": {
                    "id": "obj-247",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1900.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-248",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1900.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-249",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1900.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 6"
                }
            },
            {
                "box": {
                    "id": "obj-250",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1960.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1106.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-251",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1960.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1116.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k7",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k7",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[6]"
                }
            },
            {
                "box": {
                    "id": "obj-252",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1960.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-253",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1960.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-254",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1960.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 7"
                }
            },
            {
                "box": {
                    "id": "obj-255",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2020.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1183.0, 178.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-256",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2020.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1193.0, 194.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k8",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k8",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[7]"
                }
            },
            {
                "box": {
                    "id": "obj-257",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2020.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-258",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2020.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-259",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2020.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 8"
                }
            },
            {
                "box": {
                    "id": "obj-260",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2080.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 644.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-261",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2080.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 654.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k9",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k9",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[8]"
                }
            },
            {
                "box": {
                    "id": "obj-262",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2080.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-263",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2080.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-264",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2080.0, 520.0, 63.0, 22.0 ],
                    "text": "prepend 9"
                }
            },
            {
                "box": {
                    "id": "obj-265",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2140.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 721.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-266",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2140.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 731.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k10",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k10",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[9]"
                }
            },
            {
                "box": {
                    "id": "obj-267",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2140.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-268",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2140.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-269",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2140.0, 520.0, 69.0, 22.0 ],
                    "text": "prepend 10"
                }
            },
            {
                "box": {
                    "id": "obj-270",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2200.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 798.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-271",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2200.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 808.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k11",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k11",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[10]"
                }
            },
            {
                "box": {
                    "id": "obj-272",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2200.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-273",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2200.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-274",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2200.0, 520.0, 68.0, 22.0 ],
                    "text": "prepend 11"
                }
            },
            {
                "box": {
                    "id": "obj-275",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2260.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 875.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-276",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2260.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 885.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k12",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k12",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[11]"
                }
            },
            {
                "box": {
                    "id": "obj-277",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2260.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-278",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2260.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-279",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2260.0, 520.0, 69.0, 22.0 ],
                    "text": "prepend 12"
                }
            },
            {
                "box": {
                    "id": "obj-280",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2320.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 952.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-281",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2320.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 962.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k13",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k13",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[12]"
                }
            },
            {
                "box": {
                    "id": "obj-282",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2320.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-283",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2320.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-284",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2320.0, 520.0, 69.0, 22.0 ],
                    "text": "prepend 13"
                }
            },
            {
                "box": {
                    "id": "obj-285",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2380.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1029.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-286",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2380.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1039.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k14",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k14",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[13]"
                }
            },
            {
                "box": {
                    "id": "obj-287",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2380.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-288",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2380.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-289",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2380.0, 520.0, 69.0, 22.0 ],
                    "text": "prepend 14"
                }
            },
            {
                "box": {
                    "id": "obj-290",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2440.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1106.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-291",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2440.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1116.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k15",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k15",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[14]"
                }
            },
            {
                "box": {
                    "id": "obj-292",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2440.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-293",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2440.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-294",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2440.0, 520.0, 69.0, 22.0 ],
                    "text": "prepend 15"
                }
            },
            {
                "box": {
                    "id": "obj-295",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2500.0, 450.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1183.0, 258.0, 64.0, 20.0 ],
                    "text": "–",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-296",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2500.0, 480.0, 44.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1193.0, 274.0, 44.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panel_k16",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "k16",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "varname": "live.dial[15]"
                }
            },
            {
                "box": {
                    "id": "obj-297",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2500.0, 440.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-298",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2500.0, 530.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-299",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2500.0, 520.0, 69.0, 22.0 ],
                    "text": "prepend 16"
                }
            },
            {
                "box": {
                    "id": "obj-300",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1600.0, 600.0, 300.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 640.0, 353.0, 400.0, 20.0 ],
                    "text": "Knobs 1–8 mirror the strip · 9–16 live only here"
                }
            },
            {
                "box": {
                    "filename": "fxmidimap.js",
                    "id": "obj-301",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 5000.0, 100.0, 100.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "parameter_enable": 0
                    },
                    "text": "v8 fxmidimap.js",
                    "textfile": {
                        "filename": "fxmidimap.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-302",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5000.0, 140.0, 70.0, 22.0 ],
                    "text": "s fx.midi"
                }
            },
            {
                "box": {
                    "id": "obj-303",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 5000.0, 180.0, 120.0, 22.0 ],
                    "text": "ctlin"
                }
            },
            {
                "box": {
                    "id": "obj-304",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5000.0, 210.0, 80.0, 22.0 ],
                    "text": "pack 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-305",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5000.0, 240.0, 90.0, 22.0 ],
                    "text": "prepend cc"
                }
            },
            {
                "box": {
                    "id": "obj-306",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5150.0, 180.0, 90.0, 22.0 ],
                    "text": "prepend learn"
                }
            },
            {
                "box": {
                    "id": "obj-307",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5150.0, 220.0, 70.0, 22.0 ],
                    "text": "r fx.touch"
                }
            },
            {
                "box": {
                    "id": "obj-308",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5150.0, 250.0, 90.0, 22.0 ],
                    "text": "prepend touch"
                }
            },
            {
                "box": {
                    "id": "obj-309",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5150.0, 290.0, 70.0, 22.0 ],
                    "text": "r fx.labels"
                }
            },
            {
                "box": {
                    "id": "obj-310",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5150.0, 320.0, 90.0, 22.0 ],
                    "text": "prepend labels"
                }
            },
            {
                "box": {
                    "id": "obj-311",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 5000.0, 400.0, 160.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll fxmidimap_data"
                }
            },
            {
                "box": {
                    "id": "obj-312",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5000.0, 370.0, 90.0, 22.0 ],
                    "text": "prepend list"
                }
            },
            {
                "box": {
                    "id": "obj-313",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5150.0, 430.0, 110.0, 22.0 ],
                    "text": "prepend dumpaddr"
                }
            },
            {
                "box": {
                    "id": "obj-314",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5000.0, 430.0, 110.0, 22.0 ],
                    "text": "prepend dumpdata"
                }
            },
            {
                "box": {
                    "id": "obj-315",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 5150.0, 100.0, 40.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-316",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5150.0, 130.0, 70.0, 22.0 ],
                    "text": "clearmap"
                }
            },
            {
                "box": {
                    "id": "obj-317",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5220.0, 130.0, 50.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-318",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 5000.0, 460.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-319",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 5000.0, 490.0, 70.0, 22.0 ],
                    "text": "delay 600"
                }
            },
            {
                "box": {
                    "id": "obj-320",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5000.0, 520.0, 150.0, 22.0 ],
                    "text": "read fxmidimap.txt"
                }
            },
            {
                "box": {
                    "id": "obj-321",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5000.0, 550.0, 50.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 1,
                    "id": "obj-322",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2400.0, 1020.0, 1262.8, 390.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 1020.0, 1262.8, 390.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "id": "obj-323",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2400.0, 1020.0, 18.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 1022.0, 18.0, 21.0 ],
                    "text": "▾"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-324",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2420.0, 1020.0, 200.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 1022.0, 200.0, 20.0 ],
                    "text": "MODULATION"
                }
            },
            {
                "box": {
                    "id": "obj-325",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2620.0, 1020.0, 800.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.0, 1022.0, 900.0, 20.0 ],
                    "text": "16 LFOs · each can drive 3 knobs · press Learn, then move any knob on a strip or in Focus"
                }
            },
            {
                "box": {
                    "filename": "fxlfo.js",
                    "id": "obj-326",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 4400.0, 100.0, 90.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "parameter_enable": 0
                    },
                    "text": "v8 fxlfo.js",
                    "textfile": {
                        "filename": "fxlfo.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-327",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4400.0, 40.0, 60.0, 22.0 ],
                    "text": "r fx.lfo"
                }
            },
            {
                "box": {
                    "id": "obj-328",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4500.0, 40.0, 70.0, 22.0 ],
                    "text": "r fx.touch"
                }
            },
            {
                "box": {
                    "id": "obj-329",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4500.0, 70.0, 90.0, 22.0 ],
                    "text": "prepend touch"
                }
            },
            {
                "box": {
                    "id": "obj-330",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 4600.0, 40.0, 113.0, 22.0 ],
                    "text": "metro 20 @active 1"
                }
            },
            {
                "box": {
                    "id": "obj-331",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4700.0, 70.0, 100.0, 22.0 ],
                    "text": "prepend setbpm"
                }
            },
            {
                "box": {
                    "id": "obj-332",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4800.0, 70.0, 100.0, 22.0 ],
                    "text": "prepend setbpb"
                }
            },
            {
                "box": {
                    "id": "obj-333",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4400.0, 140.0, 60.0, 22.0 ],
                    "text": "s fx.mod"
                }
            },
            {
                "box": {
                    "id": "obj-334",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4900.0, 40.0, 70.0, 22.0 ],
                    "text": "r fx.labels"
                }
            },
            {
                "box": {
                    "id": "obj-335",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4900.0, 70.0, 90.0, 22.0 ],
                    "text": "prepend labels"
                }
            },
            {
                "box": {
                    "id": "obj-336",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4500.0, 140.0, 80.0, 22.0 ],
                    "text": "s fx.lfo.set"
                }
            },
            {
                "box": {
                    "id": "obj-337",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4600.0, 140.0, 80.0, 22.0 ],
                    "text": "s fx.lfo.val"
                }
            },
            {
                "box": {
                    "id": "obj-338",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 4700.0, 140.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-339",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 4700.0, 170.0, 70.0, 22.0 ],
                    "text": "delay 1500"
                }
            },
            {
                "box": {
                    "id": "obj-340",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4700.0, 200.0, 90.0, 22.0 ],
                    "text": "s fx.lfo.dump"
                }
            },
            {
                "box": {
                    "id": "obj-341",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 4800.0, 170.0, 70.0, 22.0 ],
                    "text": "delay 1200"
                }
            },
            {
                "box": {
                    "id": "obj-342",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4800.0, 200.0, 90.0, 22.0 ],
                    "text": "s fx.labels.ask"
                }
            },
            {
                "box": {
                    "args": [ 1 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-343",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 4400.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo1",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 2 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-344",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 4560.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 168.4, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo2",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 3 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-345",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 4720.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 326.8, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo3",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 4 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-346",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 4880.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 485.20000000000005, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo4",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 5 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-347",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 5040.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 643.6, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo5",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 6 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-348",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 5200.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 802.0, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo6",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 7 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-349",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 5360.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 960.4000000000001, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo7",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 8 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-350",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 5520.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1118.8, 1046.0, 154.0, 178.0 ],
                    "varname": "lfo8",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 9 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-351",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 5680.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo9",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 10 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-352",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 5840.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 168.4, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo10",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 11 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-353",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 6000.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 326.8, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo11",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 12 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-354",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 6160.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 485.20000000000005, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo12",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 13 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-355",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 6320.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 643.6, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo13",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 14 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-356",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 6480.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 802.0, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo14",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 15 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-357",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 6640.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 960.4000000000001, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo15",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 16 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-358",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "fx.lfo.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 6800.0, 300.0, 154.0, 178.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1118.8, 1228.0, 154.0, 178.0 ],
                    "varname": "lfo16",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 1,
                    "id": "obj-359",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2400.0, 1416.0, 1262.8, 170.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 1416.0, 1262.8, 170.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "id": "obj-360",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2400.0, 1416.0, 18.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 1418.0, 18.0, 21.0 ],
                    "text": "▾"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-361",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2420.0, 1416.0, 200.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 1418.0, 200.0, 20.0 ],
                    "text": "RECORD"
                }
            },
            {
                "box": {
                    "id": "obj-362",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2620.0, 1416.0, 800.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.0, 1418.0, 900.0, 20.0 ],
                    "text": "One WAV per armed source · every take gets its own dated folder · nothing is overwritten"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-363",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3600.0, 0.0, 200.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 1444.0, 200.0, 24.0 ],
                    "text": "Output recording"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-364",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3600.0, 30.0, 90.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 230.0, 1444.0, 90.0, 24.0 ],
                    "text": "00:00.0"
                }
            },
            {
                "box": {
                    "id": "obj-365",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3700.0, 30.0, 400.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 330.0, 1448.0, 560.0, 20.0 ],
                    "text": "Ready to record"
                }
            },
            {
                "box": {
                    "id": "obj-366",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 3600.0, 60.0, 140.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 1476.0, 140.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "rec_go",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "● Record",
                            "parameter_type": 2
                        }
                    },
                    "text": "● Record",
                    "texton": "● Record",
                    "varname": "live.text[13]"
                }
            },
            {
                "box": {
                    "id": "obj-367",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 3750.0, 60.0, 90.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 166.0, 1482.0, 90.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "rec_open",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Open folder",
                            "parameter_type": 2
                        }
                    },
                    "text": "Open folder",
                    "texton": "Open folder",
                    "varname": "live.text[14]"
                }
            },
            {
                "box": {
                    "id": "obj-368",
                    "items": [ "24-bit WAV", ",", "32-bit float WAV" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3850.0, 60.0, 120.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 262.0, 1481.0, 130.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-369",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3600.0, 100.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 1516.0, 40.0, 20.0 ],
                    "text": "Arm"
                }
            },
            {
                "box": {
                    "id": "obj-370",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 400.0, 80.0, 22.0 ],
                    "text": "r fx.rec.go"
                }
            },
            {
                "box": {
                    "id": "obj-371",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3700.0, 400.0, 80.0, 22.0 ],
                    "text": "r fx.rec.stop"
                }
            },
            {
                "box": {
                    "id": "obj-372",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 3600.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm0",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Master",
                            "parameter_type": 2
                        }
                    },
                    "text": "Master",
                    "texton": "Master",
                    "varname": "live.text[15]"
                }
            },
            {
                "box": {
                    "id": "obj-373",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 3600.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-374",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 3600.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-375",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 3600.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-376",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 3600.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-377",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-378",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3640.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-379",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 3710.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 168.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm1",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "A",
                            "parameter_type": 2
                        }
                    },
                    "texton": "A",
                    "varname": "live.text[16]"
                }
            },
            {
                "box": {
                    "id": "obj-380",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 3710.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 168.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-381",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 3710.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-382",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 3710.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-383",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 3710.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-384",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3710.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-385",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3750.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-386",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 3820.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 276.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm2",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "B",
                            "parameter_type": 2
                        }
                    },
                    "text": "B",
                    "varname": "live.text[17]"
                }
            },
            {
                "box": {
                    "id": "obj-387",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 3820.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 276.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-388",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 3820.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-389",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 3820.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-390",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 3820.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-391",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3820.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-392",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3860.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-393",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 3930.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 384.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm3",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 1",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 1",
                    "texton": "Slot 1",
                    "varname": "live.text[18]"
                }
            },
            {
                "box": {
                    "id": "obj-394",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 3930.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 384.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-395",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 3930.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-396",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 3930.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-397",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 3930.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-398",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3930.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-399",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3970.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-400",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4040.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 492.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm4",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 2",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 2",
                    "texton": "Slot 2",
                    "varname": "live.text[19]"
                }
            },
            {
                "box": {
                    "id": "obj-401",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 4040.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 492.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-402",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 4040.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-403",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4040.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-404",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4040.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-405",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4040.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-406",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4080.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-407",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4150.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 600.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm5",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 3",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 3",
                    "texton": "Slot 3",
                    "varname": "live.text[20]"
                }
            },
            {
                "box": {
                    "id": "obj-408",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 4150.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 600.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-409",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 4150.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-410",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4150.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-411",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4150.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-412",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4150.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-413",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4190.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-414",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4260.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 708.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm6",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 4",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 4",
                    "texton": "Slot 4",
                    "varname": "live.text[21]"
                }
            },
            {
                "box": {
                    "id": "obj-415",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 4260.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 708.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-416",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 4260.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-417",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4260.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-418",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4260.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-419",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4260.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-420",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4300.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-421",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4370.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 816.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm7",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 5",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 5",
                    "texton": "Slot 5",
                    "varname": "live.text[22]"
                }
            },
            {
                "box": {
                    "id": "obj-422",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 4370.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 816.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-423",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 4370.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-424",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4370.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-425",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4370.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-426",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4370.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-427",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4410.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-428",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4480.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 924.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm8",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 6",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 6",
                    "texton": "Slot 6",
                    "varname": "live.text[23]"
                }
            },
            {
                "box": {
                    "id": "obj-429",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 4480.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 924.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-430",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 4480.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-431",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4480.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-432",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4480.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-433",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4480.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-434",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4520.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-435",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4590.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1032.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm9",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 7",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 7",
                    "texton": "Slot 7",
                    "varname": "live.text[24]"
                }
            },
            {
                "box": {
                    "id": "obj-436",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 4590.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1032.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-437",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 4590.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-438",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4590.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-439",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4590.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-440",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4590.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-441",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4630.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-442",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4700.0, 130.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1140.0, 1516.0, 100.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "arm10",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slot 8",
                            "parameter_type": 2
                        }
                    },
                    "text": "Slot 8",
                    "texton": "Slot 8",
                    "varname": "live.text[25]"
                }
            },
            {
                "box": {
                    "id": "obj-443",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 4700.0, 160.0, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1140.0, 1538.0, 100.0, 18.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-444",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 4700.0, 300.0, 90.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-445",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4700.0, 430.0, 30.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-446",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4700.0, 460.0, 40.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-447",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4700.0, 490.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-448",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4740.0, 490.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-449",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 100.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-450",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3600.0, 200.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 1562.0, 60.0, 20.0 ],
                    "text": "Save to"
                }
            },
            {
                "box": {
                    "id": "obj-451",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3660.0, 200.0, 420.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 1562.0, 520.0, 20.0 ],
                    "text": "~/Documents/FX Patcher/Recordings"
                }
            },
            {
                "box": {
                    "id": "obj-452",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 4100.0, 200.0, 80.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 604.0, 1562.0, 80.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "rec_choose",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Choose…",
                            "parameter_type": 2
                        }
                    },
                    "text": "Choose…",
                    "texton": "Choose…",
                    "varname": "live.text[26]"
                }
            },
            {
                "box": {
                    "id": "obj-453",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4200.0, 200.0, 300.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 700.0, 1562.0, 560.0, 20.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-454",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3600.0, 600.0, 220.0, 22.0 ],
                    "saved_object_attributes": {
                        "autostart": 1,
                        "defer": 0,
                        "node_bin_path": "",
                        "npm_bin_path": "",
                        "watch": 0
                    },
                    "text": "node.script fxrec.js @autostart 1",
                    "textfile": {
                        "filename": "fxrec.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-455",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 3600.0, 640.0, 240.0, 22.0 ],
                    "text": "route folder open go take status"
                }
            },
            {
                "box": {
                    "id": "obj-456",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 670.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-457",
                    "maxclass": "newobj",
                    "numinlets": 12,
                    "numoutlets": 12,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 3700.0, 670.0, 260.0, 22.0 ],
                    "text": "route 0 1 2 3 4 5 6 7 8 9 10"
                }
            },
            {
                "box": {
                    "id": "obj-458",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3700.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-459",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3760.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-460",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3820.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-461",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3880.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-462",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3940.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-463",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4000.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-464",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4060.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-465",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4120.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-466",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4180.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-467",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4240.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-468",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4300.0, 700.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-469",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3600.0, 730.0, 80.0, 22.0 ],
                    "text": "s fx.rec.go"
                }
            },
            {
                "box": {
                    "id": "obj-470",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3800.0, 730.0, 110.0, 22.0 ],
                    "text": "prepend set Take:"
                }
            },
            {
                "box": {
                    "id": "obj-471",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3950.0, 730.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-472",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 3850.0, 90.0, 60.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-473",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3850.0, 120.0, 100.0, 22.0 ],
                    "text": "samptype int24"
                }
            },
            {
                "box": {
                    "id": "obj-474",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3960.0, 120.0, 110.0, 22.0 ],
                    "text": "samptype float32"
                }
            },
            {
                "box": {
                    "id": "obj-475",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3850.0, 60.0, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-476",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 4100.0, 230.0, 100.0, 22.0 ],
                    "text": "opendialog fold"
                }
            },
            {
                "box": {
                    "id": "obj-477",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 4100.0, 215.0, 30.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-478",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4100.0, 260.0, 110.0, 22.0 ],
                    "text": "prepend setfolder"
                }
            },
            {
                "box": {
                    "id": "obj-479",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 3750.0, 90.0, 30.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-480",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3790.0, 90.0, 70.0, 22.0 ],
                    "text": "openfolder"
                }
            },
            {
                "box": {
                    "id": "obj-481",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 3600.0, 540.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-482",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 3600.0, 565.0, 70.0, 22.0 ],
                    "text": "delay 3000"
                }
            },
            {
                "box": {
                    "id": "obj-483",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 585.0, 40.0, 22.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "id": "obj-484",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 800.0, 80.0, 22.0 ],
                    "text": "r fx.recbtn"
                }
            },
            {
                "box": {
                    "id": "obj-485",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3600.0, 770.0, 80.0, 22.0 ],
                    "text": "s fx.recbtn"
                }
            },
            {
                "box": {
                    "id": "obj-486",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3700.0, 830.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-487",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 3600.0, 860.0, 60.0, 22.0 ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-488",
                    "maxclass": "newobj",
                    "numinlets": 11,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 890.0, 400.0, 22.0 ],
                    "text": "pak 0 0 0 0 0 0 0 0 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-489",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3600.0, 920.0, 50.0, 22.0 ],
                    "text": "zl reg"
                }
            },
            {
                "box": {
                    "id": "obj-490",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 950.0, 200.0, 22.0 ],
                    "text": "vexpr $i1*$i2 @scalarmode 0"
                }
            },
            {
                "box": {
                    "id": "obj-491",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3820.0, 920.0, 160.0, 22.0 ],
                    "text": "1 2 3 4 5 6 7 8 9 10 11"
                }
            },
            {
                "box": {
                    "id": "obj-492",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 3820.0, 890.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-493",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3600.0, 980.0, 80.0, 22.0 ],
                    "text": "zl filter 0"
                }
            },
            {
                "box": {
                    "id": "obj-494",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 1010.0, 180.0, 22.0 ],
                    "text": "vexpr $i1-1 @scalarmode 1"
                }
            },
            {
                "box": {
                    "id": "obj-495",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 1040.0, 90.0, 22.0 ],
                    "text": "prepend start"
                }
            },
            {
                "box": {
                    "id": "obj-496",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3700.0, 1040.0, 100.0, 22.0 ],
                    "text": "set Recording…"
                }
            },
            {
                "box": {
                    "id": "obj-497",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3900.0, 1040.0, 90.0, 22.0 ],
                    "text": "s fx.rec.stop"
                }
            },
            {
                "box": {
                    "id": "obj-498",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 3900.0, 1010.0, 30.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-499",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4000.0, 1040.0, 200.0, 22.0 ],
                    "text": "set Saved · Open folder to listen"
                }
            },
            {
                "box": {
                    "id": "obj-500",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 3600.0, 1100.0, 40.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-501",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 3600.0, 1130.0, 70.0, 22.0 ],
                    "text": "metro 100"
                }
            },
            {
                "box": {
                    "id": "obj-502",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3680.0, 1100.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-503",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3720.0, 1100.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-504",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 3600.0, 1160.0, 60.0, 22.0 ],
                    "text": "counter"
                }
            },
            {
                "box": {
                    "id": "obj-505",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3680.0, 1130.0, 40.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-506",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 1190.0, 90.0, 22.0 ],
                    "text": "expr ($i1/600)"
                }
            },
            {
                "box": {
                    "id": "obj-507",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3700.0, 1190.0, 110.0, 22.0 ],
                    "text": "expr ($i1/10)%60"
                }
            },
            {
                "box": {
                    "id": "obj-508",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3820.0, 1190.0, 80.0, 22.0 ],
                    "text": "expr $i1%10"
                }
            },
            {
                "box": {
                    "id": "obj-509",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 3600.0, 1220.0, 60.0, 22.0 ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "id": "obj-510",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 1250.0, 80.0, 22.0 ],
                    "text": "pak 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-511",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3600.0, 1280.0, 150.0, 22.0 ],
                    "text": "sprintf set %02d:%02d.%d"
                }
            },
            {
                "box": {
                    "id": "obj-512",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3600.0, 1400.0, 900.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.0, 1592.0, 900.0, 20.0 ],
                    "text": "Audio on · pick sources · cable it · pick effects · Focus to edit · arm sources and press Record"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-105", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-105", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-105", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-109", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 7 ],
                    "source": [ "obj-110", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 6 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-112", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 1 ],
                    "source": [ "obj-112", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-112", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 2 ],
                    "source": [ "obj-112", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "obj-112", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "source": [ "obj-112", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-112", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-112", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "source": [ "obj-112", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "source": [ "obj-112", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-116", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "order": 1,
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "order": 2,
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "order": 0,
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 1 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 1 ],
                    "source": [ "obj-125", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-126", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 1 ],
                    "order": 1,
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "order": 0,
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "order": 2,
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-332", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "source": [ "obj-147", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "source": [ "obj-147", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 0 ],
                    "source": [ "obj-147", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "source": [ "obj-147", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "source": [ "obj-147", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 0 ],
                    "source": [ "obj-147", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "source": [ "obj-147", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 0 ],
                    "source": [ "obj-147", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 1 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 1 ],
                    "source": [ "obj-148", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 1 ],
                    "source": [ "obj-148", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 1 ],
                    "source": [ "obj-148", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 1 ],
                    "source": [ "obj-148", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 1 ],
                    "source": [ "obj-148", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 1 ],
                    "source": [ "obj-148", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 1 ],
                    "source": [ "obj-148", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "source": [ "obj-148", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "order": 1,
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "order": 0,
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 2 ],
                    "order": 2,
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 2 ],
                    "order": 1,
                    "source": [ "obj-150", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-394", 0 ],
                    "order": 1,
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 1 ],
                    "order": 0,
                    "source": [ "obj-150", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 0 ],
                    "order": 0,
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 3 ],
                    "order": 2,
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 3 ],
                    "order": 1,
                    "source": [ "obj-151", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-401", 0 ],
                    "order": 1,
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 1 ],
                    "order": 0,
                    "source": [ "obj-151", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "order": 0,
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 4 ],
                    "order": 2,
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 4 ],
                    "order": 1,
                    "source": [ "obj-152", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-408", 0 ],
                    "order": 1,
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 1 ],
                    "order": 0,
                    "source": [ "obj-152", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 0 ],
                    "order": 0,
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 5 ],
                    "order": 2,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 5 ],
                    "order": 1,
                    "source": [ "obj-153", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-415", 0 ],
                    "order": 1,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 1 ],
                    "order": 0,
                    "source": [ "obj-153", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 0 ],
                    "order": 0,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 6 ],
                    "order": 2,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 6 ],
                    "order": 1,
                    "source": [ "obj-154", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-422", 0 ],
                    "order": 1,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 1 ],
                    "order": 0,
                    "source": [ "obj-154", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 0 ],
                    "order": 0,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 7 ],
                    "order": 2,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 7 ],
                    "order": 1,
                    "source": [ "obj-155", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-429", 0 ],
                    "order": 1,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-430", 1 ],
                    "order": 0,
                    "source": [ "obj-155", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-430", 0 ],
                    "order": 0,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 8 ],
                    "order": 2,
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 8 ],
                    "order": 1,
                    "source": [ "obj-156", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-436", 0 ],
                    "order": 1,
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 1 ],
                    "order": 0,
                    "source": [ "obj-156", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "order": 0,
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 9 ],
                    "order": 2,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 9 ],
                    "order": 1,
                    "source": [ "obj-157", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-443", 0 ],
                    "order": 1,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 1 ],
                    "order": 0,
                    "source": [ "obj-157", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 0 ],
                    "order": 0,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-168", 0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 0 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-167", 0 ],
                    "source": [ "obj-165", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "source": [ "obj-167", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-169", 0 ],
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "order": 1,
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 1 ],
                    "order": 0,
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-306", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 1 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 1 ],
                    "source": [ "obj-171", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-172", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 1 ],
                    "order": 1,
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 1 ],
                    "order": 0,
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 1 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-167", 1 ],
                    "source": [ "obj-175", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 7 ],
                    "order": 1,
                    "source": [ "obj-176", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 6 ],
                    "order": 1,
                    "source": [ "obj-176", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 5 ],
                    "order": 1,
                    "source": [ "obj-176", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 4 ],
                    "order": 1,
                    "source": [ "obj-176", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 3 ],
                    "order": 1,
                    "source": [ "obj-176", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 2 ],
                    "order": 1,
                    "source": [ "obj-176", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 1 ],
                    "order": 1,
                    "source": [ "obj-176", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 0 ],
                    "order": 1,
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-183", 1 ],
                    "order": 0,
                    "source": [ "obj-176", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-183", 0 ],
                    "order": 0,
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-184", 1 ],
                    "order": 0,
                    "source": [ "obj-176", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-184", 0 ],
                    "order": 0,
                    "source": [ "obj-176", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 1 ],
                    "order": 0,
                    "source": [ "obj-176", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "order": 0,
                    "source": [ "obj-176", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-186", 1 ],
                    "order": 0,
                    "source": [ "obj-176", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-186", 0 ],
                    "order": 0,
                    "source": [ "obj-176", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-179", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-315", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-181", 0 ],
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-181", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-187", 0 ],
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-188", 0 ],
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-187", 1 ],
                    "source": [ "obj-185", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-188", 1 ],
                    "source": [ "obj-186", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-189", 0 ],
                    "source": [ "obj-187", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-190", 0 ],
                    "source": [ "obj-188", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-191", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-193", 0 ],
                    "source": [ "obj-192", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-193", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-196", 0 ],
                    "order": 1,
                    "source": [ "obj-195", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-197", 0 ],
                    "order": 0,
                    "source": [ "obj-195", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-198", 0 ],
                    "source": [ "obj-196", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-200", 0 ],
                    "source": [ "obj-196", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 0 ],
                    "source": [ "obj-196", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-204", 0 ],
                    "source": [ "obj-196", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "source": [ "obj-196", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-208", 0 ],
                    "source": [ "obj-196", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-210", 0 ],
                    "source": [ "obj-196", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-212", 0 ],
                    "source": [ "obj-196", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 0 ],
                    "source": [ "obj-197", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-201", 0 ],
                    "source": [ "obj-197", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "source": [ "obj-197", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-205", 0 ],
                    "source": [ "obj-197", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-207", 0 ],
                    "source": [ "obj-197", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-209", 0 ],
                    "source": [ "obj-197", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-211", 0 ],
                    "source": [ "obj-197", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-213", 0 ],
                    "source": [ "obj-197", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-198", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-199", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-200", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-201", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-202", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-203", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-204", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-205", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-206", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-207", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-208", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-210", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-211", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-212", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "source": [ "obj-213", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-216", 0 ],
                    "source": [ "obj-215", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-217", 0 ],
                    "source": [ "obj-216", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-218", 0 ],
                    "source": [ "obj-216", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-223", 0 ],
                    "source": [ "obj-216", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-228", 0 ],
                    "source": [ "obj-216", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-233", 0 ],
                    "source": [ "obj-216", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 0 ],
                    "source": [ "obj-216", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-243", 0 ],
                    "source": [ "obj-216", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-248", 0 ],
                    "source": [ "obj-216", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-253", 0 ],
                    "source": [ "obj-216", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-258", 0 ],
                    "source": [ "obj-216", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-263", 0 ],
                    "source": [ "obj-216", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-268", 0 ],
                    "source": [ "obj-216", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-273", 0 ],
                    "source": [ "obj-216", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-278", 0 ],
                    "source": [ "obj-216", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-283", 0 ],
                    "source": [ "obj-216", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-288", 0 ],
                    "source": [ "obj-216", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-293", 0 ],
                    "source": [ "obj-216", 16 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-298", 0 ],
                    "source": [ "obj-216", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-214", 0 ],
                    "source": [ "obj-217", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "source": [ "obj-218", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-227", 0 ],
                    "source": [ "obj-218", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-232", 0 ],
                    "source": [ "obj-218", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-237", 0 ],
                    "source": [ "obj-218", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-242", 0 ],
                    "source": [ "obj-218", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-247", 0 ],
                    "source": [ "obj-218", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-252", 0 ],
                    "source": [ "obj-218", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-257", 0 ],
                    "source": [ "obj-218", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-262", 0 ],
                    "source": [ "obj-218", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 0 ],
                    "source": [ "obj-218", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-272", 0 ],
                    "source": [ "obj-218", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-277", 0 ],
                    "source": [ "obj-218", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-282", 0 ],
                    "source": [ "obj-218", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-287", 0 ],
                    "source": [ "obj-218", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-292", 0 ],
                    "source": [ "obj-218", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-297", 0 ],
                    "source": [ "obj-218", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-224", 0 ],
                    "source": [ "obj-221", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-220", 0 ],
                    "source": [ "obj-222", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 0 ],
                    "source": [ "obj-223", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-224", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-229", 0 ],
                    "source": [ "obj-226", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-225", 0 ],
                    "source": [ "obj-227", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-226", 0 ],
                    "source": [ "obj-228", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-229", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "order": 3,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "order": 2,
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 0 ],
                    "order": 2,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "order": 1,
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-380", 0 ],
                    "order": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 1 ],
                    "order": 0,
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 0 ],
                    "order": 0,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-234", 0 ],
                    "source": [ "obj-231", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-230", 0 ],
                    "source": [ "obj-232", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-231", 0 ],
                    "source": [ "obj-233", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-234", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-239", 0 ],
                    "source": [ "obj-236", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-235", 0 ],
                    "source": [ "obj-237", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-236", 0 ],
                    "source": [ "obj-238", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-239", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-244", 0 ],
                    "source": [ "obj-241", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-240", 0 ],
                    "source": [ "obj-242", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-241", 0 ],
                    "source": [ "obj-243", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-244", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "source": [ "obj-246", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-245", 0 ],
                    "source": [ "obj-247", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-246", 0 ],
                    "source": [ "obj-248", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-249", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 1 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-254", 0 ],
                    "source": [ "obj-251", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-250", 0 ],
                    "source": [ "obj-252", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-251", 0 ],
                    "source": [ "obj-253", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-254", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "source": [ "obj-256", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-255", 0 ],
                    "source": [ "obj-257", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-256", 0 ],
                    "source": [ "obj-258", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-259", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 1 ],
                    "order": 3,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 1 ],
                    "order": 2,
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "order": 2,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "order": 1,
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-387", 0 ],
                    "order": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 1 ],
                    "order": 0,
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 0 ],
                    "order": 0,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-264", 0 ],
                    "source": [ "obj-261", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-260", 0 ],
                    "source": [ "obj-262", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-261", 0 ],
                    "source": [ "obj-263", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-264", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-269", 0 ],
                    "source": [ "obj-266", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 0 ],
                    "source": [ "obj-267", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "source": [ "obj-268", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-269", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-274", 0 ],
                    "source": [ "obj-271", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-270", 0 ],
                    "source": [ "obj-272", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-271", 0 ],
                    "source": [ "obj-273", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-274", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 0 ],
                    "source": [ "obj-276", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-275", 0 ],
                    "source": [ "obj-277", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-276", 0 ],
                    "source": [ "obj-278", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-279", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "order": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "order": 0,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-284", 0 ],
                    "source": [ "obj-281", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-280", 0 ],
                    "source": [ "obj-282", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-281", 0 ],
                    "source": [ "obj-283", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-284", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-289", 0 ],
                    "source": [ "obj-286", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-285", 0 ],
                    "source": [ "obj-287", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-286", 0 ],
                    "source": [ "obj-288", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-289", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 3 ],
                    "source": [ "obj-29", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 2 ],
                    "source": [ "obj-29", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 1 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-294", 0 ],
                    "source": [ "obj-291", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-290", 0 ],
                    "source": [ "obj-292", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-291", 0 ],
                    "source": [ "obj-293", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-294", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-299", 0 ],
                    "source": [ "obj-296", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-295", 0 ],
                    "source": [ "obj-297", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-296", 0 ],
                    "source": [ "obj-298", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 0 ],
                    "source": [ "obj-299", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-191", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "source": [ "obj-30", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-30", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-301", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-302", 0 ],
                    "source": [ "obj-301", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-312", 0 ],
                    "source": [ "obj-301", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-304", 2 ],
                    "source": [ "obj-303", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-304", 1 ],
                    "source": [ "obj-303", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-304", 0 ],
                    "source": [ "obj-303", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-305", 0 ],
                    "source": [ "obj-304", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-305", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-306", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-308", 0 ],
                    "source": [ "obj-307", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-308", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-310", 0 ],
                    "source": [ "obj-309", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-310", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-313", 0 ],
                    "source": [ "obj-311", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-314", 0 ],
                    "source": [ "obj-311", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-321", 0 ],
                    "source": [ "obj-311", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "source": [ "obj-312", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-313", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-314", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-316", 0 ],
                    "source": [ "obj-315", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-317", 0 ],
                    "source": [ "obj-315", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-316", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "source": [ "obj-317", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-319", 0 ],
                    "source": [ "obj-318", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-320", 0 ],
                    "source": [ "obj-319", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "source": [ "obj-320", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "source": [ "obj-321", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-333", 0 ],
                    "source": [ "obj-326", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-336", 0 ],
                    "source": [ "obj-326", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-337", 0 ],
                    "source": [ "obj-326", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "source": [ "obj-327", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-329", 0 ],
                    "source": [ "obj-328", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "source": [ "obj-329", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "source": [ "obj-330", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "source": [ "obj-331", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "source": [ "obj-332", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-335", 0 ],
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "source": [ "obj-335", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-339", 0 ],
                    "order": 1,
                    "source": [ "obj-338", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-341", 0 ],
                    "order": 0,
                    "source": [ "obj-338", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-340", 0 ],
                    "source": [ "obj-339", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-342", 0 ],
                    "source": [ "obj-341", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-485", 0 ],
                    "source": [ "obj-366", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-367", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-472", 0 ],
                    "source": [ "obj-368", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 2 ],
                    "source": [ "obj-37", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "source": [ "obj-37", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-375", 0 ],
                    "order": 10,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-382", 0 ],
                    "order": 9,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-389", 0 ],
                    "order": 8,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-396", 0 ],
                    "order": 7,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-403", 0 ],
                    "order": 6,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-410", 0 ],
                    "order": 5,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-417", 0 ],
                    "order": 4,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-424", 0 ],
                    "order": 3,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-431", 0 ],
                    "order": 2,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-438", 0 ],
                    "order": 1,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-445", 0 ],
                    "order": 0,
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-378", 0 ],
                    "order": 10,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-385", 0 ],
                    "order": 9,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-392", 0 ],
                    "order": 8,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-399", 0 ],
                    "order": 7,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-406", 0 ],
                    "order": 6,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-413", 0 ],
                    "order": 5,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-420", 0 ],
                    "order": 4,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-427", 0 ],
                    "order": 3,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "order": 2,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-441", 0 ],
                    "order": 1,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-448", 0 ],
                    "order": 0,
                    "source": [ "obj-371", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-375", 1 ],
                    "order": 0,
                    "source": [ "obj-372", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 0 ],
                    "order": 1,
                    "source": [ "obj-372", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-376", 0 ],
                    "source": [ "obj-375", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-377", 0 ],
                    "source": [ "obj-376", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 0 ],
                    "source": [ "obj-377", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 0 ],
                    "source": [ "obj-378", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-382", 1 ],
                    "order": 0,
                    "source": [ "obj-379", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 1 ],
                    "order": 1,
                    "source": [ "obj-379", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-383", 0 ],
                    "source": [ "obj-382", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-384", 0 ],
                    "source": [ "obj-383", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 0 ],
                    "source": [ "obj-384", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 0 ],
                    "source": [ "obj-385", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-389", 1 ],
                    "order": 0,
                    "source": [ "obj-386", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 2 ],
                    "order": 1,
                    "source": [ "obj-386", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-390", 0 ],
                    "source": [ "obj-389", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-391", 0 ],
                    "source": [ "obj-390", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 0 ],
                    "source": [ "obj-391", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 0 ],
                    "source": [ "obj-392", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-396", 1 ],
                    "order": 0,
                    "source": [ "obj-393", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 3 ],
                    "order": 1,
                    "source": [ "obj-393", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-397", 0 ],
                    "source": [ "obj-396", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-398", 0 ],
                    "source": [ "obj-397", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 0 ],
                    "source": [ "obj-398", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 0 ],
                    "source": [ "obj-399", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-192", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-403", 1 ],
                    "order": 0,
                    "source": [ "obj-400", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 4 ],
                    "order": 1,
                    "source": [ "obj-400", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-404", 0 ],
                    "source": [ "obj-403", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-405", 0 ],
                    "source": [ "obj-404", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "source": [ "obj-405", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "source": [ "obj-406", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-410", 1 ],
                    "order": 0,
                    "source": [ "obj-407", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 5 ],
                    "order": 1,
                    "source": [ "obj-407", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-411", 0 ],
                    "source": [ "obj-410", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-412", 0 ],
                    "source": [ "obj-411", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 0 ],
                    "source": [ "obj-412", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 0 ],
                    "source": [ "obj-413", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-417", 1 ],
                    "order": 0,
                    "source": [ "obj-414", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 6 ],
                    "order": 1,
                    "source": [ "obj-414", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-418", 0 ],
                    "source": [ "obj-417", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-419", 0 ],
                    "source": [ "obj-418", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 0 ],
                    "source": [ "obj-419", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 0 ],
                    "source": [ "obj-420", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-424", 1 ],
                    "order": 0,
                    "source": [ "obj-421", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 7 ],
                    "order": 1,
                    "source": [ "obj-421", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-425", 0 ],
                    "source": [ "obj-424", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-426", 0 ],
                    "source": [ "obj-425", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 0 ],
                    "source": [ "obj-426", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 0 ],
                    "source": [ "obj-427", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-431", 1 ],
                    "order": 0,
                    "source": [ "obj-428", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 8 ],
                    "order": 1,
                    "source": [ "obj-428", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-432", 0 ],
                    "source": [ "obj-431", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-433", 0 ],
                    "source": [ "obj-432", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-430", 0 ],
                    "source": [ "obj-433", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-430", 0 ],
                    "source": [ "obj-434", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-438", 1 ],
                    "order": 0,
                    "source": [ "obj-435", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 9 ],
                    "order": 1,
                    "source": [ "obj-435", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-439", 0 ],
                    "source": [ "obj-438", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-440", 0 ],
                    "source": [ "obj-439", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "source": [ "obj-440", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "source": [ "obj-441", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-445", 1 ],
                    "order": 0,
                    "source": [ "obj-442", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 10 ],
                    "order": 1,
                    "source": [ "obj-442", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-446", 0 ],
                    "source": [ "obj-445", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-447", 0 ],
                    "source": [ "obj-446", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 0 ],
                    "source": [ "obj-447", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 0 ],
                    "source": [ "obj-448", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-372", 0 ],
                    "source": [ "obj-449", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-477", 0 ],
                    "source": [ "obj-452", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-455", 0 ],
                    "source": [ "obj-454", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-456", 0 ],
                    "source": [ "obj-455", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-457", 0 ],
                    "source": [ "obj-455", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-469", 0 ],
                    "source": [ "obj-455", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-470", 0 ],
                    "source": [ "obj-455", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-471", 0 ],
                    "source": [ "obj-455", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-451", 0 ],
                    "source": [ "obj-456", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-458", 0 ],
                    "source": [ "obj-457", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-459", 0 ],
                    "source": [ "obj-457", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-460", 0 ],
                    "source": [ "obj-457", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-461", 0 ],
                    "source": [ "obj-457", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-462", 0 ],
                    "source": [ "obj-457", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-463", 0 ],
                    "source": [ "obj-457", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-464", 0 ],
                    "source": [ "obj-457", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-465", 0 ],
                    "source": [ "obj-457", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-466", 0 ],
                    "source": [ "obj-457", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-467", 0 ],
                    "source": [ "obj-457", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-468", 0 ],
                    "source": [ "obj-457", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 0 ],
                    "source": [ "obj-458", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 0 ],
                    "source": [ "obj-459", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 0 ],
                    "source": [ "obj-460", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 0 ],
                    "source": [ "obj-461", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "source": [ "obj-462", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 0 ],
                    "source": [ "obj-463", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 0 ],
                    "source": [ "obj-464", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 0 ],
                    "source": [ "obj-465", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-430", 0 ],
                    "source": [ "obj-466", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "source": [ "obj-467", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 0 ],
                    "source": [ "obj-468", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-453", 0 ],
                    "source": [ "obj-470", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-365", 0 ],
                    "source": [ "obj-471", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-473", 0 ],
                    "source": [ "obj-472", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-474", 0 ],
                    "source": [ "obj-472", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 0 ],
                    "order": 10,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 0 ],
                    "order": 9,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 0 ],
                    "order": 8,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 0 ],
                    "order": 7,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "order": 6,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 0 ],
                    "order": 5,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 0 ],
                    "order": 4,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 0 ],
                    "order": 3,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-430", 0 ],
                    "order": 2,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "order": 1,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 0 ],
                    "order": 0,
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 0 ],
                    "order": 10,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 0 ],
                    "order": 9,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 0 ],
                    "order": 8,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 0 ],
                    "order": 7,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "order": 6,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 0 ],
                    "order": 5,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 0 ],
                    "order": 4,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 0 ],
                    "order": 3,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-430", 0 ],
                    "order": 2,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "order": 1,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 0 ],
                    "order": 0,
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-368", 0 ],
                    "source": [ "obj-475", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-478", 0 ],
                    "source": [ "obj-476", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-476", 0 ],
                    "source": [ "obj-477", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-454", 0 ],
                    "source": [ "obj-478", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-480", 0 ],
                    "source": [ "obj-479", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-48", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-48", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-454", 0 ],
                    "source": [ "obj-480", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-482", 0 ],
                    "source": [ "obj-481", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-483", 0 ],
                    "source": [ "obj-482", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-454", 0 ],
                    "source": [ "obj-483", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-486", 0 ],
                    "order": 0,
                    "source": [ "obj-484", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-487", 0 ],
                    "order": 1,
                    "source": [ "obj-484", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-366", 0 ],
                    "source": [ "obj-486", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-489", 0 ],
                    "order": 2,
                    "source": [ "obj-487", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-496", 0 ],
                    "order": 0,
                    "source": [ "obj-487", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-498", 0 ],
                    "source": [ "obj-487", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-500", 0 ],
                    "order": 1,
                    "source": [ "obj-487", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-489", 1 ],
                    "source": [ "obj-488", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-490", 0 ],
                    "source": [ "obj-489", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-493", 0 ],
                    "source": [ "obj-490", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-490", 1 ],
                    "source": [ "obj-491", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-491", 0 ],
                    "source": [ "obj-492", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-494", 0 ],
                    "source": [ "obj-493", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-495", 0 ],
                    "source": [ "obj-494", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-454", 0 ],
                    "source": [ "obj-495", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-365", 0 ],
                    "source": [ "obj-496", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-497", 0 ],
                    "order": 1,
                    "source": [ "obj-498", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-499", 0 ],
                    "order": 0,
                    "source": [ "obj-498", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-503", 0 ],
                    "order": 2,
                    "source": [ "obj-498", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-365", 0 ],
                    "source": [ "obj-499", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-502", 0 ],
                    "source": [ "obj-500", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-505", 0 ],
                    "source": [ "obj-500", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-504", 0 ],
                    "source": [ "obj-501", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-501", 0 ],
                    "source": [ "obj-502", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-501", 0 ],
                    "source": [ "obj-503", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-509", 0 ],
                    "source": [ "obj-504", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-504", 0 ],
                    "source": [ "obj-505", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-510", 0 ],
                    "source": [ "obj-506", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-510", 1 ],
                    "source": [ "obj-507", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-510", 2 ],
                    "source": [ "obj-508", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-506", 0 ],
                    "source": [ "obj-509", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-507", 0 ],
                    "source": [ "obj-509", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-508", 0 ],
                    "source": [ "obj-509", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-511", 0 ],
                    "source": [ "obj-510", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-364", 0 ],
                    "source": [ "obj-511", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-52", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 5 ],
                    "source": [ "obj-53", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 4 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 1 ],
                    "source": [ "obj-55", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-55", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 2 ],
                    "source": [ "obj-55", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-55", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-55", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-55", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-55", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-55", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-55", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-59", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 1 ],
                    "order": 1,
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "order": 2,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 1 ],
                    "order": 2,
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "order": 3,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-373", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 1 ],
                    "order": 0,
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "order": 1,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "order": 2,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "order": 0,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "source": [ "obj-68", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-69", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 1 ],
                    "order": 1,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "order": 0,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "order": 2,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-179", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 2 ],
                    "source": [ "obj-94", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 1 ],
                    "source": [ "obj-94", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-111::obj-17": [ "k1[8]", "Speed", 0 ],
            "obj-111::obj-22": [ "k2[8]", "Pitch", 0 ],
            "obj-111::obj-27": [ "k3[8]", "Start", 0 ],
            "obj-111::obj-32": [ "k4[8]", "Length", 0 ],
            "obj-111::obj-37": [ "k5[8]", "Volume", 0 ],
            "obj-111::obj-42": [ "k6[8]", "Width", 0 ],
            "obj-111::obj-47": [ "k7[8]", "Tone", 0 ],
            "obj-111::obj-52": [ "k8[8]", "Pan", 0 ],
            "obj-111::obj-57": [ "k9[8]", "Fade In", 0 ],
            "obj-111::obj-62": [ "k10[8]", "Fade Out", 0 ],
            "obj-111::obj-67": [ "k11[8]", "End", 0 ],
            "obj-12": [ "bpm", "bpm", 0 ],
            "obj-14": [ "beats", "beats", 0 ],
            "obj-150::obj-106": [ "k4[7]", "k4", 0 ],
            "obj-150::obj-113": [ "k5[7]", "k5", 0 ],
            "obj-150::obj-120": [ "k6[7]", "k6", 0 ],
            "obj-150::obj-127": [ "k7[7]", "k7", 0 ],
            "obj-150::obj-134": [ "k8[7]", "k8", 0 ],
            "obj-150::obj-141": [ "k9[7]", "k9", 0 ],
            "obj-150::obj-147": [ "k10[7]", "k10", 0 ],
            "obj-150::obj-153": [ "k11[7]", "k11", 0 ],
            "obj-150::obj-159": [ "k12[7]", "k12", 0 ],
            "obj-150::obj-165": [ "k13[7]", "k13", 0 ],
            "obj-150::obj-171": [ "k14[7]", "k14", 0 ],
            "obj-150::obj-177": [ "k15[7]", "k15", 0 ],
            "obj-150::obj-183": [ "k16[7]", "k16", 0 ],
            "obj-150::obj-25": [ "focus[7]", "Focus", 0 ],
            "obj-150::obj-27": [ "bypass[7]", "Bypass", 0 ],
            "obj-150::obj-28": [ "module[7]", "module", 0 ],
            "obj-150::obj-29": [ "in[7]", "in", 0 ],
            "obj-150::obj-39": [ "out[7]", "out", 0 ],
            "obj-150::obj-50": [ "mix[7]", "Mix", 0 ],
            "obj-150::obj-85": [ "k1[7]", "k1", 0 ],
            "obj-150::obj-92": [ "k2[7]", "k2", 0 ],
            "obj-150::obj-99": [ "k3[7]", "k3", 0 ],
            "obj-151::obj-106": [ "k4[6]", "k4", 0 ],
            "obj-151::obj-113": [ "k5[6]", "k5", 0 ],
            "obj-151::obj-120": [ "k6[6]", "k6", 0 ],
            "obj-151::obj-127": [ "k7[6]", "k7", 0 ],
            "obj-151::obj-134": [ "k8[6]", "k8", 0 ],
            "obj-151::obj-141": [ "k9[6]", "k9", 0 ],
            "obj-151::obj-147": [ "k10[6]", "k10", 0 ],
            "obj-151::obj-153": [ "k11[6]", "k11", 0 ],
            "obj-151::obj-159": [ "k12[6]", "k12", 0 ],
            "obj-151::obj-165": [ "k13[6]", "k13", 0 ],
            "obj-151::obj-171": [ "k14[6]", "k14", 0 ],
            "obj-151::obj-177": [ "k15[6]", "k15", 0 ],
            "obj-151::obj-183": [ "k16[6]", "k16", 0 ],
            "obj-151::obj-25": [ "focus[6]", "Focus", 0 ],
            "obj-151::obj-27": [ "bypass[6]", "Bypass", 0 ],
            "obj-151::obj-28": [ "module[6]", "module", 0 ],
            "obj-151::obj-29": [ "in[6]", "in", 0 ],
            "obj-151::obj-39": [ "out[6]", "out", 0 ],
            "obj-151::obj-50": [ "mix[6]", "Mix", 0 ],
            "obj-151::obj-85": [ "k1[6]", "k1", 0 ],
            "obj-151::obj-92": [ "k2[6]", "k2", 0 ],
            "obj-151::obj-99": [ "k3[6]", "k3", 0 ],
            "obj-152::obj-106": [ "k4[5]", "k4", 0 ],
            "obj-152::obj-113": [ "k5[5]", "k5", 0 ],
            "obj-152::obj-120": [ "k6[5]", "k6", 0 ],
            "obj-152::obj-127": [ "k7[5]", "k7", 0 ],
            "obj-152::obj-134": [ "k8[5]", "k8", 0 ],
            "obj-152::obj-141": [ "k9[5]", "k9", 0 ],
            "obj-152::obj-147": [ "k10[5]", "k10", 0 ],
            "obj-152::obj-153": [ "k11[5]", "k11", 0 ],
            "obj-152::obj-159": [ "k12[5]", "k12", 0 ],
            "obj-152::obj-165": [ "k13[5]", "k13", 0 ],
            "obj-152::obj-171": [ "k14[5]", "k14", 0 ],
            "obj-152::obj-177": [ "k15[5]", "k15", 0 ],
            "obj-152::obj-183": [ "k16[5]", "k16", 0 ],
            "obj-152::obj-25": [ "focus[5]", "Focus", 0 ],
            "obj-152::obj-27": [ "bypass[5]", "Bypass", 0 ],
            "obj-152::obj-28": [ "module[5]", "module", 0 ],
            "obj-152::obj-29": [ "in[5]", "in", 0 ],
            "obj-152::obj-39": [ "out[5]", "out", 0 ],
            "obj-152::obj-50": [ "mix[5]", "Mix", 0 ],
            "obj-152::obj-85": [ "k1[5]", "k1", 0 ],
            "obj-152::obj-92": [ "k2[5]", "k2", 0 ],
            "obj-152::obj-99": [ "k3[5]", "k3", 0 ],
            "obj-153::obj-106": [ "k4[4]", "k4", 0 ],
            "obj-153::obj-113": [ "k5[4]", "k5", 0 ],
            "obj-153::obj-120": [ "k6[4]", "k6", 0 ],
            "obj-153::obj-127": [ "k7[4]", "k7", 0 ],
            "obj-153::obj-134": [ "k8[4]", "k8", 0 ],
            "obj-153::obj-141": [ "k9[4]", "k9", 0 ],
            "obj-153::obj-147": [ "k10[4]", "k10", 0 ],
            "obj-153::obj-153": [ "k11[4]", "k11", 0 ],
            "obj-153::obj-159": [ "k12[4]", "k12", 0 ],
            "obj-153::obj-165": [ "k13[4]", "k13", 0 ],
            "obj-153::obj-171": [ "k14[4]", "k14", 0 ],
            "obj-153::obj-177": [ "k15[4]", "k15", 0 ],
            "obj-153::obj-183": [ "k16[4]", "k16", 0 ],
            "obj-153::obj-25": [ "focus[4]", "Focus", 0 ],
            "obj-153::obj-27": [ "bypass[4]", "Bypass", 0 ],
            "obj-153::obj-28": [ "module[4]", "module", 0 ],
            "obj-153::obj-29": [ "in[4]", "in", 0 ],
            "obj-153::obj-39": [ "out[4]", "out", 0 ],
            "obj-153::obj-50": [ "mix[4]", "Mix", 0 ],
            "obj-153::obj-85": [ "k1[4]", "k1", 0 ],
            "obj-153::obj-92": [ "k2[4]", "k2", 0 ],
            "obj-153::obj-99": [ "k3[4]", "k3", 0 ],
            "obj-154::obj-106": [ "k4[3]", "k4", 0 ],
            "obj-154::obj-113": [ "k5[3]", "k5", 0 ],
            "obj-154::obj-120": [ "k6[3]", "k6", 0 ],
            "obj-154::obj-127": [ "k7[3]", "k7", 0 ],
            "obj-154::obj-134": [ "k8[3]", "k8", 0 ],
            "obj-154::obj-141": [ "k9[3]", "k9", 0 ],
            "obj-154::obj-147": [ "k10[3]", "k10", 0 ],
            "obj-154::obj-153": [ "k11[3]", "k11", 0 ],
            "obj-154::obj-159": [ "k12[3]", "k12", 0 ],
            "obj-154::obj-165": [ "k13[3]", "k13", 0 ],
            "obj-154::obj-171": [ "k14[3]", "k14", 0 ],
            "obj-154::obj-177": [ "k15[3]", "k15", 0 ],
            "obj-154::obj-183": [ "k16[3]", "k16", 0 ],
            "obj-154::obj-25": [ "focus[3]", "Focus", 0 ],
            "obj-154::obj-27": [ "bypass[3]", "Bypass", 0 ],
            "obj-154::obj-28": [ "module[3]", "module", 0 ],
            "obj-154::obj-29": [ "in[3]", "in", 0 ],
            "obj-154::obj-39": [ "out[3]", "out", 0 ],
            "obj-154::obj-50": [ "mix[3]", "Mix", 0 ],
            "obj-154::obj-85": [ "k1[3]", "k1", 0 ],
            "obj-154::obj-92": [ "k2[3]", "k2", 0 ],
            "obj-154::obj-99": [ "k3[3]", "k3", 0 ],
            "obj-155::obj-106": [ "k4[2]", "k4", 0 ],
            "obj-155::obj-113": [ "k5[2]", "k5", 0 ],
            "obj-155::obj-120": [ "k6[2]", "k6", 0 ],
            "obj-155::obj-127": [ "k7[2]", "k7", 0 ],
            "obj-155::obj-134": [ "k8[2]", "k8", 0 ],
            "obj-155::obj-141": [ "k9[2]", "k9", 0 ],
            "obj-155::obj-147": [ "k10[2]", "k10", 0 ],
            "obj-155::obj-153": [ "k11[2]", "k11", 0 ],
            "obj-155::obj-159": [ "k12[2]", "k12", 0 ],
            "obj-155::obj-165": [ "k13[2]", "k13", 0 ],
            "obj-155::obj-171": [ "k14[2]", "k14", 0 ],
            "obj-155::obj-177": [ "k15[2]", "k15", 0 ],
            "obj-155::obj-183": [ "k16[2]", "k16", 0 ],
            "obj-155::obj-25": [ "focus[2]", "Focus", 0 ],
            "obj-155::obj-27": [ "bypass[2]", "Bypass", 0 ],
            "obj-155::obj-28": [ "module[2]", "module", 0 ],
            "obj-155::obj-29": [ "in[2]", "in", 0 ],
            "obj-155::obj-39": [ "out[2]", "out", 0 ],
            "obj-155::obj-50": [ "mix[2]", "Mix", 0 ],
            "obj-155::obj-85": [ "k1[2]", "k1", 0 ],
            "obj-155::obj-92": [ "k2[2]", "k2", 0 ],
            "obj-155::obj-99": [ "k3[2]", "k3", 0 ],
            "obj-156::obj-106": [ "k4[1]", "k4", 0 ],
            "obj-156::obj-113": [ "k5[1]", "k5", 0 ],
            "obj-156::obj-120": [ "k6[1]", "k6", 0 ],
            "obj-156::obj-127": [ "k7[1]", "k7", 0 ],
            "obj-156::obj-134": [ "k8[1]", "k8", 0 ],
            "obj-156::obj-141": [ "k9[1]", "k9", 0 ],
            "obj-156::obj-147": [ "k10[1]", "k10", 0 ],
            "obj-156::obj-153": [ "k11[1]", "k11", 0 ],
            "obj-156::obj-159": [ "k12[1]", "k12", 0 ],
            "obj-156::obj-165": [ "k13[1]", "k13", 0 ],
            "obj-156::obj-171": [ "k14[1]", "k14", 0 ],
            "obj-156::obj-177": [ "k15[1]", "k15", 0 ],
            "obj-156::obj-183": [ "k16[1]", "k16", 0 ],
            "obj-156::obj-25": [ "focus[1]", "Focus", 0 ],
            "obj-156::obj-27": [ "bypass[1]", "Bypass", 0 ],
            "obj-156::obj-28": [ "module[1]", "module", 0 ],
            "obj-156::obj-29": [ "in[1]", "in", 0 ],
            "obj-156::obj-39": [ "out[1]", "out", 0 ],
            "obj-156::obj-50": [ "mix[1]", "Mix", 0 ],
            "obj-156::obj-85": [ "k1[1]", "k1", 0 ],
            "obj-156::obj-92": [ "k2[1]", "k2", 0 ],
            "obj-156::obj-99": [ "k3[1]", "k3", 0 ],
            "obj-157::obj-106": [ "k4", "k4", 0 ],
            "obj-157::obj-113": [ "k5", "k5", 0 ],
            "obj-157::obj-120": [ "k6", "k6", 0 ],
            "obj-157::obj-127": [ "k7", "k7", 0 ],
            "obj-157::obj-134": [ "k8", "k8", 0 ],
            "obj-157::obj-141": [ "k9", "k9", 0 ],
            "obj-157::obj-147": [ "k10", "k10", 0 ],
            "obj-157::obj-153": [ "k11", "k11", 0 ],
            "obj-157::obj-159": [ "k12", "k12", 0 ],
            "obj-157::obj-165": [ "k13", "k13", 0 ],
            "obj-157::obj-171": [ "k14", "k14", 0 ],
            "obj-157::obj-177": [ "k15", "k15", 0 ],
            "obj-157::obj-183": [ "k16", "k16", 0 ],
            "obj-157::obj-25": [ "focus", "Focus", 0 ],
            "obj-157::obj-27": [ "bypass", "Bypass", 0 ],
            "obj-157::obj-28": [ "module", "module", 0 ],
            "obj-157::obj-29": [ "in", "in", 0 ],
            "obj-157::obj-39": [ "out", "out", 0 ],
            "obj-157::obj-50": [ "mix", "Mix", 0 ],
            "obj-157::obj-85": [ "k1", "k1", 0 ],
            "obj-157::obj-92": [ "k2", "k2", 0 ],
            "obj-157::obj-99": [ "k3", "k3", 0 ],
            "obj-162": [ "monA", "Mon", 0 ],
            "obj-163": [ "monB", "Mon", 0 ],
            "obj-17": [ "midi_learn", "Learn", 0 ],
            "obj-18": [ "midi_clear", "Clear MIDI", 0 ],
            "obj-2": [ "audio", "Audio", 0 ],
            "obj-22": [ "srcA_in", "srcA_in", 0 ],
            "obj-221": [ "panel_k1", "k1", 0 ],
            "obj-226": [ "panel_k2", "k2", 0 ],
            "obj-23": [ "srcA", "srcA", 0 ],
            "obj-231": [ "panel_k3", "k3", 0 ],
            "obj-236": [ "panel_k4", "k4", 0 ],
            "obj-241": [ "panel_k5", "k5", 0 ],
            "obj-246": [ "panel_k6", "k6", 0 ],
            "obj-25": [ "srcB_in", "srcB_in", 0 ],
            "obj-251": [ "panel_k7", "k7", 0 ],
            "obj-256": [ "panel_k8", "k8", 0 ],
            "obj-26": [ "srcB", "srcB", 0 ],
            "obj-261": [ "panel_k9", "k9", 0 ],
            "obj-266": [ "panel_k10", "k10", 0 ],
            "obj-271": [ "panel_k11", "k11", 0 ],
            "obj-276": [ "panel_k12", "k12", 0 ],
            "obj-281": [ "panel_k13", "k13", 0 ],
            "obj-286": [ "panel_k14", "k14", 0 ],
            "obj-291": [ "panel_k15", "k15", 0 ],
            "obj-296": [ "panel_k16", "k16", 0 ],
            "obj-3": [ "panic", "Panic", 0 ],
            "obj-34": [ "file_load", "Load", 0 ],
            "obj-343::obj-10": [ "sync[15]", "sync", 0 ],
            "obj-343::obj-12": [ "rate[15]", "Rate", 0 ],
            "obj-343::obj-15": [ "depth[15]", "Depth", 0 ],
            "obj-343::obj-17": [ "smooth[15]", "Smooth", 0 ],
            "obj-343::obj-23": [ "r1slot[15]", "r1slot", 0 ],
            "obj-343::obj-27": [ "r1learn[15]", "Learn", 0 ],
            "obj-343::obj-29": [ "r2slot[15]", "r2slot", 0 ],
            "obj-343::obj-33": [ "r2learn[15]", "Learn", 0 ],
            "obj-343::obj-35": [ "r3slot[15]", "r3slot", 0 ],
            "obj-343::obj-39": [ "r3learn[15]", "Learn", 0 ],
            "obj-343::obj-6": [ "on[15]", "On", 0 ],
            "obj-343::obj-8": [ "shape[15]", "shape", 0 ],
            "obj-344::obj-10": [ "sync[14]", "sync", 0 ],
            "obj-344::obj-12": [ "rate[14]", "Rate", 0 ],
            "obj-344::obj-15": [ "depth[14]", "Depth", 0 ],
            "obj-344::obj-17": [ "smooth[14]", "Smooth", 0 ],
            "obj-344::obj-23": [ "r1slot[14]", "r1slot", 0 ],
            "obj-344::obj-27": [ "r1learn[14]", "Learn", 0 ],
            "obj-344::obj-29": [ "r2slot[14]", "r2slot", 0 ],
            "obj-344::obj-33": [ "r2learn[14]", "Learn", 0 ],
            "obj-344::obj-35": [ "r3slot[14]", "r3slot", 0 ],
            "obj-344::obj-39": [ "r3learn[14]", "Learn", 0 ],
            "obj-344::obj-6": [ "on[14]", "On", 0 ],
            "obj-344::obj-8": [ "shape[14]", "shape", 0 ],
            "obj-345::obj-10": [ "sync[13]", "sync", 0 ],
            "obj-345::obj-12": [ "rate[13]", "Rate", 0 ],
            "obj-345::obj-15": [ "depth[13]", "Depth", 0 ],
            "obj-345::obj-17": [ "smooth[13]", "Smooth", 0 ],
            "obj-345::obj-23": [ "r1slot[13]", "r1slot", 0 ],
            "obj-345::obj-27": [ "r1learn[13]", "Learn", 0 ],
            "obj-345::obj-29": [ "r2slot[13]", "r2slot", 0 ],
            "obj-345::obj-33": [ "r2learn[13]", "Learn", 0 ],
            "obj-345::obj-35": [ "r3slot[13]", "r3slot", 0 ],
            "obj-345::obj-39": [ "r3learn[13]", "Learn", 0 ],
            "obj-345::obj-6": [ "on[13]", "On", 0 ],
            "obj-345::obj-8": [ "shape[13]", "shape", 0 ],
            "obj-346::obj-10": [ "sync[12]", "sync", 0 ],
            "obj-346::obj-12": [ "rate[12]", "Rate", 0 ],
            "obj-346::obj-15": [ "depth[12]", "Depth", 0 ],
            "obj-346::obj-17": [ "smooth[12]", "Smooth", 0 ],
            "obj-346::obj-23": [ "r1slot[12]", "r1slot", 0 ],
            "obj-346::obj-27": [ "r1learn[12]", "Learn", 0 ],
            "obj-346::obj-29": [ "r2slot[12]", "r2slot", 0 ],
            "obj-346::obj-33": [ "r2learn[12]", "Learn", 0 ],
            "obj-346::obj-35": [ "r3slot[12]", "r3slot", 0 ],
            "obj-346::obj-39": [ "r3learn[12]", "Learn", 0 ],
            "obj-346::obj-6": [ "on[12]", "On", 0 ],
            "obj-346::obj-8": [ "shape[12]", "shape", 0 ],
            "obj-347::obj-10": [ "sync[11]", "sync", 0 ],
            "obj-347::obj-12": [ "rate[11]", "Rate", 0 ],
            "obj-347::obj-15": [ "depth[11]", "Depth", 0 ],
            "obj-347::obj-17": [ "smooth[11]", "Smooth", 0 ],
            "obj-347::obj-23": [ "r1slot[11]", "r1slot", 0 ],
            "obj-347::obj-27": [ "r1learn[11]", "Learn", 0 ],
            "obj-347::obj-29": [ "r2slot[11]", "r2slot", 0 ],
            "obj-347::obj-33": [ "r2learn[11]", "Learn", 0 ],
            "obj-347::obj-35": [ "r3slot[11]", "r3slot", 0 ],
            "obj-347::obj-39": [ "r3learn[11]", "Learn", 0 ],
            "obj-347::obj-6": [ "on[11]", "On", 0 ],
            "obj-347::obj-8": [ "shape[11]", "shape", 0 ],
            "obj-348::obj-10": [ "sync[10]", "sync", 0 ],
            "obj-348::obj-12": [ "rate[10]", "Rate", 0 ],
            "obj-348::obj-15": [ "depth[10]", "Depth", 0 ],
            "obj-348::obj-17": [ "smooth[10]", "Smooth", 0 ],
            "obj-348::obj-23": [ "r1slot[10]", "r1slot", 0 ],
            "obj-348::obj-27": [ "r1learn[10]", "Learn", 0 ],
            "obj-348::obj-29": [ "r2slot[10]", "r2slot", 0 ],
            "obj-348::obj-33": [ "r2learn[10]", "Learn", 0 ],
            "obj-348::obj-35": [ "r3slot[10]", "r3slot", 0 ],
            "obj-348::obj-39": [ "r3learn[10]", "Learn", 0 ],
            "obj-348::obj-6": [ "on[10]", "On", 0 ],
            "obj-348::obj-8": [ "shape[10]", "shape", 0 ],
            "obj-349::obj-10": [ "sync[9]", "sync", 0 ],
            "obj-349::obj-12": [ "rate[9]", "Rate", 0 ],
            "obj-349::obj-15": [ "depth[9]", "Depth", 0 ],
            "obj-349::obj-17": [ "smooth[9]", "Smooth", 0 ],
            "obj-349::obj-23": [ "r1slot[9]", "r1slot", 0 ],
            "obj-349::obj-27": [ "r1learn[9]", "Learn", 0 ],
            "obj-349::obj-29": [ "r2slot[9]", "r2slot", 0 ],
            "obj-349::obj-33": [ "r2learn[9]", "Learn", 0 ],
            "obj-349::obj-35": [ "r3slot[9]", "r3slot", 0 ],
            "obj-349::obj-39": [ "r3learn[9]", "Learn", 0 ],
            "obj-349::obj-6": [ "on[9]", "On", 0 ],
            "obj-349::obj-8": [ "shape[9]", "shape", 0 ],
            "obj-35": [ "file_loop", "Loop", 0 ],
            "obj-350::obj-10": [ "sync[8]", "sync", 0 ],
            "obj-350::obj-12": [ "rate[8]", "Rate", 0 ],
            "obj-350::obj-15": [ "depth[8]", "Depth", 0 ],
            "obj-350::obj-17": [ "smooth[8]", "Smooth", 0 ],
            "obj-350::obj-23": [ "r1slot[8]", "r1slot", 0 ],
            "obj-350::obj-27": [ "r1learn[8]", "Learn", 0 ],
            "obj-350::obj-29": [ "r2slot[8]", "r2slot", 0 ],
            "obj-350::obj-33": [ "r2learn[8]", "Learn", 0 ],
            "obj-350::obj-35": [ "r3slot[8]", "r3slot", 0 ],
            "obj-350::obj-39": [ "r3learn[8]", "Learn", 0 ],
            "obj-350::obj-6": [ "on[8]", "On", 0 ],
            "obj-350::obj-8": [ "shape[8]", "shape", 0 ],
            "obj-351::obj-10": [ "sync[7]", "sync", 0 ],
            "obj-351::obj-12": [ "rate[7]", "Rate", 0 ],
            "obj-351::obj-15": [ "depth[7]", "Depth", 0 ],
            "obj-351::obj-17": [ "smooth[7]", "Smooth", 0 ],
            "obj-351::obj-23": [ "r1slot[7]", "r1slot", 0 ],
            "obj-351::obj-27": [ "r1learn[7]", "Learn", 0 ],
            "obj-351::obj-29": [ "r2slot[7]", "r2slot", 0 ],
            "obj-351::obj-33": [ "r2learn[7]", "Learn", 0 ],
            "obj-351::obj-35": [ "r3slot[7]", "r3slot", 0 ],
            "obj-351::obj-39": [ "r3learn[7]", "Learn", 0 ],
            "obj-351::obj-6": [ "on[7]", "On", 0 ],
            "obj-351::obj-8": [ "shape[7]", "shape", 0 ],
            "obj-352::obj-10": [ "sync[6]", "sync", 0 ],
            "obj-352::obj-12": [ "rate[6]", "Rate", 0 ],
            "obj-352::obj-15": [ "depth[6]", "Depth", 0 ],
            "obj-352::obj-17": [ "smooth[6]", "Smooth", 0 ],
            "obj-352::obj-23": [ "r1slot[6]", "r1slot", 0 ],
            "obj-352::obj-27": [ "r1learn[6]", "Learn", 0 ],
            "obj-352::obj-29": [ "r2slot[6]", "r2slot", 0 ],
            "obj-352::obj-33": [ "r2learn[6]", "Learn", 0 ],
            "obj-352::obj-35": [ "r3slot[6]", "r3slot", 0 ],
            "obj-352::obj-39": [ "r3learn[6]", "Learn", 0 ],
            "obj-352::obj-6": [ "on[6]", "On", 0 ],
            "obj-352::obj-8": [ "shape[6]", "shape", 0 ],
            "obj-353::obj-10": [ "sync[5]", "sync", 0 ],
            "obj-353::obj-12": [ "rate[5]", "Rate", 0 ],
            "obj-353::obj-15": [ "depth[5]", "Depth", 0 ],
            "obj-353::obj-17": [ "smooth[5]", "Smooth", 0 ],
            "obj-353::obj-23": [ "r1slot[5]", "r1slot", 0 ],
            "obj-353::obj-27": [ "r1learn[5]", "Learn", 0 ],
            "obj-353::obj-29": [ "r2slot[5]", "r2slot", 0 ],
            "obj-353::obj-33": [ "r2learn[5]", "Learn", 0 ],
            "obj-353::obj-35": [ "r3slot[5]", "r3slot", 0 ],
            "obj-353::obj-39": [ "r3learn[5]", "Learn", 0 ],
            "obj-353::obj-6": [ "on[5]", "On", 0 ],
            "obj-353::obj-8": [ "shape[5]", "shape", 0 ],
            "obj-354::obj-10": [ "sync[4]", "sync", 0 ],
            "obj-354::obj-12": [ "rate[4]", "Rate", 0 ],
            "obj-354::obj-15": [ "depth[4]", "Depth", 0 ],
            "obj-354::obj-17": [ "smooth[4]", "Smooth", 0 ],
            "obj-354::obj-23": [ "r1slot[4]", "r1slot", 0 ],
            "obj-354::obj-27": [ "r1learn[4]", "Learn", 0 ],
            "obj-354::obj-29": [ "r2slot[4]", "r2slot", 0 ],
            "obj-354::obj-33": [ "r2learn[4]", "Learn", 0 ],
            "obj-354::obj-35": [ "r3slot[4]", "r3slot", 0 ],
            "obj-354::obj-39": [ "r3learn[4]", "Learn", 0 ],
            "obj-354::obj-6": [ "on[4]", "On", 0 ],
            "obj-354::obj-8": [ "shape[4]", "shape", 0 ],
            "obj-355::obj-10": [ "sync[3]", "sync", 0 ],
            "obj-355::obj-12": [ "rate[3]", "Rate", 0 ],
            "obj-355::obj-15": [ "depth[3]", "Depth", 0 ],
            "obj-355::obj-17": [ "smooth[3]", "Smooth", 0 ],
            "obj-355::obj-23": [ "r1slot[3]", "r1slot", 0 ],
            "obj-355::obj-27": [ "r1learn[3]", "Learn", 0 ],
            "obj-355::obj-29": [ "r2slot[3]", "r2slot", 0 ],
            "obj-355::obj-33": [ "r2learn[3]", "Learn", 0 ],
            "obj-355::obj-35": [ "r3slot[3]", "r3slot", 0 ],
            "obj-355::obj-39": [ "r3learn[3]", "Learn", 0 ],
            "obj-355::obj-6": [ "on[3]", "On", 0 ],
            "obj-355::obj-8": [ "shape[3]", "shape", 0 ],
            "obj-356::obj-10": [ "sync[2]", "sync", 0 ],
            "obj-356::obj-12": [ "rate[2]", "Rate", 0 ],
            "obj-356::obj-15": [ "depth[2]", "Depth", 0 ],
            "obj-356::obj-17": [ "smooth[2]", "Smooth", 0 ],
            "obj-356::obj-23": [ "r1slot[2]", "r1slot", 0 ],
            "obj-356::obj-27": [ "r1learn[2]", "Learn", 0 ],
            "obj-356::obj-29": [ "r2slot[2]", "r2slot", 0 ],
            "obj-356::obj-33": [ "r2learn[2]", "Learn", 0 ],
            "obj-356::obj-35": [ "r3slot[2]", "r3slot", 0 ],
            "obj-356::obj-39": [ "r3learn[2]", "Learn", 0 ],
            "obj-356::obj-6": [ "on[2]", "On", 0 ],
            "obj-356::obj-8": [ "shape[2]", "shape", 0 ],
            "obj-357::obj-10": [ "sync[1]", "sync", 0 ],
            "obj-357::obj-12": [ "rate[1]", "Rate", 0 ],
            "obj-357::obj-15": [ "depth[1]", "Depth", 0 ],
            "obj-357::obj-17": [ "smooth[1]", "Smooth", 0 ],
            "obj-357::obj-23": [ "r1slot[1]", "r1slot", 0 ],
            "obj-357::obj-27": [ "r1learn[1]", "Learn", 0 ],
            "obj-357::obj-29": [ "r2slot[1]", "r2slot", 0 ],
            "obj-357::obj-33": [ "r2learn[1]", "Learn", 0 ],
            "obj-357::obj-35": [ "r3slot[1]", "r3slot", 0 ],
            "obj-357::obj-39": [ "r3learn[1]", "Learn", 0 ],
            "obj-357::obj-6": [ "on[1]", "On", 0 ],
            "obj-357::obj-8": [ "shape[1]", "shape", 0 ],
            "obj-358::obj-10": [ "sync", "sync", 0 ],
            "obj-358::obj-12": [ "rate", "Rate", 0 ],
            "obj-358::obj-15": [ "depth", "Depth", 0 ],
            "obj-358::obj-17": [ "smooth", "Smooth", 0 ],
            "obj-358::obj-23": [ "r1slot", "r1slot", 0 ],
            "obj-358::obj-27": [ "r1learn", "Learn", 0 ],
            "obj-358::obj-29": [ "r2slot", "r2slot", 0 ],
            "obj-358::obj-33": [ "r2learn", "Learn", 0 ],
            "obj-358::obj-35": [ "r3slot", "r3slot", 0 ],
            "obj-358::obj-39": [ "r3learn", "Learn", 0 ],
            "obj-358::obj-6": [ "on", "On", 0 ],
            "obj-358::obj-8": [ "shape", "shape", 0 ],
            "obj-36": [ "file_clear", "Clear", 0 ],
            "obj-366": [ "rec_go", "● Record", 0 ],
            "obj-367": [ "rec_open", "Open folder", 0 ],
            "obj-372": [ "arm0", "Master", 0 ],
            "obj-379": [ "arm1", "A", 0 ],
            "obj-386": [ "arm2", "B", 0 ],
            "obj-393": [ "arm3", "Slot 1", 0 ],
            "obj-4": [ "clear", "Clear all", 0 ],
            "obj-400": [ "arm4", "Slot 2", 0 ],
            "obj-407": [ "arm5", "Slot 3", 0 ],
            "obj-414": [ "arm6", "Slot 4", 0 ],
            "obj-421": [ "arm7", "Slot 5", 0 ],
            "obj-428": [ "arm8", "Slot 6", 0 ],
            "obj-435": [ "arm9", "Slot 7", 0 ],
            "obj-442": [ "arm10", "Slot 8", 0 ],
            "obj-452": [ "rec_choose", "Choose…", 0 ],
            "obj-54::obj-17": [ "k1[9]", "Speed", 0 ],
            "obj-54::obj-22": [ "k2[9]", "Pitch", 0 ],
            "obj-54::obj-27": [ "k3[9]", "Start", 0 ],
            "obj-54::obj-32": [ "k4[9]", "Length", 0 ],
            "obj-54::obj-37": [ "k5[9]", "Volume", 0 ],
            "obj-54::obj-42": [ "k6[9]", "Width", 0 ],
            "obj-54::obj-47": [ "k7[9]", "Tone", 0 ],
            "obj-54::obj-52": [ "k8[9]", "Pan", 0 ],
            "obj-54::obj-57": [ "k9[9]", "Fade In", 0 ],
            "obj-54::obj-62": [ "k10[9]", "Fade Out", 0 ],
            "obj-54::obj-67": [ "k11[9]", "End", 0 ],
            "obj-6": [ "master", "master", 0 ],
            "obj-8": [ "output", "output", 0 ],
            "obj-91": [ "file_load_b", "Load", 0 ],
            "obj-92": [ "file_loop_b", "Loop", 0 ],
            "obj-93": [ "file_clear_b", "Clear", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-111::obj-17": {
                    "parameter_longname": "k1[8]"
                },
                "obj-111::obj-22": {
                    "parameter_longname": "k2[8]"
                },
                "obj-111::obj-27": {
                    "parameter_longname": "k3[8]"
                },
                "obj-111::obj-32": {
                    "parameter_longname": "k4[8]"
                },
                "obj-111::obj-37": {
                    "parameter_longname": "k5[8]"
                },
                "obj-111::obj-42": {
                    "parameter_longname": "k6[8]"
                },
                "obj-111::obj-47": {
                    "parameter_longname": "k7[8]"
                },
                "obj-111::obj-52": {
                    "parameter_longname": "k8[8]"
                },
                "obj-111::obj-57": {
                    "parameter_longname": "k9[8]"
                },
                "obj-111::obj-62": {
                    "parameter_longname": "k10[8]"
                },
                "obj-111::obj-67": {
                    "parameter_longname": "k11[8]"
                },
                "obj-150::obj-106": {
                    "parameter_longname": "k4[7]"
                },
                "obj-150::obj-113": {
                    "parameter_longname": "k5[7]"
                },
                "obj-150::obj-120": {
                    "parameter_longname": "k6[7]"
                },
                "obj-150::obj-127": {
                    "parameter_longname": "k7[7]"
                },
                "obj-150::obj-134": {
                    "parameter_longname": "k8[7]"
                },
                "obj-150::obj-141": {
                    "parameter_longname": "k9[7]"
                },
                "obj-150::obj-147": {
                    "parameter_longname": "k10[7]"
                },
                "obj-150::obj-153": {
                    "parameter_longname": "k11[7]"
                },
                "obj-150::obj-159": {
                    "parameter_longname": "k12[7]"
                },
                "obj-150::obj-165": {
                    "parameter_longname": "k13[7]"
                },
                "obj-150::obj-171": {
                    "parameter_longname": "k14[7]"
                },
                "obj-150::obj-177": {
                    "parameter_longname": "k15[7]"
                },
                "obj-150::obj-183": {
                    "parameter_longname": "k16[7]"
                },
                "obj-150::obj-25": {
                    "parameter_longname": "focus[7]"
                },
                "obj-150::obj-27": {
                    "parameter_longname": "bypass[7]"
                },
                "obj-150::obj-28": {
                    "parameter_longname": "module[7]"
                },
                "obj-150::obj-29": {
                    "parameter_longname": "in[7]"
                },
                "obj-150::obj-39": {
                    "parameter_longname": "out[7]"
                },
                "obj-150::obj-50": {
                    "parameter_longname": "mix[7]"
                },
                "obj-150::obj-85": {
                    "parameter_longname": "k1[7]"
                },
                "obj-150::obj-92": {
                    "parameter_longname": "k2[7]"
                },
                "obj-150::obj-99": {
                    "parameter_longname": "k3[7]"
                },
                "obj-151::obj-106": {
                    "parameter_longname": "k4[6]"
                },
                "obj-151::obj-113": {
                    "parameter_longname": "k5[6]"
                },
                "obj-151::obj-120": {
                    "parameter_longname": "k6[6]"
                },
                "obj-151::obj-127": {
                    "parameter_longname": "k7[6]"
                },
                "obj-151::obj-134": {
                    "parameter_longname": "k8[6]"
                },
                "obj-151::obj-141": {
                    "parameter_longname": "k9[6]"
                },
                "obj-151::obj-147": {
                    "parameter_longname": "k10[6]"
                },
                "obj-151::obj-153": {
                    "parameter_longname": "k11[6]"
                },
                "obj-151::obj-159": {
                    "parameter_longname": "k12[6]"
                },
                "obj-151::obj-165": {
                    "parameter_longname": "k13[6]"
                },
                "obj-151::obj-171": {
                    "parameter_longname": "k14[6]"
                },
                "obj-151::obj-177": {
                    "parameter_longname": "k15[6]"
                },
                "obj-151::obj-183": {
                    "parameter_longname": "k16[6]"
                },
                "obj-151::obj-25": {
                    "parameter_longname": "focus[6]"
                },
                "obj-151::obj-27": {
                    "parameter_longname": "bypass[6]"
                },
                "obj-151::obj-28": {
                    "parameter_longname": "module[6]"
                },
                "obj-151::obj-29": {
                    "parameter_longname": "in[6]"
                },
                "obj-151::obj-39": {
                    "parameter_longname": "out[6]"
                },
                "obj-151::obj-50": {
                    "parameter_longname": "mix[6]"
                },
                "obj-151::obj-85": {
                    "parameter_longname": "k1[6]"
                },
                "obj-151::obj-92": {
                    "parameter_longname": "k2[6]"
                },
                "obj-151::obj-99": {
                    "parameter_longname": "k3[6]"
                },
                "obj-152::obj-106": {
                    "parameter_longname": "k4[5]"
                },
                "obj-152::obj-113": {
                    "parameter_longname": "k5[5]"
                },
                "obj-152::obj-120": {
                    "parameter_longname": "k6[5]"
                },
                "obj-152::obj-127": {
                    "parameter_longname": "k7[5]"
                },
                "obj-152::obj-134": {
                    "parameter_longname": "k8[5]"
                },
                "obj-152::obj-141": {
                    "parameter_longname": "k9[5]"
                },
                "obj-152::obj-147": {
                    "parameter_longname": "k10[5]"
                },
                "obj-152::obj-153": {
                    "parameter_longname": "k11[5]"
                },
                "obj-152::obj-159": {
                    "parameter_longname": "k12[5]"
                },
                "obj-152::obj-165": {
                    "parameter_longname": "k13[5]"
                },
                "obj-152::obj-171": {
                    "parameter_longname": "k14[5]"
                },
                "obj-152::obj-177": {
                    "parameter_longname": "k15[5]"
                },
                "obj-152::obj-183": {
                    "parameter_longname": "k16[5]"
                },
                "obj-152::obj-25": {
                    "parameter_longname": "focus[5]"
                },
                "obj-152::obj-27": {
                    "parameter_longname": "bypass[5]"
                },
                "obj-152::obj-28": {
                    "parameter_longname": "module[5]"
                },
                "obj-152::obj-29": {
                    "parameter_longname": "in[5]"
                },
                "obj-152::obj-39": {
                    "parameter_longname": "out[5]"
                },
                "obj-152::obj-50": {
                    "parameter_longname": "mix[5]"
                },
                "obj-152::obj-85": {
                    "parameter_longname": "k1[5]"
                },
                "obj-152::obj-92": {
                    "parameter_longname": "k2[5]"
                },
                "obj-152::obj-99": {
                    "parameter_longname": "k3[5]"
                },
                "obj-153::obj-106": {
                    "parameter_longname": "k4[4]"
                },
                "obj-153::obj-113": {
                    "parameter_longname": "k5[4]"
                },
                "obj-153::obj-120": {
                    "parameter_longname": "k6[4]"
                },
                "obj-153::obj-127": {
                    "parameter_longname": "k7[4]"
                },
                "obj-153::obj-134": {
                    "parameter_longname": "k8[4]"
                },
                "obj-153::obj-141": {
                    "parameter_longname": "k9[4]"
                },
                "obj-153::obj-147": {
                    "parameter_longname": "k10[4]"
                },
                "obj-153::obj-153": {
                    "parameter_longname": "k11[4]"
                },
                "obj-153::obj-159": {
                    "parameter_longname": "k12[4]"
                },
                "obj-153::obj-165": {
                    "parameter_longname": "k13[4]"
                },
                "obj-153::obj-171": {
                    "parameter_longname": "k14[4]"
                },
                "obj-153::obj-177": {
                    "parameter_longname": "k15[4]"
                },
                "obj-153::obj-183": {
                    "parameter_longname": "k16[4]"
                },
                "obj-153::obj-25": {
                    "parameter_longname": "focus[4]"
                },
                "obj-153::obj-27": {
                    "parameter_longname": "bypass[4]"
                },
                "obj-153::obj-28": {
                    "parameter_longname": "module[4]"
                },
                "obj-153::obj-29": {
                    "parameter_longname": "in[4]"
                },
                "obj-153::obj-39": {
                    "parameter_longname": "out[4]"
                },
                "obj-153::obj-50": {
                    "parameter_longname": "mix[4]"
                },
                "obj-153::obj-85": {
                    "parameter_longname": "k1[4]"
                },
                "obj-153::obj-92": {
                    "parameter_longname": "k2[4]"
                },
                "obj-153::obj-99": {
                    "parameter_longname": "k3[4]"
                },
                "obj-154::obj-106": {
                    "parameter_longname": "k4[3]"
                },
                "obj-154::obj-113": {
                    "parameter_longname": "k5[3]"
                },
                "obj-154::obj-120": {
                    "parameter_longname": "k6[3]"
                },
                "obj-154::obj-127": {
                    "parameter_longname": "k7[3]"
                },
                "obj-154::obj-134": {
                    "parameter_longname": "k8[3]"
                },
                "obj-154::obj-141": {
                    "parameter_longname": "k9[3]"
                },
                "obj-154::obj-147": {
                    "parameter_longname": "k10[3]"
                },
                "obj-154::obj-153": {
                    "parameter_longname": "k11[3]"
                },
                "obj-154::obj-159": {
                    "parameter_longname": "k12[3]"
                },
                "obj-154::obj-165": {
                    "parameter_longname": "k13[3]"
                },
                "obj-154::obj-171": {
                    "parameter_longname": "k14[3]"
                },
                "obj-154::obj-177": {
                    "parameter_longname": "k15[3]"
                },
                "obj-154::obj-183": {
                    "parameter_longname": "k16[3]"
                },
                "obj-154::obj-25": {
                    "parameter_longname": "focus[3]"
                },
                "obj-154::obj-27": {
                    "parameter_longname": "bypass[3]"
                },
                "obj-154::obj-28": {
                    "parameter_longname": "module[3]"
                },
                "obj-154::obj-29": {
                    "parameter_longname": "in[3]"
                },
                "obj-154::obj-39": {
                    "parameter_longname": "out[3]"
                },
                "obj-154::obj-50": {
                    "parameter_longname": "mix[3]"
                },
                "obj-154::obj-85": {
                    "parameter_longname": "k1[3]"
                },
                "obj-154::obj-92": {
                    "parameter_longname": "k2[3]"
                },
                "obj-154::obj-99": {
                    "parameter_longname": "k3[3]"
                },
                "obj-155::obj-106": {
                    "parameter_longname": "k4[2]"
                },
                "obj-155::obj-113": {
                    "parameter_longname": "k5[2]"
                },
                "obj-155::obj-120": {
                    "parameter_longname": "k6[2]"
                },
                "obj-155::obj-127": {
                    "parameter_longname": "k7[2]"
                },
                "obj-155::obj-134": {
                    "parameter_longname": "k8[2]"
                },
                "obj-155::obj-141": {
                    "parameter_longname": "k9[2]"
                },
                "obj-155::obj-147": {
                    "parameter_longname": "k10[2]"
                },
                "obj-155::obj-153": {
                    "parameter_longname": "k11[2]"
                },
                "obj-155::obj-159": {
                    "parameter_longname": "k12[2]"
                },
                "obj-155::obj-165": {
                    "parameter_longname": "k13[2]"
                },
                "obj-155::obj-171": {
                    "parameter_longname": "k14[2]"
                },
                "obj-155::obj-177": {
                    "parameter_longname": "k15[2]"
                },
                "obj-155::obj-183": {
                    "parameter_longname": "k16[2]"
                },
                "obj-155::obj-25": {
                    "parameter_longname": "focus[2]"
                },
                "obj-155::obj-27": {
                    "parameter_longname": "bypass[2]"
                },
                "obj-155::obj-28": {
                    "parameter_longname": "module[2]"
                },
                "obj-155::obj-29": {
                    "parameter_longname": "in[2]"
                },
                "obj-155::obj-39": {
                    "parameter_longname": "out[2]"
                },
                "obj-155::obj-50": {
                    "parameter_longname": "mix[2]"
                },
                "obj-155::obj-85": {
                    "parameter_longname": "k1[2]"
                },
                "obj-155::obj-92": {
                    "parameter_longname": "k2[2]"
                },
                "obj-155::obj-99": {
                    "parameter_longname": "k3[2]"
                },
                "obj-156::obj-106": {
                    "parameter_longname": "k4[1]"
                },
                "obj-156::obj-113": {
                    "parameter_longname": "k5[1]"
                },
                "obj-156::obj-120": {
                    "parameter_longname": "k6[1]"
                },
                "obj-156::obj-127": {
                    "parameter_longname": "k7[1]"
                },
                "obj-156::obj-134": {
                    "parameter_longname": "k8[1]"
                },
                "obj-156::obj-141": {
                    "parameter_longname": "k9[1]"
                },
                "obj-156::obj-147": {
                    "parameter_longname": "k10[1]"
                },
                "obj-156::obj-153": {
                    "parameter_longname": "k11[1]"
                },
                "obj-156::obj-159": {
                    "parameter_longname": "k12[1]"
                },
                "obj-156::obj-165": {
                    "parameter_longname": "k13[1]"
                },
                "obj-156::obj-171": {
                    "parameter_longname": "k14[1]"
                },
                "obj-156::obj-177": {
                    "parameter_longname": "k15[1]"
                },
                "obj-156::obj-183": {
                    "parameter_longname": "k16[1]"
                },
                "obj-156::obj-25": {
                    "parameter_longname": "focus[1]"
                },
                "obj-156::obj-27": {
                    "parameter_longname": "bypass[1]"
                },
                "obj-156::obj-28": {
                    "parameter_longname": "module[1]"
                },
                "obj-156::obj-29": {
                    "parameter_longname": "in[1]"
                },
                "obj-156::obj-39": {
                    "parameter_longname": "out[1]"
                },
                "obj-156::obj-50": {
                    "parameter_longname": "mix[1]"
                },
                "obj-156::obj-85": {
                    "parameter_longname": "k1[1]"
                },
                "obj-156::obj-92": {
                    "parameter_longname": "k2[1]"
                },
                "obj-156::obj-99": {
                    "parameter_longname": "k3[1]"
                },
                "obj-343::obj-10": {
                    "parameter_longname": "sync[15]"
                },
                "obj-343::obj-12": {
                    "parameter_longname": "rate[15]"
                },
                "obj-343::obj-15": {
                    "parameter_longname": "depth[15]"
                },
                "obj-343::obj-17": {
                    "parameter_longname": "smooth[15]"
                },
                "obj-343::obj-23": {
                    "parameter_longname": "r1slot[15]"
                },
                "obj-343::obj-27": {
                    "parameter_longname": "r1learn[15]"
                },
                "obj-343::obj-29": {
                    "parameter_longname": "r2slot[15]"
                },
                "obj-343::obj-33": {
                    "parameter_longname": "r2learn[15]"
                },
                "obj-343::obj-35": {
                    "parameter_longname": "r3slot[15]"
                },
                "obj-343::obj-39": {
                    "parameter_longname": "r3learn[15]"
                },
                "obj-343::obj-6": {
                    "parameter_longname": "on[15]"
                },
                "obj-343::obj-8": {
                    "parameter_longname": "shape[15]"
                },
                "obj-344::obj-10": {
                    "parameter_longname": "sync[14]"
                },
                "obj-344::obj-12": {
                    "parameter_longname": "rate[14]"
                },
                "obj-344::obj-15": {
                    "parameter_longname": "depth[14]"
                },
                "obj-344::obj-17": {
                    "parameter_longname": "smooth[14]"
                },
                "obj-344::obj-23": {
                    "parameter_longname": "r1slot[14]"
                },
                "obj-344::obj-27": {
                    "parameter_longname": "r1learn[14]"
                },
                "obj-344::obj-29": {
                    "parameter_longname": "r2slot[14]"
                },
                "obj-344::obj-33": {
                    "parameter_longname": "r2learn[14]"
                },
                "obj-344::obj-35": {
                    "parameter_longname": "r3slot[14]"
                },
                "obj-344::obj-39": {
                    "parameter_longname": "r3learn[14]"
                },
                "obj-344::obj-6": {
                    "parameter_longname": "on[14]"
                },
                "obj-344::obj-8": {
                    "parameter_longname": "shape[14]"
                },
                "obj-345::obj-10": {
                    "parameter_longname": "sync[13]"
                },
                "obj-345::obj-12": {
                    "parameter_longname": "rate[13]"
                },
                "obj-345::obj-15": {
                    "parameter_longname": "depth[13]"
                },
                "obj-345::obj-17": {
                    "parameter_longname": "smooth[13]"
                },
                "obj-345::obj-23": {
                    "parameter_longname": "r1slot[13]"
                },
                "obj-345::obj-27": {
                    "parameter_longname": "r1learn[13]"
                },
                "obj-345::obj-29": {
                    "parameter_longname": "r2slot[13]"
                },
                "obj-345::obj-33": {
                    "parameter_longname": "r2learn[13]"
                },
                "obj-345::obj-35": {
                    "parameter_longname": "r3slot[13]"
                },
                "obj-345::obj-39": {
                    "parameter_longname": "r3learn[13]"
                },
                "obj-345::obj-6": {
                    "parameter_longname": "on[13]"
                },
                "obj-345::obj-8": {
                    "parameter_longname": "shape[13]"
                },
                "obj-346::obj-10": {
                    "parameter_longname": "sync[12]"
                },
                "obj-346::obj-12": {
                    "parameter_longname": "rate[12]"
                },
                "obj-346::obj-15": {
                    "parameter_longname": "depth[12]"
                },
                "obj-346::obj-17": {
                    "parameter_longname": "smooth[12]"
                },
                "obj-346::obj-23": {
                    "parameter_longname": "r1slot[12]"
                },
                "obj-346::obj-27": {
                    "parameter_longname": "r1learn[12]"
                },
                "obj-346::obj-29": {
                    "parameter_longname": "r2slot[12]"
                },
                "obj-346::obj-33": {
                    "parameter_longname": "r2learn[12]"
                },
                "obj-346::obj-35": {
                    "parameter_longname": "r3slot[12]"
                },
                "obj-346::obj-39": {
                    "parameter_longname": "r3learn[12]"
                },
                "obj-346::obj-6": {
                    "parameter_longname": "on[12]"
                },
                "obj-346::obj-8": {
                    "parameter_longname": "shape[12]"
                },
                "obj-347::obj-10": {
                    "parameter_longname": "sync[11]"
                },
                "obj-347::obj-12": {
                    "parameter_longname": "rate[11]"
                },
                "obj-347::obj-15": {
                    "parameter_longname": "depth[11]"
                },
                "obj-347::obj-17": {
                    "parameter_longname": "smooth[11]"
                },
                "obj-347::obj-23": {
                    "parameter_longname": "r1slot[11]"
                },
                "obj-347::obj-27": {
                    "parameter_longname": "r1learn[11]"
                },
                "obj-347::obj-29": {
                    "parameter_longname": "r2slot[11]"
                },
                "obj-347::obj-33": {
                    "parameter_longname": "r2learn[11]"
                },
                "obj-347::obj-35": {
                    "parameter_longname": "r3slot[11]"
                },
                "obj-347::obj-39": {
                    "parameter_longname": "r3learn[11]"
                },
                "obj-347::obj-6": {
                    "parameter_longname": "on[11]"
                },
                "obj-347::obj-8": {
                    "parameter_longname": "shape[11]"
                },
                "obj-348::obj-10": {
                    "parameter_longname": "sync[10]"
                },
                "obj-348::obj-12": {
                    "parameter_longname": "rate[10]"
                },
                "obj-348::obj-15": {
                    "parameter_longname": "depth[10]"
                },
                "obj-348::obj-17": {
                    "parameter_longname": "smooth[10]"
                },
                "obj-348::obj-23": {
                    "parameter_longname": "r1slot[10]"
                },
                "obj-348::obj-27": {
                    "parameter_longname": "r1learn[10]"
                },
                "obj-348::obj-29": {
                    "parameter_longname": "r2slot[10]"
                },
                "obj-348::obj-33": {
                    "parameter_longname": "r2learn[10]"
                },
                "obj-348::obj-35": {
                    "parameter_longname": "r3slot[10]"
                },
                "obj-348::obj-39": {
                    "parameter_longname": "r3learn[10]"
                },
                "obj-348::obj-6": {
                    "parameter_longname": "on[10]"
                },
                "obj-348::obj-8": {
                    "parameter_longname": "shape[10]"
                },
                "obj-349::obj-10": {
                    "parameter_longname": "sync[9]"
                },
                "obj-349::obj-12": {
                    "parameter_longname": "rate[9]"
                },
                "obj-349::obj-15": {
                    "parameter_longname": "depth[9]"
                },
                "obj-349::obj-17": {
                    "parameter_longname": "smooth[9]"
                },
                "obj-349::obj-23": {
                    "parameter_longname": "r1slot[9]"
                },
                "obj-349::obj-27": {
                    "parameter_longname": "r1learn[9]"
                },
                "obj-349::obj-29": {
                    "parameter_longname": "r2slot[9]"
                },
                "obj-349::obj-33": {
                    "parameter_longname": "r2learn[9]"
                },
                "obj-349::obj-35": {
                    "parameter_longname": "r3slot[9]"
                },
                "obj-349::obj-39": {
                    "parameter_longname": "r3learn[9]"
                },
                "obj-349::obj-6": {
                    "parameter_longname": "on[9]"
                },
                "obj-349::obj-8": {
                    "parameter_longname": "shape[9]"
                },
                "obj-350::obj-10": {
                    "parameter_longname": "sync[8]"
                },
                "obj-350::obj-12": {
                    "parameter_longname": "rate[8]"
                },
                "obj-350::obj-15": {
                    "parameter_longname": "depth[8]"
                },
                "obj-350::obj-17": {
                    "parameter_longname": "smooth[8]"
                },
                "obj-350::obj-23": {
                    "parameter_longname": "r1slot[8]"
                },
                "obj-350::obj-27": {
                    "parameter_longname": "r1learn[8]"
                },
                "obj-350::obj-29": {
                    "parameter_longname": "r2slot[8]"
                },
                "obj-350::obj-33": {
                    "parameter_longname": "r2learn[8]"
                },
                "obj-350::obj-35": {
                    "parameter_longname": "r3slot[8]"
                },
                "obj-350::obj-39": {
                    "parameter_longname": "r3learn[8]"
                },
                "obj-350::obj-6": {
                    "parameter_longname": "on[8]"
                },
                "obj-350::obj-8": {
                    "parameter_longname": "shape[8]"
                },
                "obj-351::obj-10": {
                    "parameter_longname": "sync[7]"
                },
                "obj-351::obj-12": {
                    "parameter_longname": "rate[7]"
                },
                "obj-351::obj-15": {
                    "parameter_longname": "depth[7]"
                },
                "obj-351::obj-17": {
                    "parameter_longname": "smooth[7]"
                },
                "obj-351::obj-23": {
                    "parameter_longname": "r1slot[7]"
                },
                "obj-351::obj-27": {
                    "parameter_longname": "r1learn[7]"
                },
                "obj-351::obj-29": {
                    "parameter_longname": "r2slot[7]"
                },
                "obj-351::obj-33": {
                    "parameter_longname": "r2learn[7]"
                },
                "obj-351::obj-35": {
                    "parameter_longname": "r3slot[7]"
                },
                "obj-351::obj-39": {
                    "parameter_longname": "r3learn[7]"
                },
                "obj-351::obj-6": {
                    "parameter_longname": "on[7]"
                },
                "obj-351::obj-8": {
                    "parameter_longname": "shape[7]"
                },
                "obj-352::obj-10": {
                    "parameter_longname": "sync[6]"
                },
                "obj-352::obj-12": {
                    "parameter_longname": "rate[6]"
                },
                "obj-352::obj-15": {
                    "parameter_longname": "depth[6]"
                },
                "obj-352::obj-17": {
                    "parameter_longname": "smooth[6]"
                },
                "obj-352::obj-23": {
                    "parameter_longname": "r1slot[6]"
                },
                "obj-352::obj-27": {
                    "parameter_longname": "r1learn[6]"
                },
                "obj-352::obj-29": {
                    "parameter_longname": "r2slot[6]"
                },
                "obj-352::obj-33": {
                    "parameter_longname": "r2learn[6]"
                },
                "obj-352::obj-35": {
                    "parameter_longname": "r3slot[6]"
                },
                "obj-352::obj-39": {
                    "parameter_longname": "r3learn[6]"
                },
                "obj-352::obj-6": {
                    "parameter_longname": "on[6]"
                },
                "obj-352::obj-8": {
                    "parameter_longname": "shape[6]"
                },
                "obj-353::obj-10": {
                    "parameter_longname": "sync[5]"
                },
                "obj-353::obj-12": {
                    "parameter_longname": "rate[5]"
                },
                "obj-353::obj-15": {
                    "parameter_longname": "depth[5]"
                },
                "obj-353::obj-17": {
                    "parameter_longname": "smooth[5]"
                },
                "obj-353::obj-23": {
                    "parameter_longname": "r1slot[5]"
                },
                "obj-353::obj-27": {
                    "parameter_longname": "r1learn[5]"
                },
                "obj-353::obj-29": {
                    "parameter_longname": "r2slot[5]"
                },
                "obj-353::obj-33": {
                    "parameter_longname": "r2learn[5]"
                },
                "obj-353::obj-35": {
                    "parameter_longname": "r3slot[5]"
                },
                "obj-353::obj-39": {
                    "parameter_longname": "r3learn[5]"
                },
                "obj-353::obj-6": {
                    "parameter_longname": "on[5]"
                },
                "obj-353::obj-8": {
                    "parameter_longname": "shape[5]"
                },
                "obj-354::obj-10": {
                    "parameter_longname": "sync[4]"
                },
                "obj-354::obj-12": {
                    "parameter_longname": "rate[4]"
                },
                "obj-354::obj-15": {
                    "parameter_longname": "depth[4]"
                },
                "obj-354::obj-17": {
                    "parameter_longname": "smooth[4]"
                },
                "obj-354::obj-23": {
                    "parameter_longname": "r1slot[4]"
                },
                "obj-354::obj-27": {
                    "parameter_longname": "r1learn[4]"
                },
                "obj-354::obj-29": {
                    "parameter_longname": "r2slot[4]"
                },
                "obj-354::obj-33": {
                    "parameter_longname": "r2learn[4]"
                },
                "obj-354::obj-35": {
                    "parameter_longname": "r3slot[4]"
                },
                "obj-354::obj-39": {
                    "parameter_longname": "r3learn[4]"
                },
                "obj-354::obj-6": {
                    "parameter_longname": "on[4]"
                },
                "obj-354::obj-8": {
                    "parameter_longname": "shape[4]"
                },
                "obj-355::obj-10": {
                    "parameter_longname": "sync[3]"
                },
                "obj-355::obj-12": {
                    "parameter_longname": "rate[3]"
                },
                "obj-355::obj-15": {
                    "parameter_longname": "depth[3]"
                },
                "obj-355::obj-17": {
                    "parameter_longname": "smooth[3]"
                },
                "obj-355::obj-23": {
                    "parameter_longname": "r1slot[3]"
                },
                "obj-355::obj-27": {
                    "parameter_longname": "r1learn[3]"
                },
                "obj-355::obj-29": {
                    "parameter_longname": "r2slot[3]"
                },
                "obj-355::obj-33": {
                    "parameter_longname": "r2learn[3]"
                },
                "obj-355::obj-35": {
                    "parameter_longname": "r3slot[3]"
                },
                "obj-355::obj-39": {
                    "parameter_longname": "r3learn[3]"
                },
                "obj-355::obj-6": {
                    "parameter_longname": "on[3]"
                },
                "obj-355::obj-8": {
                    "parameter_longname": "shape[3]"
                },
                "obj-356::obj-10": {
                    "parameter_longname": "sync[2]"
                },
                "obj-356::obj-12": {
                    "parameter_longname": "rate[2]"
                },
                "obj-356::obj-15": {
                    "parameter_longname": "depth[2]"
                },
                "obj-356::obj-17": {
                    "parameter_longname": "smooth[2]"
                },
                "obj-356::obj-23": {
                    "parameter_longname": "r1slot[2]"
                },
                "obj-356::obj-27": {
                    "parameter_longname": "r1learn[2]"
                },
                "obj-356::obj-29": {
                    "parameter_longname": "r2slot[2]"
                },
                "obj-356::obj-33": {
                    "parameter_longname": "r2learn[2]"
                },
                "obj-356::obj-35": {
                    "parameter_longname": "r3slot[2]"
                },
                "obj-356::obj-39": {
                    "parameter_longname": "r3learn[2]"
                },
                "obj-356::obj-6": {
                    "parameter_longname": "on[2]"
                },
                "obj-356::obj-8": {
                    "parameter_longname": "shape[2]"
                },
                "obj-357::obj-10": {
                    "parameter_longname": "sync[1]"
                },
                "obj-357::obj-12": {
                    "parameter_longname": "rate[1]"
                },
                "obj-357::obj-15": {
                    "parameter_longname": "depth[1]"
                },
                "obj-357::obj-17": {
                    "parameter_longname": "smooth[1]"
                },
                "obj-357::obj-23": {
                    "parameter_longname": "r1slot[1]"
                },
                "obj-357::obj-27": {
                    "parameter_longname": "r1learn[1]"
                },
                "obj-357::obj-29": {
                    "parameter_longname": "r2slot[1]"
                },
                "obj-357::obj-33": {
                    "parameter_longname": "r2learn[1]"
                },
                "obj-357::obj-35": {
                    "parameter_longname": "r3slot[1]"
                },
                "obj-357::obj-39": {
                    "parameter_longname": "r3learn[1]"
                },
                "obj-357::obj-6": {
                    "parameter_longname": "on[1]"
                },
                "obj-357::obj-8": {
                    "parameter_longname": "shape[1]"
                },
                "obj-54::obj-17": {
                    "parameter_longname": "k1[9]"
                },
                "obj-54::obj-22": {
                    "parameter_longname": "k2[9]"
                },
                "obj-54::obj-27": {
                    "parameter_longname": "k3[9]"
                },
                "obj-54::obj-32": {
                    "parameter_longname": "k4[9]"
                },
                "obj-54::obj-37": {
                    "parameter_longname": "k5[9]"
                },
                "obj-54::obj-42": {
                    "parameter_longname": "k6[9]"
                },
                "obj-54::obj-47": {
                    "parameter_longname": "k7[9]"
                },
                "obj-54::obj-52": {
                    "parameter_longname": "k8[9]"
                },
                "obj-54::obj-57": {
                    "parameter_longname": "k9[9]"
                },
                "obj-54::obj-62": {
                    "parameter_longname": "k10[9]"
                },
                "obj-54::obj-67": {
                    "parameter_longname": "k11[9]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}