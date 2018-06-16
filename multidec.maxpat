{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 62.0, 79.0, 1312.0, 742.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 235.0, 56.0, 22.0 ],
					"style" : "",
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 438.0, 206.0, 45.0, 22.0 ],
					"presentation_rect" : [ 415.0, 205.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "% 360"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 496.28125, 167.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "+ 57"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 431.5, 118.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "+ 45"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 375.0, 194.0, 45.0, 22.0 ],
					"style" : "",
					"text" : "% 360"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 723.0, 455.0, 135.0, 22.0 ],
					"style" : "",
					"text" : "appendnewOutlet 2 1 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 563.640625, 371.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 803.0, 538.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "mousestate"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"clips" : [ 							{
								"filename" : "Macintosh HD:/Users/Jonas/Downloads/Radiohead - Daydreaming.mp3",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
 ]
					}
,
					"id" : "obj-25",
					"maxclass" : "playlist~",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"patching_rect" : [ 585.0, 142.0, 150.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 123.0, 276.0, 84.0, 22.0 ],
					"style" : "",
					"text" : "aed 2 $1 $2 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 219.0, 206.0, 45.0, 22.0 ],
					"style" : "",
					"text" : "% 360"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 221.0, 159.0, 41.0, 22.0 ],
					"style" : "",
					"text" : "+ 180"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-428",
					"maxclass" : "newobj",
					"numinlets" : 17,
					"numoutlets" : 9,
					"outlettype" : [ "", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 496.28125, 422.0, 103.0, 22.0 ],
					"style" : "",
					"text" : "multi_dec~",
					"varname" : "decoder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 329.0, 333.0, 59.0, 22.0 ],
					"style" : "",
					"text" : "makedac"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-391",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 36,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 525.5, 333.0, 386.5, 22.0 ],
					"saved_object_attributes" : 					{
						"active" : [ 1, 1 ],
						"aed_scale" : 10.0,
						"center_att_db" : 6.0,
						"center_curve" : 0.2,
						"center_size" : 1.0,
						"coord_angles" : 0,
						"coord_system" : 0,
						"db_unit" : 1.5,
						"dist_att" : 1.0,
						"distance_mode" : 1,
						"gain" : 1.0,
						"interpolation" : 1,
						"order" : 5,
						"type" : 1,
						"xyz_scale" : 10.0
					}
