{
	"name" : "M4L-rhythm-can",
	"version" : 1,
	"creationdate" : 3689165166,
	"modificationdate" : 3697368409,
	"viewrect" : [ 25.0, 104.0, 300.0, 500.0 ],
	"autoorganize" : 1,
	"hideprojectwindow" : 0,
	"showdependencies" : 1,
	"autolocalize" : 0,
	"contents" : 	{
		"patchers" : 		{
			"rhythm-gan.maxpat" : 			{
				"kind" : "patcher",
				"toplevel" : 1
			}
,
			"makenote_for_me.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"setup_1_16.maxpat" : 			{
				"kind" : "patcher"
			}
,
			"shuffle_metro.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"count_for_me.maxpat" : 			{
				"kind" : "patcher"
			}

		}
,
		"code" : 		{
			"rhythm-gan.js" : 			{
				"kind" : "javascript",
				"local" : 1,
				"singleton" : 				{
					"bootpath" : "~/git/_Public/M4L-x-rhythm-can",
					"projectrelativepath" : ".."
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
			"bootpath" : "~/git/_Public/M4L-x-rhythm-can/node_modules",
			"projectrelativepath" : "../node_modules",
			"label" : "",
			"recursive" : 1,
			"enabled" : 1,
			"includeincollective" : 1
		}
,
		"1" : 		{
			"bootpath" : "~/git/_Public/M4L-x-rhythm-can/subpatches",
			"projectrelativepath" : "../subpatches",
			"label" : "",
			"recursive" : 1,
			"enabled" : 1,
			"includeincollective" : 1
		}
,
		"2" : 		{
			"bootpath" : "~/git/_Public/M4L-x-rhythm-can/src",
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
	"viewmode" : 0
}
