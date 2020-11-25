{
	"name" : "M4L-x-rhtythm-can",
	"version" : 1,
	"creationdate" : 3660386473,
	"modificationdate" : 3689163555,
	"viewrect" : [ 62.0, 311.0, 300.0, 500.0 ],
	"autoorganize" : 1,
	"hideprojectwindow" : 0,
	"showdependencies" : 1,
	"autolocalize" : 0,
	"contents" : 	{
		"patchers" : 		{
			"rhythm-gan.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1,
				"singleton" : 				{
					"bootpath" : "~/Documents/GitHub/M4L-x-rhythm-can",
					"projectrelativepath" : ".."
				}

			}
,
			"count_for_me.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"makenote_for_me.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"setup_1_16.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"shuffle_metro.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}

		}
,
		"code" : 		{
			"constants.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"rhythmvae.js" : 			{
				"kind" : "javascript",
				"local" : 1,
				"singleton" : 				{
					"bootpath" : "~/Documents/GitHub/RhythmVAE_M4L",
					"projectrelativepath" : "../../RhythmVAE_M4L"
				}

			}

		}

	}
,
	"layout" : 	{

	}
,
	"searchpath" : 	{
		"0" : 		{
			"bootpath" : "~/Documents/GitHub/M4L-x-rhythm-can/subpatches",
			"projectrelativepath" : "../subpatches",
			"label" : "",
			"recursive" : 1,
			"enabled" : 1,
			"includeincollective" : 1
		}
,
		"1" : 		{
			"bootpath" : "~/Documents/GitHub/M4L-x-rhythm-can/src",
			"projectrelativepath" : "../src",
			"label" : "",
			"recursive" : 1,
			"enabled" : 1,
			"includeincollective" : 1
		}

	}
,
	"detailsvisible" : 0,
	"amxdtype" : 1835887981,
	"readonly" : 0,
	"devpathtype" : 0,
	"devpath" : ".",
	"sortmode" : 0,
	"viewmode" : 1
}