,
					"style" : "",
					"text" : "ambiencode~ 5 2",
					"varname" : "encoder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 960.75, 118.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 975.0, 167.0, 56.0, 22.0 ],
					"style" : "",
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 975.0, 231.744507, 69.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 975.0, 197.0, 211.0, 22.0 ],
					"style" : "",
					"text" : "script connect encoder $1 decoder $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 951.0, 32.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 951.0, 63.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "uzi 144"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 496.28125, 531.0, 158.71875, 317.4375 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"border_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"circle_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"coord_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"grid" : 1,
					"grid_color" : [ 0.372549, 0.196078, 0.486275, 1.0 ],
					"id" : "obj-21",
					"line_color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"lines" : 1,
					"maxclass" : "ambimonitor",
					"mode" : 2,
					"name_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numbers" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 496.28125, 531.0, 158.71875, 317.4375 ],
					"point_color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"presentation_rect" : [ 834.5, 522.0, 20.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 428.0, 52.0, 22.0 ],
					"style" : "",
					"text" : "compile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 506.0, 37.0, 22.0 ],
					"style" : "",
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 465.0, 61.0, 22.0 ],
					"style" : "",
					"text" : "postStats"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 257.0, 344.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 385.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "protectio $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 407.5, 340.0, 82.0, 22.0 ],
					"style" : "",
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 29.0,
					"data" : 					{
						"clips" : [ 							{
								"filename" : "anton.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "cello-f2.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "cherokee.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "drumLoop.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "jongly.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "prim.loop.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "rainstick.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "sho0630.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "social.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "vibes-a1.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "Macintosh HD:/Applications/Max.app/Contents/Resources/C74/packages/MaxIntroLessons/media/vibes-a1.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{
									"originallength" : [ 0.0, "ticks" ],
									"basictuning" : [ 440 ],
									"followglobaltempo" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"slurtime" : [ 0.0 ],
									"play" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ],
									"quality" : [ "basic" ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"speed" : [ 1.0 ],
									"mode" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
 ]
					}
,
					"id" : "obj-417",
					"maxclass" : "playlist~",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"patching_rect" : [ 21.0, 344.0, 150.0, 330.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-412",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 201.0, 76.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-409",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 108.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "pack 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-404",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 225.0, 50.0, 49.0 ],
					"style" : "",
					"text" : "aed 1 177. 42. 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-402",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 32.0, 81.0, 22.0 ],
					"style" : "",
					"text" : "0, 360 20000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-400",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 76.0, 40.0, 22.0 ],
					"style" : "",
					"text" : "line"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"id" : "obj-4",
					"items" : [ "Furse-Malham", ",", "N3D", ",", "SN3D" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.5, 231.744507, 112.0, 22.0 ],
					"style" : "",
					"textcolor" : [ 0.360784, 0.341176, 0.321569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"bgcolor2" : [ 0.685, 0.685, 0.685, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_color1" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"bgfillcolor_color2" : [ 0.685, 0.685, 0.685, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "gradient",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"gradient" : 1,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 525.5, 253.0, 60.0, 21.0 ],
					"style" : "",
					"text" : "type $1",
					"textcolor" : [ 0.360784, 0.341176, 0.321569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-394",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 54.0, 154.0, 84.0, 22.0 ],
					"style" : "",
					"text" : "aed 1 $1 $2 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-392",
					"maxclass" : "ambimonitor",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 998.5, 304.0, 200.0, 400.0 ],
					"presentation_rect" : [ 0.0, 0.0, 20.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 0,
					"patching_rect" : [ 526.0, 472.0, 116.0, 22.0 ],
					"style" : "",
					"text" : "dac~ 1 2 3 4 5 6 7 8",
					"varname" : "ambi_dac_child_133768"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 0 ],
					"midpoints" : [ 505.78125, 857.0, 483.0, 857.0, 483.0, 378.0, 500.0, 378.0, 500.0, 324.0, 417.0, 324.0 ],
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-391", 1 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-391", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"order" : 0,
					"source" : [ "obj-26", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 16 ],
					"source" : [ "obj-391", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 15 ],
					"source" : [ "obj-391", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 14 ],
					"source" : [ "obj-391", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 13 ],
					"source" : [ "obj-391", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 12 ],
					"source" : [ "obj-391", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 11 ],
					"source" : [ "obj-391", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 10 ],
					"source" : [ "obj-391", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 9 ],
					"source" : [ "obj-391", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 8 ],
					"source" : [ "obj-391", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 7 ],
					"source" : [ "obj-391", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 6 ],
					"source" : [ "obj-391", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 5 ],
					"source" : [ "obj-391", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 4 ],
					"source" : [ "obj-391", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 3 ],
					"source" : [ "obj-391", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 2 ],
					"source" : [ "obj-391", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 1 ],
					"source" : [ "obj-391", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-391", 0 ],
					"source" : [ "obj-392", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 0 ],
					"midpoints" : [ 63.5, 191.0, 288.0, 191.0, 288.0, 6.0, 1008.0, 6.0 ],
					"order" : 0,
					"source" : [ "obj-394", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-404", 1 ],
					"order" : 1,
					"source" : [ "obj-394", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 0,
					"source" : [ "obj-400", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-402", 0 ],
					"source" : [ "obj-400", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-409", 0 ],
					"order" : 1,
					"source" : [ "obj-400", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-400", 0 ],
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-394", 0 ],
					"source" : [ "obj-409", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-409", 1 ],
					"source" : [ "obj-412", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-391", 0 ],
					"midpoints" : [ 30.5, 693.0, 243.0, 693.0, 243.0, 295.0, 535.0, 295.0 ],
					"source" : [ "obj-417", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 7 ],
					"source" : [ "obj-428", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 6 ],
					"source" : [ "obj-428", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 5 ],
					"source" : [ "obj-428", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 4 ],
					"source" : [ "obj-428", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 3 ],
					"source" : [ "obj-428", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 2 ],
					"source" : [ "obj-428", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"source" : [ "obj-428", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-428", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-428", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-391", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "anton.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "cello-f2.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "cherokee.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "drumLoop.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "jongly.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "prim.loop.aif",
				"bootpath" : "C74:/packages/max-mxj/examples",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "rainstick.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "sho0630.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "social.aif",
				"bootpath" : "C74:/packages/max-mxj/examples",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "vibes-a1.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "multi_dec~.maxpat",
				"bootpath" : "~/Dropbox/gendsp/multi_dec",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "multidec_core.js",
				"bootpath" : "~/Dropbox/gendsp/multi_dec",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "Radiohead - Daydreaming.mp3",
				"bootpath" : "~/Downloads",
				"patcherrelativepath" : "../../../Downloads",
				"type" : "Mp3 ",
				"implicit" : 1
			}
, 			{
				"name" : "ambimonitor.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ambiencode~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
