#include "BalloonTypes.r"

#include "date.h"
#include "patchlevel.h"

resource 'vers' (1, purgeable) {
	VERSION_MAJOR, (VERSION_MINOR<<4) | PATCHLEVEL, beta, EDITLEVEL, verUS,
	VERSION_STRING,
	VERSION_STRING
};

resource 'vers' (2, purgeable) {
	VERSION_MAJOR, (VERSION_MINOR<<4) | PATCHLEVEL, beta, EDITLEVEL, verUS,
	VERSION_STRING,
	"slashem.cjb.net"
};

resource 'SIZE' (-1) {
	reserved,
	acceptSuspendResumeEvents,
	reserved,
	canBackground,
	doesActivateOnFGSwitch,
	backgroundAndForeground,
	dontGetFrontClicks,
	ignoreAppDiedEvents,
	is32BitCompatible,
	notHighLevelEventAware,
	onlyLocalHLEvents,
	notStationeryAware,
	dontUseTextEditServices,
	reserved,
	reserved,
	reserved,
	3000 * 1024,		/* recommended */
	2000 * 1024		/* absolute minimum, to be determined */
};

/* Classic help balloon information */
resource 'hfdr' (-5696, purgeable) { 
     HelpMgrVersion, hmDefaultOptions, 0, 0, /* header information */ 
	    { HMSTRResItem { /* use 'STR ' resource 2000 */ 2000 } 
	} 
};

resource 'STR ' (2000, purgeable) { /* Help message for app icon */
   "Slash'EM\nThis is the famous Dungeons and Dragons*-like game ported to the Macintosh." 
};

resource 'STR '(-16396, purgeable) {	/* Will be copied to the saved file. */
	"Slash'EM"							/* See Inside Mac VI, page 9-21.	 */
};

resource 'WIND' (128, "NULL") {
	{40, 40, 140, 162},
	documentProc,
	invisible,
	goAway,
	0x0,
	"Null Window !",
	staggerMainScreen
};

resource 'WIND' (129, "Message") {
	{264, 8, 330, 240},
	documentProc,
	invisible,
	noGoAway,
	0x0,
	"Message",
	staggerMainScreen
};

resource 'WIND' (130, "Status") {
	{302, 4, 338, 458},
	documentProc,
	invisible,
	noGoAway,
	0x0,
	"Status",
	staggerMainScreen
};

resource 'WIND' (131, "Dungeon") {
	{40, 40, 330, 494},
	documentProc,
	invisible,
	noGoAway,
	0x0,
	"Dungeon Map",
	staggerMainScreen
};

resource 'WIND' (132, "Menu") {
	{124, 218, 248, 394},
	documentProc,
	invisible,
	goAway,
	0x0,
	"",
	staggerMainScreen
};

resource 'WIND' (133, "Text") {
	{190, 6, 336, 306},
	documentProc,
	invisible,
	goAway,
	0x0,
	"Info",
	staggerMainScreen
};

resource 'WIND' (134, "Diagnostics") {
	{40, 40, 172, 460},
	documentProc,
	invisible,
	goAway,
	0x0,
	"Diagnostics",
	staggerMainScreen
};

resource 'WIND' (135, "TTY Window") {
	{48, 16, 322, 493},
	noGrowDocProc,
	invisible,
	noGoAway,
	0x0,
	"Dungeon Map",
	centerMainScreen
};

data 'TMPL' (128, "Nump") {
	$"0E4E 756D 6265 7220 6F66 206B 6579 734F"            /* .Number of keysO */
	$"434E 5405 2A2A 2A2A 2A4C 5354 4307 4B65"            /* CNT.*****LSTC.Ke */
	$"7963 6F64 6548 4259 5404 4368 6172 4348"            /* ycodeHBYT.CharCH */
	$"4152 052A 2A2A 2A2A 4C53 5445"                      /* AR.*****LSTE */
};

data 'TMPL' (129, "MNU#") {
	$"0B31 7374 206D 656E 7520 4944 4457 5244"            /* .1st menu IDDWRD */
	$"0A23 206F 6620 4D45 4E55 734F 434E 5405"            /* .# of MENUsOCNT. */
	$"2A2A 2A2A 2A4C 5354 4306 5265 7320 4944"            /* *****LSTC.Res ID */
	$"4457 5244 0852 6573 6572 7665 6446 5752"            /* DWRD.ReservedFWR */
	$"4405 2A2A 2A2A 2A4C 5354 45"                        /* D.*****LSTE */
};

data 'Nump' (128, "Unshifted") {
	$"000A 5979 5B6B 5C75 5668 576F 586C 5362"            /* ..Yy[k\uVhWoXlSb */
	$"546A 556E 522C"                                     /* TjUnR, */
};

data 'Nump' (129, "Shifted") {
	$"000A 5959 5B4B 5C55 5648 576F 584C 5342"            /* ..YY[K\UVHWoXLSB */
	$"544A 554E 522C"                                     /* TJUNR, */
};

data 'ALRT' (129, purgeable) {
	$"005A 006E 00EE 0192 0081 4444"                      /* .Z.n.�.�.�DD */
};

resource 'ALRT' (128) {
	{68, 68, 178, 469},
	128,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, silent,
		/* [2] */
		OK, visible, silent,
		/* [3] */
		OK, visible, silent,
		/* [4] */
		OK, visible, silent
	},
	alertPositionMainScreen
};

resource 'ALRT' (5000, "About/error") {
	{74, 106, 211, 471},
	5000,
	{	/* array: 4 elements */
		/* [1] */
		OK, invisible, silent,
		/* [2] */
		OK, invisible, silent,
		/* [3] */
		OK, invisible, silent,
		/* [4] */
		OK, visible, silent
	},
	alertPositionMainScreen
};

resource 'ALRT' (5001, "Confirm") {
	{62, 78, 186, 434},
	5001,
	{	/* array: 4 elements */
		/* [1] */
		OK, invisible, silent,
		/* [2] */
		OK, invisible, silent,
		/* [3] */
		OK, invisible, silent,
		/* [4] */
		OK, visible, silent
	},
	alertPositionMainScreen
};

resource 'DITL' (129, purgeable) {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{120, 198, 138, 272},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 70, 115, 272},
		StaticText {
			disabled,
			"Could not ^2 because ^0.  ^1"
		},
		/* [3] */
		{10, 20, 42, 52},
		Icon {
			disabled,
			0
		}
	}
};

resource 'DITL' (128) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{80, 324, 100, 382},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{6, 56, 70, 380},
		StaticText {
			disabled,
			"^0"
		}
	}
};

resource 'DITL' (130) {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{106, 249, 126, 307},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{106, 165, 126, 223},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{10, 85, 58, 315},
		StaticText {
			disabled,
			"^0"
		},
		/* [4] */
		{68, 87, 84, 310},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{10, 28, 42, 60},
		Icon {
			disabled,
			1
		},
		/* [6] */
		{100, 244, 132, 276},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (136) {
	{	/* array DITLarray: 8 elements */
		/* [1] */
		{99, 301, 119, 359},
		Button {
			enabled,
			"Yes"
		},
		/* [2] */
		{99, 231, 119, 289},
		Button {
			enabled,
			"No"
		},
		/* [3] */
		{99, 161, 119, 219},
		EditText {
			disabled,
			""
		},
		/* [4] */
		{99, 91, 119, 149},
		Button {
			enabled,
			"All"
		},
		/* [5] */
		{99, 21, 119, 79},
		Button {
			enabled,
			"Quit"
		},
		/* [6] */
		{11, 76, 84, 358},
		StaticText {
			disabled,
			"^0"
		},
		/* [7] */
		{12, 20, 44, 52},
		Icon {
			disabled,
			1
		},
		/* [8] */
		{94, 296, 126, 328},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (133) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{99, 301, 119, 359},
		Button {
			enabled,
			"Yes"
		},
		/* [2] */
		{99, 231, 119, 289},
		Button {
			enabled,
			"No"
		},
		/* [3] */
		{11, 76, 84, 358},
		StaticText {
			disabled,
			"^0"
		},
		/* [4] */
		{12, 20, 44, 52},
		Icon {
			disabled,
			1
		},
		/* [5] */
		{93, 296, 125, 328},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (134) {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{99, 301, 119, 359},
		Button {
			enabled,
			"Yes"
		},
		/* [2] */
		{99, 231, 119, 289},
		Button {
			enabled,
			"No"
		},
		/* [3] */
		{99, 161, 119, 219},
		Button {
			enabled,
			"Quit"
		},
		/* [4] */
		{11, 76, 84, 358},
		StaticText {
			disabled,
			"^0"
		},
		/* [5] */
		{12, 20, 44, 52},
		Icon {
			disabled,
			1
		},
		/* [6] */
		{93, 296, 125, 328},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (135) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{99, 301, 119, 359},
		Button {
			enabled,
			"Yes"
		},
		/* [2] */
		{99, 231, 119, 289},
		Button {
			enabled,
			"No"
		},
		/* [3] */
		{99, 161, 119, 219},
		Button {
			enabled,
			"All"
		},
		/* [4] */
		{99, 91, 119, 149},
		Button {
			enabled,
			"Quit"
		},
		/* [5] */
		{11, 76, 84, 358},
		StaticText {
			disabled,
			"^0"
		},
		/* [6] */
		{12, 20, 44, 52},
		Icon {
			disabled,
			1
		},
		/* [7] */
		{95, 297, 127, 329},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (137) {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{66, 77, 86, 135},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{66, 11, 86, 69},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{7, 52, 55, 212},
		StaticText {
			disabled,
			"^0"
		},
		/* [4] */
		{68, 152, 84, 204},
		EditText {
			enabled,
			"Edit Text"
		},
		/* [5] */
		{8, 10, 40, 42},
		Icon {
			disabled,
			1
		},
		/* [6] */
		{61, 73, 93, 105},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (5000) {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{103, 260, 123, 340},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{11, 81, 88, 352},
		StaticText {
			disabled,
			"^0^1"
		},
		/* [3] */
		{10, 24, 42, 56},
		Icon {
			disabled,
			1
		}
	}
};

resource 'DITL' (5001) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{93, 270, 113, 330},
		Button {
			enabled,
			"No"
		},
		/* [2] */
		{93, 93, 113, 153},
		Button {
			enabled,
			"Yes"
		},
		/* [3] */
		{10, 79, 80, 339},
		StaticText {
			disabled,
			"^0"
		},
		/* [4] */
		{10, 22, 42, 54},
		Icon {
			disabled,
			0
		}
	}
};

resource 'DITL' (6000) {
	{	/* array DITLarray: 17 elements */
		/* [1] */
		{40, 274, 60, 354},
		Button {
			enabled,
			"Play"
		},
		/* [2] */
		{78, 274, 98, 354},
		Button {
			enabled,
			"Quit"
		},
		/* [3] */
		{36, 270, 64, 358},
		UserItem {
			disabled
		},
		/* [4] */
		{80, 72, 97, 122},
		UserItem {
			enabled
		},
		/* [5] */
		{80, 186, 97, 238},
		UserItem {
			enabled
		},
		/* [6] */
		{120, 72, 137, 122},
		UserItem {
			enabled
		},
		/* [7] */
		{120, 188, 137, 238},
		UserItem {
			enabled
		},
		/* [8] */
		{120, 318, 137, 353},
		UserItem {
			enabled
		},
		/* [9] */
		{41, 74, 57, 240},
		EditText {
			enabled,
			"Name"
		},
		/* [10] */
		{24, 20, 56, 52},
		Icon {
			disabled,
			1
		},
		/* [11] */
		{80, 36, 96, 72},
		StaticText {
			disabled,
			"Role:"
		},
		/* [12] */
		{80, 150, 96, 186},
		StaticText {
			disabled,
			"Race:"
		},
		/* [13] */
		{120, 20, 136, 72},
		StaticText {
			disabled,
			"Gender:"
		},
		/* [14] */
		{120, 150, 136, 188},
		StaticText {
			disabled,
			"Align:"
		},
		/* [15] */
		{120, 274, 136, 318},
		StaticText {
			disabled,
			"Mode:"
		},
		/* [16] */
		{19, 72, 36, 242},
		StaticText {
			disabled,
			"Who are you?"
		},
		/* [17] */
		{0, 0, 0, 0},
		HelpItem {
			enabled,
			HMScanhdlg {
				6000
			}
		}
	}
};

resource 'STR#' (128, "Misc. Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Mac Slash'EM Help�/?"
	}
};

resource 'STR#' (131, "Keypress") {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"�201 Control Keys",
		/* [2] */
		"�202 Punctuation",
		/* [3] */
		"�203 Brackets",
		/* [4] */
		"�204 a - m",
		/* [5] */
		"�205 n - z",
		/* [6] */
		"�206 A - M",
		/* [7] */
		"�207 N - Z",
		/* [8] */
		"�208 0 - 9",
		/* [9] */
		"�-",
		/* [10] */
		"\0x1B�escape",
		/* [11] */
		" �space",
		/* [12] */
		"\b�delete",
		/* [13] */
		"\n�return"
	}
};

resource 'STR#' (133, "Information") {
	{	/* array StringArray: 14 elements */
		/* [1] */
		"i",
		/* [2] */
		"I",
		/* [3] */
		"#a�djust",
		/* [4] */
		"�-",
		/* [5] */
		":",
		/* [6] */
		";",
		/* [7] */
		"/",
		/* [8] */
		"^",
		/* [9] */
		"�-",
		/* [10] */
		"C",
		/* [11] */
		"#n�ame",
		/* [12] */
		"\\",
		/* [13] */
		"�-",
		/* [14] */
		"#co�nduct"
	}
};

resource 'STR#' (134, "Equipment") {
	{	/* array StringArray: 15 elements */
		/* [1] */
		"�209 Current",
		/* [2] */
		"�-",
		/* [3] */
		"w",
		/* [4] */
		"t",
		/* [5] */
		"a",
		/* [6] */
		"�-",
		/* [7] */
		"W",
		/* [8] */
		"T",
		/* [9] */
		"A",
		/* [10] */
		"�-",
		/* [11] */
		"P",
		/* [12] */
		"R",
		/* [13] */
		"�-",
		/* [14] */
		"f",
		/* [15] */
		"Q"
	}
};

resource 'STR#' (136, "Magic") {
	{	/* array StringArray: 17 elements */
		/* [1] */
		"d",
		/* [2] */
		"D",
		/* [3] */
		",",
		/* [4] */
		"@",
		/* [5] */
		"�-",
		/* [6] */
		"e",
		/* [7] */
		"r",
		/* [8] */
		"q",
		/* [9] */
		"#d�ip",
		/* [10] */
		"�-",
		/* [11] */
		"+",
		/* [12] */
		"Z",
		/* [13] */
		"z",
		/* [14] */
		"#i�nvoke",
		/* [15] */
		"#ru�b",
		/* [16] */
		"�-",
		/* [17] */
		"#y�oupoly"
	}
};

resource 'STR#' (137, "Bits") {
	{	/* array StringArray: 16 elements */
		/* [1] */
		"s",
		/* [2] */
		"c",
		/* [3] */
		"o",
		/* [4] */
		"a",
		/* [5] */
		"\0x04�ctl-d",
		/* [6] */
		"�-",
		/* [7] */
		"#u�ntrap",
		/* [8] */
		"#f�orce",
		/* [9] */
		"#l�oot",
		/* [10] */
		"�-",
		/* [11] */
		"E",
		/* [12] */
		"#d�ip",
		/* [13] */
		"#s�it",
		/* [14] */
		"�-",
		/* [15] */
		"<",
		/* [16] */
		">"
	}
};

resource 'STR#' (201, "control keys") {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"\0x02�ctl-b",
		/* [2] */
		"\r�ctl-j",
		/* [3] */
		"\0x0E�ctl-n",
		/* [4] */
		"\b�ctl-h",
		/* [5] */
		"\f�ctl-l",
		/* [6] */
		"\0x19�ctl-y",
		/* [7] */
		"\v�ctl-k",
		/* [8] */
		"\0x15�ctl-u",
		/* [9] */
		"�-",
		/* [10] */
		"\0x04�ctl-d",
		/* [11] */
		"\0x10�ctl-p",
		/* [12] */
		"\0x12�ctl-r",
		/* [13] */
		"\0x14�ctl-t"
	}
};

resource 'STR#' (202, "punctuation") {
	{	/* array StringArray: 16 elements */
		/* [1] */
		".",
		/* [2] */
		",",
		/* [3] */
		";",
		/* [4] */
		":",
		/* [5] */
		"!",
		/* [6] */
		"?",
		/* [7] */
		"+",
		/* [8] */
		"-",
		/* [9] */
		"=",
		/* [10] */
		"#",
		/* [11] */
		"$",
		/* [12] */
		"@",
		/* [13] */
		"&",
		/* [14] */
		"*",
		/* [15] */
		"~",
		/* [16] */
		"_"
	}
};

resource 'STR#' (203, "brackets") {
	{	/* array StringArray: 16 elements */
		/* [1] */
		"[",
		/* [2] */
		"]",
		/* [3] */
		"(",
		/* [4] */
		")",
		/* [5] */
		"{",
		/* [6] */
		"}",
		/* [7] */
		"<",
		/* [8] */
		">",
		/* [9] */
		"^",
		/* [10] */
		"`",
		/* [11] */
		"'",
		/* [12] */
		"\"",
		/* [13] */
		"\\",
		/* [14] */
		"/",
		/* [15] */
		"|",
		/* [16] */
		"%"
	}
};

resource 'STR#' (204, "a - m") {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"a",
		/* [2] */
		"b",
		/* [3] */
		"c",
		/* [4] */
		"d",
		/* [5] */
		"e",
		/* [6] */
		"f",
		/* [7] */
		"g",
		/* [8] */
		"h",
		/* [9] */
		"i",
		/* [10] */
		"j",
		/* [11] */
		"k",
		/* [12] */
		"l",
		/* [13] */
		"m"
	}
};

resource 'STR#' (205, "n - z") {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"n",
		/* [2] */
		"o",
		/* [3] */
		"p",
		/* [4] */
		"q",
		/* [5] */
		"r",
		/* [6] */
		"s",
		/* [7] */
		"t",
		/* [8] */
		"u",
		/* [9] */
		"v",
		/* [10] */
		"w",
		/* [11] */
		"x",
		/* [12] */
		"y",
		/* [13] */
		"z"
	}
};

resource 'STR#' (206, "A - M") {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"A",
		/* [2] */
		"B",
		/* [3] */
		"C",
		/* [4] */
		"D",
		/* [5] */
		"E",
		/* [6] */
		"F",
		/* [7] */
		"G",
		/* [8] */
		"H",
		/* [9] */
		"I",
		/* [10] */
		"J",
		/* [11] */
		"K",
		/* [12] */
		"L",
		/* [13] */
		"M"
	}
};

resource 'STR#' (207, "N - Z") {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"N",
		/* [2] */
		"O",
		/* [3] */
		"P",
		/* [4] */
		"Q",
		/* [5] */
		"R",
		/* [6] */
		"S",
		/* [7] */
		"T",
		/* [8] */
		"U",
		/* [9] */
		"V",
		/* [10] */
		"W",
		/* [11] */
		"X",
		/* [12] */
		"Y",
		/* [13] */
		"Z"
	}
};

resource 'STR#' (208, "0 - 9") {
	{	/* array StringArray: 10 elements */
		/* [1] */
		"0",
		/* [2] */
		"1",
		/* [3] */
		"2",
		/* [4] */
		"3",
		/* [5] */
		"4",
		/* [6] */
		"5",
		/* [7] */
		"6",
		/* [8] */
		"7",
		/* [9] */
		"8",
		/* [10] */
		"9"
	}
};

resource 'STR#' (200, "wizard") {
	{	/* array StringArray: 19 elements */
		/* [1] */
		"\0x18�ctl-x",
		/* [2] */
		"\0x05�ctl-e",
		/* [3] */
		"\0x06�ctl-f",
		/* [4] */
		"\0x07�ctl-g",
		/* [5] */
		"\t�ctl-i",
		/* [6] */
		"\0x0F�ctl-o",
		/* [7] */
		"\0x16�ctl-v",
		/* [8] */
		"\0x17�ctl-w",
		/* [9] */
		"�-",
		/* [10] */
		"\0x03�ctl-c",
		/* [11] */
		"\r�ctl-j",
		/* [12] */
		"\0x0E�ctl-n",
		/* [13] */
		"�-",
		/* [14] */
		"#li�ght sources",
		/* [15] */
		"#se�env",
		/* [16] */
		"#st�ats",
		/* [17] */
		"#ti�meout",
		/* [18] */
		"#vi�sion",
		/* [19] */
		"#wm�ode"
	}
};

resource 'STR#' (209, "current") {
	{	/* array StringArray: 9 elements */
		/* [1] */
		")",
		/* [2] */
		"[",
		/* [3] */
		"=",
		/* [4] */
		"\"",
		/* [5] */
		"(",
		/* [6] */
		"$",
		/* [7] */
		"+",
		/* [8] */
		"�-",
		/* [9] */
		"*"
	}
};

resource 'STR#' (132, "Help") {
	{	/* array StringArray: 8 elements */
		/* [1] */
		"O",
		/* [2] */
		"�-",
		/* [3] */
		"?",
		/* [4] */
		"&",
		/* [5] */
		"�-",
		/* [6] */
		"v",
		/* [7] */
		"V",
		/* [8] */
		"#v�ersion"
	}
};

resource 'STR#' (135, "Action") {
	{	/* array StringArray: 20 elements */
		/* [1] */
		".",
		/* [2] */
		"�-",
		/* [3] */
		"\0x14� ctl-t",
		/* [4] */
		"#j�ump",
		/* [5] */
		"#m�onster",
		/* [6] */
		"#w�ipe",
		/* [7] */
		"�-",
		/* [8] */
		"a",
		/* [9] */
		"p",
		/* [10] */
		"\0x04�ctl-d",
		/* [11] */
		"#ch�at",
		/* [12] */
		"#o�ffer",
		/* [13] */
		"#p�ray",
		/* [14] */
		"#tu�rn",
		/* [15] */
		"�-",
		/* [16] */
		"#b�orrow",
		/* [17] */
		"#te�chnique",
		/* [18] */
		"x",
		/* [19] */
		"#2�weapon",
		/* [20] */
		"#en�hance"
	}
};

resource 'ics4' (1000) {
	$"0000 0000 0000 0000 0000 000F FF00 0000"
	$"00FF 00F1 01F0 0000 00FB F00F 101F 0000"
	$"000F BF0F 0101 F000 0000 FBFF 1010 F000"
	$"00F0 0FBF FFF1 F000 0F0F FFFB F00F 0000"
	$"0F10 10FF BF00 0000 0F01 01F0 FBF0 0000"
	$"00F0 10F0 0FBF 0000 000F 010F 00FB F000"
	$"0000 FFF0 000F BF00 0000 0000 0000 FBF0"
	$"0000 0000 0000 0FBF 0000 0000 0000 00FF"
};

resource 'ics4' (1001) {
	$"00FF FFFF FFF0 0000 00F0 0000 00FF 0000"
	$"00F0 0000 00FC F000 00F0 0000 00FF FF00"
	$"00F0 0000 0000 0F00 00F0 0FF0 0000 0F00"
	$"00F0 FFFF 0000 0F00 00F0 FFFF 0FFF 0F00"
	$"00F0 0FF0 0000 0F00 00F0 0000 0000 0F00"
	$"00F0 0FF0 0000 0F00 00F0 F00F 0FF0 0F00"
	$"00F0 F00F 0000 0F00 00F0 0FF0 0000 0F00"
	$"00F0 0000 0000 0F00 00FF FFFF FFFF FF"
};

resource 'ics4' (1002) {
	$"00FF FFFF FFF0 0000 00F0 0000 00FF 0000"
	$"00F0 0000 00FC F000 00F0 0000 00FF FF00"
	$"00F0 0000 0000 0F00 00F0 0F00 F0F0 0F00"
	$"00F0 F0F0 F0F0 0F00 00F0 F0F0 F0F0 0F00"
	$"00F0 0F00 F0F0 0F00 00F0 0000 0000 0F00"
	$"00F0 F00F 00F0 0F00 00F0 F0F0 F0F0 0F00"
	$"00F0 F0F0 F0F0 0F00 00F0 F00F 00F0 0F00"
	$"00F0 0000 0000 0F00 00FF FFFF FFFF FF"
};

resource 'ics4' (1003, purgeable) {
	$"00FF FFFF FFF0 0000 00F0 0000 00FF 0000"
	$"00F0 0000 00FC F000 00F0 0000 00FF FF00"
	$"00F0 0000 0000 0F00 00F0 0000 0000 0F00"
	$"00F0 00FF FF00 0F00 00F0 0F01 01F0 0F00"
	$"00F0 F01F F01F 0F00 00F0 F1F1 0F0F 0F00"
	$"00F0 F0F0 1F1F 0F00 00F0 F10F FFF0 0F00"
	$"00F0 0F10 1010 0F00 00F0 00FF FFF0 0F00"
	$"00F0 0000 0000 0F00 00FF FFFF FFFF FF"
};

resource 'ics4' (1004, purgeable) {
	$"00FF FFFF FFF0 0000 00F0 0000 00FF 0000"
	$"00F0 0000 00FC F000 00F0 0000 00FF FF00"
	$"00F0 0000 0000 0F00 00F0 00FF FF00 0F00"
	$"00F0 0F10 10F0 0F00 00F0 F1F1 0F0F 0F00"
	$"00F0 F0F0 1F1F 0F00 00F0 F101 010F 0F00"
	$"00F0 0F10 10F0 0F00 00F0 0F0F F1F0 0F00"
	$"00F0 0F10 10F0 0F00 00F0 00FF FF00 0F00"
	$"00F0 0000 0000 0F00 00FF FFFF FFFF FF"
};

resource 'ics#' (1000) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 01C0 3220 3910 1D08 0F08 27E8 5F90"
		$"43C0 42E0 2270 1138 0E1C 000E 0007 0003",
		/* [2] */
		$"0000 01C0 33E0 39F0 1DF8 0FF8 27F8 7F90"
		$"7FC0 7EE0 3E70 1F38 0E1C 000E 0007 0003"
	}
};

resource 'ics#' (1001) {
	{	/* array: 2 elements */
		/* [1] */
		$"3FE0 2030 2028 203C 2004 2604 2F04 2F74"
		$"2604 2004 2604 2964 2904 2604 2004 3FFC",
		/* [2] */
		$"3FE0 3FF0 3FF8 3FFC 3FFC 3FFC 3FFC 3FFC"
		$"3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC"
	}
};

resource 'ics#' (1002) {
	{	/* array: 2 elements */
		/* [1] */
		$"3FE0 2030 2028 203C 2004 24A4 2AA4 2AA4"
		$"24A4 2004 2924 2AA4 2AA4 2924 2004 3FFC",
		/* [2] */
		$"3FE0 3FF0 3FF8 3FFC 3FFC 3FFC 3FFC 3FFC"
		$"3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC"
	}
};

resource 'ics#' (1003, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"3FE0 2030 2028 203C 2004 2004 23C4 2424"
		$"2994 2A54 2A54 29E4 2404 23E4 2004 3FFC",
		/* [2] */
		$"3FE0 3FF0 3FF8 3FFC 3FFC 3FFC 3FFC 3FFC"
		$"3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC"
	}
};

resource 'ics#' (1004, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"3FE0 2030 2028 203C 2004 23C4 2424 2A54"
		$"2A54 2814 2424 25A4 2424 23C4 2004 3FFC",
		/* [2] */
		$"3FE0 3FF0 3FF8 3FFC 3FFC 3FFC 3FFC 3FFC"
		$"3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC"
	}
};

resource 'ICN#' (1000) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 000F 8000 0030 6000 1020 1000"
		$"1C10 0800 0E10 0800 0F10 0400 0790 0400"
		$"03F0 0400 01E0 0400 00F0 0400 30FB E400"
		$"4F3E 1800 401E 0000 400F 0000 400F 8000"
		$"4013 C000 4011 E000 2010 F000 2010 7800"
		$"1008 3C00 0C18 1E00 03E0 0F00 0000 0780"
		$"0000 03C0 0000 01E0 0000 00F0 0000 0078"
		$"0000 003C 0000 001E 0000 000E 0000 0004",
		/* [2] */
		$"0000 0000 000F 8000 003F E000 103F F000"
		$"1C1F F800 0E1F F800 0F1F FC00 079F FC00"
		$"03FF FC00 01FF FC00 00FF FC00 30FF FC00"
		$"7FFE 1800 7FFE 0000 7FFF 0000 7FFF 8000"
		$"7FF3 C000 7FF1 E000 3FF0 F000 3FF0 7800"
		$"1FF8 3C00 0FF8 1E00 03E0 0F00 0000 0780"
		$"0000 03C0 0000 01E0 0000 00F0 0000 0078"
		$"0000 003C 0000 001E 0000 000E 0000 0004"
	}
};

resource 'ICN#' (1001) {
	{	/* array: 2 elements */
		/* [1] */
		$"0FFF FC00 0800 0600 080E 0500 0991 0480"
		$"09C8 8440 08E8 4420 0878 47F0 093F 4010"
		$"0AFC 8010 0A1E 0010 0A17 0010 0913 8010"
		$"0889 C010 0870 E010 0800 7010 0800 3810"
		$"0800 1810 0860 0010 0890 0010 0968 0010"
		$"0969 FE10 0890 0010 0860 0010 0800 0010"
		$"0860 0010 0890 0010 0908 0010 0909 BF90"
		$"0890 0010 0860 0010 0800 0010 0FFF FFF0",
		/* [2] */
		$"0FFF FC00 0FFF FE00 0FFF FF00 0FFF FF80"
		$"0FFF FFC0 0FFF FFE0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
	}
};

resource 'ICN#' (1002) {
	{	/* array: 2 elements */
		/* [1] */
		$"0FFF FC00 0800 0600 080E 0500 0991 0480"
		$"09C8 8440 08E8 4420 0878 47F0 093F 4010"
		$"0AFC 8010 0A1E 0010 0A17 0010 0913 8010"
		$"0889 C010 0870 E010 0800 7010 0800 3810"
		$"0800 1810 0994 C650 0A55 2950 0A55 2950"
		$"0A55 2950 0A55 2950 0994 C650 0800 0010"
		$"0A65 3190 0A95 4A50 0A95 4A50 0A95 4A50"
		$"0A95 4A50 0A65 3190 0800 0010 0FFF FFF0",
		/* [2] */
		$"0FFF FC00 0FFF FE00 0FFF FF00 0FFF FF80"
		$"0FFF FFC0 0FFF FFE0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
	}
};

resource 'ICN#' (1003, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"0FFF FC00 0800 0600 080E 0500 0991 0480"
		$"09C8 8440 08E8 4420 0878 47F0 093F 4010"
		$"0AFC 8010 0A1E 0010 0A17 0010 0913 8010"
		$"0889 C010 0870 E010 0800 7010 0800 3810"
		$"0800 1810 0800 0010 0800 0010 0800 0010"
		$"0803 C010 0804 2010 0809 9010 080A 5010"
		$"080A 5010 0809 E010 0804 0010 0803 E010"
		$"0800 0010 0800 0010 0800 0010 0FFF FFF0",
		/* [2] */
		$"0FFF FC00 0FFF FE00 0FFF FF00 0FFF FF80"
		$"0FFF FFC0 0FFF FFE0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
	}
};

resource 'ICN#' (1004, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"0FFF FC00 0800 0600 080E 0500 0991 0480"
		$"09C8 8440 08E8 4420 0878 47F0 093F 4010"
		$"0AFC 8010 0A1E 0010 0A17 0010 0913 8010"
		$"0889 C010 0870 E010 0800 7010 0800 3810"
		$"0800 1810 0887 C210 0958 3510 0960 0D10"
		$"0A2C 6890 0AD2 9690 0952 9510 084C 6410"
		$"0920 0910 0AD0 1690 0A17 D090 0928 2910"
		$"0948 2510 08C7 C610 0800 0010 0FFF FFF0",
		/* [2] */
		$"0FFF FC00 0FFF FE00 0FFF FF00 0FFF FF80"
		$"0FFF FFC0 0FFF FFE0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
	}
};

resource 'icl4' (1000) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 FFFF F000 0000 0000 0000"
	$"0000 0000 00FF 1010 1FF0 0000 0000 0000"
	$"000F 0000 00F1 0101 010F 0000 0000 0000"
	$"000F FF00 000F 1010 1010 F000 0000 0000"
	$"0000 FBF0 000F 0101 0101 F000 0000 0000"
	$"0000 FBBF 000F 1010 1010 1F00 0000 0000"
	$"0000 0FBB F00F 0101 0101 0F00 0000 0000"
	$"0000 00FB BFFF 1010 1010 1F00 0000 0000"
	$"0000 000F BBF1 0101 0101 0F00 0000 0000"
	$"0000 0000 FBBF 1010 1010 1F00 0000 0000"
	$"00FF 0000 FFBB F1FF FFF1 0F00 0000 0000"
	$"0F10 FFFF 10FB BFF0 000F F000 0000 0000"
	$"0F01 0101 010F BBF0 0000 0000 0000 0000"
	$"0F10 1010 1010 FBBF 0000 0000 0000 0000"
	$"0F01 0101 0101 FFBB F000 0000 0000 0000"
	$"0F10 1010 101F 00FB BF00 0000 0000 0000"
	$"0F01 0101 010F 000F BBF0 0000 0000 0000"
	$"00F0 1010 101F 0000 FBBF 0000 0000 0000"
	$"00F1 0101 010F 0000 0FBB F000 0000 0000"
	$"000F 1010 1010 F000 00FB BF00 0000 0000"
	$"0000 FF01 010F F000 000F BBF0 0000 0000"
	$"0000 00FF FFF0 0000 0000 FBBF 0000 0000"
	$"0000 0000 0000 0000 0000 0FBB F000 0000"
	$"0000 0000 0000 0000 0000 00FB BF00 0000"
	$"0000 0000 0000 0000 0000 000F BBF0 0000"
	$"0000 0000 0000 0000 0000 0000 FBBF 0000"
	$"0000 0000 0000 0000 0000 0000 0FBB F000"
	$"0000 0000 0000 0000 0000 0000 00FB BF00"
	$"0000 0000 0000 0000 0000 0000 000F BBF0"
	$"0000 0000 0000 0000 0000 0000 0000 FBF0"
	$"0000 0000 0000 0000 0000 0000 0000 0F"
};

resource 'icl4' (1001) {
	$"0000 FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 F000 0000 0000 0000 0FF0 0000 0000"
	$"0000 F000 0000 FFF0 0000 0FCF 0000 0000"
	$"0000 F00F F00F 101F 0000 0FCC F000 0000"
	$"0000 F00F BF00 F101 F000 0FCC CF00 0000"
	$"0000 F000 FBF0 F010 1F00 0FCC CCF0 0000"
	$"0000 F000 0FBF F101 0F00 0FFF FFFF 0000"
	$"0000 F00F 00FB FFFF 1F00 0000 000F 0000"
	$"0000 F0F0 FFFF BF00 F000 0000 000F 0000"
	$"0000 F0F1 010F FBF0 0000 0000 000F 0000"
	$"0000 F0F0 101F 0FBF 0000 0000 000F 0000"
	$"0000 F00F 010F 00FB F000 0000 000F 0000"
	$"0000 F000 F010 F00F BF00 0000 000F 0000"
	$"0000 F000 0FFF 0000 FBF0 0000 000F 0000"
	$"0000 F000 0000 0000 0FBF 0000 000F 0000"
	$"0000 F000 0000 0000 00FB F000 000F 0000"
	$"0000 F000 0000 0000 000F F000 000F 0000"
	$"0000 F000 0FF0 0000 0000 0000 000F 0000"
	$"0000 F000 F00F 0000 0000 0000 000F 0000"
	$"0000 F00F 0FF0 F000 0000 0000 000F 0000"
	$"0000 F00F 0FF0 F00F FFFF FFF0 000F 0000"
	$"0000 F000 F00F 0000 0000 0000 000F 0000"
	$"0000 F000 0FF0 0000 0000 0000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 F000 0FF0 0000 0000 0000 000F 0000"
	$"0000 F000 F00F 0000 0000 0000 000F 0000"
	$"0000 F00F 0000 F000 0000 0000 000F 0000"
	$"0000 F00F 0000 F00F F0FF FFFF F00F 0000"
	$"0000 F000 F00F 0000 0000 0000 000F 0000"
	$"0000 F000 0FF0 0000 0000 0000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'icl4' (1002) {
	$"0000 FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 F000 0000 0000 0000 0FF0 0000 0000"
	$"0000 F000 0000 FFF0 0000 0FCF 0000 0000"
	$"0000 F00F F00F 101F 0000 0FCC F000 0000"
	$"0000 F00F BF00 F101 F000 0FCC CF00 0000"
	$"0000 F000 FBF0 F010 1F00 0FCC CCF0 0000"
	$"0000 F000 0FBF F101 0F00 0FFF FFFF 0000"
	$"0000 F00F 00FB FFFF 1F00 0000 000F 0000"
	$"0000 F0F0 FFFF BF00 F000 0000 000F 0000"
	$"0000 F0F1 010F FBF0 0000 0000 000F 0000"
	$"0000 F0F0 101F 0FBF 0000 0000 000F 0000"
	$"0000 F00F 010F 00FB F000 0000 000F 0000"
	$"0000 F000 F010 F00F BF00 0000 000F 0000"
	$"0000 F000 0FFF 0000 FBF0 0000 000F 0000"
	$"0000 F000 0000 0000 0FBF 0000 000F 0000"
	$"0000 F000 0000 0000 00FB F000 000F 0000"
	$"0000 F000 0000 0000 000F F000 000F 0000"
	$"0000 F00F F00F 0F00 FF00 0FF0 0F0F 0000"
	$"0000 F0F0 0F0F 0F0F 00F0 F00F 0F0F 0000"
	$"0000 F0F0 0F0F 0F0F 00F0 F00F 0F0F 0000"
	$"0000 F0F0 0F0F 0F0F 00F0 F00F 0F0F 0000"
	$"0000 F0F0 0F0F 0F0F 00F0 F00F 0F0F 0000"
	$"0000 F00F F00F 0F00 FF00 0FF0 0F0F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 F0F0 0FF0 0F0F 00FF 000F F00F 0000"
	$"0000 F0F0 F00F 0F0F 0F00 F0F0 0F0F 0000"
	$"0000 F0F0 F00F 0F0F 0F00 F0F0 0F0F 0000"
	$"0000 F0F0 F00F 0F0F 0F00 F0F0 0F0F 0000"
	$"0000 F0F0 F00F 0F0F 0F00 F0F0 0F0F 0000"
	$"0000 F0F0 0FF0 0F0F 00FF 000F F00F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'icl4' (1003, purgeable) {
	$"0000 FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 F000 0000 0000 0000 0FF0 0000 0000"
	$"0000 F000 0000 FFF0 0000 0FCF 0000 0000"
	$"0000 F00F F00F 101F 0000 0FCC F000 0000"
	$"0000 F00F BF00 F101 F000 0FCC CF00 0000"
	$"0000 F000 FBF0 F010 1F00 0FCC CCF0 0000"
	$"0000 F000 0FBF F101 0F00 0FFF FFFF 0000"
	$"0000 F00F 00FB FFFF 1F00 0000 000F 0000"
	$"0000 F0F0 FFFF BF00 F000 0000 000F 0000"
	$"0000 F0F1 010F FBF0 0000 0000 000F 0000"
	$"0000 F0F0 101F 0FBF 0000 0000 000F 0000"
	$"0000 F00F 010F 00FB F000 0000 000F 0000"
	$"0000 F000 F010 F00F BF00 0000 000F 0000"
	$"0000 F000 0FFF 0000 FBF0 0000 000F 0000"
	$"0000 F000 0000 0000 0FBF 0000 000F 0000"
	$"0000 F000 0000 0000 00FB F000 000F 0000"
	$"0000 F000 0000 0000 000F F000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 F000 0000 00FF FF00 0000 000F 0000"
	$"0000 F000 0000 0F01 01F0 0000 000F 0000"
	$"0000 F000 0000 F01F F01F 0000 000F 0000"
	$"0000 F000 0000 F1F1 0F0F 0000 000F 0000"
	$"0000 F000 0000 F0F0 1F1F 0000 000F 0000"
	$"0000 F000 0000 F10F FFF0 0000 000F 0000"
	$"0000 F000 0000 0F10 1010 0000 000F 0000"
	$"0000 F000 0000 00FF FFF0 0000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'icl4' (1004, purgeable) {
	$"0000 FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 F000 0000 0000 0000 0FF0 0000 0000"
	$"0000 F000 0000 FFF0 0000 0FCF 0000 0000"
	$"0000 F00F F00F 101F 0000 0FCC F000 0000"
	$"0000 F00F BF00 F101 F000 0FCC CF00 0000"
	$"0000 F000 FBF0 F010 1F00 0FCC CCF0 0000"
	$"0000 F000 0FBF F101 0F00 0FFF FFFF 0000"
	$"0000 F00F 00FB FFFF 1F00 0000 000F 0000"
	$"0000 F0F0 FFFF BF00 F000 0000 000F 0000"
	$"0000 F0F1 010F FBF0 0000 0000 000F 0000"
	$"0000 F0F0 101F 0FBF 0000 0000 000F 0000"
	$"0000 F00F 010F 00FB F000 0000 000F 0000"
	$"0000 F000 F010 F00F BF00 0000 000F 0000"
	$"0000 F000 0FFF 0000 FBF0 0000 000F 0000"
	$"0000 F000 0000 0000 0FBF 0000 000F 0000"
	$"0000 F000 0000 0000 00FB F000 000F 0000"
	$"0000 F000 0000 0000 000F F000 000F 0000"
	$"0000 F000 F000 0FFF FF00 00F0 000F 0000"
	$"0000 F00F 1F0F F010 10FF 0F1F 000F 0000"
	$"0000 F00F 0FF1 0101 0101 FF0F 000F 0000"
	$"0000 F0F0 10F0 FF10 1FF0 F010 F00F 0000"
	$"0000 F0F1 FF0F CCF1 FCCF 0FF1 F00F 0000"
	$"0000 F00F 0F1F CCF0 FCCF 1F0F 000F 0000"
	$"0000 F000 0F01 FF01 0FF1 0F00 000F 0000"
	$"0000 F00F 00F0 1010 1010 F00F 000F 0000"
	$"0000 F0F1 FF0F 0101 010F 0FF1 F00F 0000"
	$"0000 F0F0 101F 1FFF FF1F 1010 F00F 0000"
	$"0000 F00F 01F0 F101 01F0 F10F 000F 0000"
	$"0000 F00F 1F00 F010 10F0 0F1F 000F 0000"
	$"0000 F000 FF00 0FFF FF00 0FF0 000F 0000"
	$"0000 F000 0000 0000 0000 0000 000F 0000"
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'DLOG' (136, "ynNaq") {
	{66, 92, 195, 471},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	136,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (135, "ynaq") {
	{66, 92, 195, 471},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	135,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (134, "ynq") {
	{66, 92, 195, 471},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	134,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (133, "yn") {
	{66, 92, 195, 471},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	133,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (137, "Small Getline") {
	{188, 154, 283, 371},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	137,
	"",
	centerParentWindowScreen
};

resource 'DLOG' (130, "Prompt") {
	{90, 94, 232, 423},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	130,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (6000, "askname") {
	{66, 46, 226, 434},
	movableDBoxProc,
	visible,
	noGoAway,
	0x0,
	6000,
	"Select a Character",
	alertPositionMainScreen
};

resource 'FONT' (19337, purgeable) {
	doExpandFont,
	proportionalFont,
	blackFont,
	notSynthetic,
	nofctbRsrc,
	oneBit,
	noCharWidthTable,
	noImageHeightTable,
	0,
	254,
	6,
	0,
	-9,
	6,
	11,
	9,
	2,
	0,
	63,
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 00D8 0000 0000 0000 1441 0000 0000"
	$"0029 4000 0030 0000 1A00 0002 1840 056B"
	$"5889 4007 E039 4420 8040 0495 C070 1C01"
	$"C214 0015 0014 208F C0FF F001 F800 0000"
	$"7380 2000 0000 0000 2000 000E 6001 0010"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0070"
	$"0050 8802 1804 0102 80A2 0004 0208 8000"
	$"0060 0041 2213 6C00 0002 2880 0001 F889"
	$"4005 A029 4420 8040 0495 4050 1401 4214"
	$"0015 0014 208F C0FF F00D 0800 0000 2440"
	$"5002 F3C0 0004 2003 0009 9006 D539 EC4C"
	$"2000 05CB 9C2F BBEE 7000 0E73 BCEF 7FEE"
	$"8F0C 6118 BBCE F3BF 18C6 31FF 1A02 0400"
	$"1018 2130 C000 0000 0200 0000 00A9 AEF9"
	$"14A1 240A 50AD 5CEF 81EA 5114 453A 2094"
	$"7C42 4425 A2EC 4002 4920 056B 5889 4005"
	$"A029 4420 8040 0495 4050 1401 4214 0015"
	$"0014 208F C0FF F013 003E 0036 745C 4005"
	$"FC20 121A 2004 8009 20F4 DFD6 B292 A900"
	$"063C 6268 4031 8820 918C 6318 C211 8A0C"
	$"A1BC C631 8C49 18C5 510D 0D01 0400 1020"
	$"2010 4000 0000 0200 0000 00AA D1F8 0000"
	$"1800 0000 2318 0280 0000 0046 2482 A240"
	$"0000 3332 0002 AA00 0001 F889 4005 A029"
	$"4420 8040 0495 4050 1401 4214 0015 0014"
	$"208F C0FF F023 0012 0009 AC62 203D FC3F"
	$"912A 240C B839 4095 8552 D421 7100 0A68"
	$"42AF 7831 8D5F 41EC 6308 C210 8A0D 215A"
	$"C631 8C09 18C4 9114 8800 7F9C F773 FD32"
	$"7D67 79F6 7FC6 358C 7EA8 1053 9EF7 BDCE"
	$"7392 6318 3A8E 73A3 18C6 2EE7 E2E7 CE8D"
	$"AB32 4001 5560 056B 58F9 41FD BFE9 7C20"
	$"8040 04F5 7FDF F7FF 7F95 F815 F815 F88F"
	$"C0FF F765 07C8 FC88 AFE2 EDCB FC20 7CC8"
	$"2073 7C29 FE97 8FB9 4821 AFCF 8AA8 8D20"
	$"C44E 8880 22AF FD08 FBD3 FA0E 2119 C7D1"
	$"F389 18C4 8A24 8800 8C63 18A4 6334 6B98"
	$"C639 8246 3554 4504 1054 6318 C631 8C52"
	$"7FFF 57D1 8C63 18C6 3581 3C48 D18E 66EC"
	$"8FFE 1969 9001 FF8F 7E31 B18F C7FF FFFF"
	$"FF97 330C 330C 207E 07FF 27FE 27FF FFFF"
	$"F8A5 0285 1488 AC63 1ACB FC3F 9128 3F88"
	$"7C40 0E90 8515 B521 2100 1329 03F0 C491"
	$"785F 44F4 6308 C211 8A8D 2118 C611 8849"
	$"18D4 8444 4800 8C61 1FA4 633C 6B18 C630"
	$"7246 3524 48A8 1077 E318 C61F FFD2 6318"
	$"7E91 8C63 18C6 3487 E448 D18C 6201 0804"
	$"21F2 4D6B 58F9 4BFD BDF8 3C40 0240 04F5"
	$"F7FF 77FF 7F81 F941 FD15 F84F FFFC 08A3"
	$"0289 1488 7463 1DD3 FC20 1218 2070 7F40"
	$"0E90 0056 B212 0100 122A 2228 C491 0820"
	$"8084 6318 C211 8A8C A118 C611 8C49 156D"
	$"4484 4800 9C61 1824 6332 6B18 C630 0A4D"
	$"5554 50A8 1124 2739 CE10 8412 6318 5291"
	$"8C67 38C6 3589 2E49 D19C 63FF 1804 4072"
	$"4801 F889 4A25 A500 0040 0240 0494 1401"
	$"5401 4000 2140 2514 204F FFFC 08A3 0293"
	$"1488 2455 1053 FC3F 8008 2480 3880 0090"
	$"803A 4D0C 0010 61CF DC27 388E 7500 0474"
	$"7CEF 7E0E 8F74 7F18 BA0E 8B88 E246 24FE"
	$"38FC 6F9E F7A3 E331 6B17 79F0 F1B4 8A8B"
	$"FEA8 0E23 DAD6 B5EF 7BD2 631F DEEE 739A"
	$"D7B9 CEF1 2446 CE6C 6200 E000 7069 956B"
	$"5889 4A25 A500 0040 0240 0494 1401 5401"
	$"4000 2140 2514 204F FFFC 076D 02BE E748"
	$"73B6 E03D FC20 7FF9 2000 0080 00F0 0010"
	$"0000 0010 2000 0000 0000 0100 0000 0000"
	$"0000 0000 0000 0001 0000 0000 0000 2000"
	$"0000 0000 4020 0000 4020 0000 0000 4070"
	$"0270 0000 0080 0000 0000 0000 0000 0080"
	$"0400 0640 0000 0000 0000 0000 0001 F889"
	$"4A25 A500 0040 0240 0494 1401 5401 4000"
	$"2140 2514 204F FFFC 0020 0000 0400 0000"
	$"0021 FFE0 0009 2000 0000 0000 0000 0000"
	$"0020 0000 0000 0000 0200 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0003 80C0 0000 4020 0000 0003 8000 0400"
	$"0000 0100 0000 0000 0000 0000 0700 0000"
	$"0180 0000 0000 0000 0000 056B 5889 4A27"
	$"E700 0040 0240 0494 1C01 DC01 C000 2140"
	$"2514 204F FFFC 0000 0000 0400 0000 0040"
	$"0000 0008 C000 0000 0000",
	{	/* array: 257 elements */
		/* [1] */
		0,
		/* [2] */
		0,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		0,
		/* [8] */
		0,
		/* [9] */
		0,
		/* [10] */
		0,
		/* [11] */
		0,
		/* [12] */
		0,
		/* [13] */
		0,
		/* [14] */
		0,
		/* [15] */
		0,
		/* [16] */
		0,
		/* [17] */
		0,
		/* [18] */
		0,
		/* [19] */
		0,
		/* [20] */
		0,
		/* [21] */
		0,
		/* [22] */
		0,
		/* [23] */
		0,
		/* [24] */
		0,
		/* [25] */
		0,
		/* [26] */
		0,
		/* [27] */
		0,
		/* [28] */
		0,
		/* [29] */
		0,
		/* [30] */
		0,
		/* [31] */
		0,
		/* [32] */
		0,
		/* [33] */
		0,
		/* [34] */
		0,
		/* [35] */
		1,
		/* [36] */
		4,
		/* [37] */
		9,
		/* [38] */
		14,
		/* [39] */
		19,
		/* [40] */
		24,
		/* [41] */
		26,
		/* [42] */
		29,
		/* [43] */
		32,
		/* [44] */
		37,
		/* [45] */
		42,
		/* [46] */
		44,
		/* [47] */
		49,
		/* [48] */
		50,
		/* [49] */
		54,
		/* [50] */
		59,
		/* [51] */
		61,
		/* [52] */
		66,
		/* [53] */
		71,
		/* [54] */
		76,
		/* [55] */
		81,
		/* [56] */
		86,
		/* [57] */
		91,
		/* [58] */
		96,
		/* [59] */
		101,
		/* [60] */
		102,
		/* [61] */
		104,
		/* [62] */
		107,
		/* [63] */
		112,
		/* [64] */
		115,
		/* [65] */
		120,
		/* [66] */
		125,
		/* [67] */
		130,
		/* [68] */
		135,
		/* [69] */
		140,
		/* [70] */
		145,
		/* [71] */
		150,
		/* [72] */
		155,
		/* [73] */
		160,
		/* [74] */
		165,
		/* [75] */
		168,
		/* [76] */
		173,
		/* [77] */
		178,
		/* [78] */
		183,
		/* [79] */
		188,
		/* [80] */
		193,
		/* [81] */
		198,
		/* [82] */
		203,
		/* [83] */
		208,
		/* [84] */
		213,
		/* [85] */
		218,
		/* [86] */
		223,
		/* [87] */
		228,
		/* [88] */
		233,
		/* [89] */
		238,
		/* [90] */
		243,
		/* [91] */
		248,
		/* [92] */
		253,
		/* [93] */
		255,
		/* [94] */
		259,
		/* [95] */
		261,
		/* [96] */
		264,
		/* [97] */
		270,
		/* [98] */
		272,
		/* [99] */
		277,
		/* [100] */
		282,
		/* [101] */
		287,
		/* [102] */
		292,
		/* [103] */
		297,
		/* [104] */
		301,
		/* [105] */
		306,
		/* [106] */
		311,
		/* [107] */
		312,
		/* [108] */
		315,
		/* [109] */
		320,
		/* [110] */
		322,
		/* [111] */
		327,
		/* [112] */
		332,
		/* [113] */
		337,
		/* [114] */
		342,
		/* [115] */
		347,
		/* [116] */
		352,
		/* [117] */
		357,
		/* [118] */
		361,
		/* [119] */
		366,
		/* [120] */
		371,
		/* [121] */
		376,
		/* [122] */
		381,
		/* [123] */
		386,
		/* [124] */
		391,
		/* [125] */
		394,
		/* [126] */
		395,
		/* [127] */
		398,
		/* [128] */
		403,
		/* [129] */
		403,
		/* [130] */
		408,
		/* [131] */
		413,
		/* [132] */
		418,
		/* [133] */
		423,
		/* [134] */
		428,
		/* [135] */
		433,
		/* [136] */
		438,
		/* [137] */
		443,
		/* [138] */
		448,
		/* [139] */
		453,
		/* [140] */
		458,
		/* [141] */
		461,
		/* [142] */
		464,
		/* [143] */
		466,
		/* [144] */
		471,
		/* [145] */
		476,
		/* [146] */
		481,
		/* [147] */
		486,
		/* [148] */
		491,
		/* [149] */
		496,
		/* [150] */
		501,
		/* [151] */
		506,
		/* [152] */
		511,
		/* [153] */
		516,
		/* [154] */
		521,
		/* [155] */
		526,
		/* [156] */
		531,
		/* [157] */
		536,
		/* [158] */
		541,
		/* [159] */
		546,
		/* [160] */
		551,
		/* [161] */
		556,
		/* [162] */
		561,
		/* [163] */
		563,
		/* [164] */
		568,
		/* [165] */
		573,
		/* [166] */
		578,
		/* [167] */
		583,
		/* [168] */
		587,
		/* [169] */
		591,
		/* [170] */
		596,
		/* [171] */
		601,
		/* [172] */
		606,
		/* [173] */
		612,
		/* [174] */
		618,
		/* [175] */
		619,
		/* [176] */
		624,
		/* [177] */
		629,
		/* [178] */
		634,
		/* [179] */
		639,
		/* [180] */
		644,
		/* [181] */
		645,
		/* [182] */
		649,
		/* [183] */
		653,
		/* [184] */
		658,
		/* [185] */
		663,
		/* [186] */
		667,
		/* [187] */
		672,
		/* [188] */
		675,
		/* [189] */
		680,
		/* [190] */
		685,
		/* [191] */
		690,
		/* [192] */
		694,
		/* [193] */
		698,
		/* [194] */
		701,
		/* [195] */
		707,
		/* [196] */
		713,
		/* [197] */
		716,
		/* [198] */
		722,
		/* [199] */
		728,
		/* [200] */
		731,
		/* [201] */
		735,
		/* [202] */
		739,
		/* [203] */
		743,
		/* [204] */
		749,
		/* [205] */
		755,
		/* [206] */
		759,
		/* [207] */
		765,
		/* [208] */
		771,
		/* [209] */
		777,
		/* [210] */
		783,
		/* [211] */
		789,
		/* [212] */
		795,
		/* [213] */
		799,
		/* [214] */
		802,
		/* [215] */
		805,
		/* [216] */
		809,
		/* [217] */
		815,
		/* [218] */
		821,
		/* [219] */
		825,
		/* [220] */
		828,
		/* [221] */
		834,
		/* [222] */
		840,
		/* [223] */
		843,
		/* [224] */
		846,
		/* [225] */
		852,
		/* [226] */
		858,
		/* [227] */
		863,
		/* [228] */
		869,
		/* [229] */
		874,
		/* [230] */
		879,
		/* [231] */
		885,
		/* [232] */
		890,
		/* [233] */
		896,
		/* [234] */
		901,
		/* [235] */
		906,
		/* [236] */
		911,
		/* [237] */
		916,
		/* [238] */
		921,
		/* [239] */
		927,
		/* [240] */
		933,
		/* [241] */
		939,
		/* [242] */
		945,
		/* [243] */
		950,
		/* [244] */
		953,
		/* [245] */
		956,
		/* [246] */
		959,
		/* [247] */
		963,
		/* [248] */
		968,
		/* [249] */
		973,
		/* [250] */
		977,
		/* [251] */
		982,
		/* [252] */
		983,
		/* [253] */
		988,
		/* [254] */
		992,
		/* [255] */
		996,
		/* [256] */
		999,
		/* [257] */
		1005
	},
	{	/* array: 257 elements */
		/* [1] */
		6,
		/* [2] */
		6,
		/* [3] */
		6,
		/* [4] */
		6,
		/* [5] */
		6,
		/* [6] */
		6,
		/* [7] */
		6,
		/* [8] */
		6,
		/* [9] */
		6,
		/* [10] */
		6,
		/* [11] */
		6,
		/* [12] */
		6,
		/* [13] */
		6,
		/* [14] */
		6,
		/* [15] */
		6,
		/* [16] */
		6,
		/* [17] */
		6,
		/* [18] */
		6,
		/* [19] */
		6,
		/* [20] */
		6,
		/* [21] */
		6,
		/* [22] */
		6,
		/* [23] */
		6,
		/* [24] */
		6,
		/* [25] */
		6,
		/* [26] */
		6,
		/* [27] */
		6,
		/* [28] */
		6,
		/* [29] */
		6,
		/* [30] */
		6,
		/* [31] */
		6,
		/* [32] */
		6,
		/* [33] */
		1542,
		/* [34] */
		518,
		/* [35] */
		262,
		/* [36] */
		6,
		/* [37] */
		6,
		/* [38] */
		6,
		/* [39] */
		6,
		/* [40] */
		518,
		/* [41] */
		262,
		/* [42] */
		518,
		/* [43] */
		6,
		/* [44] */
		6,
		/* [45] */
		262,
		/* [46] */
		6,
		/* [47] */
		518,
		/* [48] */
		262,
		/* [49] */
		6,
		/* [50] */
		518,
		/* [51] */
		6,
		/* [52] */
		6,
		/* [53] */
		6,
		/* [54] */
		6,
		/* [55] */
		6,
		/* [56] */
		6,
		/* [57] */
		6,
		/* [58] */
		6,
		/* [59] */
		518,
		/* [60] */
		262,
		/* [61] */
		262,
		/* [62] */
		6,
		/* [63] */
		262,
		/* [64] */
		6,
		/* [65] */
		6,
		/* [66] */
		6,
		/* [67] */
		6,
		/* [68] */
		6,
		/* [69] */
		6,
		/* [70] */
		6,
		/* [71] */
		6,
		/* [72] */
		6,
		/* [73] */
		6,
		/* [74] */
		262,
		/* [75] */
		6,
		/* [76] */
		6,
		/* [77] */
		6,
		/* [78] */
		6,
		/* [79] */
		6,
		/* [80] */
		6,
		/* [81] */
		6,
		/* [82] */
		6,
		/* [83] */
		6,
		/* [84] */
		6,
		/* [85] */
		6,
		/* [86] */
		6,
		/* [87] */
		6,
		/* [88] */
		6,
		/* [89] */
		6,
		/* [90] */
		6,
		/* [91] */
		6,
		/* [92] */
		518,
		/* [93] */
		262,
		/* [94] */
		518,
		/* [95] */
		262,
		/* [96] */
		6,
		/* [97] */
		262,
		/* [98] */
		6,
		/* [99] */
		6,
		/* [100] */
		6,
		/* [101] */
		6,
		/* [102] */
		6,
		/* [103] */
		262,
		/* [104] */
		6,
		/* [105] */
		6,
		/* [106] */
		518,
		/* [107] */
		6,
		/* [108] */
		6,
		/* [109] */
		262,
		/* [110] */
		6,
		/* [111] */
		6,
		/* [112] */
		6,
		/* [113] */
		6,
		/* [114] */
		6,
		/* [115] */
		6,
		/* [116] */
		6,
		/* [117] */
		262,
		/* [118] */
		6,
		/* [119] */
		6,
		/* [120] */
		6,
		/* [121] */
		6,
		/* [122] */
		6,
		/* [123] */
		6,
		/* [124] */
		518,
		/* [125] */
		518,
		/* [126] */
		262,
		/* [127] */
		6,
		/* [128] */
		0,
		/* [129] */
		6,
		/* [130] */
		6,
		/* [131] */
		6,
		/* [132] */
		6,
		/* [133] */
		6,
		/* [134] */
		6,
		/* [135] */
		6,
		/* [136] */
		6,
		/* [137] */
		6,
		/* [138] */
		6,
		/* [139] */
		6,
		/* [140] */
		262,
		/* [141] */
		262,
		/* [142] */
		262,
		/* [143] */
		6,
		/* [144] */
		6,
		/* [145] */
		6,
		/* [146] */
		6,
		/* [147] */
		6,
		/* [148] */
		6,
		/* [149] */
		6,
		/* [150] */
		6,
		/* [151] */
		6,
		/* [152] */
		6,
		/* [153] */
		6,
		/* [154] */
		6,
		/* [155] */
		6,
		/* [156] */
		6,
		/* [157] */
		6,
		/* [158] */
		6,
		/* [159] */
		6,
		/* [160] */
		6,
		/* [161] */
		6,
		/* [162] */
		518,
		/* [163] */
		6,
		/* [164] */
		6,
		/* [165] */
		6,
		/* [166] */
		6,
		/* [167] */
		262,
		/* [168] */
		262,
		/* [169] */
		6,
		/* [170] */
		6,
		/* [171] */
		6,
		/* [172] */
		6,
		/* [173] */
		6,
		/* [174] */
		774,
		/* [175] */
		6,
		/* [176] */
		6,
		/* [177] */
		6,
		/* [178] */
		6,
		/* [179] */
		6,
		/* [180] */
		774,
		/* [181] */
		6,
		/* [182] */
		6,
		/* [183] */
		6,
		/* [184] */
		6,
		/* [185] */
		6,
		/* [186] */
		6,
		/* [187] */
		518,
		/* [188] */
		6,
		/* [189] */
		6,
		/* [190] */
		6,
		/* [191] */
		6,
		/* [192] */
		6,
		/* [193] */
		774,
		/* [194] */
		6,
		/* [195] */
		6,
		/* [196] */
		774,
		/* [197] */
		6,
		/* [198] */
		6,
		/* [199] */
		774,
		/* [200] */
		518,
		/* [201] */
		518,
		/* [202] */
		518,
		/* [203] */
		6,
		/* [204] */
		6,
		/* [205] */
		518,
		/* [206] */
		6,
		/* [207] */
		6,
		/* [208] */
		6,
		/* [209] */
		6,
		/* [210] */
		6,
		/* [211] */
		6,
		/* [212] */
		518,
		/* [213] */
		774,
		/* [214] */
		774,
		/* [215] */
		518,
		/* [216] */
		6,
		/* [217] */
		6,
		/* [218] */
		6,
		/* [219] */
		774,
		/* [220] */
		6,
		/* [221] */
		6,
		/* [222] */
		6,
		/* [223] */
		774,
		/* [224] */
		6,
		/* [225] */
		6,
		/* [226] */
		6,
		/* [227] */
		6,
		/* [228] */
		6,
		/* [229] */
		6,
		/* [230] */
		6,
		/* [231] */
		6,
		/* [232] */
		6,
		/* [233] */
		6,
		/* [234] */
		6,
		/* [235] */
		6,
		/* [236] */
		6,
		/* [237] */
		6,
		/* [238] */
		6,
		/* [239] */
		6,
		/* [240] */
		6,
		/* [241] */
		6,
		/* [242] */
		6,
		/* [243] */
		262,
		/* [244] */
		262,
		/* [245] */
		774,
		/* [246] */
		6,
		/* [247] */
		6,
		/* [248] */
		6,
		/* [249] */
		262,
		/* [250] */
		6,
		/* [251] */
		518,
		/* [252] */
		6,
		/* [253] */
		6,
		/* [254] */
		6,
		/* [255] */
		262,
		/* [256] */
		6,
		/* [257] */
		-1
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	}
};

resource 'FONT' (19340) {
	doExpandFont,
	proportionalFont,
	blackFont,
	notSynthetic,
	nofctbRsrc,
	oneBit,
	noCharWidthTable,
	noImageHeightTable,
	0,
	255,
	7,
	0,
	-3,
	7,
	15,
	12,
	3,
	0,
	66,
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 3800 0000"
	$"0000 0000 0000 0000 0006 8000 0000 0000"
	$"55AB 5622 5001 F80E 5108 1002 0008 8A70"
	$"0700 7001 C105 0000 A400 0A08 10FE 03FF"
	$"F800 0000 0000 0000 0000 0000 0000 2000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0005"
	$"4440 0000 0000 0A50 0000 0C00 000B 0000"
	$"0020 8000 0001 FE22 5001 680A 5108 1002"
	$"0008 8A50 0500 5001 4105 0000 A400 0A08"
	$"10FE 03FF F800 0000 0000 0000 0000 03C0"
	$"0000 2000 000A 6000 0010 000C 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 7070 0000 0000 0000"
	$"0000 0000 0000 0000 0000 1C00 0000 0006"
	$"0000 0000 4480 0000 0000 0000 0000 1000"
	$"0000 0000 0020 8000 55AB 5622 5001 680A"
	$"5108 1002 0008 8A50 0500 5001 4105 0000"
	$"A400 0A08 10FE 03FF F800 0000 0000 3800"
	$"1800 F420 0000 2000 000D 9000 D539 2C52"
	$"2000 02E5 CE17 CDF7 3800 01C0 3BCE F7FE"
	$"E8F0 C611 8BBC EF3B F18C 631F C812 0081"
	$"0004 0608 4C00 0000 0000 0000 0000 2A6B"
	$"8022 0089 0100 80A7 3BE0 7B00 8220 0E88"
	$"0D1F 1048 84D8 BDC4 0022 8A00 0001 FE22"
	$"5001 680A 5108 1002 0008 8A50 0500 5001"
	$"4105 0000 A400 0A08 10FE 03FF F80E F83E"
	$"0000 11CE 2001 FC20 0020 2003 0039 207D"
	$"DFD6 B252 A800 031E 3134 1018 C408 2220"
	$"4631 8C21 18A0 CA1B 8C63 18C4 918C 6310"
	$"C815 0041 0004 0808 4C30 0000 0000 8000"
	$"0000 2AB4 5445 2849 0294 4B58 C600 A494"
	$"4511 5188 10A8 9091 0968 C624 0024 9200"
	$"55AB 5622 5001 680A 5108 1002 0008 8A50"
	$"0500 5001 4105 0000 A400 0A08 10FE 03FF"
	$"F811 4822 001B 9231 2005 FC20 044C 2004"
	$"8029 4F44 D552 D261 7100 0514 2154 2018"
	$"C410 102F 4631 8C21 08A0 D215 CC63 18C0"
	$"918C 6310 C418 8001 0004 0808 0410 0000"
	$"0000 8000 0000 2A04 4000 0006 0000 0008"
	$"C600 A000 0000 1189 11F8 9000 000C C620"
	$"0008 2000 0001 FE22 5001 680A 5108 1002"
	$"0008 8A50 0500 5001 4105 0000 A400 0A08"
	$"10FE 03FF FB71 4010 0024 3A31 1005 FC3F"
	$"2292 2404 8029 FF44 8531 D421 7100 0534"
	$"2697 BC27 46A7 C850 C7D0 8C21 08A0 E211"
	$"AC63 18C0 918C 5511 4410 001F E73D DCFF"
	$"4C9F 79DE 7D9D D18D 631F AA04 22E7 BDEF"
	$"739C E498 C60E A39C E8C6 318B 9048 B9F3"
	$"A36A C624 0016 4A5A 55AB 563E 507F 6FFA"
	$"5F08 1002 0008 FA5F FDFF DFFF 7FE5 3F80"
	$"A7F8 0A7F 10FE 03FF FC92 47C8 FC44 4631"
	$"781D FC20 2152 204B 3820 0F44 8F98 8821"
	$"AFC0 0954 41F8 6248 C6C0 0496 FE30 8FBD"
	$"3FA0 C211 9C7D 1F38 918C 48A2 4210 0023"
	$"18C6 2918 CD1A C631 8E62 918D 5511 4904"
	$"2318 C631 8C63 1498 C7D5 FC63 18C6 318D"
	$"79FF 1234 6399 BDC4 FFE9 9AA5 0001 FFE3"
	$"DF8C 6C63 F1FF FFFF FFFF 8BC6 3060 C60C"
	$"101F C07F FC47 FF88 FFFF FFFF FC92 4285"
	$"2444 47F1 8EEB FC3F FA30 3FB0 7C20 0F44"
	$"8515 5421 210F 8994 8110 6248 BC27 C896"
	$"C630 8C21 18A0 E211 8C61 1884 918C 5444"
	$"4210 0023 1847 E918 CE1A C631 8C5C 918D"
	$"4912 2A04 23F8 C631 87FF F49F FE17 A463"
	$"18C6 318D 1048 1234 6318 8008 8041 2B42"
	$"D5AB 563E 52FF 6F7E 0F10 0022 0008 FA7E"
	$"FFFB DFFF 7FE0 3F94 07FD 0A7F 08FF FFFC"
	$"0371 4289 2444 4631 8D6B FC20 2411 2048"
	$"7E20 0F44 0015 B2A1 0100 1115 0110 6248"
	$"8410 1017 C630 8C21 18A8 D211 8C61 1884"
	$"918D 6248 4110 0023 1846 0918 CD1A C631"
	$"8C02 918D 4914 2A04 2308 C631 8421 0498"
	$"C614 A463 18C6 318D 1249 1234 6318 FFF0"
	$"8042 7F42 8001 FE22 5289 6940 0010 0022"
	$"0008 8A02 800A 5001 4000 0414 0045 0A08"
	$"08FF FFFC 0011 4291 2444 462A 8EEB FC3F"
	$"20F1 24B0 7DA0 0F44 8056 B112 0010 5116"
	$"1114 6248 8A88 2090 4631 8C21 18A8 CA11"
	$"8C61 18C4 9156 E248 4110 0027 18C6 2918"
	$"CC9A C631 8C22 9355 5518 2A04 6719 CE73"
	$"8C61 1498 C615 A463 19CE 318D 524B 9274"
	$"6718 8011 0004 0AA5 55AB 5622 5289 6940"
	$"0010 0022 0008 8A02 800A 5001 4000 0414"
	$"0045 0A08 08FF FFFC 0011 42A3 24C4 3A2A"
	$"882B FC20 0710 C000 3860 0044 803A 4E92"
	$"0010 60E7 EE13 9C47 3280 008F 47CE F7E0"
	$"E8F7 47F1 8BA0 E8B8 8E24 624F C090 7F1B"
	$"E73D C8F8 CC5A C5DE 7C1C 6D22 A2FF AA03"
	$"9AE6 B5AD 739E E498 C7EE BB9C E6B5 EE73"
	$"BC49 11B3 9B18 800E 000F 0A5A 0001 FE22"
	$"5289 6940 0010 0022 0008 8A02 800A 5001"
	$"4000 0414 0045 0A08 08FF FFFC 0016 42BE"
	$"C742 11DB 701D FFE0 F810 0000 0020 007D"
	$"0010 000C 0010 2000 0000 0000 0080 0000"
	$"0000 0000 0000 0000 0000 4000 0000 0000"
	$"70F0 0000 0000 0010 0800 0010 0800 0000"
	$"0010 1C01 0000 0000 2000 0000 0000 0000"
	$"0000 2001 0001 1000 0000 0000 0000 0000"
	$"55AB 5622 5289 6940 0010 0022 0008 8A02"
	$"800A 5001 4000 0414 0045 0A08 08FF FFFC"
	$"0010 0000 0400 1000 0011 F800 0010 0000"
	$"0000 0000 0000 0000 0020 0000 0000 0000"
	$"0100 0000 0000 0000 0000 0000 0000 2000"
	$"0000 0000 0000 0000 0000 0110 0800 0010"
	$"0800 0000 0110 0001 0000 0000 2000 0000"
	$"0000 0000 0000 2000 0001 E000 0000 0000"
	$"0000 0000 0001 FE22 5289 6940 0010 0022"
	$"0008 8A02 800A 5001 4000 0414 0045 0A08"
	$"08FF FFFC 0000 0000 0400 3800 0010 0000"
	$"0010 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 00E0"
	$"3000 0000 0000 0000 00E0 0002 0000 0000"
	$"4000 0000 0000 0000 0001 C000 0000 0000"
	$"0000 0000 0000 0000 55AB 5622 5289 F9C0"
	$"0010 0022 0008 8A03 800E 7001 C000 0414"
	$"0045 0A08 08FF FFFC 0000 0000 0000 0000"
	$"0000 0000 0010 0000 0000 0000",
	{	/* array: 258 elements */
		/* [1] */
		0,
		/* [2] */
		0,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		0,
		/* [8] */
		0,
		/* [9] */
		0,
		/* [10] */
		0,
		/* [11] */
		0,
		/* [12] */
		0,
		/* [13] */
		0,
		/* [14] */
		0,
		/* [15] */
		0,
		/* [16] */
		0,
		/* [17] */
		0,
		/* [18] */
		0,
		/* [19] */
		0,
		/* [20] */
		0,
		/* [21] */
		0,
		/* [22] */
		0,
		/* [23] */
		0,
		/* [24] */
		0,
		/* [25] */
		0,
		/* [26] */
		0,
		/* [27] */
		0,
		/* [28] */
		0,
		/* [29] */
		0,
		/* [30] */
		0,
		/* [31] */
		0,
		/* [32] */
		0,
		/* [33] */
		0,
		/* [34] */
		0,
		/* [35] */
		1,
		/* [36] */
		4,
		/* [37] */
		9,
		/* [38] */
		14,
		/* [39] */
		19,
		/* [40] */
		25,
		/* [41] */
		26,
		/* [42] */
		29,
		/* [43] */
		32,
		/* [44] */
		37,
		/* [45] */
		42,
		/* [46] */
		44,
		/* [47] */
		49,
		/* [48] */
		50,
		/* [49] */
		55,
		/* [50] */
		60,
		/* [51] */
		62,
		/* [52] */
		67,
		/* [53] */
		72,
		/* [54] */
		77,
		/* [55] */
		82,
		/* [56] */
		87,
		/* [57] */
		92,
		/* [58] */
		97,
		/* [59] */
		102,
		/* [60] */
		103,
		/* [61] */
		105,
		/* [62] */
		109,
		/* [63] */
		114,
		/* [64] */
		118,
		/* [65] */
		123,
		/* [66] */
		129,
		/* [67] */
		134,
		/* [68] */
		139,
		/* [69] */
		144,
		/* [70] */
		149,
		/* [71] */
		154,
		/* [72] */
		159,
		/* [73] */
		164,
		/* [74] */
		169,
		/* [75] */
		172,
		/* [76] */
		177,
		/* [77] */
		182,
		/* [78] */
		187,
		/* [79] */
		192,
		/* [80] */
		197,
		/* [81] */
		202,
		/* [82] */
		207,
		/* [83] */
		212,
		/* [84] */
		217,
		/* [85] */
		222,
		/* [86] */
		227,
		/* [87] */
		232,
		/* [88] */
		237,
		/* [89] */
		242,
		/* [90] */
		247,
		/* [91] */
		252,
		/* [92] */
		257,
		/* [93] */
		260,
		/* [94] */
		265,
		/* [95] */
		268,
		/* [96] */
		273,
		/* [97] */
		280,
		/* [98] */
		282,
		/* [99] */
		287,
		/* [100] */
		292,
		/* [101] */
		297,
		/* [102] */
		302,
		/* [103] */
		307,
		/* [104] */
		311,
		/* [105] */
		316,
		/* [106] */
		321,
		/* [107] */
		322,
		/* [108] */
		325,
		/* [109] */
		330,
		/* [110] */
		332,
		/* [111] */
		337,
		/* [112] */
		342,
		/* [113] */
		347,
		/* [114] */
		352,
		/* [115] */
		357,
		/* [116] */
		362,
		/* [117] */
		367,
		/* [118] */
		371,
		/* [119] */
		376,
		/* [120] */
		381,
		/* [121] */
		386,
		/* [122] */
		391,
		/* [123] */
		396,
		/* [124] */
		401,
		/* [125] */
		404,
		/* [126] */
		405,
		/* [127] */
		408,
		/* [128] */
		413,
		/* [129] */
		413,
		/* [130] */
		418,
		/* [131] */
		423,
		/* [132] */
		428,
		/* [133] */
		433,
		/* [134] */
		438,
		/* [135] */
		443,
		/* [136] */
		448,
		/* [137] */
		453,
		/* [138] */
		458,
		/* [139] */
		463,
		/* [140] */
		468,
		/* [141] */
		471,
		/* [142] */
		474,
		/* [143] */
		476,
		/* [144] */
		481,
		/* [145] */
		486,
		/* [146] */
		491,
		/* [147] */
		496,
		/* [148] */
		501,
		/* [149] */
		506,
		/* [150] */
		511,
		/* [151] */
		516,
		/* [152] */
		521,
		/* [153] */
		526,
		/* [154] */
		531,
		/* [155] */
		536,
		/* [156] */
		541,
		/* [157] */
		546,
		/* [158] */
		551,
		/* [159] */
		556,
		/* [160] */
		561,
		/* [161] */
		566,
		/* [162] */
		571,
		/* [163] */
		573,
		/* [164] */
		578,
		/* [165] */
		583,
		/* [166] */
		588,
		/* [167] */
		593,
		/* [168] */
		598,
		/* [169] */
		603,
		/* [170] */
		608,
		/* [171] */
		613,
		/* [172] */
		618,
		/* [173] */
		624,
		/* [174] */
		630,
		/* [175] */
		631,
		/* [176] */
		636,
		/* [177] */
		641,
		/* [178] */
		648,
		/* [179] */
		655,
		/* [180] */
		662,
		/* [181] */
		663,
		/* [182] */
		667,
		/* [183] */
		671,
		/* [184] */
		676,
		/* [185] */
		681,
		/* [186] */
		685,
		/* [187] */
		690,
		/* [188] */
		693,
		/* [189] */
		698,
		/* [190] */
		703,
		/* [191] */
		708,
		/* [192] */
		712,
		/* [193] */
		716,
		/* [194] */
		720,
		/* [195] */
		727,
		/* [196] */
		734,
		/* [197] */
		738,
		/* [198] */
		745,
		/* [199] */
		752,
		/* [200] */
		756,
		/* [201] */
		761,
		/* [202] */
		766,
		/* [203] */
		771,
		/* [204] */
		778,
		/* [205] */
		785,
		/* [206] */
		790,
		/* [207] */
		797,
		/* [208] */
		804,
		/* [209] */
		811,
		/* [210] */
		818,
		/* [211] */
		825,
		/* [212] */
		832,
		/* [213] */
		837,
		/* [214] */
		841,
		/* [215] */
		845,
		/* [216] */
		850,
		/* [217] */
		857,
		/* [218] */
		864,
		/* [219] */
		868,
		/* [220] */
		872,
		/* [221] */
		879,
		/* [222] */
		886,
		/* [223] */
		890,
		/* [224] */
		894,
		/* [225] */
		901,
		/* [226] */
		907,
		/* [227] */
		912,
		/* [228] */
		917,
		/* [229] */
		922,
		/* [230] */
		927,
		/* [231] */
		933,
		/* [232] */
		938,
		/* [233] */
		945,
		/* [234] */
		950,
		/* [235] */
		955,
		/* [236] */
		960,
		/* [237] */
		965,
		/* [238] */
		970,
		/* [239] */
		975,
		/* [240] */
		981,
		/* [241] */
		987,
		/* [242] */
		992,
		/* [243] */
		997,
		/* [244] */
		1000,
		/* [245] */
		1003,
		/* [246] */
		1007,
		/* [247] */
		1011,
		/* [248] */
		1016,
		/* [249] */
		1021,
		/* [250] */
		1025,
		/* [251] */
		1030,
		/* [252] */
		1031,
		/* [253] */
		1036,
		/* [254] */
		1040,
		/* [255] */
		1044,
		/* [256] */
		1048,
		/* [257] */
		1048,
		/* [258] */
		1055
	},
	{	/* array: 258 elements */
		/* [1] */
		7,
		/* [2] */
		7,
		/* [3] */
		7,
		/* [4] */
		7,
		/* [5] */
		7,
		/* [6] */
		7,
		/* [7] */
		7,
		/* [8] */
		7,
		/* [9] */
		7,
		/* [10] */
		7,
		/* [11] */
		7,
		/* [12] */
		7,
		/* [13] */
		7,
		/* [14] */
		7,
		/* [15] */
		7,
		/* [16] */
		7,
		/* [17] */
		7,
		/* [18] */
		7,
		/* [19] */
		7,
		/* [20] */
		7,
		/* [21] */
		7,
		/* [22] */
		7,
		/* [23] */
		7,
		/* [24] */
		7,
		/* [25] */
		7,
		/* [26] */
		7,
		/* [27] */
		7,
		/* [28] */
		7,
		/* [29] */
		7,
		/* [30] */
		7,
		/* [31] */
		7,
		/* [32] */
		7,
		/* [33] */
		7,
		/* [34] */
		775,
		/* [35] */
		519,
		/* [36] */
		263,
		/* [37] */
		263,
		/* [38] */
		263,
		/* [39] */
		7,
		/* [40] */
		775,
		/* [41] */
		519,
		/* [42] */
		519,
		/* [43] */
		263,
		/* [44] */
		263,
		/* [45] */
		519,
		/* [46] */
		263,
		/* [47] */
		775,
		/* [48] */
		263,
		/* [49] */
		263,
		/* [50] */
		519,
		/* [51] */
		263,
		/* [52] */
		263,
		/* [53] */
		263,
		/* [54] */
		263,
		/* [55] */
		263,
		/* [56] */
		263,
		/* [57] */
		263,
		/* [58] */
		263,
		/* [59] */
		775,
		/* [60] */
		519,
		/* [61] */
		263,
		/* [62] */
		263,
		/* [63] */
		519,
		/* [64] */
		263,
		/* [65] */
		7,
		/* [66] */
		263,
		/* [67] */
		263,
		/* [68] */
		263,
		/* [69] */
		263,
		/* [70] */
		263,
		/* [71] */
		263,
		/* [72] */
		263,
		/* [73] */
		263,
		/* [74] */
		519,
		/* [75] */
		263,
		/* [76] */
		263,
		/* [77] */
		263,
		/* [78] */
		263,
		/* [79] */
		263,
		/* [80] */
		263,
		/* [81] */
		263,
		/* [82] */
		263,
		/* [83] */
		263,
		/* [84] */
		263,
		/* [85] */
		263,
		/* [86] */
		263,
		/* [87] */
		263,
		/* [88] */
		263,
		/* [89] */
		263,
		/* [90] */
		263,
		/* [91] */
		263,
		/* [92] */
		519,
		/* [93] */
		263,
		/* [94] */
		519,
		/* [95] */
		263,
		/* [96] */
		7,
		/* [97] */
		775,
		/* [98] */
		263,
		/* [99] */
		263,
		/* [100] */
		263,
		/* [101] */
		263,
		/* [102] */
		263,
		/* [103] */
		519,
		/* [104] */
		263,
		/* [105] */
		263,
		/* [106] */
		775,
		/* [107] */
		263,
		/* [108] */
		263,
		/* [109] */
		519,
		/* [110] */
		263,
		/* [111] */
		263,
		/* [112] */
		263,
		/* [113] */
		263,
		/* [114] */
		263,
		/* [115] */
		263,
		/* [116] */
		263,
		/* [117] */
		263,
		/* [118] */
		263,
		/* [119] */
		263,
		/* [120] */
		263,
		/* [121] */
		263,
		/* [122] */
		263,
		/* [123] */
		263,
		/* [124] */
		519,
		/* [125] */
		775,
		/* [126] */
		519,
		/* [127] */
		263,
		/* [128] */
		0,
		/* [129] */
		263,
		/* [130] */
		263,
		/* [131] */
		263,
		/* [132] */
		263,
		/* [133] */
		263,
		/* [134] */
		263,
		/* [135] */
		263,
		/* [136] */
		263,
		/* [137] */
		263,
		/* [138] */
		263,
		/* [139] */
		263,
		/* [140] */
		519,
		/* [141] */
		519,
		/* [142] */
		519,
		/* [143] */
		263,
		/* [144] */
		263,
		/* [145] */
		263,
		/* [146] */
		263,
		/* [147] */
		263,
		/* [148] */
		263,
		/* [149] */
		263,
		/* [150] */
		263,
		/* [151] */
		263,
		/* [152] */
		263,
		/* [153] */
		263,
		/* [154] */
		263,
		/* [155] */
		263,
		/* [156] */
		263,
		/* [157] */
		263,
		/* [158] */
		263,
		/* [159] */
		263,
		/* [160] */
		263,
		/* [161] */
		263,
		/* [162] */
		775,
		/* [163] */
		263,
		/* [164] */
		263,
		/* [165] */
		263,
		/* [166] */
		263,
		/* [167] */
		263,
		/* [168] */
		263,
		/* [169] */
		263,
		/* [170] */
		263,
		/* [171] */
		263,
		/* [172] */
		263,
		/* [173] */
		263,
		/* [174] */
		775,
		/* [175] */
		263,
		/* [176] */
		263,
		/* [177] */
		7,
		/* [178] */
		7,
		/* [179] */
		7,
		/* [180] */
		775,
		/* [181] */
		7,
		/* [182] */
		7,
		/* [183] */
		7,
		/* [184] */
		7,
		/* [185] */
		7,
		/* [186] */
		7,
		/* [187] */
		519,
		/* [188] */
		7,
		/* [189] */
		7,
		/* [190] */
		7,
		/* [191] */
		7,
		/* [192] */
		7,
		/* [193] */
		775,
		/* [194] */
		7,
		/* [195] */
		7,
		/* [196] */
		775,
		/* [197] */
		7,
		/* [198] */
		7,
		/* [199] */
		775,
		/* [200] */
		519,
		/* [201] */
		519,
		/* [202] */
		519,
		/* [203] */
		7,
		/* [204] */
		7,
		/* [205] */
		519,
		/* [206] */
		7,
		/* [207] */
		7,
		/* [208] */
		7,
		/* [209] */
		7,
		/* [210] */
		7,
		/* [211] */
		7,
		/* [212] */
		519,
		/* [213] */
		775,
		/* [214] */
		775,
		/* [215] */
		519,
		/* [216] */
		7,
		/* [217] */
		7,
		/* [218] */
		7,
		/* [219] */
		775,
		/* [220] */
		7,
		/* [221] */
		7,
		/* [222] */
		7,
		/* [223] */
		775,
		/* [224] */
		7,
		/* [225] */
		263,
		/* [226] */
		263,
		/* [227] */
		263,
		/* [228] */
		263,
		/* [229] */
		263,
		/* [230] */
		263,
		/* [231] */
		263,
		/* [232] */
		7,
		/* [233] */
		263,
		/* [234] */
		263,
		/* [235] */
		263,
		/* [236] */
		263,
		/* [237] */
		263,
		/* [238] */
		263,
		/* [239] */
		263,
		/* [240] */
		263,
		/* [241] */
		263,
		/* [242] */
		263,
		/* [243] */
		519,
		/* [244] */
		519,
		/* [245] */
		775,
		/* [246] */
		7,
		/* [247] */
		263,
		/* [248] */
		263,
		/* [249] */
		263,
		/* [250] */
		263,
		/* [251] */
		775,
		/* [252] */
		263,
		/* [253] */
		7,
		/* [254] */
		7,
		/* [255] */
		263,
		/* [256] */
		1,
		/* [257] */
		7,
		/* [258] */
		-1
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	}
};

resource 'FONT' (19468, "PSHackFont", purgeable) {
	doExpandFont,
	proportionalFont,
	blackFont,
	notSynthetic,
	nofctbRsrc,
	oneBit,
	noCharWidthTable,
	noImageHeightTable,
	0,
	239,
	15,
	0,
	-12,
	15,
	15,
	12,
	3,
	1,
	62,
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0070 0132 0000"
	$"0000 0600 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0001 5400 0000 0000"
	$"1F80 E000 0000 0000 0000 0000 000E 0038"
	$"0000 0000 0000 0000 0000 0005 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 2888 024C 9240 0000 0900"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 1680 A000"
	$"0000 0000 0000 0E7C E00A 0028 0000 0000"
	$"0000 0000 F000 0005 0004 0000 3000 0004"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0007 0C00"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0700 0088 0000 0004 2100 D900 8820 1906"
	$"8904 0344 8201 0000 0000 0000 0000 0000"
	$"0001 5400 0000 0000 16FC A000 0000 000C"
	$"0000 0A44 A00A 0028 0000 094A 8000 0301"
	$"FBC0 0005 D14E 7E61 4920 0004 C4EF C17E"
	$"77EF 3C00 00F0 008F 9EF3 FF7A 1830 C20E"
	$"2F7C F7CF 7F86 0C06 31FD 0500 4080 0203"
	$"0413 0C00 0000 0002 0000 0000 0A99 1071"
	$"EFE2 F428 1295 6601 0452 A6DB 108A 5588"
	$"452B B00C 7803 CE00 0074 5A00 7E7A 0000"
	$"1100 CFFF 96C4 A780 0004 8008 8000 0A5C"
	$"A00A 0028 0000 124C 8004 4601 FC2F F005"
	$"D7F5 9291 48C0 0009 2D10 8340 8030 C200"
	$"0109 E088 618A 1086 1831 431E 30C3 0C30"
	$"8886 0C06 310C 8680 2080 0204 0401 0400"
	$"0000 0002 0000 0000 0AA6 1022 1863 0C20"
	$"0000 0000 0000 0000 0000 0000 0001 4912"
	$"8405 511E 1E26 E000 A085 5400 0A00 2451"
	$"16F4 A840 0000 0011 0020 0A50 A00A 0028"
	$"0000 1295 0040 0C01 FC28 1005 8294 94A0"
	$"87F2 000A 1611 0541 0050 C204 110A 1148"
	$"6086 1082 1832 42AD 30C3 0C30 0886 0C45"
	$"5114 8400 0EF3 9EEE 7DB7 16CD 6779 F777"
	$"4631 18C7 EA80 2852 0853 0C2E 739C E739"
	$"CE73 A52B 39CE 73A3 18C5 4B90 81E9 5121"
	$"2125 4000 A08C 0084 9F44 1211 1694 B02E"
	$"E3A4 8011 0020 0A50 A7FA 0028 EE00 0000"
	$"10A4 5FF5 FC28 1005 8FCC 6840 84C2 0012"
	$"1413 097D F04F 4348 0814 E94F A086 1082"
	$"1834 424D 30C3 0C30 0885 1249 4A14 4400"
	$"118C 6314 8E53 2733 98C6 388A 4631 18C4"
	$"2A80 2852 0853 0C31 8C63 18C6 318C 652C"
	$"C631 8C63 18C5 3550 7BF9 525C CCA4 4011"
	$"2095 5488 4444 7111 7697 B031 1444 8023"
	$"B250 0A50 A41B 80EF 1100 0000 0114 7FFD"
	$"FC28 1005 8506 10A0 852F 9F12 1420 9103"
	$"0890 C213 E425 2A28 6087 DE9F F838 420C"
	$"B0FD 0FCF 0885 12A8 8A24 4400 0F8C 2314"
	$"8C53 4623 18C6 3082 462A A544 5240 448A"
	$"0F4B 0C2F 7BDE F7C2 318C 6528 C631 8C63"
	$"18C4 0538 87F9 5152 D080 01F9 FCA4 03F0"
	$"3F44 9091 4696 302F 14C8 FC21 4C50 9BD3"
	$"BF78 FF83 1100 0000 7E0C 7FF9 FC28 1005"
	$"8005 2D14 8402 0022 1440 6103 0890 BE20"
	$"0245 2A28 6086 1086 1834 420C B0C1 0D00"
	$"8884 A2A9 4444 2400 118C 23F4 8C53 8623"
	$"18C6 3072 454A A244 8A80 448A 084B 0C31"
	$"8C63 18C3 FFFF E528 C631 8C63 18C4 0510"
	$"87F5 50DC D080 0022 20C5 5488 4445 1111"
	$"7697 E851 F550 8641 0089 28D2 094B C1EF"
	$"1FFF E000 020C 43F9 FC28 1005 8005 5308"
	$"8402 0022 1480 7F83 0910 8210 0444 F7F8"
	$"6086 1086 1C32 420C 70C1 0C80 8884 A111"
	$"4444 2400 118C 2304 8C53 4623 18C6 300A"
	$"4544 4545 0A80 FFFE 0847 0C31 8C63 18C2"
	$"1084 2528 C631 8C63 18C4 0510 7BF3 D0D2"
	$"CC80 0042 2084 0084 8445 1211 1694 0851"
	$"0651 8541 328A 4FF3 F94A 7F29 1000 0000"
	$"1114 461F FC28 1005 0015 9314 4800 0041"
	$"2508 8143 0910 840B E802 0418 618A 1086"
	$"1C31 420C 70C1 2C50 8884 4112 2484 1400"
	$"118C 6314 8C53 2623 18C6 308A 4C84 48C6"
	$"0A80 8306 1847 0C31 8C63 18C6 318C 6528"
	$"C631 8C67 39CC 0551 05E1 5121 2100 01FC"
	$"2185 5400 0445 2451 169C 0491 1451 8081"
	$"4D05 2000 014A 0029 1100 0000 00A4 4801"
	$"FC28 1005 800E 8CE2 4800 20C0 C7F7 013C"
	$"F10F 3944 1041 C41F 9EF3 F07A 1BD0 FE0C"
	$"2F40 F42F 0878 4112 24FC 147F 8FF3 9EE4"
	$"7C53 1623 1779 F071 B484 48BF EA80 8305"
	$"EFC2 F3CF 7BDE F7B9 CE73 A528 B9CE 739A"
	$"D6B4 03BE 8401 761E 1E00 0084 3E78 03FF"
	$"E47A CFD1 1680 0CCE EB8E 8081 01FC 9000"
	$"014A 0028 EE00 0000 0043 C001 FC2F F005"
	$"0004 0000 3000 2000 0000 0000 0000 0040"
	$"0000 0000 0000 0000 0000 0000 0000 0800"
	$"0000 0000 0006 0C00 0000 0000 0802 0000"
	$"0040 2000 0000 0004 0700 0000 4000 0000"
	$"0000 0010 0000 0000 0000 0000 0000 0100"
	$"7800 0000 0000 0000 0001 5400 0040 0000"
	$"1680 0000 0000 0001 0000 0000 014A 0028"
	$"0000 0000 0000 4000 07E0 0005 0000 0000"
	$"0000 4000 0000 0000 0000 0080 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 8802 0000 0040 2000"
	$"0000 0044 0000 0000 2000 0000 0000 0020"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0080 0000 1680 0000"
	$"0000 0001 0000 0000 01CA 0028 0000 0000"
	$"0004 4000 0000 0005 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 700C 0000 0000 0000 0000 0038"
	$"0000 0000 4000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0001 5400 0000 0000 1F80 0000 0000 0002"
	$"0000 0000 000E 0038 0000 0000 0003 8000"
	$"0000 0005",
	{	/* array: 242 elements */
		/* [1] */
		0,
		/* [2] */
		0,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		0,
		/* [8] */
		0,
		/* [9] */
		0,
		/* [10] */
		0,
		/* [11] */
		0,
		/* [12] */
		0,
		/* [13] */
		0,
		/* [14] */
		0,
		/* [15] */
		0,
		/* [16] */
		0,
		/* [17] */
		0,
		/* [18] */
		0,
		/* [19] */
		0,
		/* [20] */
		0,
		/* [21] */
		0,
		/* [22] */
		0,
		/* [23] */
		0,
		/* [24] */
		0,
		/* [25] */
		0,
		/* [26] */
		0,
		/* [27] */
		0,
		/* [28] */
		0,
		/* [29] */
		0,
		/* [30] */
		0,
		/* [31] */
		0,
		/* [32] */
		0,
		/* [33] */
		0,
		/* [34] */
		0,
		/* [35] */
		1,
		/* [36] */
		4,
		/* [37] */
		11,
		/* [38] */
		16,
		/* [39] */
		23,
		/* [40] */
		31,
		/* [41] */
		32,
		/* [42] */
		35,
		/* [43] */
		38,
		/* [44] */
		44,
		/* [45] */
		49,
		/* [46] */
		51,
		/* [47] */
		56,
		/* [48] */
		57,
		/* [49] */
		62,
		/* [50] */
		68,
		/* [51] */
		70,
		/* [52] */
		76,
		/* [53] */
		82,
		/* [54] */
		89,
		/* [55] */
		95,
		/* [56] */
		101,
		/* [57] */
		107,
		/* [58] */
		113,
		/* [59] */
		119,
		/* [60] */
		120,
		/* [61] */
		122,
		/* [62] */
		126,
		/* [63] */
		131,
		/* [64] */
		135,
		/* [65] */
		141,
		/* [66] */
		149,
		/* [67] */
		156,
		/* [68] */
		162,
		/* [69] */
		168,
		/* [70] */
		174,
		/* [71] */
		179,
		/* [72] */
		184,
		/* [73] */
		190,
		/* [74] */
		196,
		/* [75] */
		197,
		/* [76] */
		203,
		/* [77] */
		209,
		/* [78] */
		214,
		/* [79] */
		221,
		/* [80] */
		227,
		/* [81] */
		233,
		/* [82] */
		239,
		/* [83] */
		245,
		/* [84] */
		251,
		/* [85] */
		257,
		/* [86] */
		264,
		/* [87] */
		270,
		/* [88] */
		277,
		/* [89] */
		286,
		/* [90] */
		291,
		/* [91] */
		296,
		/* [92] */
		301,
		/* [93] */
		303,
		/* [94] */
		308,
		/* [95] */
		310,
		/* [96] */
		313,
		/* [97] */
		321,
		/* [98] */
		323,
		/* [99] */
		328,
		/* [100] */
		333,
		/* [101] */
		338,
		/* [102] */
		343,
		/* [103] */
		348,
		/* [104] */
		352,
		/* [105] */
		357,
		/* [106] */
		362,
		/* [107] */
		364,
		/* [108] */
		367,
		/* [109] */
		372,
		/* [110] */
		374,
		/* [111] */
		383,
		/* [112] */
		388,
		/* [113] */
		393,
		/* [114] */
		398,
		/* [115] */
		403,
		/* [116] */
		408,
		/* [117] */
		413,
		/* [118] */
		417,
		/* [119] */
		422,
		/* [120] */
		427,
		/* [121] */
		436,
		/* [122] */
		441,
		/* [123] */
		446,
		/* [124] */
		451,
		/* [125] */
		454,
		/* [126] */
		455,
		/* [127] */
		458,
		/* [128] */
		464,
		/* [129] */
		464,
		/* [130] */
		471,
		/* [131] */
		478,
		/* [132] */
		484,
		/* [133] */
		489,
		/* [134] */
		495,
		/* [135] */
		501,
		/* [136] */
		507,
		/* [137] */
		512,
		/* [138] */
		517,
		/* [139] */
		522,
		/* [140] */
		527,
		/* [141] */
		532,
		/* [142] */
		537,
		/* [143] */
		542,
		/* [144] */
		547,
		/* [145] */
		552,
		/* [146] */
		557,
		/* [147] */
		562,
		/* [148] */
		564,
		/* [149] */
		566,
		/* [150] */
		569,
		/* [151] */
		572,
		/* [152] */
		577,
		/* [153] */
		582,
		/* [154] */
		587,
		/* [155] */
		592,
		/* [156] */
		597,
		/* [157] */
		602,
		/* [158] */
		607,
		/* [159] */
		612,
		/* [160] */
		617,
		/* [161] */
		622,
		/* [162] */
		625,
		/* [163] */
		629,
		/* [164] */
		634,
		/* [165] */
		640,
		/* [166] */
		646,
		/* [167] */
		652,
		/* [168] */
		658,
		/* [169] */
		665,
		/* [170] */
		673,
		/* [171] */
		681,
		/* [172] */
		690,
		/* [173] */
		692,
		/* [174] */
		695,
		/* [175] */
		701,
		/* [176] */
		711,
		/* [177] */
		719,
		/* [178] */
		726,
		/* [179] */
		731,
		/* [180] */
		735,
		/* [181] */
		739,
		/* [182] */
		744,
		/* [183] */
		751,
		/* [184] */
		756,
		/* [185] */
		762,
		/* [186] */
		769,
		/* [187] */
		774,
		/* [188] */
		777,
		/* [189] */
		782,
		/* [190] */
		787,
		/* [191] */
		795,
		/* [192] */
		804,
		/* [193] */
		811,
		/* [194] */
		816,
		/* [195] */
		817,
		/* [196] */
		822,
		/* [197] */
		830,
		/* [198] */
		833,
		/* [199] */
		839,
		/* [200] */
		846,
		/* [201] */
		852,
		/* [202] */
		857,
		/* [203] */
		862,
		/* [204] */
		869,
		/* [205] */
		876,
		/* [206] */
		881,
		/* [207] */
		888,
		/* [208] */
		895,
		/* [209] */
		904,
		/* [210] */
		908,
		/* [211] */
		915,
		/* [212] */
		920,
		/* [213] */
		925,
		/* [214] */
		927,
		/* [215] */
		929,
		/* [216] */
		934,
		/* [217] */
		941,
		/* [218] */
		946,
		/* [219] */
		959,
		/* [220] */
		959,
		/* [221] */
		959,
		/* [222] */
		959,
		/* [223] */
		959,
		/* [224] */
		959,
		/* [225] */
		959,
		/* [226] */
		959,
		/* [227] */
		959,
		/* [228] */
		959,
		/* [229] */
		959,
		/* [230] */
		959,
		/* [231] */
		959,
		/* [232] */
		959,
		/* [233] */
		959,
		/* [234] */
		959,
		/* [235] */
		959,
		/* [236] */
		959,
		/* [237] */
		959,
		/* [238] */
		959,
		/* [239] */
		959,
		/* [240] */
		965,
		/* [241] */
		971,
		/* [242] */
		981
	},
	{	/* array: 242 elements */
		/* [1] */
		0,
		/* [2] */
		-1,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		-1,
		/* [8] */
		-1,
		/* [9] */
		-1,
		/* [10] */
		2056,
		/* [11] */
		-1,
		/* [12] */
		-1,
		/* [13] */
		-1,
		/* [14] */
		0,
		/* [15] */
		-1,
		/* [16] */
		-1,
		/* [17] */
		-1,
		/* [18] */
		-1,
		/* [19] */
		-1,
		/* [20] */
		-1,
		/* [21] */
		-1,
		/* [22] */
		-1,
		/* [23] */
		-1,
		/* [24] */
		-1,
		/* [25] */
		-1,
		/* [26] */
		-1,
		/* [27] */
		-1,
		/* [28] */
		-1,
		/* [29] */
		-1,
		/* [30] */
		-1,
		/* [31] */
		-1,
		/* [32] */
		-1,
		/* [33] */
		1028,
		/* [34] */
		259,
		/* [35] */
		261,
		/* [36] */
		265,
		/* [37] */
		263,
		/* [38] */
		265,
		/* [39] */
		9,
		/* [40] */
		259,
		/* [41] */
		261,
		/* [42] */
		261,
		/* [43] */
		264,
		/* [44] */
		263,
		/* [45] */
		260,
		/* [46] */
		263,
		/* [47] */
		259,
		/* [48] */
		263,
		/* [49] */
		264,
		/* [50] */
		776,
		/* [51] */
		264,
		/* [52] */
		264,
		/* [53] */
		264,
		/* [54] */
		264,
		/* [55] */
		264,
		/* [56] */
		264,
		/* [57] */
		264,
		/* [58] */
		264,
		/* [59] */
		259,
		/* [60] */
		260,
		/* [61] */
		262,
		/* [62] */
		263,
		/* [63] */
		262,
		/* [64] */
		264,
		/* [65] */
		266,
		/* [66] */
		265,
		/* [67] */
		264,
		/* [68] */
		264,
		/* [69] */
		264,
		/* [70] */
		263,
		/* [71] */
		263,
		/* [72] */
		264,
		/* [73] */
		264,
		/* [74] */
		517,
		/* [75] */
		7,
		/* [76] */
		264,
		/* [77] */
		263,
		/* [78] */
		265,
		/* [79] */
		264,
		/* [80] */
		264,
		/* [81] */
		264,
		/* [82] */
		264,
		/* [83] */
		264,
		/* [84] */
		264,
		/* [85] */
		8,
		/* [86] */
		264,
		/* [87] */
		265,
		/* [88] */
		267,
		/* [89] */
		263,
		/* [90] */
		263,
		/* [91] */
		263,
		/* [92] */
		260,
		/* [93] */
		263,
		/* [94] */
		260,
		/* [95] */
		260,
		/* [96] */
		8,
		/* [97] */
		260,
		/* [98] */
		263,
		/* [99] */
		263,
		/* [100] */
		263,
		/* [101] */
		263,
		/* [102] */
		263,
		/* [103] */
		262,
		/* [104] */
		263,
		/* [105] */
		263,
		/* [106] */
		261,
		/* [107] */
		262,
		/* [108] */
		263,
		/* [109] */
		261,
		/* [110] */
		267,
		/* [111] */
		263,
		/* [112] */
		263,
		/* [113] */
		263,
		/* [114] */
		263,
		/* [115] */
		262,
		/* [116] */
		263,
		/* [117] */
		262,
		/* [118] */
		263,
		/* [119] */
		263,
		/* [120] */
		267,
		/* [121] */
		263,
		/* [122] */
		263,
		/* [123] */
		263,
		/* [124] */
		261,
		/* [125] */
		259,
		/* [126] */
		261,
		/* [127] */
		264,
		/* [128] */
		0,
		/* [129] */
		265,
		/* [130] */
		265,
		/* [131] */
		264,
		/* [132] */
		263,
		/* [133] */
		264,
		/* [134] */
		264,
		/* [135] */
		264,
		/* [136] */
		263,
		/* [137] */
		263,
		/* [138] */
		263,
		/* [139] */
		263,
		/* [140] */
		263,
		/* [141] */
		263,
		/* [142] */
		263,
		/* [143] */
		263,
		/* [144] */
		263,
		/* [145] */
		263,
		/* [146] */
		263,
		/* [147] */
		517,
		/* [148] */
		261,
		/* [149] */
		261,
		/* [150] */
		261,
		/* [151] */
		263,
		/* [152] */
		263,
		/* [153] */
		263,
		/* [154] */
		263,
		/* [155] */
		263,
		/* [156] */
		263,
		/* [157] */
		263,
		/* [158] */
		263,
		/* [159] */
		263,
		/* [160] */
		263,
		/* [161] */
		261,
		/* [162] */
		262,
		/* [163] */
		263,
		/* [164] */
		264,
		/* [165] */
		264,
		/* [166] */
		264,
		/* [167] */
		264,
		/* [168] */
		265,
		/* [169] */
		266,
		/* [170] */
		266,
		/* [171] */
		267,
		/* [172] */
		260,
		/* [173] */
		261,
		/* [174] */
		264,
		/* [175] */
		268,
		/* [176] */
		8,
		/* [177] */
		11,
		/* [178] */
		263,
		/* [179] */
		262,
		/* [180] */
		262,
		/* [181] */
		263,
		/* [182] */
		265,
		/* [183] */
		263,
		/* [184] */
		264,
		/* [185] */
		265,
		/* [186] */
		522,
		/* [187] */
		261,
		/* [188] */
		6,
		/* [189] */
		6,
		/* [190] */
		266,
		/* [191] */
		267,
		/* [192] */
		7,
		/* [193] */
		264,
		/* [194] */
		516,
		/* [195] */
		263,
		/* [196] */
		266,
		/* [197] */
		261,
		/* [198] */
		264,
		/* [199] */
		265,
		/* [200] */
		264,
		/* [201] */
		264,
		/* [202] */
		522,
		/* [203] */
		8,
		/* [204] */
		265,
		/* [205] */
		521,
		/* [206] */
		264,
		/* [207] */
		780,
		/* [208] */
		267,
		/* [209] */
		262,
		/* [210] */
		265,
		/* [211] */
		263,
		/* [212] */
		263,
		/* [213] */
		260,
		/* [214] */
		260,
		/* [215] */
		263,
		/* [216] */
		265,
		/* [217] */
		264,
		/* [218] */
		271,
		/* [219] */
		-1,
		/* [220] */
		-1,
		/* [221] */
		-1,
		/* [222] */
		-1,
		/* [223] */
		-1,
		/* [224] */
		-1,
		/* [225] */
		-1,
		/* [226] */
		-1,
		/* [227] */
		-1,
		/* [228] */
		-1,
		/* [229] */
		-1,
		/* [230] */
		-1,
		/* [231] */
		-1,
		/* [232] */
		-1,
		/* [233] */
		-1,
		/* [234] */
		-1,
		/* [235] */
		-1,
		/* [236] */
		-1,
		/* [237] */
		-1,
		/* [238] */
		-1,
		/* [239] */
		521,
		/* [240] */
		521,
		/* [241] */
		10,
		/* [242] */
		-18725
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	}
};

resource 'FONT' (19593, purgeable) {
	doExpandFont,
	proportionalFont,
	blackFont,
	notSynthetic,
	nofctbRsrc,
	oneBit,
	noCharWidthTable,
	noImageHeightTable,
	0,
	254,
	6,
	0,
	-9,
	6,
	11,
	9,
	2,
	0,
	63,
	$"0000 0000 0000 0080 0000 0000 0000 0004"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"2000 0000 0000 0000 0000 0000 0000 0000"
	$"0001 0006 C000 0000 0000 00A2 0800 0000"
	$"0001 4A00 0001 8000 00D0 0000 10C2 002B"
	$"5AC4 4A00 FF83 E510 8201 0012 5787 C1E0"
	$"F885 0005 4005 0823 F03F FC00 7E00 0000"
	$"1CE0 0800 0000 0000 2000 000E 6000 0010"
	$"0000 0000 0080 0000 0000 0000 000E 0000"
	$"0000 0000 0000 0000 0000 0000 0000 2000"
	$"0000 0000 0000 0000 0000 0000 0000 0003"
	$"8002 8440 10C0 2008 1405 1000 2010 4400"
	$"0003 0002 0910 9B60 0000 1144 0014 0FC4"
	$"4A00 AEFA A510 8201 0012 55BD 7FBF A885"
	$"0005 4005 0823 F03F FC03 4200 0000 0910"
	$"1400 B9C0 0004 2003 0009 9000 D539 EC4C"
	$"2000 0139 7385 F77D CE00 01C4 779D EFFD"
	$"D1E1 8C23 1779 DE77 E318 C63F D0D0 1020"
	$"0080 C109 8600 0000 0010 0000 0005 4D77"
	$"C8A5 0920 5285 6AE7 7C0F 5288 A229 D104"
	$"A3E2 1221 2D17 6200 1249 002B 5AC4 4A00"
	$"DDEF 6510 8201 0012 56EE EB7B D885 0005"
	$"4005 0823 F03F FC04 C00F 800D 9D17 1001"
	$"47E0 121A 2004 8009 20F1 DFD6 B292 A900"
	$"0147 8C4D 0806 3104 122E 8C63 1842 3141"
	$"9437 98C6 3189 2318 AA21 9068 0820 0081"
	$"0100 8200 0000 0010 0000 0005 568F C000"
	$"00C0 0000 0118 C014 0000 0002 3124 1512"
	$"0000 0199 9000 1550 0014 0FC4 4A00 AED6"
	$"A510 8201 0012 55DD 77B5 A885 0005 4005"
	$"0823 F03F FC08 C004 8002 6B18 880F 47FF"
	$"912A 240C B839 4091 8552 D421 7100 024D"
	$"0855 EF06 31AB E83F 8C61 1842 1141 A42B"
	$"58C6 3181 2318 9222 8840 03FC E7BB 9FE9"
	$"93EB 3BCF B3FE 31AC 63F5 4082 9CF7 BDEE"
	$"739C 9318 C1D4 739D 18C6 3177 3F17 3E74"
	$"6D59 9200 0AAB 002B 5AC7 CA0F DDEF 65F0"
	$"8201 0013 D6EE EB7B DFE5 7E05 7E05 7E23"
	$"F03F FDD9 41F2 3F22 2BF8 BB72 C7E0 7CC8"
	$"2073 7C29 FE95 8FB9 4821 AFCF C255 11A4"
	$"1889 D110 0455 FFA1 1F7A 7F41 C423 38FA"
	$"3E71 2318 9144 8840 0463 18C5 2319 A35C"
	$"C631 CC12 31AA A229 2082 A318 C631 8C62"
	$"93FF FABE 8C63 18C6 31AC 09E2 468C 7337"
	$"647F F0CB 4C94 0FFC 7BF1 AED6 BF1F FFFF"
	$"FFFE 5DDD 77B5 A81F 81FF C9FF 89FF FFFF"
	$"FE29 40A1 4522 2B18 C6B2 C7FF 9128 3F88"
	$"7C40 0E95 8515 B521 2100 0465 207E 1892"
	$"2F0B E895 8C61 1842 3151 A423 18C2 3109"
	$"231A 9088 8440 0463 08FD 2319 E358 C631"
	$"8392 31A9 2245 4083 BF18 C630 FFFE 9318"
	$"C3F4 8C63 18C6 31A4 3F22 468C 6310 0840"
	$"210F 926B 5AC7 CA5F DDEF 60F1 0009 0013"
	$"D6EE EB7B DFE0 7E50 7F45 7E13 FFFF 0228"
	$"C0A2 4522 1D18 C774 C7E0 1218 2070 7F40"
	$"0E95 0056 B212 0100 0445 4445 1892 2104"
	$"100E 8C63 1842 3151 9423 18C2 3189 22AD"
	$"A890 8440 04E3 08C1 2319 9358 C631 8052"
	$"6AAA A285 4089 2139 CE70 8420 9318 C294"
	$"8C63 39C6 31AC 4972 4E8C E31F F8C0 2203"
	$"9254 0FC4 4A51 AED6 A001 0009 0012 55DD"
	$"77B5 A800 0850 0945 0813 FFFF 0228 C0A4"
	$"C522 0915 4414 C7FF 8008 2480 3880 0091"
	$"803A 4D0C 0010 2839 FB84 E711 CEA0 008A"
	$"8F9D EFC1 D1EE 8FE3 1741 D171 1C48 C49F"
	$"C2C7 E37C F7BD 1F19 8B58 BBCF 878D A454"
	$"5FF5 4071 1ED6 B5AF 7BDE 9318 FEF7 739C"
	$"D6BD CE77 8922 3673 6310 0700 0383 4CAB"
	$"5AC4 4A51 DDEF 6001 0009 0012 56EE EB7B"
	$"D800 0850 0945 0813 FFFF 01DB 40AF B9D2"
	$"1CED B80F 47E0 7FF9 2000 0080 00F1 0010"
	$"0000 0010 0800 0000 0000 0020 000A 0000"
	$"0000 0000 0000 0000 2000 0000 0000 0200"
	$"0000 0000 0201 0000 0201 0000 0000 0203"
	$"8013 8000 0004 0000 0000 0000 0000 0004"
	$"0020 0032 0000 0000 0000 0000 0014 0FC4"
	$"4A51 FFFF C001 0009 0012 53FF FFFF F800"
	$"0850 0945 0813 FFFF 0008 0000 0100 0000"
	$"0008 7FE0 0009 2000 0000 0000 0000 0000"
	$"0020 1000 0000 0000 0040 001B 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0100 0000"
	$"0000 1C06 0000 0201 0000 0000 1C01 0020"
	$"0000 0008 0000 0000 0000 0000 0038 0000"
	$"000C 0000 0000 0000 0000 0001 5AC4 4A51"
	$"0000 0001 0009 0012 5000 0000 0000 0850"
	$"0945 0813 FFFF 0000 0000 0100 0000 0010"
	$"0000 0008 C000 0000 0000",
	{	/* array: 257 elements */
		/* [1] */
		0,
		/* [2] */
		0,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		0,
		/* [8] */
		0,
		/* [9] */
		0,
		/* [10] */
		0,
		/* [11] */
		0,
		/* [12] */
		0,
		/* [13] */
		0,
		/* [14] */
		0,
		/* [15] */
		0,
		/* [16] */
		0,
		/* [17] */
		0,
		/* [18] */
		0,
		/* [19] */
		0,
		/* [20] */
		0,
		/* [21] */
		0,
		/* [22] */
		0,
		/* [23] */
		0,
		/* [24] */
		0,
		/* [25] */
		0,
		/* [26] */
		0,
		/* [27] */
		0,
		/* [28] */
		0,
		/* [29] */
		0,
		/* [30] */
		0,
		/* [31] */
		0,
		/* [32] */
		0,
		/* [33] */
		0,
		/* [34] */
		0,
		/* [35] */
		1,
		/* [36] */
		4,
		/* [37] */
		9,
		/* [38] */
		14,
		/* [39] */
		19,
		/* [40] */
		24,
		/* [41] */
		26,
		/* [42] */
		29,
		/* [43] */
		32,
		/* [44] */
		37,
		/* [45] */
		42,
		/* [46] */
		44,
		/* [47] */
		50,
		/* [48] */
		51,
		/* [49] */
		57,
		/* [50] */
		62,
		/* [51] */
		64,
		/* [52] */
		69,
		/* [53] */
		74,
		/* [54] */
		79,
		/* [55] */
		84,
		/* [56] */
		89,
		/* [57] */
		94,
		/* [58] */
		99,
		/* [59] */
		104,
		/* [60] */
		105,
		/* [61] */
		107,
		/* [62] */
		110,
		/* [63] */
		115,
		/* [64] */
		118,
		/* [65] */
		123,
		/* [66] */
		128,
		/* [67] */
		133,
		/* [68] */
		138,
		/* [69] */
		143,
		/* [70] */
		148,
		/* [71] */
		153,
		/* [72] */
		158,
		/* [73] */
		163,
		/* [74] */
		168,
		/* [75] */
		171,
		/* [76] */
		176,
		/* [77] */
		181,
		/* [78] */
		186,
		/* [79] */
		191,
		/* [80] */
		196,
		/* [81] */
		201,
		/* [82] */
		206,
		/* [83] */
		211,
		/* [84] */
		216,
		/* [85] */
		221,
		/* [86] */
		226,
		/* [87] */
		231,
		/* [88] */
		236,
		/* [89] */
		241,
		/* [90] */
		246,
		/* [91] */
		251,
		/* [92] */
		256,
		/* [93] */
		258,
		/* [94] */
		264,
		/* [95] */
		266,
		/* [96] */
		269,
		/* [97] */
		275,
		/* [98] */
		277,
		/* [99] */
		282,
		/* [100] */
		287,
		/* [101] */
		292,
		/* [102] */
		297,
		/* [103] */
		302,
		/* [104] */
		306,
		/* [105] */
		311,
		/* [106] */
		316,
		/* [107] */
		317,
		/* [108] */
		320,
		/* [109] */
		325,
		/* [110] */
		327,
		/* [111] */
		332,
		/* [112] */
		337,
		/* [113] */
		342,
		/* [114] */
		347,
		/* [115] */
		352,
		/* [116] */
		357,
		/* [117] */
		362,
		/* [118] */
		366,
		/* [119] */
		371,
		/* [120] */
		376,
		/* [121] */
		381,
		/* [122] */
		386,
		/* [123] */
		391,
		/* [124] */
		396,
		/* [125] */
		399,
		/* [126] */
		400,
		/* [127] */
		403,
		/* [128] */
		408,
		/* [129] */
		408,
		/* [130] */
		413,
		/* [131] */
		418,
		/* [132] */
		423,
		/* [133] */
		428,
		/* [134] */
		433,
		/* [135] */
		438,
		/* [136] */
		443,
		/* [137] */
		448,
		/* [138] */
		453,
		/* [139] */
		458,
		/* [140] */
		463,
		/* [141] */
		466,
		/* [142] */
		469,
		/* [143] */
		471,
		/* [144] */
		476,
		/* [145] */
		481,
		/* [146] */
		486,
		/* [147] */
		491,
		/* [148] */
		496,
		/* [149] */
		501,
		/* [150] */
		506,
		/* [151] */
		511,
		/* [152] */
		516,
		/* [153] */
		521,
		/* [154] */
		526,
		/* [155] */
		531,
		/* [156] */
		536,
		/* [157] */
		541,
		/* [158] */
		546,
		/* [159] */
		551,
		/* [160] */
		556,
		/* [161] */
		561,
		/* [162] */
		566,
		/* [163] */
		568,
		/* [164] */
		573,
		/* [165] */
		578,
		/* [166] */
		583,
		/* [167] */
		588,
		/* [168] */
		592,
		/* [169] */
		596,
		/* [170] */
		601,
		/* [171] */
		606,
		/* [172] */
		611,
		/* [173] */
		617,
		/* [174] */
		623,
		/* [175] */
		624,
		/* [176] */
		629,
		/* [177] */
		634,
		/* [178] */
		639,
		/* [179] */
		644,
		/* [180] */
		649,
		/* [181] */
		650,
		/* [182] */
		654,
		/* [183] */
		658,
		/* [184] */
		663,
		/* [185] */
		668,
		/* [186] */
		672,
		/* [187] */
		677,
		/* [188] */
		681,
		/* [189] */
		686,
		/* [190] */
		691,
		/* [191] */
		696,
		/* [192] */
		700,
		/* [193] */
		704,
		/* [194] */
		707,
		/* [195] */
		713,
		/* [196] */
		719,
		/* [197] */
		722,
		/* [198] */
		728,
		/* [199] */
		734,
		/* [200] */
		737,
		/* [201] */
		741,
		/* [202] */
		745,
		/* [203] */
		749,
		/* [204] */
		754,
		/* [205] */
		759,
		/* [206] */
		763,
		/* [207] */
		768,
		/* [208] */
		773,
		/* [209] */
		779,
		/* [210] */
		785,
		/* [211] */
		791,
		/* [212] */
		797,
		/* [213] */
		801,
		/* [214] */
		804,
		/* [215] */
		807,
		/* [216] */
		811,
		/* [217] */
		817,
		/* [218] */
		823,
		/* [219] */
		827,
		/* [220] */
		830,
		/* [221] */
		836,
		/* [222] */
		842,
		/* [223] */
		845,
		/* [224] */
		848,
		/* [225] */
		854,
		/* [226] */
		860,
		/* [227] */
		865,
		/* [228] */
		871,
		/* [229] */
		876,
		/* [230] */
		881,
		/* [231] */
		887,
		/* [232] */
		892,
		/* [233] */
		898,
		/* [234] */
		903,
		/* [235] */
		908,
		/* [236] */
		913,
		/* [237] */
		918,
		/* [238] */
		923,
		/* [239] */
		929,
		/* [240] */
		934,
		/* [241] */
		939,
		/* [242] */
		945,
		/* [243] */
		950,
		/* [244] */
		953,
		/* [245] */
		956,
		/* [246] */
		959,
		/* [247] */
		963,
		/* [248] */
		968,
		/* [249] */
		973,
		/* [250] */
		977,
		/* [251] */
		982,
		/* [252] */
		983,
		/* [253] */
		988,
		/* [254] */
		992,
		/* [255] */
		996,
		/* [256] */
		999,
		/* [257] */
		1005
	},
	{	/* array: 257 elements */
		/* [1] */
		6,
		/* [2] */
		6,
		/* [3] */
		6,
		/* [4] */
		6,
		/* [5] */
		6,
		/* [6] */
		6,
		/* [7] */
		6,
		/* [8] */
		6,
		/* [9] */
		6,
		/* [10] */
		6,
		/* [11] */
		6,
		/* [12] */
		6,
		/* [13] */
		6,
		/* [14] */
		6,
		/* [15] */
		6,
		/* [16] */
		6,
		/* [17] */
		6,
		/* [18] */
		6,
		/* [19] */
		6,
		/* [20] */
		6,
		/* [21] */
		6,
		/* [22] */
		6,
		/* [23] */
		6,
		/* [24] */
		6,
		/* [25] */
		6,
		/* [26] */
		6,
		/* [27] */
		6,
		/* [28] */
		6,
		/* [29] */
		6,
		/* [30] */
		6,
		/* [31] */
		6,
		/* [32] */
		6,
		/* [33] */
		1542,
		/* [34] */
		518,
		/* [35] */
		262,
		/* [36] */
		6,
		/* [37] */
		6,
		/* [38] */
		6,
		/* [39] */
		6,
		/* [40] */
		518,
		/* [41] */
		262,
		/* [42] */
		518,
		/* [43] */
		6,
		/* [44] */
		6,
		/* [45] */
		262,
		/* [46] */
		6,
		/* [47] */
		518,
		/* [48] */
		6,
		/* [49] */
		6,
		/* [50] */
		518,
		/* [51] */
		6,
		/* [52] */
		6,
		/* [53] */
		6,
		/* [54] */
		6,
		/* [55] */
		6,
		/* [56] */
		6,
		/* [57] */
		6,
		/* [58] */
		6,
		/* [59] */
		518,
		/* [60] */
		262,
		/* [61] */
		262,
		/* [62] */
		6,
		/* [63] */
		262,
		/* [64] */
		6,
		/* [65] */
		6,
		/* [66] */
		6,
		/* [67] */
		6,
		/* [68] */
		6,
		/* [69] */
		6,
		/* [70] */
		6,
		/* [71] */
		6,
		/* [72] */
		6,
		/* [73] */
		6,
		/* [74] */
		262,
		/* [75] */
		6,
		/* [76] */
		6,
		/* [77] */
		6,
		/* [78] */
		6,
		/* [79] */
		6,
		/* [80] */
		6,
		/* [81] */
		6,
		/* [82] */
		6,
		/* [83] */
		6,
		/* [84] */
		6,
		/* [85] */
		6,
		/* [86] */
		6,
		/* [87] */
		6,
		/* [88] */
		6,
		/* [89] */
		6,
		/* [90] */
		6,
		/* [91] */
		6,
		/* [92] */
		518,
		/* [93] */
		6,
		/* [94] */
		518,
		/* [95] */
		262,
		/* [96] */
		6,
		/* [97] */
		262,
		/* [98] */
		6,
		/* [99] */
		6,
		/* [100] */
		6,
		/* [101] */
		6,
		/* [102] */
		6,
		/* [103] */
		262,
		/* [104] */
		6,
		/* [105] */
		6,
		/* [106] */
		518,
		/* [107] */
		6,
		/* [108] */
		6,
		/* [109] */
		262,
		/* [110] */
		6,
		/* [111] */
		6,
		/* [112] */
		6,
		/* [113] */
		6,
		/* [114] */
		6,
		/* [115] */
		6,
		/* [116] */
		6,
		/* [117] */
		262,
		/* [118] */
		6,
		/* [119] */
		6,
		/* [120] */
		6,
		/* [121] */
		6,
		/* [122] */
		6,
		/* [123] */
		6,
		/* [124] */
		518,
		/* [125] */
		518,
		/* [126] */
		262,
		/* [127] */
		6,
		/* [128] */
		0,
		/* [129] */
		6,
		/* [130] */
		6,
		/* [131] */
		6,
		/* [132] */
		6,
		/* [133] */
		6,
		/* [134] */
		6,
		/* [135] */
		6,
		/* [136] */
		6,
		/* [137] */
		6,
		/* [138] */
		6,
		/* [139] */
		6,
		/* [140] */
		262,
		/* [141] */
		262,
		/* [142] */
		262,
		/* [143] */
		6,
		/* [144] */
		6,
		/* [145] */
		6,
		/* [146] */
		6,
		/* [147] */
		6,
		/* [148] */
		6,
		/* [149] */
		6,
		/* [150] */
		6,
		/* [151] */
		6,
		/* [152] */
		6,
		/* [153] */
		6,
		/* [154] */
		6,
		/* [155] */
		6,
		/* [156] */
		6,
		/* [157] */
		6,
		/* [158] */
		6,
		/* [159] */
		6,
		/* [160] */
		6,
		/* [161] */
		6,
		/* [162] */
		518,
		/* [163] */
		6,
		/* [164] */
		6,
		/* [165] */
		6,
		/* [166] */
		6,
		/* [167] */
		262,
		/* [168] */
		262,
		/* [169] */
		6,
		/* [170] */
		6,
		/* [171] */
		6,
		/* [172] */
		6,
		/* [173] */
		6,
		/* [174] */
		774,
		/* [175] */
		6,
		/* [176] */
		6,
		/* [177] */
		6,
		/* [178] */
		6,
		/* [179] */
		6,
		/* [180] */
		774,
		/* [181] */
		6,
		/* [182] */
		6,
		/* [183] */
		6,
		/* [184] */
		6,
		/* [185] */
		6,
		/* [186] */
		6,
		/* [187] */
		262,
		/* [188] */
		6,
		/* [189] */
		6,
		/* [190] */
		6,
		/* [191] */
		6,
		/* [192] */
		6,
		/* [193] */
		774,
		/* [194] */
		6,
		/* [195] */
		6,
		/* [196] */
		774,
		/* [197] */
		6,
		/* [198] */
		6,
		/* [199] */
		774,
		/* [200] */
		518,
		/* [201] */
		262,
		/* [202] */
		262,
		/* [203] */
		6,
		/* [204] */
		6,
		/* [205] */
		262,
		/* [206] */
		6,
		/* [207] */
		6,
		/* [208] */
		6,
		/* [209] */
		6,
		/* [210] */
		6,
		/* [211] */
		6,
		/* [212] */
		518,
		/* [213] */
		774,
		/* [214] */
		774,
		/* [215] */
		518,
		/* [216] */
		6,
		/* [217] */
		6,
		/* [218] */
		6,
		/* [219] */
		774,
		/* [220] */
		6,
		/* [221] */
		6,
		/* [222] */
		6,
		/* [223] */
		774,
		/* [224] */
		6,
		/* [225] */
		6,
		/* [226] */
		6,
		/* [227] */
		6,
		/* [228] */
		6,
		/* [229] */
		6,
		/* [230] */
		6,
		/* [231] */
		6,
		/* [232] */
		6,
		/* [233] */
		6,
		/* [234] */
		6,
		/* [235] */
		6,
		/* [236] */
		6,
		/* [237] */
		6,
		/* [238] */
		6,
		/* [239] */
		6,
		/* [240] */
		6,
		/* [241] */
		6,
		/* [242] */
		6,
		/* [243] */
		262,
		/* [244] */
		262,
		/* [245] */
		774,
		/* [246] */
		6,
		/* [247] */
		6,
		/* [248] */
		6,
		/* [249] */
		262,
		/* [250] */
		6,
		/* [251] */
		518,
		/* [252] */
		6,
		/* [253] */
		6,
		/* [254] */
		6,
		/* [255] */
		262,
		/* [256] */
		6,
		/* [257] */
		-1
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	}
};

resource 'FONT' (19596) {
	doExpandFont,
	proportionalFont,
	blackFont,
	notSynthetic,
	nofctbRsrc,
	oneBit,
	noCharWidthTable,
	noImageHeightTable,
	0,
	255,
	7,
	0,
	-3,
	7,
	15,
	12,
	3,
	0,
	67,
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0040 0000 0000 0000 0000 01C0 0000"
	$"0000 0000 0000 0000 0000 3400 0000 0000"
	$"02AA B562 2500 7FF0 3F28 8408 0100 0445"
	$"3E0F C0F8 1F88 2800 0520 0050 4087 F01F"
	$"FFC0 0000 0000 0000 0000 0738 0000 0400"
	$"0000 0000 0003 0000 0000 0000 0020 0000"
	$"0000 0000 0000 4000 0000 0000 0000 0000"
	$"0000 0000 0000 0100 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0040 0000 0000 0000"
	$"0000 2A22 0000 0000 0052 8000 0060 0000"
	$"5800 0001 0400 0150 1FE2 2500 57BF B528"
	$"8408 0100 0445 2AFA FFAF F588 2800 0520"
	$"0050 4087 F01F FFC0 0000 0000 0000 0000"
	$"08FC 0000 0400 0001 4C00 0003 0010 000C"
	$"0000 0020 0000 0000 0000 0000 E000 0000"
	$"0000 0000 0000 0000 0000 0000 0F03 8000"
	$"0000 0000 0000 0000 0000 0000 0000 00E0"
	$"0000 0000 3000 0000 0224 0000 0000 0000"
	$"0000 0080 0000 0000 0001 0400 02AA B562"
	$"2500 6B5A EB28 8408 0100 0445 37BD 6BDD"
	$"7A88 2800 0520 0050 4087 F01F FFC0 0000"
	$"0000 01C0 00C0 08FC 0000 0400 0001 B200"
	$"0003 D539 2C52 2000 004E 5CE1 7CDF 7380"
	$"001C 4779 DEFF DD1E 18C2 3177 9DE7 7E31"
	$"8C63 F880 9004 0800 2030 4260 0000 0000"
	$"0000 0000 0153 5C01 1004 4808 0405 39DF"
	$"03D8 0411 0074 4068 F882 4426 C5EE 2001"
	$"1450 0150 1FE2 2500 57BD 7528 8408 0100"
	$"0445 2B5A F5AE B588 2800 0520 0050 4087"
	$"F01F FFC0 77C1 F000 008E 7100 08FC 0004"
	$"0400 6007 240F 8003 DFD6 B252 A800 0051"
	$"E313 4101 8C40 8222 E8C6 3184 2314 1943"
	$"718C 6318 9231 8C62 1880 A802 0800 2040"
	$"4261 8000 0000 0400 0000 0155 A2A2 2942"
	$"4814 A25A C630 0524 A228 8A8C 4085 4484"
	$"884B 4631 2001 2490 02AA B562 2500 6B5A"
	$"EB28 8408 0100 0445 37BD 6BDD 7A88 2800"
	$"0520 0050 4087 F01F FFC0 8A41 1000 DC91"
	$"8900 28FC 0089 8400 9005 29E8 8003 D552"
	$"D261 7100 0091 4215 4201 8C41 0103 F8C6"
	$"3184 2114 1A42 B98C 6318 1231 8C62 1840"
	$"C400 0800 2040 4020 8000 0000 0400 0000"
	$"0150 2200 0000 3000 0000 4630 0500 0000"
	$"008C 488F C480 0000 6631 0000 4100 0150"
	$"1FE2 2500 57BD 7528 8408 0100 0445 2B5A"
	$"F5AE B588 2800 0520 0050 4087 F01F FFDB"
	$"8A00 8001 21D1 8880 28FF E452 4480 9005"
	$"3FE8 8003 8531 D421 7100 0093 4269 7BC2"
	$"746A 7C85 58FA 1184 2114 1C42 358C 6318"
	$"1231 8AA2 2840 8000 FF39 EEE7 FA64 FBCE"
	$"F3EC EE8C 6B18 FD50 2117 3DEF 7B9C E724"
	$"C630 751C E746 318C 5C82 45CF 9D1B 5631"
	$"2000 B252 D2AA B563 E507 EB5A EB2F 8408"
	$"0100 047D 37BD 6BDD 7AFF 29FC 053F C053"
	$"F887 F01F FFE4 923E 47E2 2231 8BC0 E8FC"
	$"042A 4409 6704 01E8 8003 8F98 8821 AFC0"
	$"0115 441F 8624 8C6C 0049 5FC6 11F7 A7F4"
	$"1842 338F A3E7 1231 8914 4820 8001 18C6"
	$"3148 C668 D631 8C73 148C 6AA8 8A48 2118"
	$"C631 8C63 18A4 C63E AFE3 18C6 318C 6BCF"
	$"F891 A31C CDEE 27FF 4CD5 2950 1FFE 3DF8"
	$"D7BD 75F8 FFFF FFFF FFC5 EB5A F5AE B580"
	$"FE03 FFE2 3FFC 47FF FFFF FFE4 9214 2922"
	$"223F 8C77 58FF FF46 07F6 0F84 01E8 8003"
	$"8515 5421 210F E119 4811 0624 8BC2 7C89"
	$"58C6 1184 2314 1C42 318C 2310 9231 8A88"
	$"8820 8001 18C2 3F48 C670 D631 8C62 E48C"
	$"6A48 9150 211F C631 8C3F FFA4 FFF0 BD23"
	$"18C6 318C 6882 4091 A318 C400 4402 095A"
	$"16AA B563 E52F EB5A EB07 8800 1100 047D"
	$"37BD 6BDD 7AFF 01FC A03F E853 F847 FFFF"
	$"E01B 8A14 4922 2231 8C6B 58FC 0482 2409"
	$"0FC4 01E8 8003 0015 B2A1 0100 0211 5011"
	$"0624 8841 0100 48C6 1184 2315 1A42 318C"
	$"2310 9231 AC49 0810 8001 18C2 3048 C668"
	$"D631 8C60 148C 6A48 A150 2118 4631 8C21"
	$"0824 C630 A523 18C6 318C 6892 4891 A318"
	$"C7FF 8402 13FA 1550 1FE2 2528 D7BD 7500"
	$"0800 1100 0445 2B5A F5AE B580 0020 A002"
	$"2850 4047 FFFF E000 8A14 8922 2231 5477"
	$"58FF E41E 2496 0FB4 01E8 8003 8056 B112"
	$"0010 1211 6111 4624 88A8 8208 E8C6 3184"
	$"2315 1942 318C 2318 922A DC49 0810 8001"
	$"38C6 3148 C664 D631 8C61 149A AAA8 C150"
	$"2338 CE73 9C63 08A4 C630 AD23 18CE 718C"
	$"6A92 5C93 A338 C400 8800 2055 2AAA B562"
	$"2528 EB5A EB00 0800 1100 0445 37BD 6BDD"
	$"7A80 0020 A002 2850 4047 FFFF E000 8A15"
	$"1926 21D1 5441 58FC 00E2 1800 070C 0008"
	$"8003 803A 4E92 0010 140E 7EE1 39C4 7328"
	$"0008 A8F9 DEFC 1D1E E8FE 3174 1D17 11C4"
	$"8C49 F808 83F8 DF39 EE47 C662 D62E F3E0"
	$"E369 1517 FD50 1CD7 35AD 6B9C F724 C63F"
	$"75DC E735 AF73 9DE2 488D 9CD8 C400 7000"
	$"7852 D150 1FE2 2528 D7BD 7500 0800 1100"
	$"0445 2B5A F5AE B580 0020 A002 2850 4047"
	$"FFFF E000 B215 F63A 108E DB80 E8FC 1F02"
	$"0000 0004 000F 8003 0010 000C 0010 0400"
	$"0000 0000 0008 0000 A000 0000 0000 0000"
	$"0000 0800 0000 0000 0E0B 8000 0000 0000"
	$"8040 0000 8040 0000 0000 80E0 0800 0000"
	$"0100 0000 0000 0000 0000 0100 0800 0880"
	$"0000 0000 0000 0000 02AA B562 2528 EB5A"
	$"EB00 0800 1100 0445 37BD 6BDD 7A80 0020"
	$"A002 2850 4047 FFFF E000 8000 0020 0080"
	$"0000 88FC 0002 0000 0000 0000 0003 0000"
	$"0000 0020 0800 0000 0000 0010 0000 A000"
	$"0000 0000 0000 0000 0400 0000 0000 0004"
	$"0000 0000 0008 8040 0000 8040 0000 0008"
	$"8040 0800 0000 0100 0000 0000 0000 0000"
	$"0100 0000 0F00 0000 0000 0000 0000 0150"
	$"1FE2 2528 FFFF FE00 0800 1100 0445 1FFF"
	$"FFFF FF80 0020 A002 2850 4047 FFFF E000"
	$"0000 0020 01C0 0000 8FFC 0002 0000 0000"
	$"0000 0003 0000 0000 0000 0800 0000 0000"
	$"0000 0001 B000 0000 0000 0000 0000 0000"
	$"0000 0000 0004 0000 0000 0007 0180 0000"
	$"0000 0000 0007 0040 1000 0000 0200 0000"
	$"0000 0000 0000 0E00 0000 0000 0000 0000"
	$"0000 0000 000A B562 2528 8000 0000 0800"
	$"1100 0445 0000 0000 0000 0020 A002 2850"
	$"4047 FFFF E000 0000 0000 0000 0000 0000"
	$"0002 0000 0000 0000 0003",
	{	/* array: 258 elements */
		/* [1] */
		0,
		/* [2] */
		0,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		0,
		/* [8] */
		0,
		/* [9] */
		0,
		/* [10] */
		0,
		/* [11] */
		0,
		/* [12] */
		0,
		/* [13] */
		0,
		/* [14] */
		0,
		/* [15] */
		0,
		/* [16] */
		0,
		/* [17] */
		0,
		/* [18] */
		0,
		/* [19] */
		0,
		/* [20] */
		0,
		/* [21] */
		0,
		/* [22] */
		0,
		/* [23] */
		0,
		/* [24] */
		0,
		/* [25] */
		0,
		/* [26] */
		0,
		/* [27] */
		0,
		/* [28] */
		0,
		/* [29] */
		0,
		/* [30] */
		0,
		/* [31] */
		0,
		/* [32] */
		0,
		/* [33] */
		0,
		/* [34] */
		0,
		/* [35] */
		1,
		/* [36] */
		4,
		/* [37] */
		9,
		/* [38] */
		14,
		/* [39] */
		19,
		/* [40] */
		25,
		/* [41] */
		26,
		/* [42] */
		29,
		/* [43] */
		32,
		/* [44] */
		37,
		/* [45] */
		42,
		/* [46] */
		44,
		/* [47] */
		51,
		/* [48] */
		52,
		/* [49] */
		59,
		/* [50] */
		64,
		/* [51] */
		66,
		/* [52] */
		71,
		/* [53] */
		76,
		/* [54] */
		81,
		/* [55] */
		86,
		/* [56] */
		91,
		/* [57] */
		96,
		/* [58] */
		101,
		/* [59] */
		106,
		/* [60] */
		107,
		/* [61] */
		109,
		/* [62] */
		113,
		/* [63] */
		118,
		/* [64] */
		122,
		/* [65] */
		127,
		/* [66] */
		132,
		/* [67] */
		137,
		/* [68] */
		142,
		/* [69] */
		147,
		/* [70] */
		152,
		/* [71] */
		157,
		/* [72] */
		162,
		/* [73] */
		167,
		/* [74] */
		172,
		/* [75] */
		175,
		/* [76] */
		180,
		/* [77] */
		185,
		/* [78] */
		190,
		/* [79] */
		195,
		/* [80] */
		200,
		/* [81] */
		205,
		/* [82] */
		210,
		/* [83] */
		215,
		/* [84] */
		220,
		/* [85] */
		225,
		/* [86] */
		230,
		/* [87] */
		235,
		/* [88] */
		240,
		/* [89] */
		245,
		/* [90] */
		250,
		/* [91] */
		255,
		/* [92] */
		260,
		/* [93] */
		263,
		/* [94] */
		270,
		/* [95] */
		273,
		/* [96] */
		278,
		/* [97] */
		285,
		/* [98] */
		287,
		/* [99] */
		292,
		/* [100] */
		297,
		/* [101] */
		302,
		/* [102] */
		307,
		/* [103] */
		312,
		/* [104] */
		316,
		/* [105] */
		321,
		/* [106] */
		326,
		/* [107] */
		327,
		/* [108] */
		330,
		/* [109] */
		335,
		/* [110] */
		337,
		/* [111] */
		342,
		/* [112] */
		347,
		/* [113] */
		352,
		/* [114] */
		357,
		/* [115] */
		362,
		/* [116] */
		367,
		/* [117] */
		372,
		/* [118] */
		376,
		/* [119] */
		381,
		/* [120] */
		386,
		/* [121] */
		391,
		/* [122] */
		396,
		/* [123] */
		401,
		/* [124] */
		406,
		/* [125] */
		409,
		/* [126] */
		410,
		/* [127] */
		413,
		/* [128] */
		418,
		/* [129] */
		418,
		/* [130] */
		423,
		/* [131] */
		428,
		/* [132] */
		433,
		/* [133] */
		438,
		/* [134] */
		443,
		/* [135] */
		448,
		/* [136] */
		453,
		/* [137] */
		458,
		/* [138] */
		463,
		/* [139] */
		468,
		/* [140] */
		473,
		/* [141] */
		476,
		/* [142] */
		479,
		/* [143] */
		481,
		/* [144] */
		486,
		/* [145] */
		491,
		/* [146] */
		496,
		/* [147] */
		501,
		/* [148] */
		506,
		/* [149] */
		511,
		/* [150] */
		516,
		/* [151] */
		521,
		/* [152] */
		526,
		/* [153] */
		531,
		/* [154] */
		536,
		/* [155] */
		541,
		/* [156] */
		546,
		/* [157] */
		551,
		/* [158] */
		556,
		/* [159] */
		561,
		/* [160] */
		566,
		/* [161] */
		571,
		/* [162] */
		576,
		/* [163] */
		578,
		/* [164] */
		583,
		/* [165] */
		588,
		/* [166] */
		593,
		/* [167] */
		598,
		/* [168] */
		603,
		/* [169] */
		608,
		/* [170] */
		613,
		/* [171] */
		618,
		/* [172] */
		623,
		/* [173] */
		629,
		/* [174] */
		635,
		/* [175] */
		636,
		/* [176] */
		641,
		/* [177] */
		646,
		/* [178] */
		652,
		/* [179] */
		659,
		/* [180] */
		666,
		/* [181] */
		667,
		/* [182] */
		671,
		/* [183] */
		675,
		/* [184] */
		680,
		/* [185] */
		685,
		/* [186] */
		689,
		/* [187] */
		695,
		/* [188] */
		700,
		/* [189] */
		706,
		/* [190] */
		712,
		/* [191] */
		717,
		/* [192] */
		721,
		/* [193] */
		725,
		/* [194] */
		729,
		/* [195] */
		736,
		/* [196] */
		743,
		/* [197] */
		747,
		/* [198] */
		754,
		/* [199] */
		761,
		/* [200] */
		765,
		/* [201] */
		770,
		/* [202] */
		775,
		/* [203] */
		780,
		/* [204] */
		786,
		/* [205] */
		792,
		/* [206] */
		797,
		/* [207] */
		803,
		/* [208] */
		809,
		/* [209] */
		816,
		/* [210] */
		823,
		/* [211] */
		830,
		/* [212] */
		837,
		/* [213] */
		842,
		/* [214] */
		846,
		/* [215] */
		850,
		/* [216] */
		855,
		/* [217] */
		862,
		/* [218] */
		869,
		/* [219] */
		873,
		/* [220] */
		877,
		/* [221] */
		884,
		/* [222] */
		891,
		/* [223] */
		895,
		/* [224] */
		899,
		/* [225] */
		906,
		/* [226] */
		912,
		/* [227] */
		917,
		/* [228] */
		922,
		/* [229] */
		927,
		/* [230] */
		932,
		/* [231] */
		938,
		/* [232] */
		943,
		/* [233] */
		950,
		/* [234] */
		955,
		/* [235] */
		960,
		/* [236] */
		965,
		/* [237] */
		970,
		/* [238] */
		975,
		/* [239] */
		980,
		/* [240] */
		985,
		/* [241] */
		990,
		/* [242] */
		995,
		/* [243] */
		1000,
		/* [244] */
		1003,
		/* [245] */
		1006,
		/* [246] */
		1010,
		/* [247] */
		1014,
		/* [248] */
		1019,
		/* [249] */
		1024,
		/* [250] */
		1028,
		/* [251] */
		1033,
		/* [252] */
		1034,
		/* [253] */
		1039,
		/* [254] */
		1043,
		/* [255] */
		1047,
		/* [256] */
		1051,
		/* [257] */
		1051,
		/* [258] */
		1058
	},
	{	/* array: 258 elements */
		/* [1] */
		7,
		/* [2] */
		7,
		/* [3] */
		7,
		/* [4] */
		7,
		/* [5] */
		7,
		/* [6] */
		7,
		/* [7] */
		7,
		/* [8] */
		7,
		/* [9] */
		7,
		/* [10] */
		7,
		/* [11] */
		7,
		/* [12] */
		7,
		/* [13] */
		7,
		/* [14] */
		7,
		/* [15] */
		7,
		/* [16] */
		7,
		/* [17] */
		7,
		/* [18] */
		7,
		/* [19] */
		7,
		/* [20] */
		7,
		/* [21] */
		7,
		/* [22] */
		7,
		/* [23] */
		7,
		/* [24] */
		7,
		/* [25] */
		7,
		/* [26] */
		7,
		/* [27] */
		7,
		/* [28] */
		7,
		/* [29] */
		7,
		/* [30] */
		7,
		/* [31] */
		7,
		/* [32] */
		7,
		/* [33] */
		7,
		/* [34] */
		775,
		/* [35] */
		519,
		/* [36] */
		263,
		/* [37] */
		263,
		/* [38] */
		263,
		/* [39] */
		7,
		/* [40] */
		775,
		/* [41] */
		519,
		/* [42] */
		519,
		/* [43] */
		263,
		/* [44] */
		263,
		/* [45] */
		519,
		/* [46] */
		7,
		/* [47] */
		775,
		/* [48] */
		7,
		/* [49] */
		263,
		/* [50] */
		519,
		/* [51] */
		263,
		/* [52] */
		263,
		/* [53] */
		263,
		/* [54] */
		263,
		/* [55] */
		263,
		/* [56] */
		263,
		/* [57] */
		263,
		/* [58] */
		263,
		/* [59] */
		775,
		/* [60] */
		519,
		/* [61] */
		263,
		/* [62] */
		263,
		/* [63] */
		519,
		/* [64] */
		263,
		/* [65] */
		263,
		/* [66] */
		263,
		/* [67] */
		263,
		/* [68] */
		263,
		/* [69] */
		263,
		/* [70] */
		263,
		/* [71] */
		263,
		/* [72] */
		263,
		/* [73] */
		263,
		/* [74] */
		519,
		/* [75] */
		263,
		/* [76] */
		263,
		/* [77] */
		263,
		/* [78] */
		263,
		/* [79] */
		263,
		/* [80] */
		263,
		/* [81] */
		263,
		/* [82] */
		263,
		/* [83] */
		263,
		/* [84] */
		263,
		/* [85] */
		263,
		/* [86] */
		263,
		/* [87] */
		263,
		/* [88] */
		263,
		/* [89] */
		263,
		/* [90] */
		263,
		/* [91] */
		263,
		/* [92] */
		519,
		/* [93] */
		7,
		/* [94] */
		519,
		/* [95] */
		263,
		/* [96] */
		7,
		/* [97] */
		775,
		/* [98] */
		263,
		/* [99] */
		263,
		/* [100] */
		263,
		/* [101] */
		263,
		/* [102] */
		263,
		/* [103] */
		519,
		/* [104] */
		263,
		/* [105] */
		263,
		/* [106] */
		775,
		/* [107] */
		263,
		/* [108] */
		263,
		/* [109] */
		519,
		/* [110] */
		263,
		/* [111] */
		263,
		/* [112] */
		263,
		/* [113] */
		263,
		/* [114] */
		263,
		/* [115] */
		263,
		/* [116] */
		263,
		/* [117] */
		263,
		/* [118] */
		263,
		/* [119] */
		263,
		/* [120] */
		263,
		/* [121] */
		263,
		/* [122] */
		263,
		/* [123] */
		263,
		/* [124] */
		519,
		/* [125] */
		775,
		/* [126] */
		519,
		/* [127] */
		263,
		/* [128] */
		0,
		/* [129] */
		263,
		/* [130] */
		263,
		/* [131] */
		263,
		/* [132] */
		263,
		/* [133] */
		263,
		/* [134] */
		263,
		/* [135] */
		263,
		/* [136] */
		263,
		/* [137] */
		263,
		/* [138] */
		263,
		/* [139] */
		263,
		/* [140] */
		519,
		/* [141] */
		519,
		/* [142] */
		519,
		/* [143] */
		263,
		/* [144] */
		263,
		/* [145] */
		263,
		/* [146] */
		263,
		/* [147] */
		263,
		/* [148] */
		263,
		/* [149] */
		263,
		/* [150] */
		263,
		/* [151] */
		263,
		/* [152] */
		263,
		/* [153] */
		263,
		/* [154] */
		263,
		/* [155] */
		263,
		/* [156] */
		263,
		/* [157] */
		263,
		/* [158] */
		263,
		/* [159] */
		263,
		/* [160] */
		263,
		/* [161] */
		263,
		/* [162] */
		775,
		/* [163] */
		263,
		/* [164] */
		263,
		/* [165] */
		263,
		/* [166] */
		263,
		/* [167] */
		263,
		/* [168] */
		263,
		/* [169] */
		263,
		/* [170] */
		263,
		/* [171] */
		263,
		/* [172] */
		263,
		/* [173] */
		263,
		/* [174] */
		775,
		/* [175] */
		263,
		/* [176] */
		263,
		/* [177] */
		7,
		/* [178] */
		7,
		/* [179] */
		7,
		/* [180] */
		775,
		/* [181] */
		7,
		/* [182] */
		7,
		/* [183] */
		7,
		/* [184] */
		7,
		/* [185] */
		7,
		/* [186] */
		7,
		/* [187] */
		263,
		/* [188] */
		7,
		/* [189] */
		7,
		/* [190] */
		7,
		/* [191] */
		7,
		/* [192] */
		7,
		/* [193] */
		775,
		/* [194] */
		7,
		/* [195] */
		7,
		/* [196] */
		775,
		/* [197] */
		7,
		/* [198] */
		7,
		/* [199] */
		775,
		/* [200] */
		519,
		/* [201] */
		263,
		/* [202] */
		263,
		/* [203] */
		7,
		/* [204] */
		7,
		/* [205] */
		263,
		/* [206] */
		7,
		/* [207] */
		7,
		/* [208] */
		7,
		/* [209] */
		7,
		/* [210] */
		7,
		/* [211] */
		7,
		/* [212] */
		519,
		/* [213] */
		775,
		/* [214] */
		775,
		/* [215] */
		519,
		/* [216] */
		7,
		/* [217] */
		7,
		/* [218] */
		7,
		/* [219] */
		775,
		/* [220] */
		7,
		/* [221] */
		7,
		/* [222] */
		7,
		/* [223] */
		775,
		/* [224] */
		7,
		/* [225] */
		263,
		/* [226] */
		263,
		/* [227] */
		263,
		/* [228] */
		263,
		/* [229] */
		263,
		/* [230] */
		263,
		/* [231] */
		263,
		/* [232] */
		7,
		/* [233] */
		263,
		/* [234] */
		263,
		/* [235] */
		263,
		/* [236] */
		263,
		/* [237] */
		263,
		/* [238] */
		263,
		/* [239] */
		263,
		/* [240] */
		263,
		/* [241] */
		263,
		/* [242] */
		263,
		/* [243] */
		519,
		/* [244] */
		519,
		/* [245] */
		775,
		/* [246] */
		7,
		/* [247] */
		263,
		/* [248] */
		263,
		/* [249] */
		263,
		/* [250] */
		263,
		/* [251] */
		775,
		/* [252] */
		263,
		/* [253] */
		7,
		/* [254] */
		7,
		/* [255] */
		263,
		/* [256] */
		1,
		/* [257] */
		7,
		/* [258] */
		-1
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	}
};

resource 'FONT' (19465, "PSHackFont 9", purgeable) {
	doExpandFont,
	proportionalFont,
	blackFont,
	notSynthetic,
	nofctbRsrc,
	oneBit,
	noCharWidthTable,
	noImageHeightTable,
	0,
	239,
	10,
	0,
	-10,
	10,
	12,
	10,
	2,
	0,
	52,
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0003 804D 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"001F 81C0 0000 0000 0000 701C 0700 7000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0054 4096 5280 0001"
	$"8000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0002 A000 0000 0016 8140 0000 0000"
	$"8000 5014 0500 5000 0000 0000 0000 0000"
	$"0510 00C0 C000 0080 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"C600 0000 0000 0000 0000 0000 0000 0003"
	$"8003 8000 0009 0816 4091 0190 5244 0524"
	$"404C 0038 0001 E1E0 0000 0000 0000 0000"
	$"0016 814E 0000 000D 0000 5014 0500 5000"
	$"0155 4000 000F 3C00 DFB9 FD25 2500 00B9"
	$"77C5 F37D CE00 018E 13CE E7FB A30C 620E"
	$"5DE7 79DF 8C60 C63F 4280 8200 40C2 1318"
	$"0000 0004 0000 0005 4D21 1DF9 7450 9569"
	$"810A A66D A42A 9A42 A9F2 4344 0F72 1217"
	$"8B40 3E76 A000 8833 FF96 F951 0000 A009"
	$"0000 5794 0500 5000 0296 4022 401F C3F8"
	$"D556 4946 1210 0147 888D 0406 3104 1251"
	$"1231 9444 630C A31E 6318 C624 8C60 C623"
	$"2340 4200 4102 0108 0000 0004 0000 0005"
	$"5621 2319 8C40 0000 0000 0000 0000 0000"
	$"0052 E441 D58D CCCA DC04 5088 0424 5489"
	$"2976 CF60 8034 0011 0480 5CF6 0581 D800"
	$"02AA 8850 0F9F C308 8FD2 5082 1F90 0145"
	$"0915 E80A 31AB E866 AA30 8C44 230D 22AD"
	$"6318 C604 8C55 2945 2200 1B99 DB9F B72F"
	$"6E6E 7B7F 3183 19F5 4072 A115 8C5D DDDD"
	$"D999 9BF6 E666 6699 994D 543B F58D 2D0A"
	$"A83E 509A A442 FC94 8946 EC60 BE48 A013"
	$"B884 CDC3 FCFF 0B60 0000 008A 305F C308"
	$"8539 B952 127C F245 13A4 1F09 CF10 04AA"
	$"ABD0 8F74 FF0E 224D 63E8 F9C4 8A95 1089"
	$"1200 0666 6526 534C 9999 9C85 2A54 A928"
	$"2072 A1D5 8C66 6666 6666 6552 9999 9999"
	$"9941 4E47 F5B5 CD0A 8808 FCA8 1F81 24A4"
	$"4976 AFE0 C959 3FA1 4549 7D7F 0DC3 DC90"
	$"0000 3F06 30FF C308 8014 6622 1510 0245"
	$"207E 1892 210B E92A FE30 8C44 638D 220C"
	$"E308 D024 8A8A 2891 1200 1E62 7D26 538C"
	$"9999 9865 2A54 4945 40FF E113 8C66 6666"
	$"63FF FD52 9999 9999 9901 543B EF8D 2CC8"
	$"003E 90CA A442 FCA4 8916 A811 4F6A 22A1"
	$"3952 0501 DD7E 54FF FC00 008A 307F C308"
	$"0054 A652 1010 0445 4445 1892 2204 1027"
	$"4631 9444 638C A20C E30A CA24 890A 4491"
	$"0A00 2666 6126 534C 9999 9815 2428 A985"
	$"408C 6313 8C66 6666 6622 2152 9999 9999"
	$"9900 E485 C58A 1210 0011 1088 0424 24A5"
	$"2916 A80A 484A 6241 4229 0500 5500 5480"
	$"0000 0852 2F9F C308 8039 1989 2001 0C39"
	$"FB84 E711 CCA0 0110 47CE E7C3 A374 7E0C"
	$"5D07 45C4 710A 449F 0A3F 1F99 D91E 532C"
	$"996E 78E2 E429 17F5 408C 5DF1 739D DDDD"
	$"D9D9 9D52 9666 6677 7700 4F44 05B1 E1E0"
	$"0001 1F72 BFFF 275B E916 B81B 3EB1 A041"
	$"03E4 8700 5500 53E0 0000 0021 E89F C3F8"
	$"0010 0000 C001 0000 0000 0000 0020 000E"
	$"0000 0000 0000 0000 0001 0000 0000 0001"
	$"8600 0000 0004 0200 0008 1000 0000 0103"
	$"8000 0800 0000 0000 0800 0000 0000 0000"
	$"0000 0038 0000 0000 0000 0000 0000 0400"
	$"001F 8000 0000 0001 0000 0000 5700 7000"
	$"0000 0000 201F FE00 0000 0000 0002 0000"
	$"0000 0000 0040 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0018 0C00"
	$"0008 1000 0000 0600 0000 1000 0000 0000"
	$"1000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0400 0000 0000 0000 0002"
	$"0000 0000 7000 0000 0000 0001 C000 0000",
	{	/* array: 242 elements */
		/* [1] */
		0,
		/* [2] */
		0,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		0,
		/* [8] */
		0,
		/* [9] */
		0,
		/* [10] */
		0,
		/* [11] */
		0,
		/* [12] */
		0,
		/* [13] */
		0,
		/* [14] */
		0,
		/* [15] */
		0,
		/* [16] */
		0,
		/* [17] */
		0,
		/* [18] */
		0,
		/* [19] */
		0,
		/* [20] */
		0,
		/* [21] */
		0,
		/* [22] */
		0,
		/* [23] */
		0,
		/* [24] */
		0,
		/* [25] */
		0,
		/* [26] */
		0,
		/* [27] */
		0,
		/* [28] */
		0,
		/* [29] */
		0,
		/* [30] */
		0,
		/* [31] */
		0,
		/* [32] */
		0,
		/* [33] */
		0,
		/* [34] */
		0,
		/* [35] */
		1,
		/* [36] */
		4,
		/* [37] */
		9,
		/* [38] */
		14,
		/* [39] */
		22,
		/* [40] */
		29,
		/* [41] */
		30,
		/* [42] */
		33,
		/* [43] */
		36,
		/* [44] */
		41,
		/* [45] */
		46,
		/* [46] */
		48,
		/* [47] */
		52,
		/* [48] */
		53,
		/* [49] */
		57,
		/* [50] */
		62,
		/* [51] */
		64,
		/* [52] */
		69,
		/* [53] */
		74,
		/* [54] */
		79,
		/* [55] */
		84,
		/* [56] */
		89,
		/* [57] */
		94,
		/* [58] */
		99,
		/* [59] */
		104,
		/* [60] */
		105,
		/* [61] */
		107,
		/* [62] */
		110,
		/* [63] */
		115,
		/* [64] */
		118,
		/* [65] */
		122,
		/* [66] */
		129,
		/* [67] */
		134,
		/* [68] */
		139,
		/* [69] */
		144,
		/* [70] */
		149,
		/* [71] */
		153,
		/* [72] */
		157,
		/* [73] */
		162,
		/* [74] */
		167,
		/* [75] */
		168,
		/* [76] */
		173,
		/* [77] */
		178,
		/* [78] */
		182,
		/* [79] */
		189,
		/* [80] */
		194,
		/* [81] */
		199,
		/* [82] */
		204,
		/* [83] */
		209,
		/* [84] */
		214,
		/* [85] */
		219,
		/* [86] */
		224,
		/* [87] */
		229,
		/* [88] */
		234,
		/* [89] */
		241,
		/* [90] */
		246,
		/* [91] */
		251,
		/* [92] */
		255,
		/* [93] */
		257,
		/* [94] */
		261,
		/* [95] */
		263,
		/* [96] */
		266,
		/* [97] */
		272,
		/* [98] */
		274,
		/* [99] */
		278,
		/* [100] */
		282,
		/* [101] */
		286,
		/* [102] */
		290,
		/* [103] */
		294,
		/* [104] */
		298,
		/* [105] */
		302,
		/* [106] */
		306,
		/* [107] */
		308,
		/* [108] */
		311,
		/* [109] */
		315,
		/* [110] */
		317,
		/* [111] */
		324,
		/* [112] */
		328,
		/* [113] */
		332,
		/* [114] */
		336,
		/* [115] */
		340,
		/* [116] */
		344,
		/* [117] */
		348,
		/* [118] */
		351,
		/* [119] */
		355,
		/* [120] */
		360,
		/* [121] */
		367,
		/* [122] */
		372,
		/* [123] */
		376,
		/* [124] */
		380,
		/* [125] */
		383,
		/* [126] */
		384,
		/* [127] */
		387,
		/* [128] */
		392,
		/* [129] */
		392,
		/* [130] */
		397,
		/* [131] */
		402,
		/* [132] */
		407,
		/* [133] */
		411,
		/* [134] */
		416,
		/* [135] */
		421,
		/* [136] */
		426,
		/* [137] */
		430,
		/* [138] */
		434,
		/* [139] */
		438,
		/* [140] */
		442,
		/* [141] */
		446,
		/* [142] */
		450,
		/* [143] */
		454,
		/* [144] */
		458,
		/* [145] */
		462,
		/* [146] */
		466,
		/* [147] */
		470,
		/* [148] */
		472,
		/* [149] */
		474,
		/* [150] */
		477,
		/* [151] */
		480,
		/* [152] */
		484,
		/* [153] */
		488,
		/* [154] */
		492,
		/* [155] */
		496,
		/* [156] */
		500,
		/* [157] */
		504,
		/* [158] */
		508,
		/* [159] */
		512,
		/* [160] */
		516,
		/* [161] */
		520,
		/* [162] */
		523,
		/* [163] */
		527,
		/* [164] */
		532,
		/* [165] */
		537,
		/* [166] */
		542,
		/* [167] */
		547,
		/* [168] */
		552,
		/* [169] */
		557,
		/* [170] */
		565,
		/* [171] */
		573,
		/* [172] */
		581,
		/* [173] */
		583,
		/* [174] */
		586,
		/* [175] */
		591,
		/* [176] */
		599,
		/* [177] */
		606,
		/* [178] */
		611,
		/* [179] */
		616,
		/* [180] */
		620,
		/* [181] */
		624,
		/* [182] */
		629,
		/* [183] */
		634,
		/* [184] */
		638,
		/* [185] */
		643,
		/* [186] */
		649,
		/* [187] */
		654,
		/* [188] */
		657,
		/* [189] */
		661,
		/* [190] */
		666,
		/* [191] */
		673,
		/* [192] */
		680,
		/* [193] */
		686,
		/* [194] */
		690,
		/* [195] */
		691,
		/* [196] */
		695,
		/* [197] */
		702,
		/* [198] */
		705,
		/* [199] */
		710,
		/* [200] */
		715,
		/* [201] */
		721,
		/* [202] */
		725,
		/* [203] */
		729,
		/* [204] */
		735,
		/* [205] */
		741,
		/* [206] */
		745,
		/* [207] */
		751,
		/* [208] */
		757,
		/* [209] */
		764,
		/* [210] */
		768,
		/* [211] */
		774,
		/* [212] */
		778,
		/* [213] */
		782,
		/* [214] */
		784,
		/* [215] */
		786,
		/* [216] */
		791,
		/* [217] */
		798,
		/* [218] */
		803,
		/* [219] */
		811,
		/* [220] */
		811,
		/* [221] */
		811,
		/* [222] */
		811,
		/* [223] */
		811,
		/* [224] */
		811,
		/* [225] */
		811,
		/* [226] */
		811,
		/* [227] */
		811,
		/* [228] */
		811,
		/* [229] */
		811,
		/* [230] */
		811,
		/* [231] */
		811,
		/* [232] */
		811,
		/* [233] */
		811,
		/* [234] */
		811,
		/* [235] */
		811,
		/* [236] */
		811,
		/* [237] */
		811,
		/* [238] */
		811,
		/* [239] */
		811,
		/* [240] */
		817,
		/* [241] */
		823,
		/* [242] */
		830
	},
	{	/* array: 242 elements */
		/* [1] */
		0,
		/* [2] */
		0,
		/* [3] */
		0,
		/* [4] */
		0,
		/* [5] */
		0,
		/* [6] */
		0,
		/* [7] */
		-1,
		/* [8] */
		-1,
		/* [9] */
		-1,
		/* [10] */
		1542,
		/* [11] */
		-1,
		/* [12] */
		-1,
		/* [13] */
		-1,
		/* [14] */
		0,
		/* [15] */
		-1,
		/* [16] */
		-1,
		/* [17] */
		-1,
		/* [18] */
		-1,
		/* [19] */
		-1,
		/* [20] */
		-1,
		/* [21] */
		-1,
		/* [22] */
		-1,
		/* [23] */
		-1,
		/* [24] */
		-1,
		/* [25] */
		-1,
		/* [26] */
		-1,
		/* [27] */
		-1,
		/* [28] */
		-1,
		/* [29] */
		7,
		/* [30] */
		-1,
		/* [31] */
		-1,
		/* [32] */
		-1,
		/* [33] */
		771,
		/* [34] */
		259,
		/* [35] */
		261,
		/* [36] */
		263,
		/* [37] */
		6,
		/* [38] */
		9,
		/* [39] */
		8,
		/* [40] */
		259,
		/* [41] */
		4,
		/* [42] */
		4,
		/* [43] */
		263,
		/* [44] */
		6,
		/* [45] */
		260,
		/* [46] */
		5,
		/* [47] */
		259,
		/* [48] */
		262,
		/* [49] */
		6,
		/* [50] */
		262,
		/* [51] */
		6,
		/* [52] */
		6,
		/* [53] */
		6,
		/* [54] */
		6,
		/* [55] */
		6,
		/* [56] */
		6,
		/* [57] */
		6,
		/* [58] */
		6,
		/* [59] */
		516,
		/* [60] */
		260,
		/* [61] */
		261,
		/* [62] */
		6,
		/* [63] */
		261,
		/* [64] */
		262,
		/* [65] */
		8,
		/* [66] */
		263,
		/* [67] */
		6,
		/* [68] */
		6,
		/* [69] */
		6,
		/* [70] */
		5,
		/* [71] */
		5,
		/* [72] */
		6,
		/* [73] */
		6,
		/* [74] */
		259,
		/* [75] */
		6,
		/* [76] */
		6,
		/* [77] */
		5,
		/* [78] */
		8,
		/* [79] */
		6,
		/* [80] */
		6,
		/* [81] */
		6,
		/* [82] */
		6,
		/* [83] */
		6,
		/* [84] */
		6,
		/* [85] */
		6,
		/* [86] */
		6,
		/* [87] */
		6,
		/* [88] */
		8,
		/* [89] */
		6,
		/* [90] */
		6,
		/* [91] */
		5,
		/* [92] */
		260,
		/* [93] */
		262,
		/* [94] */
		260,
		/* [95] */
		4,
		/* [96] */
		6,
		/* [97] */
		3,
		/* [98] */
		5,
		/* [99] */
		5,
		/* [100] */
		5,
		/* [101] */
		5,
		/* [102] */
		5,
		/* [103] */
		4,
		/* [104] */
		5,
		/* [105] */
		5,
		/* [106] */
		3,
		/* [107] */
		4,
		/* [108] */
		5,
		/* [109] */
		3,
		/* [110] */
		8,
		/* [111] */
		5,
		/* [112] */
		5,
		/* [113] */
		5,
		/* [114] */
		5,
		/* [115] */
		5,
		/* [116] */
		5,
		/* [117] */
		4,
		/* [118] */
		5,
		/* [119] */
		6,
		/* [120] */
		8,
		/* [121] */
		6,
		/* [122] */
		6,
		/* [123] */
		5,
		/* [124] */
		4,
		/* [125] */
		2,
		/* [126] */
		4,
		/* [127] */
		6,
		/* [128] */
		0,
		/* [129] */
		6,
		/* [130] */
		263,
		/* [131] */
		6,
		/* [132] */
		5,
		/* [133] */
		6,
		/* [134] */
		6,
		/* [135] */
		6,
		/* [136] */
		5,
		/* [137] */
		5,
		/* [138] */
		5,
		/* [139] */
		5,
		/* [140] */
		5,
		/* [141] */
		5,
		/* [142] */
		5,
		/* [143] */
		5,
		/* [144] */
		5,
		/* [145] */
		5,
		/* [146] */
		5,
		/* [147] */
		3,
		/* [148] */
		3,
		/* [149] */
		4,
		/* [150] */
		4,
		/* [151] */
		5,
		/* [152] */
		5,
		/* [153] */
		5,
		/* [154] */
		5,
		/* [155] */
		5,
		/* [156] */
		5,
		/* [157] */
		5,
		/* [158] */
		5,
		/* [159] */
		5,
		/* [160] */
		5,
		/* [161] */
		4,
		/* [162] */
		5,
		/* [163] */
		6,
		/* [164] */
		6,
		/* [165] */
		6,
		/* [166] */
		6,
		/* [167] */
		6,
		/* [168] */
		6,
		/* [169] */
		9,
		/* [170] */
		9,
		/* [171] */
		9,
		/* [172] */
		260,
		/* [173] */
		4,
		/* [174] */
		6,
		/* [175] */
		9,
		/* [176] */
		7,
		/* [177] */
		266,
		/* [178] */
		6,
		/* [179] */
		5,
		/* [180] */
		5,
		/* [181] */
		6,
		/* [182] */
		6,
		/* [183] */
		5,
		/* [184] */
		6,
		/* [185] */
		7,
		/* [186] */
		776,
		/* [187] */
		517,
		/* [188] */
		261,
		/* [189] */
		5,
		/* [190] */
		8,
		/* [191] */
		265,
		/* [192] */
		6,
		/* [193] */
		262,
		/* [194] */
		259,
		/* [195] */
		5,
		/* [196] */
		8,
		/* [197] */
		261,
		/* [198] */
		6,
		/* [199] */
		263,
		/* [200] */
		8,
		/* [201] */
		8,
		/* [202] */
		264,
		/* [203] */
		6,
		/* [204] */
		7,
		/* [205] */
		775,
		/* [206] */
		6,
		/* [207] */
		9,
		/* [208] */
		8,
		/* [209] */
		5,
		/* [210] */
		7,
		/* [211] */
		263,
		/* [212] */
		519,
		/* [213] */
		260,
		/* [214] */
		260,
		/* [215] */
		6,
		/* [216] */
		8,
		/* [217] */
		6,
		/* [218] */
		9,
		/* [219] */
		-1,
		/* [220] */
		-1,
		/* [221] */
		-1,
		/* [222] */
		-1,
		/* [223] */
		-1,
		/* [224] */
		-1,
		/* [225] */
		-1,
		/* [226] */
		-1,
		/* [227] */
		-1,
		/* [228] */
		-1,
		/* [229] */
		-1,
		/* [230] */
		-1,
		/* [231] */
		-1,
		/* [232] */
		-1,
		/* [233] */
		-1,
		/* [234] */
		-1,
		/* [235] */
		-1,
		/* [236] */
		-1,
		/* [237] */
		-1,
		/* [238] */
		-1,
		/* [239] */
		6,
		/* [240] */
		6,
		/* [241] */
		7,
		/* [242] */
		0
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	}
};

data 'FOND' (151, "HackFont", preload) {
	$"00F0 0097 0000 0000 0000 0000 0000 0000"            /* .�.�............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 0001 0009 0000 4B89 000C 0000"            /* .......�..K�.... */
	$"4B8C"                                               /* K� */
};

resource 'FOND' (152, "PSHackFont", preload) {
	proportionalFont,
	dontUseFractWidthTable,
	useIntegerExtra,
	useFractEnable,
	canAdjustCharSpacing,
	noCharWidthTable,
	noImageHeightTable,
	152,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	{	/* array FontEntries: 2 elements */
		/* [1] */
		9, plain, 14345,
		/* [2] */
		12, plain, 14348
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	},
	{	/* array: 0 elements */
	}
};

data 'FOND' (153, "NewHackFont", preload) {
	$"00F0 0099 0000 0000 0000 0000 0000 0000"            /* .�.�............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 0001 0009 0000 4C89 000C 0000"            /* .......�..L�.... */
	$"4C8C"                                               /* L� */
};

resource 'CURS' (512, purgeable) {
	$"0000 0000 0FF0 0810 0810 0810 0810 0810"
	$"0810 0810 0810 0810 0FF0",
	$"0000 0FF0 1FF8 1818 1818 1818 1818 1818"
	$"1818 1818 1818 1818 1FF8 0FF0",
	{7, 7}
};

resource 'CURS' (515, purgeable) {
	$"0100 0280 0440 0EE0 0280 0280 0380",
	$"0100 0380 07C0 0FE0 0380 0380 0380",
	{6, 7}
};

resource 'CURS' (516, purgeable) {
	$"001F 0009 0009 0017 0029 0010",
	$"001F 000F 000F 001F 0039 0010",
	{4, 11}
};

resource 'CURS' (517, purgeable) {
	$"0000 0000 0000 0000 0008 000C 007A 0041"
	$"007A 000C 0008",
	$"0000 0000 0000 0000 0008 000C 007E 007F"
	$"007E 000C 0008",
	{7, 9}
};

resource 'CURS' (519, purgeable) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 01C0 0140 0140 0770 0220 0140 0080",
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 01C0 01C0 01C0 07F0 03E0 01C0 0080",
	{9, 8}
};

resource 'CURS' (513, purgeable) {
	$"0000 0000 0000 0000 0000 1000 3000 5E00"
	$"8200 5E00 3000 10",
	$"0000 0000 0000 0000 0000 1000 3000 7E00"
	$"FE00 7E00 3000 10",
	{8, 6}
};

resource 'CURS' (518, purgeable) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0010 0029 0017 0009 0009 001F",
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0010 0039 001F 000F 000F 001F",
	{11, 11}
};

resource 'CURS' (520, purgeable) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0800 9400 E800 9000 9000 F8",
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0800 9C00 F800 F000 F000 F8",
	{11, 4}
};

resource 'CURS' (514, purgeable) {
	$"F800 9000 9000 E800 9400 08",
	$"F800 F000 F000 F800 9C00 08",
	{4, 4}
};

data 'sLem' (0, purgeable) {
	$"35A9 5374 6963 6874 696E 6720 4D61 7468"            /* 5�Stichting Math */
	$"656D 6174 6973 6368 2043 656E 7472 756D"            /* ematisch Centrum */
	$"2C20 416D 7374 6572 6461 6D2C 2031 3938"            /* , Amsterdam, 198 */
	$"35D0 3139 3939"                                     /* 5�1999 */
};

resource 'FREF' (128, purgeable) {
	'APPL',
	0,
	""
};

resource 'FREF' (129, purgeable) {
	'PREF',
	1,
	""
};

resource 'FREF' (130, purgeable) {
	'DATA',
	2,
	""
};

resource 'FREF' (131, purgeable) {
	'SAVE',
	3,
	""
};

resource 'FREF' (132, purgeable) {
	'BONE',
	4,
	""
};

resource 'BNDL' (128, purgeable) {
	'slEm',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'FREF',
		{	/* array IDArray: 5 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130,
			/* [4] */
			3, 131,
			/* [5] */
			4, 132
		},
		/* [2] */
		'ICN#',
		{	/* array IDArray: 5 elements */
			/* [1] */
			0, 1000,
			/* [2] */
			1, 1001,
			/* [3] */
			2, 1002,
			/* [4] */
			3, 1003,
			/* [5] */
			4, 1004
		}
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFEA7,
	enabled,
	"File",
	{	/* array: 10 elements */
		/* [1] */
		"Redraw Map", noIcon, "R", "\0x11", plain,
		/* [2] */
		"Previous Msg", noIcon, "P", "\0x11", plain,
		/* [3] */
		"Reposition", noIcon, "N", noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Regular", noIcon, hierarchicalMenu, "�", plain,
		/* [6] */
		"Enter Explore", noIcon, noKey, "X", plain,
		/* [7] */
		"-", noIcon, noKey, noMark, plain,
		/* [8] */
		"Save", noIcon, "S", "S", plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Quit", noIcon, "Q", "Q", plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	"Edit",
	{	/* array: 6 elements */
		/* [1] */
		"Undo", noIcon, "Z", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Cut", noIcon, "X", noMark, plain,
		/* [4] */
		"Copy", noIcon, "C", noMark, plain,
		/* [5] */
		"Paste", noIcon, "V", noMark, plain,
		/* [6] */
		"Clear", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	0x7FFFFEFF,
	enabled,
	"Keypress",
	{	/* array: 13 elements */
		/* [1] */
		"Control Keys", noIcon, hierarchicalMenu, "�", plain,
		/* [2] */
		"Punctuation", noIcon, hierarchicalMenu, "�", plain,
		/* [3] */
		"Brackets", noIcon, hierarchicalMenu, "�", plain,
		/* [4] */
		"a - m", noIcon, hierarchicalMenu, "�", plain,
		/* [5] */
		"n - z", noIcon, hierarchicalMenu, "�", plain,
		/* [6] */
		"A - M", noIcon, hierarchicalMenu, "�", plain,
		/* [7] */
		"N - Z", noIcon, hierarchicalMenu, "�", plain,
		/* [8] */
		"0 - 9", noIcon, hierarchicalMenu, "�", plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"(escape)", noIcon, noKey, noMark, plain,
		/* [11] */
		"(space)", noIcon, noKey, noMark, plain,
		/* [12] */
		"(delete)", noIcon, noKey, noMark, plain,
		/* [13] */
		"(return)", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (132) {
	132,
	textMenuProc,
	0x7FFFFFED,
	enabled,
	"Help",
	{	/* array: 8 elements */
		/* [1] */
		"Options", noIcon, noKey, "O", plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Help", noIcon, noKey, "?", plain,
		/* [4] */
		"Describe Key", noIcon, noKey, "&", plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Version", noIcon, noKey, "v", plain,
		/* [7] */
		"History", noIcon, noKey, "V", plain,
		/* [8] */
		"Version Features", noIcon, noKey, "#", plain
	}
};

resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	apple,
	{	/* array: 2 elements */
		/* [1] */
		"About Slash'EM�", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (133) {
	133,
	textMenuProc,
	0x7FFFEEF7,
	enabled,
	"Information",
	{	/* array: 14 elements */
		/* [1] */
		"Inventory All", noIcon, noKey, "i", plain,
		/* [2] */
		"Inventory Select", noIcon, noKey, "I", plain,
		/* [3] */
		"Adjust", noIcon, noKey, "#", plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Look Down", noIcon, noKey, ":", plain,
		/* [6] */
		"Describe One", noIcon, noKey, ";", plain,
		/* [7] */
		"Describe Many", noIcon, noKey, "/", plain,
		/* [8] */
		"Describe Trap", noIcon, noKey, "^", plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Call Monster", noIcon, noKey, "C", plain,
		/* [11] */
		"Name Object", noIcon, noKey, "#", plain,
		/* [12] */
		"Discoveries", noIcon, noKey, "\\", plain,
		/* [13] */
		"-", noIcon, noKey, noMark, plain,
		/* [14] */
		"Show Conduct", noIcon, noKey, "#", plain
	}
};

resource 'MENU' (134) {
	134,
	textMenuProc,
	0x7FFFEDDD,
	enabled,
	"Equipment",
	{	/* array: 15 elements */
		/* [1] */
		"Current", noIcon, hierarchicalMenu, "�", plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Wield Weapon", noIcon, noKey, "w", plain,
		/* [4] */
		"Exchange Weapon", noIcon, noKey, "x", plain,
		/* [5] */
		"Select Quiver", noIcon, noKey, "Q", plain,
		/* [6] */
		"Fire Quiver", noIcon, noKey, "f", plain,
		/* [7] */
		"Throw", noIcon, noKey, "t", plain,
		/* [8] */
		"Apply", noIcon, noKey, "a", plain,
		/* [9] */
		"Enhance", noIcon, noKey, "#", plain,
		/* [10] */
		"Two Weapon Combat", noIcon, noKey, "#", plain,
		/* [11] */
		"-", noIcon, noKey, noMark, plain,
		/* [12] */
		"Wear Armor", noIcon, noKey, "W", plain,
		/* [13] */
		"Take Off", noIcon, noKey, "T", plain,
		/* [14] */
		"Ask Remove", noIcon, noKey, "A", plain,
		/* [15] */
		"-", noIcon, noKey, noMark, plain,
		/* [16] */
		"Put On", noIcon, noKey, "P", plain,
		/* [17] */
		"Remove", noIcon, noKey, "R", plain
	}
};

resource 'MENU' (135) {
	135,
	textMenuProc,
	0x7FFFBFBD,
	enabled,
	"Action",
	{	/* array: 21 elements */
		/* [1] */
		"Wait", noIcon, noKey, ".", plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Teleport", noIcon, "T", "\0x11", plain,
		/* [4] */
		"Jump", noIcon, noKey, "#", plain,
		/* [5] */
		"Monster", noIcon, noKey, "#", plain,
		/* [6] */
		"Wipe", noIcon, noKey, "#", plain,
		/* [7] */
		"-", noIcon, noKey, noMark, plain,
		/* [8] */
		"Apply", noIcon, noKey, "a", plain,
		/* [9] */
		"Pay", noIcon, noKey, "p", plain,
		/* [10] */
		"Kick", noIcon, "D", "\0x11", plain,
		/* [11] */
		"Chat", noIcon, noKey, "#", plain,
		/* [12] */
		"Offer", noIcon, noKey, "#", plain,
		/* [13] */
		"Pray", noIcon, noKey, "#", plain,
		/* [14] */
		"Ride", noIcon, noKey, "#", plain,
		"Turn", noIcon, noKey, "#", plain,
		/* [15] */
		"-", noIcon, noKey, noMark, plain,
		/* [16] */
		"Borrow", noIcon, noKey, "#", plain,
		/* [17] */
		"Perform Technique", noIcon, noKey, "#", plain,
		/* [18] */
		"Swap Weapons", noIcon, noKey, "x", plain,
		/* [19] */
		"Use Two Weapons", noIcon, noKey, "#", plain,
		/* [20] */
		"Enhance Ability", noIcon, noKey, "#", plain
	}
};

resource 'MENU' (136) {
	136,
	textMenuProc,
	0x7FFF7DEF,
	enabled,
	"Magic",
	{	/* array: 17 elements */
		/* [1] */
		"Drop Item", noIcon, noKey, "d", plain,
		/* [2] */
		"Drop Select", noIcon, noKey, "D", plain,
		/* [3] */
		"Pickup", noIcon, noKey, ",", plain,
		/* [4] */
		"Toggle pickup", noIcon, noKey, "@", plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Eat", noIcon, noKey, "e", plain,
		/* [7] */
		"Read", noIcon, noKey, "r", plain,
		/* [8] */
		"Quaff", noIcon, noKey, "q", plain,
		/* [9] */
		"Dip", noIcon, noKey, "#", plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"List Spells", noIcon, noKey, "+", plain,
		/* [12] */
		"Cast Spell", noIcon, noKey, "Z", plain,
		/* [13] */
		"Zap", noIcon, noKey, "z", plain,
		/* [14] */
		"Invoke", noIcon, noKey, "#", plain,
		/* [15] */
		"Rub", noIcon, noKey, "#", plain,
		/* [16] */
		"-", noIcon, noKey, noMark, plain,
		/* [17] */
		"Polymorph", noIcon, noKey, "#", plain
	}
};

resource 'MENU' (137) {
	137,
	textMenuProc,
	0x7FFFDDDF,
	enabled,
	"Bits",
	{	/* array: 16 elements */
		/* [1] */
		"Search", noIcon, noKey, "s", plain,
		/* [2] */
		"Close Door", noIcon, noKey, "c", plain,
		/* [3] */
		"Open Door", noIcon, noKey, "o", plain,
		/* [4] */
		"Apply", noIcon, noKey, "a", plain,
		/* [5] */
		"Kick", noIcon, "D", "\0x11", plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Untrap", noIcon, noKey, "#", plain,
		/* [8] */
		"Force", noIcon, noKey, "#", plain,
		/* [9] */
		"Loot", noIcon, noKey, "#", plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Engrave", noIcon, noKey, "E", plain,
		/* [12] */
		"Dip", noIcon, noKey, "#", plain,
		/* [13] */
		"Sit", noIcon, noKey, "#", plain,
		/* [14] */
		"-", noIcon, noKey, "#", 2,
		/* [15] */
		"Climp Up", noIcon, noKey, "<", plain,
		/* [16] */
		"Climb Down", noIcon, noKey, ">", plain
	}
};

resource 'MENU' (202) {
	202,
	textMenuProc,
	allEnabled,
	enabled,
	"punctuation",
	{	/* array: 16 elements */
		/* [1] */
		" .", noIcon, noKey, noMark, plain,
		/* [2] */
		" ,", noIcon, noKey, noMark, plain,
		/* [3] */
		" ;", noIcon, noKey, noMark, plain,
		/* [4] */
		" :", noIcon, noKey, noMark, plain,
		/* [5] */
		" !", noIcon, noKey, noMark, plain,
		/* [6] */
		" ?", noIcon, noKey, noMark, plain,
		/* [7] */
		" +", noIcon, noKey, noMark, plain,
		/* [8] */
		" -", noIcon, noKey, noMark, plain,
		/* [9] */
		" =", noIcon, noKey, noMark, plain,
		/* [10] */
		" #", noIcon, noKey, noMark, plain,
		/* [11] */
		" $", noIcon, noKey, noMark, plain,
		/* [12] */
		" @", noIcon, noKey, noMark, plain,
		/* [13] */
		" &", noIcon, noKey, noMark, plain,
		/* [14] */
		" *", noIcon, noKey, noMark, plain,
		/* [15] */
		" ~", noIcon, noKey, noMark, plain,
		/* [16] */
		" _", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (203) {
	203,
	textMenuProc,
	allEnabled,
	enabled,
	"brackets",
	{	/* array: 16 elements */
		/* [1] */
		"[", noIcon, noKey, noMark, plain,
		/* [2] */
		"]", noIcon, noKey, noMark, plain,
		/* [3] */
		"(", noIcon, noKey, noMark, plain,
		/* [4] */
		")", noIcon, noKey, noMark, plain,
		/* [5] */
		"{", noIcon, noKey, noMark, plain,
		/* [6] */
		"}", noIcon, noKey, noMark, plain,
		/* [7] */
		"<", noIcon, noKey, noMark, plain,
		/* [8] */
		">", noIcon, noKey, noMark, plain,
		/* [9] */
		"^", noIcon, noKey, noMark, plain,
		/* [10] */
		"`", noIcon, noKey, noMark, plain,
		/* [11] */
		"'", noIcon, noKey, noMark, plain,
		/* [12] */
		"\"", noIcon, noKey, noMark, plain,
		/* [13] */
		"\\", noIcon, noKey, noMark, plain,
		/* [14] */
		"/", noIcon, noKey, noMark, plain,
		/* [15] */
		"|", noIcon, noKey, noMark, plain,
		/* [16] */
		"%", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (204) {
	204,
	textMenuProc,
	allEnabled,
	enabled,
	"a - m",
	{	/* array: 13 elements */
		/* [1] */
		"a", noIcon, noKey, noMark, plain,
		/* [2] */
		"b", noIcon, noKey, noMark, plain,
		/* [3] */
		"c", noIcon, noKey, noMark, plain,
		/* [4] */
		"d", noIcon, noKey, noMark, plain,
		/* [5] */
		"e", noIcon, noKey, noMark, plain,
		/* [6] */
		"f", noIcon, noKey, noMark, plain,
		/* [7] */
		"g", noIcon, noKey, noMark, plain,
		/* [8] */
		"h", noIcon, noKey, noMark, plain,
		/* [9] */
		"i", noIcon, noKey, noMark, plain,
		/* [10] */
		"j", noIcon, noKey, noMark, plain,
		/* [11] */
		"k", noIcon, noKey, noMark, plain,
		/* [12] */
		"l", noIcon, noKey, noMark, plain,
		/* [13] */
		"m", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (205) {
	205,
	textMenuProc,
	allEnabled,
	enabled,
	"n - z",
	{	/* array: 13 elements */
		/* [1] */
		"n", noIcon, noKey, noMark, plain,
		/* [2] */
		"o", noIcon, noKey, noMark, plain,
		/* [3] */
		"p", noIcon, noKey, noMark, plain,
		/* [4] */
		"q", noIcon, noKey, noMark, plain,
		/* [5] */
		"r", noIcon, noKey, noMark, plain,
		/* [6] */
		"s", noIcon, noKey, noMark, plain,
		/* [7] */
		"t", noIcon, noKey, noMark, plain,
		/* [8] */
		"u", noIcon, noKey, noMark, plain,
		/* [9] */
		"v", noIcon, noKey, noMark, plain,
		/* [10] */
		"w", noIcon, noKey, noMark, plain,
		/* [11] */
		"x", noIcon, noKey, noMark, plain,
		/* [12] */
		"y", noIcon, noKey, noMark, plain,
		/* [13] */
		"z", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (206) {
	206,
	textMenuProc,
	allEnabled,
	enabled,
	"A - M",
	{	/* array: 13 elements */
		/* [1] */
		"A", noIcon, noKey, noMark, plain,
		/* [2] */
		"B", noIcon, noKey, noMark, plain,
		/* [3] */
		"C", noIcon, noKey, noMark, plain,
		/* [4] */
		"D", noIcon, noKey, noMark, plain,
		/* [5] */
		"E", noIcon, noKey, noMark, plain,
		/* [6] */
		"F", noIcon, noKey, noMark, plain,
		/* [7] */
		"G", noIcon, noKey, noMark, plain,
		/* [8] */
		"H", noIcon, noKey, noMark, plain,
		/* [9] */
		"I", noIcon, noKey, noMark, plain,
		/* [10] */
		"J", noIcon, noKey, noMark, plain,
		/* [11] */
		"K", noIcon, noKey, noMark, plain,
		/* [12] */
		"L", noIcon, noKey, noMark, plain,
		/* [13] */
		"M", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (207) {
	207,
	textMenuProc,
	allEnabled,
	enabled,
	"N - Z",
	{	/* array: 13 elements */
		/* [1] */
		"N", noIcon, noKey, noMark, plain,
		/* [2] */
		"O", noIcon, noKey, noMark, plain,
		/* [3] */
		"P", noIcon, noKey, noMark, plain,
		/* [4] */
		"Q", noIcon, noKey, noMark, plain,
		/* [5] */
		"R", noIcon, noKey, noMark, plain,
		/* [6] */
		"S", noIcon, noKey, noMark, plain,
		/* [7] */
		"T", noIcon, noKey, noMark, plain,
		/* [8] */
		"U", noIcon, noKey, noMark, plain,
		/* [9] */
		"V", noIcon, noKey, noMark, plain,
		/* [10] */
		"W", noIcon, noKey, noMark, plain,
		/* [11] */
		"X", noIcon, noKey, noMark, plain,
		/* [12] */
		"Y", noIcon, noKey, noMark, plain,
		/* [13] */
		"Z", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (201) {
	201,
	textMenuProc,
	0x7FFFFEFF,
	enabled,
	"control keys",
	{	/* array: 13 elements */
		/* [1] */
		"b", noIcon, "1", noMark, plain,
		/* [2] */
		"j", noIcon, "2", noMark, plain,
		/* [3] */
		"n", noIcon, "3", noMark, plain,
		/* [4] */
		"h", noIcon, "4", noMark, plain,
		/* [5] */
		"l", noIcon, "6", noMark, plain,
		/* [6] */
		"y", noIcon, "7", noMark, plain,
		/* [7] */
		"k", noIcon, "8", noMark, plain,
		/* [8] */
		"u", noIcon, "9", noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"d", noIcon, "D", noMark, plain,
		/* [11] */
		"p", noIcon, "P", noMark, plain,
		/* [12] */
		"r", noIcon, "R", noMark, plain,
		/* [13] */
		"t", noIcon, "T", noMark, plain
	}
};

resource 'MENU' (208) {
	208,
	textMenuProc,
	allEnabled,
	enabled,
	"0 - 9",
	{	/* array: 10 elements */
		/* [1] */
		"0", noIcon, noKey, noMark, plain,
		/* [2] */
		"1", noIcon, noKey, noMark, plain,
		/* [3] */
		"2", noIcon, noKey, noMark, plain,
		/* [4] */
		"3", noIcon, noKey, noMark, plain,
		/* [5] */
		"4", noIcon, noKey, noMark, plain,
		/* [6] */
		"5", noIcon, noKey, noMark, plain,
		/* [7] */
		"6", noIcon, noKey, noMark, plain,
		/* [8] */
		"7", noIcon, noKey, noMark, plain,
		/* [9] */
		"8", noIcon, noKey, noMark, plain,
		/* [10] */
		"9", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (200) {
	200,
	textMenuProc,
	0x7FFFEEFF,
	enabled,
	"wizard",
	{	/* array: 19 elements */
		/* [1] */
		"Attributes", noIcon, noKey, "x", plain,
		/* [2] */
		"Detect Unseen", noIcon, noKey, "e", plain,
		/* [3] */
		"Map Floor", noIcon, noKey, "f", plain,
		/* [4] */
		"Generate Monster", noIcon, noKey, "g", plain,
		/* [5] */
		"Identify", noIcon, noKey, "i", plain,
		/* [6] */
		"Show Levels", noIcon, noKey, "o", plain,
		/* [7] */
		"Level Teleport", noIcon, noKey, "v", plain,
		/* [8] */
		"Wish", noIcon, noKey, "w", plain,
		/* [9] */
		"-", noIcon, noKey, "c", plain,
		/* [10] */
		"Raise Armor Class", noIcon, noKey, "c", plain,
		/* [11] */
		"Jump Level", noIcon, noKey, "j", plain,
		/* [12] */
		"Toggle Invulnerable", noIcon, noKey, "n", plain,
		/* [13] */
		"-", noIcon, noKey, noMark, plain,
		/* [14] */
		"Show Lights", noIcon, noKey, "#", plain,
		/* [15] */
		"Show Seen", noIcon, noKey, "#", plain,
		/* [16] */
		"Show Memory", noIcon, noKey, "#", plain,
		/* [17] */
		"Show Timeout", noIcon, noKey, "#", plain,
		/* [18] */
		"Show Vision", noIcon, noKey, "#", plain,
		/* [19] */
		"Show Walls", noIcon, noKey, "#", plain
	}
};

resource 'MENU' (209) {
	209,
	textMenuProc,
	0x7FFFFF7F,
	enabled,
	"current",
	{	/* array: 9 elements */
		/* [1] */
		"Weapon", noIcon, noKey, ")", plain,
		/* [2] */
		"Armor", noIcon, noKey, "[", plain,
		/* [3] */
		"Rings", noIcon, noKey, "=", plain,
		/* [4] */
		"Amulet", noIcon, noKey, "\"", plain,
		/* [5] */
		"Tools", noIcon, noKey, "(", plain,
		/* [6] */
		"Gold", noIcon, noKey, "$", plain,
		/* [7] */
		"Spells", noIcon, noKey, "+", plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"In Use", noIcon, noKey, "*", plain
	}
};

data 'MNU#' (128, "menubar", locked, preload) {
	$"0080 000A 0080 0000 0081 0000 0082 0000"            /* .�...�...�...�.. */
	$"0083 0000 0084 0000 0085 0000 0086 0000"            /* .�...�...�...�.. */
	$"0087 0000 0088 0000 0089 0000"                      /* .�...�...�.. */
};

data 'MNU#' (129, "submenu", locked, preload) {
	$"00C8 000A 00C8 0000 00C9 0000 00CA 0000"            /* .�...�...�...�.. */
	$"00CB 0000 00CC 0000 00CD 0000 00CE 0000"            /* .�...�...�...�.. */
	$"00CF 0000 00D0 0000 00D1 0000"                      /* .�...�...�.. */
};

resource 'STR ' (128, "Pref File Name") {
	"Slash'EM Preferences"
};

resource 'dctb' (6000, "Start") {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 56797, 56797, 56797,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

data 'ictb' (6000) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"2000 0040 0000 0000 0000 0000 0000 0000"            /*  ..@............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000"                                          /* ��.. */
};

resource 'actb' (5000, "About/error") {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 56797, 56797, 56797,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'actb' (5001, "Confirm") {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 56797, 56797, 56797,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'actb' (128) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 56797, 56797, 56797,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'actb' (129) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 56797, 56797, 56797,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

data 'ppat' (128) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8020 0000 0000 0040 0040 0000 0000 0000"            /* � .....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0004 0001"            /* ...H...H........ */
	$"0004 0000 0000 0000 084E 0000 0000 2233"            /* .........N...."3 */
	$"3222 2222 2222 2322 1112 2222 3B78 B222"            /* 2"""""#".."";x�" */
	$"2222 2222 2212 2333 2B43 3BB3 2222 2233"            /* """"".#3+C;�"""3 */
	$"3222 2222 2222 2322 2212 12BC 7DC3 2222"            /* 2"""""#""..�}�"" */
	$"2222 2222 2122 2333 2543 235B 3222 2233"            /* """"!"#3%C#[2""3 */
	$"2222 2222 2222 2222 2223 5797 5322 2222"            /* """""""""#W�S""" */
	$"2222 2222 2222 2343 3B43 32BB 4222 2224"            /* """"""#C;C2�B""$ */
	$"3222 2222 3222 2334 B67D 9DCB 2223 2222"            /* 2"""2"#4�}��"#"" */
	$"2322 2222 2222 2233 BB43 3225 6322 2223"            /* #""""""3�C2%c""# */
	$"B333 BB6C C66C 77D9 AAFD B223 5323 3322"            /* �3�l�lw٪��#S#3" */
	$"2222 2222 2222 2222 B443 3323 BCB3 434B"            /* """"""""�C3#��CK */
	$"7999 99AA AAAA FFAA 98C5 3322 2633 3322"            /* y���������3"&33" */
	$"2222 2222 2222 2323 B443 3332 246C 7CC8"            /* """"""##�C32$l|� */
	$"DC65 55BB BB6C 655B B456 B332 2453 3332"            /* �eU��le[�V�2$S32 */
	$"2123 3212 23BB 542B B443 3233 3225 C66C"            /* !#2.#�T+�C232%�l */
	$"BB43 2222 114B 444B B4B6 B333 335B 3332"            /* �C"".KDK���33[32 */
	$"2223 BBBB BB42 B42B B433 3333 3333 B322"            /* "#���B�+�33333�" */
	$"5B43 3222 21BB BBBB 4445 B433 44B5 3322"            /* [C2"!���DE�3D�3" */
	$"2B65 B322 2222 2B3B 4433 4433 4BBB 3333"            /* +e�"""+;D3D3K�33 */
	$"BB33 3322 215B BBB4 4433 B444 443B B323"            /* �33"![��D3�DD;�# */
	$"6632 2222 2222 2425 4434 3444 BB43 3332"            /* f2""""$%D44D�C32 */
	$"4533 3322 2254 BBB4 4443 BB44 4433 5B5C"            /* E33""T��DC�DD3[\ */
	$"5332 2222 2222 2225 4443 3444 B433 3222"            /* S2"""""%DC4D�32" */
	$"2533 3332 235B BBB4 4443 3B44 4B32 5C6B"            /* %332#[��DC;DK2\k */
	$"3322 2222 2222 2226 BB43 43B4 4433 3222"            /* 3""""""&�CC�D32" */
	$"2B43 3322 2BB4 BBBB 4B33 2B44 4432 B5B4"            /* +C3"+���K3+DD2�� */
	$"3222 2222 2242 2235 B444 3334 4333 3222"            /* 2""""B"5�D34C32" */
	$"2344 3322 25B4 BB44 4443 3B43 3432 3644"            /* #D3"%��DDC;C426D */
	$"3222 2222 2232 225B 4333 3433 3333 3322"            /* 2""""2"[C343333" */
	$"2243 3222 264B BB44 4433 2434 4432 26B4"            /* "C2"&K�DD3$4D2&� */
	$"3222 2222 2242 22B4 4333 343B 3333 3322"            /* 2""""B"�C34;333" */
	$"2233 3222 B5BB BBB4 4433 23B5 4332 2643"            /* "32"����D3#�C2&C */
	$"3222 2222 2243 22BB 4433 4333 3333 3432"            /* 2""""C"�D3C33342 */
	$"2222 3222 6BBB BBB4 4433 2B56 B432 3633"            /* ""2"k���D3+V�263 */
	$"3322 2222 2234 22B4 4333 3433 3333 3332"            /* 3""""4"�C3433332 */
	$"2222 3325 6BBB B444 4333 3B56 65B2 4533"            /* ""3%k��DC3;Ve�E3 */
	$"3322 2222 112B 2244 3333 3333 3333 2322"            /* 3""".+"D333333#" */
	$"2222 333C 5BBB B443 3333 4B55 B555 BB33"            /* ""3<[��C33KU�U�3 */
	$"3222 2222 111B 3234 3333 3332 2333 2222"            /* 2"""..243332#3"" */
	$"2122 3255 BBBB BB33 223B B55B BBBB CC33"            /* !"2U���3";�[���3 */
	$"2222 2222 111B 4334 3333 3222 2332 2222"            /* """"..C4332"#2"" */
	$"2222 335B BBBB BB43 234B 555B BBB4 576B"            /* ""3[���C#KU[��Wk */
	$"3222 2222 1113 533B 3323 3222 3232 2222"            /* 2"""..S;3#2"22"" */
	$"2220 3655 5BBB BBB3 3BB5 5BBB BBB4 BC66"            /* " 6U[���;�[����f */
	$"B432 2222 1112 C334 3233 3222 3232 2222"            /* �2""..�4232"22"" */
	$"222B CC55 BBBB B433 45B5 5BBB BB43 B6BB"            /* "+�U���3E�[��C�� */
	$"C5B4 2221 1112 CB24 3323 3223 2222 2222"            /* Ŵ"!..�$3#2#"""" */
	$"2B53 BC55 BBBB B334 5B5B BBBB BB33 65B5"            /* +S�U���4[[���3e� */
	$"5667 76BB BB68 DB34 4322 3222 2222 222B"            /* Vgv��h�4C"2""""+ */
	$"6533 3C55 BBB4 B4B5 BBBB BBBB B443 65BB"            /* e3<U���������Ce� */
	$"BB55 CCC7 CCCC 8C34 3322 2222 2222 3BCC"            /* �U���̌43""""";� */
	$"5B43 356B BBBB 556B BBBB BBB4 433B 65BB"            /* [C5k��Uk����C;e� */
	$"44BB BBBB BB33 6B44 3222 2223 2222 CC6B"            /* D����3kD2""#""�k */
	$"4433 33CB 5566 65BB BBBB 4444 3335 5BB3"            /* D33�Ufe���DD35[� */
	$"3334 4433 3333 5BBB BBBB B556 B55C 5BB3"            /* 34D333[����V�\[� */
	$"3333 2265 5655 BBBB BB44 4343 3336 BB43"            /* 33"eVU���DCC36�C */
	$"3333 3333 3334 6B33 33B3 456C CCC6 4333"            /* 333334k33�El��C3 */
	$"3322 22BC 565B BBBB B443 3433 3336 BB44"            /* 3""�V[���C4336�D */
	$"3333 3333 33BB BB32 3335 DC5B BB44 4333"            /* 33333��235�[�DC3 */
	$"3222 212C 555B 4444 4333 3333 3336 B433"            /* 2"!,U[DDC33336�3 */
	$"3333 3322 24B4 33B3 237D 5BBB B444 4323"            /* 333"$�3�#}[��DC# */
	$"2223 3246 55B4 3333 3333 3223 33B6 B333"            /* "#2FU�33332#3��3 */
	$"3333 3322 2BB3 3353 58D5 BB44 4444 3222"            /* 333"+�3SXջDDD2" */
	$"2235 5534 5BB3 3222 2222 2223 32BB 4333"            /* "5U4[�2""""#2�C3 */
	$"3333 3222 2B43 326C D75B BBBB 4433 3322"            /* 332"+C2l�[��D33" */
	$"22BB BBB3 5BB3 2222 2222 2222 32BB 3444"            /* "���[�""""""2�4D */
	$"3333 3222 24B3 3245 5BBB 4444 3333 2222"            /* 332"$�2E[�DD33"" */
	$"BB33 3342 BBB4 2222 2222 2222 32BB 4333"            /* �33B��""""""2�C3 */
	$"3333 3222 2354 3344 B444 4333 3323 222B"            /* 332"#T3D�DC33#"+ */
	$"4322 2233 45B4 3233 3333 2233 335B 4333"            /* C""3E�2333"33[C3 */
	$"3333 3222 226B BB33 B333 4333 3222 2243"            /* 332""k�3�3C32""C */
	$"3222 2233 34BB 4333 3332 2223 336B 3333"            /* 2""34�C332"#3k33 */
	$"3444 3221 25CB 3224 5333 B433 2222 3BB3"            /* 4D2!%�2$S3�3"";� */
	$"3222 2233 33B4 4333 3BB4 B444 5BBB BBBB"            /* 2""33�C3;��D[��� */
	$"555B 3224 65B3 2233 B334 55B3 2223 3B33"            /* U[2$e�"3�4U�"#;3 */
	$"3332 223B BBBB BBB4 4333 3222 BB44 BBB3"            /* 32";����C32"�D�� */
	$"33B5 BB66 4432 2232 422B C6B3 2111 4422"            /* 3��fD2"2B+Ƴ!.D" */
	$"2333 3234 4444 4332 34B4 3322 5B44 4444"            /* #324DDC24�3"[DDD */
	$"34BB 56B2 2443 2233 3434 B532 2112 B333"            /* 4�V�$C"344�2!.�3 */
	$"3333 322B BBB4 B433 4B43 3222 BB33 3344"            /* 332+���3KC2"�33D */
	$"3334 BB32 22B4 3333 2444 BBB4 3222 3223"            /* 34�2"�33$D��2"2# */
	$"3344 322B BBB4 4333 3333 2322 BB33 3333"            /* 3D2+��C333#"�333 */
	$"3333 3322 223B 4333 33BB BB34 334B 3223"            /* 333"";C33��43K2# */
	$"3333 322B 4433 3332 2233 2222 4B33 2333"            /* 332+D332"3""K3#3 */
	$"3333 3322 2223 B5BB BBBB 3322 333B 3223"            /* 333""#����3"3;2# */
	$"3343 3224 4434 3222 2322 2222 3B32 2333"            /* 3C2$D42"#""";2#3 */
	$"3332 2223 2222 2223 3333 3332 2225 B333"            /* 32"#"""#3332"%�3 */
	$"3333 3224 4B33 3223 3322 2222 3533 2333"            /* 332$K32#3"""53#3 */
	$"3333 2222 3222 2233 3323 3343 2242 3B33"            /* 33""2""33#3C"B;3 */
	$"3333 3224 4B43 3333 3322 2222 2643 2333"            /* 332$KC333"""&C#3 */
	$"3333 2222 2222 2223 3222 2233 3422 2343"            /* 33"""""#2""34"#C */
	$"3333 3223 BB43 3333 3332 2222 26B3 3334"            /* 332#�C3332""&�34 */
	$"3333 2233 3222 2232 3222 2223 4222 2223"            /* 33"32""22""#B""# */
	$"4433 3323 BB33 3333 3333 2222 25B4 3333"            /* D33#�33333""%�33 */
	$"3343 2222 2222 2222 2222 2223 3222 2222"            /* 3C"""""""""#2""" */
	$"35B3 333B B433 3333 3333 3232 25B4 3333"            /* 5�3;�3333322%�33 */
	$"3333 2222 2222 2233 3222 2222 2222 3322"            /* 33"""""32"""""3" */
	$"3BB5 4235 BB44 3333 3333 2222 2BB3 3333"            /* ;�B5�D3333""+�33 */
	$"3333 2222 2222 2222 2222 2222 2323 3322"            /* 33""""""""""##3" */
	$"2334 5555 BB44 B333 4333 2222 2B62 3333"            /* #4UU�D�3C3""+b33 */
	$"3333 2222 2232 2222 2222 2222 3323 3332"            /* 33"""2""""""3#32 */
	$"2233 3222 3333 3343 4333 2222 2363 3322"            /* "32"333CC3""#c3" */
	$"2233 2222 2222 2222 2222 3B5B 4333 3333"            /* "3"""""""";[C333 */
	$"2232 2222 2223 3BB4 3333 2222 236B 3233"            /* "2"""#;�33""#k23 */
	$"B56B 3222 2222 2222 222B 5BBB 5B33 4343"            /* �k2""""""+[�[3CC */
	$"3322 2222 3332 43B4 3333 B322 22BC BBB5"            /* 3"""32C�33�""��� */
	$"5BB4 3222 2232 2222 222B BBB4 3334 2333"            /* [�2""2"""+��34#3 */
	$"4333 4433 2224 3244 4333 34BB 4347 C65B"            /* C3D3"$2DC34�CG�[ */
	$"4444 3333 2222 2322 223B BBB4 3222 2222"            /* DD33""#"";��2""" */
	$"2222 2332 23B3 3344 4333 2222 3BB5 B43B"            /* ""#2#�3DC3"";��; */
	$"3333 3443 3233 3332 22BB BBBB 3322 2222"            /* 334C2332"���3""" */
	$"2222 222B BBB2 3233 3332 2222 224B B324"            /* """+��2332"""K�$ */
	$"4333 34BB 43BB BBB4 435B BBBB 3322 2233"            /* C34�C���C[��3""3 */
	$"3333 3333 B642 2223 3222 2222 2223 3222"            /* 3333�B"#2""""#2" */
	$"B4B5 BBBB B55B BB44 B55B B44B 4322 2333"            /* �����[�D�[�KC"#3 */
	$"3322 2223 3B32 2222 2222 2222 2222 2223"            /* 3""#;2"""""""""# */
	$"65B4 3344 4B43 3333 33B3 4334 4222 2333"            /* e�3DKC333�C4B"#3 */
	$"2222 2232 23B2 2222 2221 2222 2222 22BB"            /* """2#�"""!"""""� */
	$"4332 2233 3332 3433 4443 3335 B222 2223"            /* C2"33243DC35�""# */
	$"2222 2221 12B2 2222 2222 2222 2211 2454"            /* """!.�""""""".$T */
	$"3322 1221 2222 3B44 33B3 3345 3222 2222"            /* 3".!"";D3�3E2""" */
	$"2221 2222 21B4 2222 2222 2222 2111 2634"            /* "!""!�""""""!.&4 */
	$"3222 2222 2222 3BBB 4343 3454 3222 2222"            /* 2""""";�CC4T2""" */
	$"2222 2222 212B 3222 2222 2322 2111 B633"            /* """"!+2"""#"!.�3 */
	$"2222 2222 2122 4BBB 434B BB43 3222 2222"            /* """"!"K�CK�C2""" */
	$"2322 2212 2113 3211 1222 2322 2111 CB22"            /* #"".!.2.."#"!.�" */
	$"2222 2222 1122 44BB B4BB B333 2221 1232"            /* """"."D����3"!.2 */
	$"2222 2222 2212 4321 1122 3222 212B 7322"            /* """"".C!."2"!+s" */
	$"2222 2222 2222 3344 3BBB BB33 2222 0000"            /* """"""3D;��3"".. */
	$"0000 0000 000E 0000 EEEE EEEE EEEE 0001"            /* ........������.. */
	$"DDDD DDDD DDDD 0002 CCCC CCCC CCCC 0003"            /* ������..������.. */
	$"BBBB BBBB BBBB 0004 AAAA AAAA AAAA 0005"            /* ������..������.. */
	$"8888 8888 8888 0006 7777 7777 7777 0007"            /* ������..wwwwww.. */
	$"5555 5555 5555 0008 4444 4444 4444 0009"            /* UUUUUU..DDDDDD.� */
	$"2222 2222 2222 000A 1111 1111 1111 000B"            /* """""".......... */
	$"9999 9999 9999 000C 6666 6666 6666 000D"            /* ������..ffffff.� */
	$"3333 3333 3333 000F 0000 0000 0000"                 /* 333333........ */
};

data 'ppat' (130) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8040 0000 0000 0040 0040 0000 0000 0000"            /* �@.....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0008 0001"            /* ...H...H........ */
	$"0008 0000 0000 0000 104E 0000 0000 0404"            /* .........N...... */
	$"0405 0404 0404 0404 0404 0404 0405 0505"            /* ................ */
	$"0502 0102 0104 0505 0404 0507 1112 0A05"            /* ................ */
	$"0505 0505 0505 0505 0505 0502 0205 0505"            /* ................ */
	$"0707 0409 0705 0707 0707 0505 0404 0404"            /* ...�............ */
	$"0705 0504 0404 0404 0404 0404 0404 0505"            /* ................ */
	$"0504 0404 0102 0105 070B 1115 1007 0505"            /* ................ */
	$"0505 0505 0505 0505 0505 0502 0205 0507"            /* ................ */
	$"0707 0409 0705 0507 0907 0505 0404 0404"            /* ...�....�....... */
	$"0504 0404 0404 0404 0404 0404 0404 0404"            /* ................ */
	$"0404 0404 0505 0B11 1711 0B07 0505 0505"            /* ................ */
	$"0505 0505 0405 0505 0504 0501 0205 0404"            /* ................ */
	$"0606 0609 0707 0505 0709 0705 0504 0404"            /* ...�.....�...... */
	$"0407 0404 0404 0404 0405 0404 0404 0405"            /* ................ */
	$"0707 070B 1116 1712 0F09 0405 0505 0505"            /* .........�...... */
	$"0504 0505 0405 0405 0504 0405 0405 0404"            /* ................ */
	$"0604 0707 0707 0505 040B 0B07 0505 0404"            /* ................ */
	$"0507 0705 0505 070A 0B11 0C0B 0B0D 1112"            /* .............�.. */
	$"1217 1819 1912 0A04 0407 0907 0505 0505"            /* ..........�..... */
	$"0505 0405 0404 0404 0404 0404 0504 0404"            /* ................ */
	$"0404 0907 0707 0505 0506 070D 0905 0705"            /* ..�........��... */
	$"0707 1117 1614 1814 1818 1818 1819 1919"            /* ................ */
	$"1918 1412 1109 0705 0404 050B 0705 0505"            /* .....�.......... */
	$"0504 0404 0404 0404 0404 0404 0505 0407"            /* ................ */
	$"0404 0907 0707 0505 0505 0407 0B0D 100D"            /* ..�..........�.� */
	$"1111 1310 0B0B 0B0B 0A0A 0A0A 0B10 0B0B"            /* ................ */
	$"0B0A 0707 0B0B 0707 0504 0406 0907 0505"            /* ............�... */
	$"0505 0401 0404 0504 0104 0405 0707 0907"            /* ..............�. */
	$"0407 0707 0707 0504 0505 0504 040B 0D0C"            /* ..............�. */
	$"0B0B 0607 0705 0404 0404 0101 0707 0707"            /* ................ */
	$"0707 0707 070B 0707 0704 0604 0907 0505"            /* ............�... */
	$"0505 0504 0407 0909 0707 0907 0704 0707"            /* ......��..�..... */
	$"0409 0707 0707 0704 0505 0706 0606 0606"            /* .�.............. */
	$"0404 0B07 0705 0505 0505 0401 0707 0707"            /* ................ */
	$"0707 0707 0709 0707 0707 0707 070B 0705"            /* .....�.......... */
	$"0505 050B 0B0B 0705 0405 0505 0405 0507"            /* ................ */
	$"0409 0707 0707 0707 0507 0706 0909 0604"            /* .�..........��.. */
	$"0404 0707 0705 0505 0504 0401 0907 0707"            /* ............�... */
	$"0707 0707 0706 0907 0707 0707 0709 0705"            /* ......�......�.. */
	$"0405 0B0B 0705 0505 0505 0504 0404 0507"            /* ................ */
	$"0409 0707 0707 0707 0707 0706 0606 0504"            /* .�.............. */
	$"0404 0709 0707 0505 0405 0404 0907 0707"            /* ...�........�... */
	$"0707 0707 0707 0707 0707 0707 0705 0B07"            /* ................ */
	$"0B10 0B07 0504 0504 0404 0404 0405 0505"            /* ................ */
	$"040B 0707 0706 0707 0707 0707 0707 0504"            /* ................ */
	$"0404 0409 0707 0705 0505 0404 0B07 0707"            /* ...�............ */
	$"0707 0707 0707 0407 0707 0707 0705 0B10"            /* ................ */
	$"0B07 0705 0504 0404 0404 0404 0404 0404"            /* ................ */
	$"040B 0707 0707 0707 0707 0707 0505 0404"            /* ................ */
	$"0504 0407 0707 0505 0504 0407 0907 0707"            /* ............�... */
	$"0707 0707 0707 0407 0707 0707 0704 060B"            /* ................ */
	$"0707 0505 0504 0404 0404 0404 0704 0404"            /* ................ */
	$"060B 0707 0707 0707 0707 0707 0505 0504"            /* ................ */
	$"0404 0407 0707 0705 0505 040B 0707 0707"            /* ................ */
	$"0707 0707 0707 0407 0607 0707 0704 060B"            /* ................ */
	$"0707 0505 0404 0404 0404 0404 0505 0505"            /* ................ */
	$"0B09 0707 0707 0707 0707 0707 0505 0505"            /* .�.............. */
	$"0404 0404 0707 0705 0505 040B 0707 0707"            /* ................ */
	$"0707 0707 0704 0407 0607 0707 0704 040B"            /* ................ */
	$"0707 0705 0404 0404 0404 0404 0705 0404"            /* ................ */
	$"0707 0707 0707 0707 0707 0705 0505 0507"            /* ................ */
	$"0404 0404 0605 0505 0505 070B 0707 0707"            /* ................ */
	$"0707 0707 0704 0406 0609 0707 0604 040B"            /* .........�...... */
	$"0707 0505 0504 0404 0404 0404 0705 0504"            /* ................ */
	$"0707 0707 0707 0707 0704 0707 0705 0507"            /* ................ */
	$"0505 0404 0404 0505 0504 0D09 0707 0707"            /* ..........��.... */
	$"0707 0707 0504 0406 0B0B 0707 0404 040B"            /* ................ */
	$"0705 0505 0504 0404 0404 0404 0707 0404"            /* ................ */
	$"0707 0707 0507 0707 0707 0507 0705 0505"            /* ................ */
	$"0505 0404 0404 0505 040B 0B07 0707 0707"            /* ................ */
	$"0707 0707 0606 0606 090D 0D09 0604 060B"            /* ........����.... */
	$"0505 0505 0504 0404 0404 0101 0407 0505"            /* ................ */
	$"0707 0707 0507 0705 0505 0505 0705 0405"            /* ................ */
	$"0505 0404 0404 0505 060D 0907 0707 0707"            /* .........��..... */
	$"0707 0604 0606 0607 0909 0909 0B09 0907"            /* ........����.��. */
	$"0505 0505 0504 0404 0404 0101 0409 0505"            /* .............�.. */
	$"0707 0705 0505 0505 0505 0505 0505 0505"            /* ................ */
	$"0504 0401 0404 0504 090B 0707 0707 0707"            /* ........�....... */
	$"0706 0404 0608 060B 0909 0707 0707 100D"            /* ........��.....� */
	$"0705 0505 0405 0405 0404 0101 0107 0705"            /* ................ */
	$"0707 0705 0505 0504 0505 0505 0504 0404"            /* ................ */
	$"0504 0404 0404 0706 0B07 0907 0907 0707"            /* ..........�.�... */
	$"0706 0406 0606 0B0B 0907 0707 0706 0910"            /* ........�.....�. */
	$"0B07 0505 0504 0404 0401 0101 0107 0B05"            /* ................ */
	$"0407 0705 0505 0504 0405 0505 0505 0505"            /* ................ */
	$"0404 0404 0400 060B 0909 0909 0707 0707"            /* ........����.... */
	$"0707 0407 060B 0B09 0707 0707 0707 070D"            /* .......�.......� */
	$"0B0B 0907 0504 0404 0404 0101 0104 0D05"            /* ..�...........�. */
	$"0507 0705 0505 0505 0505 0505 0505 0404"            /* ................ */
	$"0404 0504 0406 0D0D 0B09 0909 0707 0707"            /* ......��.���.... */
	$"0706 0609 060B 0909 0707 0707 0707 090B"            /* ...�..��......�. */
	$"0909 0D09 0907 0404 0401 0101 0104 1007"            /* �����........... */
	$"0407 0705 0505 0505 0505 0505 0504 0404"            /* ................ */
	$"0405 0507 0B06 070D 0B09 0707 0707 0706"            /* .......�.�...... */
	$"0606 0B06 0909 0709 0707 0707 0704 0B0B"            /* ....��.�........ */
	$"0709 090B 0D11 100B 0707 070A 0B12 1607"            /* .��.�........... */
	$"0507 0705 0505 0505 0405 0505 0404 0404"            /* ................ */
	$"0507 0B0B 0705 070D 0909 0707 0706 0606"            /* .......���...... */
	$"070B 0909 0707 0707 0707 0707 0706 0D09"            /* ..��..........�� */
	$"0707 0707 090B 0D0D 0D10 0D0D 0D0D 110D"            /* ....�.���.����.� */
	$"0407 0705 0505 0405 0405 0505 0504 0707"            /* ................ */
	$"0D0D 0907 0707 050B 0B09 0907 0709 090B"            /* ���......��..��. */
	$"0B09 0909 0707 0707 0707 0707 0707 0B09"            /* .���...........� */
	$"0707 0707 0707 0707 0707 0707 0707 0B09"            /* ...............� */
	$"0707 0505 0504 0504 0405 0405 0505 110D"            /* ...............� */
	$"0B07 0707 0705 0505 0D07 0909 0B0D 0B0B"            /* ........�.��.�.. */
	$"0709 0707 0707 0707 0707 0707 0609 0B07"            /* .�...........�.. */
	$"0707 0707 0707 0707 0705 0504 0405 0B09"            /* ...............� */
	$"0707 0707 0709 0909 090B 0909 0B0E 0907"            /* .....����.��..�. */
	$"0707 0707 0505 0504 0B0B 0B0C 0B09 0907"            /* .............��. */
	$"0907 0707 0707 0707 0707 0705 040B 0907"            /* �.............�. */
	$"0707 0707 0705 0705 0505 0505 0707 0B09"            /* ...............� */
	$"0505 0507 0705 070B 0B0D 0D0D 0D0B 0707"            /* .........����... */
	$"0707 0705 0505 0404 070D 0B0C 0909 0707"            /* .........�..��.. */
	$"0707 0707 0707 0707 0707 0705 060B 0707"            /* ................ */
	$"0707 0707 0705 0505 0505 0507 0709 0707"            /* .............�.. */
	$"0705 0505 050B 110D 0B09 0707 0707 0707"            /* .......�.�...... */
	$"0707 0505 0404 0404 040D 0B0B 0907 0707"            /* .........�..�... */
	$"0707 0707 0705 0505 0505 0505 060D 0707"            /* .............�.. */
	$"0705 0707 0507 0505 0505 0507 0707 0507"            /* ................ */
	$"0705 0507 1015 0B07 0707 0707 0707 0705"            /* ................ */
	$"0505 0504 0407 0404 060B 0B09 0907 0705"            /* ...........��... */
	$"0507 0505 0505 0505 0405 0505 070B 0707"            /* ................ */
	$"0705 0505 0707 0505 0505 0407 0707 0505"            /* ................ */
	$"0B05 0B12 130B 0707 0707 0707 0707 0505"            /* ................ */
	$"0505 0504 0409 0B0B 0606 0B07 0707 0505"            /* .....�.......... */
	$"0405 0405 0505 0504 0404 0505 0709 0707"            /* .............�.. */
	$"0707 0507 0707 0505 0405 0407 0705 0505"            /* ................ */
	$"0B0D 1511 0B07 0707 0707 0707 0707 0505"            /* .�.............. */
	$"0504 0404 0709 0707 0707 0B07 0707 0504"            /* .....�.......... */
	$"0504 0404 0404 0404 0405 0505 0907 0707"            /* ............�... */
	$"0707 0705 0507 0505 0404 0407 0707 0505"            /* ................ */
	$"070B 0907 0707 0707 0707 0707 0505 0504"            /* ..�............. */
	$"0404 0707 0705 0404 0704 0909 0B07 0404"            /* ..........��.... */
	$"0404 0404 0505 0404 0405 0504 0907 0707"            /* ............�... */
	$"0505 0505 0505 0504 0404 0405 0907 0705"            /* ............�... */
	$"0706 0907 0707 0707 0707 0505 0505 0404"            /* ..�............. */
	$"0407 0705 0504 0505 0707 0609 0707 0505"            /* ...........�.... */
	$"0404 0705 0505 0404 0405 0504 0B07 0707"            /* ................ */
	$"0505 0505 0505 0504 0404 0404 0B07 0706"            /* ................ */
	$"0406 0906 0707 0707 0505 0505 0505 0504"            /* ..�............. */
	$"0706 0505 0404 0404 0604 0606 0907 0705"            /* ............�... */
	$"0507 0505 0505 0404 0404 0406 0B07 0707"            /* ................ */
	$"0505 0707 0707 0504 0404 040B 0D07 0604"            /* ............�... */
	$"0406 0B06 0407 0707 0705 0504 0404 0606"            /* ................ */
	$"0606 0505 0405 0404 0704 0406 0607 0707"            /* ................ */
	$"0707 0707 0707 0707 0707 0B07 0707 0707"            /* ................ */
	$"0707 090B 0906 0604 0407 0B0B 0606 0404"            /* ..�.�........... */
	$"0406 0906 0407 0C09 0705 0404 0404 0607"            /* ..�....�........ */
	$"0705 0505 0505 0505 0707 0707 0909 0707"            /* ............��.. */
	$"0707 0707 0705 0705 0505 0907 0707 0707"            /* ..........�..... */
	$"0707 0707 0709 0909 0B0B 0606 0604 0404"            /* .....���........ */
	$"0604 0603 0407 0D0D 0704 0404 0101 0607"            /* ......��........ */
	$"0505 0505 0505 0505 0407 0707 0707 0707"            /* ................ */
	$"0505 0507 0707 0505 0505 0B07 0707 0707"            /* ................ */
	$"0707 0707 0707 0B0B 0904 0407 0704 0404"            /* ........�....... */
	$"0704 0406 0407 0909 0704 0404 0104 0905"            /* ......��......�. */
	$"0505 0507 0707 0504 0407 0707 0707 0707"            /* ................ */
	$"0505 0707 0707 0505 0505 0907 0707 0707"            /* ..........�..... */
	$"0707 0707 0707 0707 0504 0504 0707 0704"            /* ................ */
	$"0704 0406 0607 0707 0606 0604 0404 0505"            /* ................ */
	$"0505 0707 0707 0504 0407 0707 0707 0707"            /* ................ */
	$"0505 0505 0505 0505 0504 0607 0705 0505"            /* ................ */
	$"0707 0707 0505 0505 0504 0405 0509 0706"            /* .............�.. */
	$"0705 0404 0707 0707 0606 0606 0607 0505"            /* ................ */
	$"0505 0507 0707 0504 0406 0707 0707 0705"            /* ................ */
	$"0505 0505 0505 0505 0504 0607 0505 0505"            /* ................ */
	$"0707 0505 0505 0505 0504 0404 0504 0709"            /* ...............� */
	$"0709 0909 0707 0604 0404 0604 0607 0705"            /* .���............ */
	$"0505 0507 0707 0505 0406 0707 0707 0705"            /* ................ */
	$"0505 0505 0505 0505 0504 0609 0505 0505"            /* ...........�.... */
	$"0505 0505 0505 0505 0505 0404 0404 0404"            /* ................ */
	$"0404 0505 0507 0507 0704 0404 040B 0705"            /* ................ */
	$"0505 0505 0507 0505 0406 0707 0707 0705"            /* ................ */
	$"0505 0505 0505 0505 0505 040B 0705 0505"            /* ................ */
	$"0505 0505 0505 0505 0505 0504 0404 0404"            /* ................ */
	$"0505 0505 0504 0507 0704 0404 0604 0707"            /* ................ */
	$"0505 0505 0505 0505 0406 0707 0707 0505"            /* ................ */
	$"0505 0505 0505 0505 0505 040B 0705 0505"            /* ................ */
	$"0507 0707 0505 0505 0404 0405 0404 0404"            /* ................ */
	$"0405 0505 0505 0505 0505 0507 0405 0505"            /* ................ */
	$"0707 0507 0505 0504 0404 0707 0707 0507"            /* ................ */
	$"0505 0707 0505 0505 0504 040B 0705 0505"            /* ................ */
	$"0507 0707 0705 0505 0505 0504 0404 0504"            /* ................ */
	$"0505 0505 0505 0405 0405 0704 0405 0505"            /* ................ */
	$"0407 0707 0705 0704 0406 0907 0707 0505"            /* ..........�..... */
	$"0505 0707 0505 0505 0504 040B 0907 0505"            /* ............�... */
	$"0507 0707 0705 0505 0505 0404 0404 0404"            /* ................ */
	$"0405 0405 0404 0404 0404 0404 0405 0504"            /* ................ */
	$"0404 070B 0706 0606 0609 0907 0707 0504"            /* .........��..... */
	$"0707 0705 0705 0505 0504 0409 0907 0507"            /* ...........��... */
	$"0505 0505 0505 0505 0404 0404 0405 0405"            /* ................ */
	$"0505 0504 0404 0405 0404 0505 0505 0505"            /* ................ */
	$"0505 0507 0709 0604 060B 0707 0707 0707"            /* .....�.......... */
	$"0707 0505 0505 0504 0404 0409 0906 0507"            /* ...........��... */
	$"0505 0505 0505 0504 0404 0404 0405 0505"            /* ................ */
	$"0505 0404 0404 0404 0404 0505 0505 0505"            /* ................ */
	$"0505 0505 0707 0909 0B0B 0709 0707 0707"            /* ......��...�.... */
	$"0705 0705 0505 0505 0404 0407 0B04 0505"            /* ................ */
	$"0505 0504 0505 0404 0404 0404 0505 0505"            /* ................ */
	$"0404 0404 0404 0404 0404 0505 0505 0507"            /* ................ */
	$"0505 0505 0505 0505 0404 0604 0406 0607"            /* ................ */
	$"0707 0707 0505 0505 0505 0404 0D04 0404"            /* ............�... */
	$"0404 0404 0405 0505 0404 0404 0505 0404"            /* ................ */
	$"0404 0404 0404 0709 0B09 0707 0505 0507"            /* .......�.�...... */
	$"0505 0505 0505 0505 0404 0404 0404 0407"            /* ................ */
	$"0707 0707 0705 0505 0505 0404 0B06 0404"            /* ................ */
	$"0404 070B 0B09 0505 0404 0404 0405 0404"            /* .....�.......... */
	$"0404 0404 0407 0907 0707 0907 0505 0707"            /* ......�...�..... */
	$"0705 0505 0505 0505 0504 0405 0504 0606"            /* ................ */
	$"0707 0707 0507 0707 0504 0404 070D 0707"            /* .............�.. */
	$"0B0B 0B07 0707 0505 0505 0405 0505 0505"            /* ................ */
	$"0404 0404 0409 0707 0707 0705 0707 0505"            /* .....�.......... */
	$"0707 0707 0707 0707 0705 0504 0407 0404"            /* ................ */
	$"0707 0707 0707 0407 0707 0704 0710 0D0B"            /* ..............�. */
	$"0B07 0707 0707 0705 0704 0404 0405 0405"            /* ................ */
	$"0505 0404 0407 0709 0707 0505 0505 0505"            /* .......�........ */
	$"0505 0504 0405 0404 0705 0405 0705 0505"            /* ................ */
	$"0707 0707 0705 0505 0404 0707 0909 0706"            /* ............��.. */
	$"0607 0406 0707 0707 0706 0604 0404 0505"            /* ................ */
	$"0505 0404 0707 0707 0707 0505 0505 0404"            /* ................ */
	$"0505 0405 0504 0405 0507 0709 0705 0505"            /* ...........�.... */
	$"0505 0505 0505 0405 0405 0404 0707 0706"            /* ................ */
	$"0406 0604 0607 0707 0909 0606 0B09 0907"            /* ........��...��. */
	$"0707 0707 0B07 0707 0707 0705 0505 0405"            /* ................ */
	$"0505 0505 0505 0505 0505 070B 0705 0505"            /* ................ */
	$"0505 0505 0505 0505 0505 0504 0505 0704"            /* ................ */
	$"0404 0906 070B 0707 0707 090B 0B07 0909"            /* ..�.......�...�� */
	$"0707 070B 0B07 0707 0707 0705 0505 0505"            /* ................ */
	$"0505 0505 0505 0505 0507 0707 0705 0505"            /* ................ */
	$"0505 0505 0505 0505 0505 0505 0505 0404"            /* ................ */
	$"0406 0B0B 0B07 0507 0707 0707 0705 0707"            /* ................ */
	$"0505 0707 0706 0707 0706 0605 0505 0505"            /* ................ */
	$"0505 0505 0505 0504 0704 0505 0705 0505"            /* ................ */
	$"0505 0505 0501 0505 0504 0505 0505 0404"            /* ................ */
	$"0606 0604 0505 0504 0406 0605 0504 0707"            /* ................ */
	$"0707 0707 0706 0705 0409 0605 0505 0505"            /* .........�...... */
	$"0505 0505 0502 0504 0402 0205 0705 0505"            /* ................ */
	$"0505 0505 0505 0504 0505 0505 0202 0406"            /* ................ */
	$"0906 0605 0505 0104 0401 0405 0504 0707"            /* �............... */
	$"0707 0707 0707 0505 070B 0505 0505 0505"            /* ................ */
	$"0505 0505 0501 0505 0205 0202 0707 0505"            /* ................ */
	$"0504 0404 0404 0405 0505 0501 0102 050B"            /* ................ */
	$"0607 0705 0505 0504 0404 0405 0505 0707"            /* ................ */
	$"0707 0707 0707 0507 0907 0505 0505 0505"            /* ........�....... */
	$"0505 0505 0405 0505 0202 0202 0507 0505"            /* ................ */
	$"0501 0404 0404 0407 0504 0502 0201 070B"            /* ................ */
	$"0505 0505 0505 0505 0501 0502 0505 0707"            /* ................ */
	$"0707 0707 0707 0909 0705 0505 0505 0404"            /* ......��........ */
	$"0505 0405 0504 0404 0105 0502 0107 0705"            /* ................ */
	$"0101 0104 0405 0505 0505 0502 0102 0B07"            /* ................ */
	$"0505 0505 0505 0505 0505 0201 0505 0707"            /* ................ */
	$"0707 0707 0709 0707 0705 0505 0501 0404"            /* .....�.......... */
	$"0505 0404 0404 0404 0405 0402 0104 0705"            /* ................ */
	$"0201 0101 0404 0505 0404 0501 050A 1105"            /* ................ */
	$"0505 0505 0505 0505 0505 0502 0505 0507"            /* ................ */
	$"0707 0407 0907 0707 0705 0505 0504 0000"            /* ....�........... */
	$"0000 0000 0019 0000 FFFF FFFF 9999 0001"            /* ........������.. */
	$"FFFF FFFF 6666 0002 FFFF FFFF 3333 0003"            /* ����ff..����33.. */
	$"FFFF CCCC 9999 0004 FFFF CCCC 6666 0005"            /* ���̙�..����ff.. */
	$"FFFF CCCC 3333 0006 FFFF 9999 6666 0007"            /* ����33..����ff.. */
	$"FFFF 9999 3333 0008 FFFF 6666 6666 0009"            /* ����33..��ffff.� */
	$"FFFF 6666 3333 000A CCCC 9999 3333 000B"            /* ��ff33..�̙�33.. */
	$"CCCC 6666 3333 000C CCCC 6666 0000 000D"            /* ��ff33..��ff...� */
	$"CCCC 3333 3333 000E CCCC 3333 0000 000F"            /* ��3333..��33.... */
	$"9999 6666 3333 0010 9999 3333 3333 0011"            /* ��ff33..��3333.. */
	$"9999 3333 0000 0012 6666 3333 0000 0013"            /* ��33....ff33.... */
	$"6666 0000 0000 0014 3333 0000 0000 0015"            /* ff......33...... */
	$"7777 0000 0000 0016 5555 0000 0000 0017"            /* ww......UU...... */
	$"4444 0000 0000 0018 2222 0000 0000 0019"            /* DD......""...... */
	$"1111 0000 0000"                                     /* ...... */
};

data 'ppat' (129) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8020 0000 0000 0040 0040 0000 0000 0000"            /* � .....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0004 0001"            /* ...H...H........ */
	$"0004 0000 0000 0000 084E 0000 0000 6CC6"            /* .........N....l� */
	$"6CCC CCC6 776C CCCC 6CC6 A67A 46CC C6CC"            /* l���wl��lƦzF��� */
	$"C666 CCCC A667 1174 476A 6CCC 6CCC 66AA"            /* �f�̦g.tGjl�l�f� */
	$"4766 6777 AA46 CCC6 CCCC C6C6 A6CC CCCC"            /* Gfgw�F�����Ʀ��� */
	$"C66C CCCC 4A7A AA76 A67A 4666 6C6C 76A4"            /* �l��Jz�v�zFfllv� */
	$"66C6 6416 C44C CCCC CCC6 4677 A4C6 C6CC"            /* f�d.�L����Fw���� */
	$"CC6C 6CC4 6677 A147 4646 4CC7 6A6C A4AA"            /* �ll�fw�GFFL�jl�� */
	$"676A 4A4C C476 CCCC CCCC 6AAC 66A6 CCC6"            /* gjJL�v����j�f��� */
	$"6CCC CC66 C67A 7A76 4676 7746 66CC 6766"            /* l��f�zzvFvwFf�gf */
	$"6747 4AAA 4746 C6CC C6C6 67CC 6776 66CC"            /* gGJ�GF����g�gvf� */
	$"CCCC CC64 A677 4646 7616 6674 66CC 6ACC"            /* ���d�wFFv.ftf�j� */
	$"46A6 4464 4646 676C CCCC 667C 6C67 CC6C"            /* F�DdFFgl��f|lg�l */
	$"6666 7A67 6474 676A 1676 AA64 6667 CC66"            /* ffzgdtgj.v�dfg�f */
	$"44A7 AA16 4667 4476 66CC A766 C676 C6CC"            /* D��.FgDvf̧f�v�� */
	$"6A74 66A4 A147 4767 6747 6674 6A76 6CCC"            /* jtf��GGggGftjvl� */
	$"C6AA 4A76 4A76 464A 66C6 77A7 6C67 C6CC"            /* ƪJvJvFJf�w�lg�� */
	$"66A4 CC7A 7A76 447A 1674 47A6 47A6 66CC"            /* f��zzvDz.tG�G�f� */
	$"CC6C 641A A766 767A 416C C67A 6CCC 66CC"            /* �ld.�fvzAl�zl�f� */
	$"CCCC CC67 4646 7616 6446 6664 6A74 44CC"            /* ���gFFv.dFfdjtD� */
	$"CCCC CC67 AA66 7766 7666 77C6 6666 646C"            /* ���g�fwfvfw�ffdl */
	$"4466 76A4 676A 1677 A464 4646 7646 C66C"            /* Dfv�gj.w�dFFvF�l */
	$"CCCC CCCC A674 4676 476C 67CC 6C67 6CC6"            /* ���̦tFvGlg�lgl� */
	$"6666 CA67 4767 6747 7776 7776 6464 CCC6"            /* ff�gGggGwvwvdd�� */
	$"CCCC CCC4 C6A7 767A 46AC 7767 7CC9 C67C"            /* ����ƧvzF�wg|��| */
	$"76C6 417A 747A 17A7 6467 4766 6666 66CC"            /* v�Aztz.�dgGffff� */
	$"CCCC CCC7 CCC7 A776 7767 77CC 4764 67A6"            /* �����ǧvwgw�Gdg� */
	$"7C66 C676 A646 6464 6761 6466 6A64 CCCC"            /* |f�v�Fddgadfjd�� */
	$"CCCC CCCC C67C 7777 7766 6667 4C4A CA44"            /* �����|wwwffgLJ�D */
	$"67C6 4647 7667 A676 A167 6A76 7676 6CCC"            /* g�FGvg�v�gjvvvl� */
	$"CCCC CC6C C67C A666 77A4 7474 4474 4A76"            /* ���l�|�fw�ttDtJv */
	$"666A C676 6666 7776 7674 7667 A466 6CCC"            /* fj�vffwvvtvg�fl� */
	$"CCCC CC6C CC7C C177 76A6 4676 1664 6446"            /* ���l�|�wv�Fv.ddF */
	$"774A 7666 67CA A67C A167 447A C666 CC6C"            /* wJvfgʦ|�gDz�f�l */
	$"CCCC CC46 C1CC 66C6 6677 6A16 77A4 6446"            /* ���F��f�fwj.w�dF */
	$"67A7 4C67 4A64 7676 6744 6666 446C C6CC"            /* g�LgJdvvgDffDl�� */
	$"66CC C666 7CC6 C6C6 C477 6767 4777 7676"            /* f��f|����wggGwvv */
	$"6464 7C6C A1C4 47A1 6716 4464 6CCC CCC6"            /* dd|l��G�g.Ddl��� */
	$"CC7C C66C C6CC 6C67 7774 7A17 A764 6764"            /* �|�l��lgwtz.�dgd */
	$"6476 C66C CC47 6166 4466 C777 CCCC C677"            /* dv�l�GafDf�w���w */
	$"76C7 67CC CCCC CCCC 7776 4664 6467 7A77"            /* v�g�����wvFddgzw */
	$"6764 7676 6ACC 677A 4644 6C64 6CCC C477"            /* gdvvj�gzFDldl��w */
	$"7676 6CC7 CCCC C6CC C466 67A6 76A7 6464"            /* vvl������fg�v�dd */
	$"A46C 474C C866 6677 7767 7A6A C6CC C667"            /* �lGL�ffwwgzj���g */
	$"6767 446C C6CC CCCC 6CC6 6677 7614 A4AA"            /* ggDl����l�fwv.�� */
	$"4747 6767 427C 7AC6 4674 7C6C C66C 7C67"            /* GGggB|z�Ft|l�l|g */
	$"74C4 4ACC 7CCC CCCC 64C7 6676 74A7 A6AA"            /* t�J�|���d�fvt��� */
	$"7644 7A16 7446 1697 6C77 C16A CCC6 C771"            /* vDz.tF.�lw�j���q */
	$"AC66 AACC CCCC CCCC C7C7 446A 7C41 6476"            /* �f��������Dj|Adv */
	$"4676 1664 466A 0694 666A 47AC 6CCC 664A"            /* Fv.dFj.�fjG�l�fJ */
	$"4CCA 1AC6 C6C6 CCCC CC66 6CC6 C7C4 6A66"            /* L�.������fl���jf */
	$"A4A6 77A4 6467 6C17 CAA1 7476 C66C 4C7A"            /* ��w�dgl.ʡtv�lLz */
	$"AA61 A46C CCCC CCCC CC6C 7767 4AC4 676C"            /* �a�l�����lwgJ�gl */
	$"7766 6674 6C67 C790 A44A 4466 CC6C C6CC"            /* wfftlgǐ�JDf�l�� */
	$"41A1 166C CCCC 66CC CCC6 C644 4764 7476"            /* A�.l��f����DGdtv */
	$"6466 7777 CC76 7616 194A A466 6C6C CCC6"            /* dfww�vv..J�fll�� */
	$"C411 66CC CCC6 66CC CC6C 6664 A474 6476"            /* �.f���f��lfd�tdv */
	$"7477 4676 6666 C7C6 7416 747C CCC6 6C66"            /* twFvff��t.t|��lf */
	$"CCC4 CCCC CC66 CCCC CCCC C746 7644 C676"            /* �����f�����FvD�v */
	$"A6A4 7777 A666 C76A 6141 CC6C 6C6C CCCC"            /* ��ww�f�jaA�lll�� */
	$"C6CC CC6C C666 6CCC CC6C 67CC 6777 6AC1"            /* ���l�fl��lg�gwj� */
	$"77A7 7664 76A6 A446 4444 A6CC C6CC 66C6"            /* w�vdv��FDD����f� */
	$"6C6C CC6C 6C64 46CC CCC6 644A 1A74 7176"            /* ll�lldF���dJ.tqv */
	$"7646 4A4A AAAA AAA1 4A47 416C 66C6 CC66"            /* vFJJ����JGAlf��f */
	$"C6CC CCCC CC6A A7CC 6C6C 64A4 114A 7A41"            /* �����j��lld�.JzA */
	$"4A4A AAA4 41A1 AA4A 7766 64A6 6CCC 6666"            /* JJ��A��Jwfd�l�ff */
	$"CC6C CC6C 66A1 AA76 6CC6 644A 4464 6A4A"            /* �l�lf��vl�dJDdjJ */
	$"7A6A 6AAA C446 46CC CCCC 6CC9 A6C6 C66C"            /* zjj��FF���lɦ��l */
	$"7CC6 6666 7611 1AA4 76C6 677A AA44 74A4"            /* |�ffv..�v�gz�Dt� */
	$"1647 4746 C667 CCCC CCC6 C66C A96C 6CC4"            /* .GGF�g�����l�ll� */
	$"CCC6 CC6C 6664 11A1 76C6 C774 4A6A 41C4"            /* ���lfd.�v��tJjA� */
	$"4AAA 4AAA 176C CCC6 C666 CCCC CC96 6C67"            /* J�J�.l���f��̖lg */
	$"CCCC 6C6C C6C6 C1AA 76C7 6C67 4AAA 4A6A"            /* ��ll����v�lgJ�Jj */
	$"4A4A AAAA 47CC 66C6 66C6 CC66 6C59 6677"            /* JJ��G�f�f��flYfw */
	$"CC66 6667 6667 C741 7666 67A4 A4AA A1A1"            /* �ffgfg�Avfg����� */
	$"4AA1 4AAA C46C CCCC 7C6C 6CCC CCC7 1A4A"            /* J�J��l��|ll���.J */
	$"6AA6 667C 7766 6C71 AC6C CC74 4471 4144"            /* j�f|wflq�l�tDqAD */
	$"4A44 A444 64C6 CCC6 C666 6C6C 6C6C 1991"            /* JD�Dd����fllll.� */
	$"1AA6 47C6 CCC6 C664 466C A474 4A74 6CC6"            /* .�G����dFl�tJtl� */
	$"C74A 4AA1 496C 66C6 6C66 66CC CCC6 1A54"            /* �JJ�Ilf�lff���.T */
	$"919A 1A6C 7C6C 6C6C 6C6C 7C61 AA46 C6CC"            /* ��.l|lllll|a�F�� */
	$"6144 4444 4476 6664 6C66 6666 6CCC A171"            /* aDDDDvfdlfffl̡q */
	$"1111 111C CCCC CCC6 C66C 66C6 76AC C6C6"            /* ....�����lf�v��� */
	$"CA4A 4A6A 6A6C 6CCC 6C6C 6C6C CC66 AA41"            /* �JJjjll�llll�f�A */
	$"4411 111C 666C 6C66 6666 676A C44A CA66"            /* D...fllfffgj�J�f */
	$"6AAA A4AA 4677 CCC6 C6C6 C6CC 666C 1114"            /* j���Fw������fl.. */
	$"1444 1117 6667 C7CA CA4A AA66 7AA6 CCCC"            /* .D..fg���J�fz��� */
	$"C4AA 464A 4474 66CC 6667 6766 CCC6 4A4A"            /* ĪFJDtf�fggf��JJ */
	$"44AA A117 4766 6666 6414 7A76 61A1 CC6C"            /* D��.Gfffd.zva��l */
	$"6C6A A461 A97A 7C66 6C67 6CC7 6CC6 14A6"            /* lj�a�z|flgl�l�.� */
	$"6A11 1141 4A76 7674 7A44 714A 71A1 1AAA"            /* j..AJvvtzDqJq�.� */
	$"166A A76A 4AA1 A66C 66C7 666C CC6C 1A46"            /* .j�jJ��lf�fl�l.F */
	$"641A 44A4 7776 CC67 67A6 4774 4A1A 1414"            /* d.D�wv�gg�GtJ... */
	$"A74A 7A41 41AA A4A6 6C6C 6C6C C666 AAAA"            /* �JzAA���llll�f�� */
	$"A1AA AAA1 6771 C6C6 C667 6666 A77A 4444"            /* ����gq���gff�zDD */
	$"4414 4441 A141 A411 4C6C 66CC C7A6 41AA"            /* D.DA�A�.Llf�ǦA� */
	$"AA1A A444 7677 6C67 676A 4A17 4A4A 4444"            /* �.�DvwlggjJ.JJDD */
	$"A444 6AA4 A14A A141 1646 6CCC C6A6 14A4"            /* �Dj��J�A.Fl�Ʀ.� */
	$"6AAA 66B6 66C6 6676 46A4 AAA1 4171 41AA"            /* j�f�f�fvF���AqA� */
	$"AAAA 4AA1 A14A A414 AA66 4466 6647 AAA1"            /* ��J��J�.�fDffG�� */
	$"17AA 447A AA66 CCCC 6644 AA74 7744 7444"            /* .�Dz�f��fD�twDtD */
	$"7444 C44A 4141 AAAA 1AAA A74A 6644 4744"            /* tD�JAA��.��JfDGD */
	$"74A4 4946 7A7C 6C6C A711 41A1 617A 7A4A"            /* t�IFz|ll�.A�azzJ */
	$"1AA1 4AA1 A4A4 A464 6AA4 4A76 714A 7667"            /* .�J����dj�JvqJvg */
	$"A7A6 4A76 4766 46C6 7CC1 AA41 44A4 A444"            /* ��JvGfF�|��AD��D */
	$"4A74 A44A 4A6A AA7C 66A1 A1A1 1111 C664"            /* Jt�JJj�|f���..�d */
	$"66C6 67C6 776C 7CCC CCC6 A667 6A7A 7A7A"            /* f�g�wl|��Ʀgjzzz */
	$"AA4A AAA4 A7AA A1AC C4AA 4474 4A4A CCA1"            /* �J������ĪDtJJ̡ */
	$"AAA1 AC66 6666 66CC CC64 446A 464A AAAA"            /* ���ffff��dDjFJ�� */
	$"4AAA 14C6 C7C7 747C CCA7 6CCA AAAA C6AA"            /* J�.���t|̧lʪ�ƪ */
	$"1A41 66C6 AACC 7CCC 6C4A 4A64 6174 4A4A"            /* .Afƪ�|�lJJdatJJ */
	$"AA4A 476C 6CC7 64AC C6C6 C6C6 A911 676A"            /* �JGll�d����Ʃ.gj */
	$"A446 6666 69A6 6666 7641 4144 4646 AAA6"            /* �Fffi�ffvAADFF�� */
	$"A141 76CC C6C6 6416 CC6C C666 44AA 119A"            /* �Av���d.�l�fD�.� */
	$"A76A A646 6781 6C64 4A4A 4A44 A4A6 A6AA"            /* �j�Fg�ldJJJD���� */
	$"1AA1 4477 66C7 C4A6 CCC6 664A 6A14 1646"            /* .�Dwf�Ħ��fJj..F */
	$"6A16 6CCC 6C44 6C66 A44A 67A6 4A77 47C6"            /* j.l�lDlf�Jg�JwG� */
	$"4141 7CC7 6CCC 6CAA CCCC CA7A 7444 4AA4"            /* AA|�l�l����ztDJ� */
	$"74C4 C666 4166 CC67 AAAA 4A46 4A44 76CC"            /* t��fAf�g��JFJDv� */
	$"C6A4 A6C6 CC6C CCAA ACCC CC66 6C4A 41AC"            /* Ƥ���l̪���flJA� */
	$"CC4A CC6C C4A4 666A AAAA AA46 614A 7CCC"            /* �J�lĤfj���FaJ|� */
	$"6611 17C6 C666 66AA 17C6 666C C66A 4446"            /* f..��ff�.�fl�jDF */
	$"CCC6 C6CC CCCC CC6A AA6A 417A 7AAA 7C6C"            /* �������j�jAzz�|l */
	$"CCA7 46CC 6CCC 6776 666C CCCC CCCC 66CC"            /* ̧F�l�gvfl����f� */
	$"CCC6 CCCC CCCC CCC6 4A7A 7677 6A74 16CC"            /* ��������Jzvwjt.� */
	$"6646 6C6C 6C66 AAAA 4176 C6C6 CCCC A76C"            /* fFlllf��Av���̧l */
	$"CC6C 7CCC CC66 CCC6 7144 7177 44AA 936C"            /* �l|��f��qDqwD��l */
	$"6646 6CC6 6A6A 6A76 6A44 CCCC CCCC CC66"            /* fFl�jjjvjD�����f */
	$"C6CA C6C6 6666 CC66 7464 767C C466 4464"            /* ����ff�ftdv|�fDd */
	$"AA7C C466 4AAA AA41 7171 4666 C6CC 0000"            /* �|�fJ��AqqFf��.. */
	$"0000 0000 000C 0000 9999 9999 9999 0001"            /* ........������.. */
	$"6666 6666 6666 0002 6666 3333 6666 0003"            /* ffffff..ff33ff.. */
	$"3333 6666 6666 0004 3333 6666 3333 0005"            /* 33ffff..33ff33.. */
	$"3333 3333 6666 0006 3333 3333 3333 0007"            /* 3333ff..333333.. */
	$"0000 5555 0000 0008 AAAA AAAA AAAA 0009"            /* ..UU....������.� */
	$"7777 7777 7777 000A 5555 5555 5555 000B"            /* wwwwww..UUUUUU.. */
	$"4444 4444 4444 000C 2222 2222 2222"                 /* DDDDDD.."""""" */
};

data 'ppat' (131) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8040 0000 0000 0040 0040 0000 0000 0000"            /* �@.....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0008 0001"            /* ...H...H........ */
	$"0008 0000 0000 0000 104E 0000 0000 1307"            /* .........N...... */
	$"1209 070A 1213 0802 0302 1112 1513 0906"            /* .�............�. */
	$"0703 0203 0212 1103 0712 0302 1103 0602"            /* ................ */
	$"0210 0203 0502 0202 0201 0202 0206 0310"            /* ................ */
	$"0305 0606 0602 0210 0302 1103 0612 0713"            /* ................ */
	$"1308 1206 0202 1011 1209 0812 0807 0706"            /* .........�...... */
	$"0602 1002 1302 0211 0702 1103 0612 0712"            /* ................ */
	$"1207 0602 1110 0310 0311 0302 0202 0202"            /* ................ */
	$"1102 0307 0203 1106 1107 1206 0713 0A13"            /* ................ */
	$"1202 0202 0311 0306 0711 1113 1112 1103"            /* ................ */
	$"0607 1313 0602 0306 0602 0711 0607 0303"            /* ................ */
	$"0612 0815 0915 0713 1313 0612 1210 1007"            /* ....�........... */
	$"0609 1306 1106 0713 0709 0609 0909 0203"            /* .�.......�.���.. */
	$"0202 1203 1002 0207 0302 0702 0203 0202"            /* ................ */
	$"0212 1207 0306 0607 0311 0203 0203 1102"            /* ................ */
	$"0203 0211 0703 1314 0707 0709 0712 0706"            /* ...........�.... */
	$"1207 0713 0707 1313 1312 0A07 1103 0711"            /* ................ */
	$"0206 0202 1106 1203 0206 0210 0201 0206"            /* ................ */
	$"1207 0603 0506 0706 0203 1006 0710 0202"            /* ................ */
	$"1314 1507 0302 0602 0211 0302 1003 1208"            /* ................ */
	$"0712 1202 0603 0907 1202 0211 0711 1006"            /* ......�......... */
	$"1206 0612 1307 1213 1306 0303 1206 1309"            /* ...............� */
	$"0908 1211 0412 0803 0607 1313 1307 1314"            /* �............... */
	$"0909 0603 1313 0712 0602 0606 0302 0302"            /* ��.............. */
	$"1307 0603 1107 1103 1103 0210 0202 0702"            /* ................ */
	$"0203 0607 0712 0703 0607 060A 130D 0A08"            /* .............�.. */
	$"1207 0311 1312 1102 1209 0A13 0612 1309"            /* .........�.....� */
	$"0907 0714 0713 0706 1002 0602 0712 1109"            /* �..............� */
	$"1210 0203 1208 0607 0206 0312 1212 0306"            /* ................ */
	$"1306 0706 0613 0207 1106 1212 1207 0312"            /* ................ */
	$"0703 1107 0711 030A 1312 0302 1108 130A"            /* ................ */
	$"1103 0602 0306 0203 070D 1309 1202 0713"            /* .........�.�.... */
	$"0303 0611 0211 0711 0603 1112 0713 1107"            /* ................ */
	$"0607 0607 0807 1212 0707 0706 0703 0611"            /* ................ */
	$"0206 0709 0607 0713 0607 1113 0807 0711"            /* ...�............ */
	$"0202 0206 1306 0612 1312 0707 090D 150D"            /* ............��.� */
	$"130A 1307 0D07 0603 1111 1313 0802 0607"            /* ....�........... */
	$"0709 1409 1206 0306 0612 0702 1102 0607"            /* .�.�............ */
	$"1212 0703 0612 1307 0311 0707 1211 0206"            /* ................ */
	$"0306 0913 0703 0713 1309 0612 0703 1203"            /* ..�......�...... */
	$"0712 0714 0D15 1307 0707 0A12 0211 0712"            /* ....�........... */
	$"0306 0202 0706 0702 0303 1003 0706 1207"            /* ................ */
	$"0603 1111 0306 1202 0706 0606 0202 0611"            /* ................ */
	$"1107 0303 120A 1309 0702 0712 0211 0210"            /* .......�........ */
	$"0202 1103 0203 0212 0609 0302 0306 0302"            /* .........�...... */
	$"0703 0606 1002 0210 0305 0312 1113 0711"            /* ................ */
	$"0307 1207 0707 0203 1212 0707 0606 0207"            /* ................ */
	$"0709 0916 0711 0202 0112 0203 0612 0202"            /* .��............. */
	$"0203 0607 1111 1103 0603 0211 0211 1213"            /* ................ */
	$"0607 1207 1212 1207 0612 0712 0712 0203"            /* ................ */
	$"0611 0211 0612 1213 0712 0306 0608 130D"            /* ...............� */
	$"0912 0A13 1106 0306 0703 0211 1102 1013"            /* �............... */
	$"1213 0A06 1203 0706 0706 1206 0812 0709"            /* ...............� */
	$"1313 1306 0707 1207 1207 0913 0907 1207"            /* ..........�.�... */
	$"1102 0303 0203 0203 0302 1102 0207 1307"            /* ................ */
	$"1207 0602 0302 0603 1103 0206 0703 1307"            /* ................ */
	$"0607 1207 1207 1206 0A06 0311 0706 1308"            /* ................ */
	$"0707 0302 1102 0612 0312 0702 0302 0311"            /* ................ */
	$"0206 1313 1302 0602 0210 0203 1311 0311"            /* ................ */
	$"0211 0211 0203 0211 0706 1207 0607 0606"            /* ................ */
	$"0812 0712 0202 0213 0211 0707 1313 1311"            /* ................ */
	$"0611 0312 0312 0702 1106 0211 0211 1106"            /* ................ */
	$"130A 1306 0212 1213 0602 0306 0307 0706"            /* ................ */
	$"0211 0203 0612 0709 0606 0712 150D 1407"            /* .......�.....�.. */
	$"1312 0302 1012 1207 0306 0612 0707 0202"            /* ................ */
	$"0202 0306 0713 0612 0302 0312 0712 1107"            /* ................ */
	$"0713 0707 0909 0703 0212 1213 1212 0212"            /* ....��.......... */
	$"1206 0306 0207 0603 0207 1307 0609 0312"            /* .............�.. */
	$"0712 0706 1408 1206 0202 0703 1212 1002"            /* ................ */
	$"1206 0712 0302 0202 0606 1203 0203 0713"            /* ................ */
	$"1302 1002 0203 0211 1207 090A 0906 0607"            /* ..........�.�... */
	$"0703 0602 1206 0711 0312 0302 0602 0307"            /* ................ */
	$"0603 1107 1207 1307 0909 1206 0302 1207"            /* ........��...... */
	$"0606 1302 1206 0306 0707 0712 1313 1203"            /* ................ */
	$"0210 0203 1201 1002 0211 1203 0306 0A06"            /* ................ */
	$"1207 1107 1207 0611 0602 1113 0706 1206"            /* ................ */
	$"0503 0606 0612 0203 0203 0607 0712 0312"            /* ................ */
	$"1307 0607 0602 1213 1213 1212 0706 0706"            /* ................ */
	$"1103 0712 1106 0712 1414 0711 1207 0603"            /* ................ */
	$"0203 1103 0306 0207 0607 0603 0203 0706"            /* ................ */
	$"0706 0202 0202 1002 1007 0306 1102 0713"            /* ................ */
	$"0712 0306 0213 1307 0713 0807 0602 0311"            /* ................ */
	$"0312 1206 0706 0312 0707 030A 1312 0302"            /* ................ */
	$"1102 0309 0706 0302 0303 0607 1112 1102"            /* ...�............ */
	$"030F 0211 0306 0302 0302 1003 0203 1206"            /* ................ */
	$"0306 0206 1208 0706 0706 1103 1107 1307"            /* ................ */
	$"1207 0712 0206 0712 1212 1306 0206 0202"            /* ................ */
	$"0603 0705 0611 0712 1213 0703 0607 0602"            /* ................ */
	$"0206 1207 1307 1206 1212 0706 0206 0813"            /* ................ */
	$"1306 0607 1102 0312 1304 1111 0606 0612"            /* ................ */
	$"0712 0711 0809 1307 1313 0703 1202 1103"            /* .....�.......... */
	$"1309 0913 0706 0711 0707 0606 0706 0312"            /* .��............. */
	$"0907 0809 0706 1207 0A09 1307 090A 1307"            /* �..�.....�..�... */
	$"0307 0706 1312 090A 0605 0307 0707 0713"            /* ......�......... */
	$"1312 0306 0707 1315 0907 0602 0202 1113"            /* ........�....... */
	$"0713 1207 1208 0606 1103 1112 0806 1307"            /* ................ */
	$"0613 1207 0607 0306 0607 0313 0909 0602"            /* ............��.. */
	$"0606 0312 0807 1306 0312 1212 1413 1207"            /* ................ */
	$"0203 0712 1309 0712 0206 0306 0612 0A13"            /* .....�.......... */
	$"0712 0202 0302 0206 0712 0713 1107 0703"            /* ................ */
	$"0703 0211 0311 0707 1207 1213 0807 0311"            /* ................ */
	$"0311 0707 0606 0703 1107 0311 0311 0913"            /* ..............�. */
	$"1213 0607 0606 0203 0311 0206 0714 1307"            /* ................ */
	$"1203 1102 0606 130A 1307 1207 0306 0311"            /* ................ */
	$"1002 0602 0606 1212 0712 0712 1211 1102"            /* ................ */
	$"0211 1207 1103 0102 0202 0707 1307 0302"            /* ................ */
	$"0203 1207 0306 0712 0703 0603 0602 0310"            /* ................ */
	$"0706 0712 0A09 1413 0712 1312 0607 1102"            /* .....�.......... */
	$"0212 0712 0707 0706 0602 0306 0203 0206"            /* ................ */
	$"1307 1202 0711 0212 1212 0612 0210 0202"            /* ................ */
	$"0612 0706 0607 0907 1205 0711 1207 1113"            /* ......�......... */
	$"0703 0606 0608 0907 0607 0602 0603 0212"            /* ......�......... */
	$"0914 1313 0712 0603 0203 1002 0202 0311"            /* �............... */
	$"0306 0312 1307 120A 1207 1203 0206 0212"            /* ................ */
	$"0706 0202 1213 0606 0212 0307 0907 1207"            /* ............�... */
	$"0212 0307 0607 0210 0312 0307 0602 1208"            /* ................ */
	$"1307 0203 0306 0603 0606 0307 0611 0707"            /* ................ */
	$"0607 0712 0602 0303 0312 0306 1203 1212"            /* ................ */
	$"0302 1113 0703 0202 1003 0613 0206 0712"            /* ................ */
	$"1206 1106 0302 1002 1111 1207 0607 1211"            /* ................ */
	$"0302 0606 0703 0202 1107 1306 0606 1212"            /* ................ */
	$"0706 0602 0202 1105 0602 0205 0311 0706"            /* ................ */
	$"0206 0707 1211 0602 0607 0607 1206 1203"            /* ................ */
	$"0607 0707 1212 1414 0B07 1103 0102 0307"            /* ................ */
	$"1111 0202 0211 0606 0712 0707 0807 0607"            /* ................ */
	$"1203 0602 0306 0602 0306 1213 0713 1206"            /* ................ */
	$"0713 1212 0302 1103 1512 0703 0609 0702"            /* .............�.. */
	$"0706 1309 0B13 1207 0607 1307 0607 0611"            /* ...�............ */
	$"0203 0203 1003 0607 1312 1306 0606 0306"            /* ................ */
	$"1111 0303 1213 0712 1307 0713 0713 0707"            /* ................ */
	$"1207 1407 0602 0613 0706 0302 0603 0212"            /* ................ */
	$"0606 0311 0202 0607 0612 0203 0612 0707"            /* ................ */
	$"0611 0613 0709 0712 0715 0811 0203 0706"            /* .....�.......... */
	$"0203 0511 0702 0313 0706 1203 0712 1203"            /* ................ */
	$"0606 0211 0209 0807 0211 0212 0706 0302"            /* .....�.......... */
	$"0203 0711 1107 1203 0602 0111 0712 1312"            /* ................ */
	$"0707 1207 1309 1306 0807 0202 1107 0602"            /* .....�.......... */
	$"0302 0607 0306 0703 0307 0606 1202 0202"            /* ................ */
	$"1103 1002 1207 1113 0813 1212 0201 0203"            /* ................ */
	$"1207 1107 1313 1307 0302 0713 1207 0203"            /* ................ */
	$"1213 0A09 0A06 0707 0610 1002 1103 0706"            /* ...�............ */
	$"1111 0706 1207 1213 1212 0307 0211 1102"            /* ................ */
	$"0302 0613 0703 1302 0703 0707 0602 1111"            /* ................ */
	$"0603 0606 0711 0302 1002 0611 0306 0606"            /* ................ */
	$"0302 1003 1007 0806 0602 0308 1212 0603"            /* ................ */
	$"0706 0708 0713 1307 1307 1103 0103 0607"            /* ................ */
	$"1213 0702 1011 0203 0201 1102 0213 0807"            /* ................ */
	$"0712 070B 1303 0202 1002 1207 1207 0607"            /* ................ */
	$"1107 0602 1112 0206 0706 0606 0712 0206"            /* ................ */
	$"0608 1306 1213 0712 0602 1111 0707 1206"            /* ................ */
	$"0712 0206 0202 1010 0306 0210 0306 0209"            /* ...............� */
	$"090A 1307 0210 1213 1208 1207 0907 1206"            /* �...........�... */
	$"0712 0715 0A13 1308 0607 0712 0706 1213"            /* ................ */
	$"0709 0607 0A13 1207 0602 0707 1213 0708"            /* .�.............. */
	$"0602 0602 0312 0713 1107 1216 1507 0606"            /* ................ */
	$"1212 1203 0607 1103 0715 0809 0603 0203"            /* ...........�.... */
	$"0608 1412 0A13 0706 0302 0303 0711 0311"            /* ................ */
	$"0603 0712 1312 0703 0313 1212 0706 1202"            /* ................ */
	$"0312 0603 1212 1615 0B13 1307 1106 140A"            /* ................ */
	$"1303 0202 0706 0607 1207 0607 0602 1111"            /* ................ */
	$"1313 0306 0603 0302 1111 0606 0203 1307"            /* ................ */
	$"0712 0606 0202 0311 0706 0307 0306 0203"            /* ................ */
	$"1202 0709 0A0A 0902 0711 0712 0302 0606"            /* ...�..�......... */
	$"0611 0606 0102 0206 1312 0803 0203 0715"            /* ................ */
	$"0A12 0713 0706 0211 0712 0712 0612 0612"            /* ................ */
	$"0607 0706 1212 0712 0603 0211 0203 130C"            /* ................ */
	$"1309 1212 1213 0613 0603 1111 110A 1204"            /* .�.............. */
	$"0202 0203 1213 0707 0607 0502 1011 1307"            /* ................ */
	$"0612 1207 0606 0607 1207 1207 0713 0707"            /* ................ */
	$"1307 0603 0206 1002 0202 1206 130D 0812"            /* .............�.. */
	$"0707 1308 1207 0211 0314 0707 1207 1112"            /* ................ */
	$"1306 0612 0712 0909 0712 0310 0707 1207"            /* ......��........ */
	$"0603 0210 0202 1103 1206 0711 0302 1312"            /* ................ */
	$"0812 0706 0712 0712 0606 0311 1306 0706"            /* ................ */
	$"0603 0711 0603 0302 0602 0210 0703 0603"            /* ................ */
	$"0202 0807 1103 0302 1103 0202 0606 0812"            /* ................ */
	$"0602 0202 0310 0202 0203 1206 1309 1207"            /* .............�.. */
	$"1312 0714 0712 0311 0307 1307 0807 0302"            /* ................ */
	$"0212 1206 0402 1207 1202 1002 0302 0202"            /* ................ */
	$"1012 0310 0311 0210 0302 1003 1113 0602"            /* ................ */
	$"0210 0612 0202 1003 1107 0307 1207 0306"            /* ................ */
	$"1103 0603 0202 0302 0612 1103 0503 0211"            /* ................ */
	$"0607 0712 1012 1207 0603 0713 1212 1012"            /* ................ */
	$"0703 0202 0212 130A 1203 0507 150A 0706"            /* ................ */
	$"0306 0712 0312 1107 0611 1107 0203 0603"            /* ................ */
	$"0202 0302 1010 0206 0907 0709 1202 1107"            /* ........�..�.... */
	$"1212 0203 0607 0306 0206 1313 0307 0706"            /* ................ */
	$"0606 0612 0713 1212 0206 080D 0906 0307"            /* ...........��... */
	$"1308 1205 0306 1209 0A07 0806 1206 0711"            /* .......�........ */
	$"0206 1002 1107 090D 0712 0906 0206 1307"            /* ......��..�..... */
	$"0907 0913 0706 1102 0312 0702 0713 1212"            /* �.�............. */
	$"0702 0712 1515 0702 0107 1312 0703 1110"            /* ................ */
	$"0202 0302 0602 0707 1306 1207 0813 0202"            /* ................ */
	$"1207 0712 1207 1202 0306 0202 0607 1207"            /* ................ */
	$"1206 0702 0302 0603 1313 0712 1302 0311"            /* ................ */
	$"0715 130B 1307 0606 0A13 0602 0210 0706"            /* ................ */
	$"1212 0202 1208 1514 0607 0606 0602 0312"            /* ................ */
	$"1312 0606 0803 0211 0202 1006 0612 0306"            /* ................ */
	$"0306 0211 1103 1105 0302 1106 0312 1107"            /* ................ */
	$"0608 1312 0606 0307 1207 1313 1203 0203"            /* ................ */
	$"1107 0609 0714 0913 0712 0706 0206 1107"            /* ...�..�......... */
	$"1203 0211 0210 0703 0611 0307 0307 0709"            /* ...............� */
	$"1207 0607 1112 0713 1308 0607 0202 0713"            /* ................ */
	$"0907 1102 0203 0503 0310 0202 0202 1107"            /* �............... */
	$"1103 0612 0706 0201 1002 0203 0302 0712"            /* ................ */
	$"0302 0302 0306 1002 1102 0712 0712 1202"            /* ................ */
	$"0706 0713 0713 1207 0602 0712 1208 0909"            /* ..............�� */
	$"0906 0602 0711 0206 1111 0310 0311 1208"            /* �............... */
	$"1202 0202 1102 0303 0602 1102 0202 1409"            /* ...............� */
	$"1307 1011 0711 0313 0712 1312 0712 0306"            /* ................ */
	$"0302 0302 1202 0706 0313 1406 0712 1203"            /* ................ */
	$"0202 0306 0603 0706 0707 1213 0706 0706"            /* ................ */
	$"0212 1213 0912 0712 1107 1212 1214 0702"            /* ....�........... */
	$"0102 0711 0607 1313 120A 1207 1211 0712"            /* ................ */
	$"0606 0302 0306 0602 1308 1106 0707 0607"            /* ................ */
	$"0611 0302 0306 0712 0713 0706 0608 1306"            /* ................ */
	$"0306 0709 0813 1103 0212 0709 090A 0602"            /* ...�.......��... */
	$"0211 020F 0311 1103 1207 0612 0707 1106"            /* ................ */
	$"0207 0613 0603 0206 0706 0203 1002 0206"            /* ................ */
	$"0307 130A 1312 0603 1206 0306 0713 0707"            /* ................ */
	$"1307 1207 0302 0206 0812 1207 0612 0206"            /* ................ */
	$"1306 1215 0A07 0A0A 0A12 0203 1212 0907"            /* ..............�. */
	$"1207 1112 0207 0607 0301 0102 0213 1206"            /* ................ */
	$"0607 1212 0602 0706 0706 0713 0712 0203"            /* ................ */
	$"0612 0A16 1306 0602 1207 0807 1203 1212"            /* ................ */
	$"0203 0A14 1415 0912 1303 1309 1308 0711"            /* ......�....�.... */
	$"0706 1302 0606 0713 0702 1313 1514 0707"            /* ................ */
	$"1207 1202 0607 1309 0712 0603 0603 1213"            /* .......�........ */
	$"0713 1302 0311 0712 1207 0613 0703 0311"            /* ................ */
	$"0713 1203 0706 0312 0306 1107 0202 0102"            /* ................ */
	$"1002 0203 0706 1303 0212 0D0B 0913 1309"            /* ..........�.�..� */
	$"0A13 0603 0203 1103 1103 1107 1312 1307"            /* ................ */
	$"1308 1102 0202 0309 1213 0702 1011 0203"            /* .......�........ */
	$"0612 0712 0602 0202 1107 0703 1002 0012"            /* ................ */
	$"0203 1102 0307 1102 100B 1312 0607 0312"            /* ................ */
	$"1002 0210 0206 0602 0202 0607 0302 0306"            /* ................ */
	$"0607 0306 0606 1307 0713 1213 1307 0909"            /* ..............�� */
	$"130A 0711 1202 1206 0206 0311 1212 0D0A"            /* ..............�. */
	$"1314 1112 0311 0312 150E 1106 0202 0302"            /* ................ */
	$"0201 0102 0312 0706 1209 0706 0211 0603"            /* .........�...... */
	$"0711 0202 0312 0A09 1403 0711 0312 0712"            /* .......�........ */
	$"1307 1002 0210 0203 0907 0607 0603 0201"            /* ........�....... */
	$"0201 0211 0712 0713 0710 0307 0603 0101"            /* ................ */
	$"0102 1208 1412 0607 0913 0906 0712 0307"            /* ........�.�..... */
	$"1203 0606 1207 1203 0206 0311 0713 0206"            /* ................ */
	$"0210 0211 0312 1213 0706 0603 0202 1102"            /* ................ */
	$"0311 0703 0603 1307 0602 0201 0202 0206"            /* ................ */
	$"0713 0913 0707 1208 0707 0311 1207 1409"            /* ..�............� */
	$"0611 1103 1112 0211 0302 0213 0702 0302"            /* ................ */
	$"1002 1207 0D17 0813 0602 0706 0609 0306"            /* ....�........�.. */
	$"0206 090A 0D15 1513 0312 1207 1111 0312"            /* ..�.�........... */
	$"140A 1313 1213 0712 1103 0607 0713 1307"            /* ................ */
	$"0207 0712 0A13 1207 1111 0606 1010 1112"            /* ................ */
	$"1208 1313 0A11 0709 0708 1202 0602 060A"            /* .......�........ */
	$"140D 0D09 0606 0707 1109 0713 1207 1313"            /* .���.....�...... */
	$"0703 0202 0303 0606 0709 0712 1103 0210"            /* .........�...... */
	$"0203 0607 1207 1202 1207 0702 0203 0000"            /* ................ */
	$"0000 0000 0017 0000 FFFF CCCC CCCC 0001"            /* ........������.. */
	$"CCCC CCCC CCCC 0002 CCCC CCCC 9999 0003"            /* ������..���̙�.. */
	$"CCCC 9999 9999 0004 CCCC 9999 6666 0005"            /* �̙���..�̙�ff.. */
	$"9999 CCCC 9999 0006 9999 9999 9999 0007"            /* ���̙�..������.. */
	$"9999 9999 6666 0008 9999 6666 6666 0009"            /* ����ff..��ffff.� */
	$"6666 6666 6666 000A 6666 6666 3333 000B"            /* ffffff..ffff33.. */
	$"6666 3333 3333 000C 3333 6666 3333 000D"            /* ff3333..33ff33.� */
	$"3333 3333 3333 000E 0000 2222 0000 000F"            /* 333333...."".... */
	$"DDDD DDDD DDDD 0010 BBBB BBBB BBBB 0011"            /* ������..������.. */
	$"AAAA AAAA AAAA 0012 8888 8888 8888 0013"            /* ������..������.. */
	$"7777 7777 7777 0014 5555 5555 5555 0015"            /* wwwwww..UUUUUU.. */
	$"4444 4444 4444 0016 2222 2222 2222 0017"            /* DDDDDD.."""""".. */
	$"1111 1111 1111"                                     /* ...... */
};

data 'ppat' (132) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8020 0000 0000 0040 0040 0000 0000 0000"            /* � .....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0004 0001"            /* ...H...H........ */
	$"0004 0000 0000 0000 084E 0000 0000 4440"            /* .........N....D@ */
	$"3444 3330 4343 4433 3343 3444 0033 3030"            /* 4D30CCD33C4D.300 */
	$"4444 3334 3433 4134 4444 3430 3333 3343"            /* DD3443A4DD40333C */
	$"4330 3334 1444 4433 3333 4433 0344 0044"            /* C034.DD333D3.D.D */
	$"1434 3343 4111 1333 3430 3333 4334 4433"            /* .43CA..34033C4D3 */
	$"3303 3344 4443 4300 3004 4430 3333 3431"            /* 3.3DDCC.0.D03341 */
	$"4433 4441 1144 4433 3433 3333 3341 4333"            /* D3DA.DD343333AC3 */
	$"4343 3343 3334 3433 3343 3423 3333 3341"            /* CC3C34433C4#333A */
	$"3434 4441 4443 3344 4333 3334 4414 4431"            /* 44DADC3DC334D.D1 */
	$"3040 4430 3043 4330 3330 3033 3340 3314"            /* 0@D00CC030033@3. */
	$"4443 4444 3434 4443 4303 3444 4443 3333"            /* DCDD44DCC.4DDC33 */
	$"0334 1443 4333 3300 3334 3444 4344 3434"            /* .4.CC33.344DCD44 */
	$"3333 3343 3303 4430 0334 4344 3334 3344"            /* 333C3.D0.4CD343D */
	$"4344 1333 3033 3000 3434 4144 3333 4444"            /* CD.3030.44AD33DD */
	$"3434 3333 0334 4333 0444 3014 3443 3343"            /* 4433.4C3.D0.4C3C */
	$"3343 0333 3434 3303 4344 4444 3043 4444"            /* 3C.3443.CDDD0CDD */
	$"4343 3343 3344 3333 4344 3434 4333 0333"            /* CC3C3D33CD44C3.3 */
	$"4343 3430 3343 4034 3434 1333 0343 4444"            /* CC403C@444.3.CDD */
	$"3443 0330 3434 3333 3333 3341 0303 3333"            /* 4C.04433333A..33 */
	$"3333 4344 3344 4341 4441 3333 4334 3433"            /* 33CD3DCADA33C443 */
	$"4444 0334 4433 3333 3334 4443 3044 3044"            /* DD.4D33334DC0D0D */
	$"3333 4433 4444 3034 4444 3441 3313 4444"            /* 33D3DD04DD4A3.DD */
	$"3433 3333 4433 3033 3314 3343 3331 3344"            /* 4333D3033.3C313D */
	$"4343 4433 0433 3314 4434 3434 3334 4314"            /* CCD3.33.D44434C. */
	$"4433 3343 4303 3444 3344 4444 3314 3344"            /* D33CC.4D3DDD3.3D */
	$"3443 3333 4333 3314 3414 4334 3444 4433"            /* 4C33C33.4.C44DD3 */
	$"4434 3344 3004 3343 4311 4443 4444 3444"            /* D43D0.3CC.DCDD4D */
	$"3444 4443 3433 3444 3340 3344 4344 4344"            /* 4DDC434D3@3DCDCD */
	$"1444 4343 0344 3344 4314 4434 4444 4343"            /* .DCC.D3DC.D4DDCC */
	$"4133 3330 4433 3343 3403 0444 3343 4341"            /* A330D33C4..D3CCA */
	$"4444 4300 3343 3444 3343 4334 4341 4433"            /* DDC.3C4D3CC4CAD3 */
	$"3434 4433 3003 3344 4343 4443 3443 4344"            /* 44D30.3DCCDC4CCD */
	$"4343 0433 3314 3344 4441 1144 1414 4333"            /* CC.33.3DDA.D..C3 */
	$"1434 3400 3333 0433 4343 4443 4434 3344"            /* .44.33.3CCDCD43D */
	$"4330 4433 4444 3441 3115 4134 4441 3444"            /* C0D3DD4A1.A4DA4D */
	$"3344 3333 3333 4333 3434 4143 1303 3343"            /* 3D3333C344AC..3C */
	$"3434 4030 3343 3344 4414 3433 1444 4433"            /* 44@03C3DD.43.DD3 */
	$"4303 3403 3433 4043 4343 4444 3033 3134"            /* C.4.43@CCCDD0314 */
	$"4143 3304 4340 3444 4443 4434 4441 3333"            /* AC3.C@4DDCD4DA33 */
	$"4344 4433 3303 0344 0344 3433 0341 1433"            /* CDD33..D.D43.A.3 */
	$"4343 4434 0334 4433 1144 4134 4433 3330"            /* CCD4.4D3.DA4D330 */
	$"4344 4444 4330 4343 3443 4303 3443 1434"            /* CDDDC0CC4CC.4C.4 */
	$"4333 3334 3433 3444 4444 4443 4434 3444"            /* C334434DDDDCD44D */
	$"4144 4333 3344 4441 4414 1443 4444 4443"            /* ADC33DDAD..CDDDC */
	$"4434 3333 4444 4444 1144 4443 4444 4333"            /* D433DDDD.DDCDDC3 */
	$"1144 4333 3044 4344 4414 4434 3344 1343"            /* .DC30DCDD.D43D.C */
	$"3444 3434 4034 4444 1143 1444 4444 3434"            /* 4D44@4DD.C.DDD44 */
	$"1443 3033 3014 3444 4441 4344 4441 4144"            /* .C030.4DDACDDAAD */
	$"3404 4444 3414 3444 1143 4143 4444 3034"            /* 4.DD4.4D.CACDD04 */
	$"4443 3333 3343 4314 4411 3344 3344 4434"            /* DC333CC.D.3D3DD4 */
	$"3343 4334 4443 4141 4443 1414 4444 4414"            /* 3CC4DCAADC..DDD. */
	$"4134 3334 4444 4344 4344 3343 4344 1133"            /* A434DDCDCD3CCD.3 */
	$"3434 3344 3443 1414 4444 4434 3444 3314"            /* 443D4C..DDD44D3. */
	$"4133 0044 4443 4433 4443 4344 3411 4433"            /* A3.DDCD3DCCD4.D3 */
	$"4443 4441 3333 4443 4434 4334 4444 3314"            /* DCDA33DCD4C4DD3. */
	$"4340 3044 3433 4333 3443 3444 1444 4303"            /* C@0D43C34C4D.DC. */
	$"3334 4413 3341 4434 4444 3444 4344 3443"            /* 34D.3AD4DD4DCD4C */
	$"3430 3344 3343 4303 0344 3444 1414 3333"            /* 403D3CC..D4D..33 */
	$"3344 4433 3444 4344 4434 4314 4444 4434"            /* 3DD34DCDD4C.DDD4 */
	$"3303 4444 4433 3443 4134 0343 3330 3333"            /* 3.DDD34CA4.C3033 */
	$"3414 3343 3443 3444 4434 4444 4344 3344"            /* 4.3C4C4DD4DDCD3D */
	$"4434 3334 3343 4544 4443 4343 4000 4433"            /* D4343CEDDCCC@.D3 */
	$"4143 4403 4433 3343 3034 3341 3344 4333"            /* ACD.D33C043A3DC3 */
	$"0333 4434 4334 4443 4434 4334 0333 4433"            /* .3D4C4DCD4C4.3D3 */
	$"4303 4303 4444 3430 3443 4114 3344 4333"            /* C.C.DD404CA.3DC3 */
	$"3434 3344 4334 4143 1443 3343 0433 4333"            /* 443DC4AC.C3C.3C3 */
	$"3434 3334 4433 4434 4444 4113 4344 3333"            /* 4434D3D4DDA.CD33 */
	$"3330 3343 3314 4143 3434 4334 4444 4333"            /* 303C3.AC44C4DDC3 */
	$"4333 3333 4333 3344 4414 1134 3444 3333"            /* C333C33DD..44D33 */
	$"3433 0344 3444 4443 4344 4344 4443 3334"            /* 43.D4DDCCDCDDC34 */
	$"3343 3333 3333 4443 4114 4344 4411 4333"            /* 3C3333DCA.CDD.C3 */
	$"4433 4313 3314 3334 4333 0343 4333 3344"            /* D3C.3.34C3.CC33D */
	$"4434 4443 4434 4431 1434 4411 4141 3433"            /* D4DCD4D1.4D.AA43 */
	$"3444 4343 4134 4443 3333 4444 4433 3344"            /* 4DCCA4DC33DDD33D */
	$"4344 4343 4444 4341 4444 4441 4414 4333"            /* CDCCDDCADDDAD.C3 */
	$"4434 3341 4433 3434 4333 3433 4333 3443"            /* D43AD344C343C34C */
	$"4434 3304 3344 3344 3444 4413 4133 4444"            /* D43.3D3D4DD.A3DD */
	$"4443 3341 4143 4443 3344 4433 3304 3433"            /* DC3AACDC3DD33.43 */
	$"4343 3044 3444 4344 3444 4444 4444 4433"            /* CC0D4DCD4DDDDDD3 */
	$"3330 4443 3333 4434 3430 4403 3344 3344"            /* 30DC33D440D.3D3D */
	$"4133 3444 3434 3443 4443 3444 3433 4304"            /* A34D444CDC4D43C. */
	$"3334 3444 3334 4334 4434 3404 4343 4444"            /* 344D34C4D44.CCDD */
	$"1434 3344 4433 4444 4434 3433 3430 3344"            /* .43DD3DDD443403D */
	$"3433 4330 3443 0344 3333 4433 3343 4341"            /* 43C04C.D33D33CCA */
	$"3434 4344 3434 1333 4443 4444 4444 3433"            /* 44CD44.3DCDDDD43 */
	$"4343 4333 4440 0334 3404 4433 4433 3344"            /* CCC3D@.44.D3D33D */
	$"1143 3014 4341 3041 3433 4444 1444 3344"            /* .C0.CA0A43DD.D3D */
	$"3034 4304 4303 4444 3434 4333 3444 3144"            /* 04C.C.DD44C34D1D */
	$"3434 3311 3443 3344 3343 1444 4434 4443"            /* 443.4C3D3C.DD4DC */
	$"4343 4333 4334 4343 3133 4334 4344 4444"            /* CCC3C4CC13C4CDDD */
	$"4133 3414 4443 3413 3343 4444 3441 0343"            /* A34.DC4.3CDD4A.C */
	$"0333 4443 4143 3341 4434 4433 3443 4333"            /* .3DCAC3AD4D34CC3 */
	$"4344 3341 4343 3343 3444 3413 4431 3300"            /* CD3ACC3C4D4.D13. */
	$"3344 4441 4443 3344 4444 4343 3343 3333"            /* 3DDADC3DDDCC3C33 */
	$"3434 4313 4343 3434 4443 4434 4344 3434"            /* 44C.CC44DCD4CD44 */
	$"4334 3333 3433 3414 3434 3303 4333 3030"            /* C433434.443.C300 */
	$"3434 3344 3434 3033 4333 3343 4444 3444"            /* 443D4403C33CDD4D */
	$"0344 4334 3430 4433 4443 3344 0333 3334"            /* .DC440D3DC3D.334 */
	$"3434 3334 3434 0334 3334 4444 4443 4033"            /* 443444.434DDDC@3 */
	$"4334 3443 3434 4441 4434 4333 4434 3344"            /* C44C44DAD4C3D43D */
	$"3443 1443 4433 0344 4443 4444 4444 3333"            /* 4C.CD3.DDCDDDD33 */
	$"3031 4433 4444 1444 4434 3034 4333 1440"            /* 01D3DD.DD404C3.@ */
	$"1441 3343 3330 3414 4144 1434 3333 3333"            /* .A3C304.AD.43333 */
	$"4443 3334 4344 3434 3443 3413 3434 4344"            /* DC34CD444C4.44CD */
	$"4344 4444 4404 4344 3444 4444 4344 3334"            /* CDDDD.CD4DDDCD34 */
	$"3344 4331 4444 4434 4443 4434 4344 4433"            /* 3DC1DDD4DCD4CDD3 */
	$"4441 3144 3434 4314 4144 4334 3430 3443"            /* DA1D44C.ADC4404C */
	$"4343 3341 4433 4433 4444 3433 3334 4444"            /* CC3AD3D3DD4334DD */
	$"3413 4343 3334 4334 3333 4443 3334 3334"            /* 4.CC34C433DC3434 */
	$"3033 3344 3444 4134 4433 3443 3434 4330"            /* 033D4DA4D34C44C0 */
	$"1433 3430 3331 0044 3333 3334 3340 3334"            /* .34031.D33343@34 */
	$"3334 3344 4443 1444 4433 3444 4444 3333"            /* 343DDC.DD34DDD33 */
	$"4334 4333 4343 3413 3334 3443 3334 3343"            /* C4C3CC4.344C343C */
	$"4444 4344 4344 4444 4444 4443 4443 3333"            /* DDCDCDDDDDDCDC33 */
	$"4344 4434 0334 3333 3334 4444 3443 3343"            /* CDD4.43334DD4C3C */
	$"3033 3341 3434 0443 0433 3444 3333 3333"            /* 033A44.C.34D3333 */
	$"4433 4343 4314 4434 4444 4333 3044 3300"            /* D3CCC.D4DDC30D3. */
	$"3434 0444 4433 4433 4343 4443 3333 3331"            /* 44.DD3D3CCDC3331 */
	$"4344 4443 4444 3044 4343 4333 3341 3300"            /* CDDCDD0DCCC33A3. */
	$"4444 3444 3444 1444 4443 3443 3334 3444"            /* DD4D4D.DDC4C344D */
	$"0344 4333 4433 0444 4444 4344 3443 0033"            /* .DC3D3.DDDCD4C.3 */
	$"3343 3444 3441 4344 3430 4334 3334 3444"            /* 3C4D4ACD40C4344D */
	$"3444 3333 4443 3444 4443 4344 4344 4034"            /* 4D33DC4DDCCDCD@4 */
	$"4444 4443 4444 3314 4334 4343 4443 1443"            /* DDDCDD3.C4CCDC.C */
	$"4444 4444 4333 4444 4040 3344 3444 3044"            /* DDDDC3DD@@3D4D0D */
	$"4443 4444 4443 3444 4433 3344 3444 1433"            /* DCDDDC4DD33D4D.3 */
	$"4443 4144 4343 1114 3033 3344 4114 0044"            /* DCADCC..033DA..D */
	$"3433 4443 4444 4344 3433 1314 4433 4433"            /* 43DCDDCD43..D3D3 */
	$"4131 4434 0314 4433 3344 3144 4444 0000"            /* A1D4..D33D1DDD.. */
	$"0000 0000 0005 0000 6666 6666 6666 0001"            /* ........ffffff.. */
	$"3333 3333 3333 0002 7777 7777 7777 0003"            /* 333333..wwwwww.. */
	$"5555 5555 5555 0004 4444 4444 4444 0005"            /* UUUUUU..DDDDDD.. */
	$"2222 2222 2222"                                     /* """""" */
};

data 'ppat' (133) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8020 0000 0000 0040 0040 0000 0000 0000"            /* � .....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0004 0001"            /* ...H...H........ */
	$"0004 0000 0000 0000 084E 0000 0000 1330"            /* .........N.....0 */
	$"0233 0000 0000 1303 0302 2030 0032 0030"            /* .3........ 0.2.0 */
	$"3030 3232 3030 2020 0000 0010 2222 1033"            /* 002200  ...."".3 */
	$"0000 4000 0030 0000 2002 0000 3000 2112"            /* ..@..0.. ...0.!. */
	$"0000 0022 1222 0000 0000 2002 0001 1000"            /* ...".".... ..... */
	$"4030 0030 0400 0230 1022 2000 3300 0202"            /* @0.0...0." .3... */
	$"2003 0001 2121 0021 0302 0222 0000 0220"            /*  ...!!.!..."...  */
	$"0100 3302 0030 2000 1120 0203 3030 0020"            /* ..3..0 .. ..00.  */
	$"2020 0222 1101 0012 2200 2222 0020 0012"            /*   ."...."."". .. */
	$"2010 0033 0002 0000 0212 2330 3330 2003"            /*  ..3......#030 . */
	$"2100 2222 1120 2200 0001 2200 2100 0220"            /* !."". "...".!..  */
	$"1100 1000 3002 0000 0021 0124 0000 3202"            /* ....0....!.$..2. */
	$"0102 0200 0000 0020 0200 3203 3002 1023"            /* ....... ..2.0..# */
	$"2021 2000 3102 0000 3030 2020 0000 2130"            /*  ! .1...00  ..!0 */
	$"1211 2122 0000 0012 2200 0020 0020 0202"            /* ..!"....".. . .. */
	$"2211 2220 0002 0002 0300 1122 0030 2030"            /* "." .......".0 0 */
	$"2221 0000 0220 2211 0220 0023 0220 2320"            /* "!... ".. .#. #  */
	$"1111 0120 0010 2202 2020 1010 2003 0202"            /* ... ..".  .. ... */
	$"2001 2203 2201 1021 0210 0000 2404 0200"            /*  ."."..!....$... */
	$"2121 1100 2001 1222 0030 1100 0240 3300"            /* !!.. ..".0...@3. */
	$"0231 2120 1000 2202 1220 0200 1200 2020"            /* .1! ..".. ....   */
	$"2221 1001 2022 2222 2002 1120 0030 0320"            /* "!.. """ .. .0.  */
	$"1022 0030 0222 0122 2000 0002 2022 0000"            /* .".0."." ... ".. */
	$"2212 1200 0203 4202 2020 0012 3003 3202"            /* ".....B.  ..0.2. */
	$"2022 0000 4221 0210 1130 0012 1002 0300"            /*  "..B!...0...... */
	$"0022 0030 0122 0021 2002 3203 0030 2002"            /* .".0.".! .2..0 . */
	$"3021 0202 2203 2212 1034 0202 2020 3303"            /* 0!.."."..4..  3. */
	$"2022 0020 2220 0200 2120 2000 3202 2002"            /*  ". " ..!  .2. . */
	$"1212 2022 1200 0102 3221 0002 2000 0340"            /* .. "....2!.. ..@ */
	$"2211 2000 0203 0201 0021 3202 0300 2222"            /* ". ......!2..."" */
	$"0100 0212 2000 2100 0221 0020 0001 3310"            /* .... .!..!. ..3. */
	$"0212 2320 2200 0003 0001 0303 0202 0200"            /* ..# "........... */
	$"2202 2101 0000 0222 1210 2212 2101 1202"            /* ".!...."..".!... */
	$"2022 0100 3000 0222 2200 0000 0220 2000"            /*  "..0..""....  . */
	$"3222 0022 2102 0032 2020 2022 0211 0310"            /* 2"."!..2   ".... */
	$"0200 4000 0002 2010 0040 0402 0000 1000"            /* ..@... ..@...... */
	$"2212 0201 2001 2122 0020 0212 0222 2002"            /* "... .!". ..." . */
	$"0000 0001 2200 0202 0212 0002 2200 1102"            /* ...."......."... */
	$"0222 2002 0222 2212 2010 2212 2120 2112"            /* ." .."". .".! !. */
	$"0120 1211 1033 0000 0212 0302 2202 0120"            /* . ...3......"..  */
	$"0210 0211 0200 0212 1220 2000 0002 2212"            /* .........  ...". */
	$"2233 1222 2333 2000 1000 3330 0022 0020"            /* "3."#3 ...30.".  */
	$"0222 0221 1022 0022 0220 2110 0122 2100"            /* .".!.".". !.."!. */
	$"0200 0201 0202 2001 2020 0002 0311 0204"            /* ...... .  ...... */
	$"1213 0011 0002 0000 0222 0010 0000 0030"            /* .........".....0 */
	$"2000 1100 1122 2220 0200 0021 1030 0220"            /*  ...."" ...!.0.  */
	$"0022 2011 2000 0000 1001 0020 2022 3302"            /* ." . ......  "3. */
	$"0022 1221 1222 2022 2030 0121 0020 0323"            /* .".!." " 0.!. .# */
	$"0000 2022 0200 0320 0220 2022 0203 0020"            /* .. "... .  "...  */
	$"2000 0230 2222 1320 0200 0222 0320 0210"            /*  ..0"". ...". .. */
	$"2022 3402 0002 0321 2102 0020 0201 0002"            /*  "4....!!.. .... */
	$"0220 0202 2222 2334 2300 2101 2313 2002"            /* . ..""#4#.!.#. . */
	$"2202 2000 0002 2201 3211 2000 2300 0020"            /* ". ...".2. .#..  */
	$"0010 0202 1002 1320 2022 2021 2222 2323"            /* .......  " !""## */
	$"2220 0220 0011 2002 0202 1030 0130 0003"            /* " . .. ....0.0.. */
	$"0010 0000 1101 0301 0000 3202 1222 0211"            /* ..........2..".. */
	$"2120 0001 0010 1042 2112 2000 0000 0000"            /* ! .....B!. ..... */
	$"0002 0021 0200 0004 2102 0012 2221 0122"            /* ...!....!..."!." */
	$"2020 0021 0202 0000 1000 0002 0002 0000"            /*   .!............ */
	$"0303 0302 2021 3022 1222 2211 1222 2020"            /* .... !0"."".."   */
	$"0223 2111 1223 2000 2202 0230 0000 0323"            /* .#!..# ."..0...# */
	$"2420 0320 3202 0031 2020 1011 2022 0111"            /* $ . 2..1  .. ".. */
	$"0210 0212 2132 3020 0021 0023 0422 0000"            /* ....!20 .!.#.".. */
	$"0200 0021 0320 0001 0032 2221 2200 2120"            /* ...!. ...2"!".!  */
	$"1010 2122 0232 0202 0000 0020 2000 3302"            /* ..!".2.....  .3. */
	$"0022 3201 2323 4020 2202 1211 2222 2222"            /* ."2.##@ "..."""" */
	$"1110 0020 0300 2030 0003 0200 0220 4320"            /* ... .. 0..... C  */
	$"3232 0302 3023 0202 2221 1202 1022 2211"            /* 22..0#.."!..."". */
	$"2320 0200 2002 0002 0332 3120 1200 0140"            /* # .. ....21 ...@ */
	$"2020 2000 3030 3020 2322 2011 2212 0222"            /*    .000 #" .".." */
	$"1200 2022 3331 0220 3300 3322 0010 2032"            /* .. "31. 3.3".. 2 */
	$"0032 0002 2303 3013 2000 2121 3322 2022"            /* .2..#.0. .!!3" " */
	$"1020 0222 0003 3000 0000 3031 0220 2012"            /* . ."..0...01.  . */
	$"1233 0000 3203 0312 0002 2102 3300 1010"            /* .3..2.....!.3... */
	$"2042 0000 2034 0000 0002 0002 2211 0222"            /*  B.. 4......".." */
	$"2030 0300 0003 0300 3210 0200 0000 2222"            /*  0......2....."" */
	$"0302 0200 0222 0202 0003 0002 2000 0122"            /* ....."...... .." */
	$"2003 0330 3032 3012 0022 2200 3330 2220"            /*  ..0020.."".30"  */
	$"3340 0030 0000 1120 0033 0200 0202 2111"            /* 3@.0... .3....!. */
	$"2220 0301 2003 0022 0002 3004 3040 2230"            /* " .. .."..0.0@"0 */
	$"0000 0202 0012 2122 0320 3300 0232 0112"            /* ......!". 3..2.. */
	$"2220 0020 3300 2020 0000 0000 0000 0000"            /* " . 3.  ........ */
	$"0002 2000 2200 1110 4221 0222 0200 2212"            /* .. ."...B!."..". */
	$"3002 0011 0000 1202 0020 0300 0020 0000"            /* 0........ ... .. */
	$"3202 2020 0100 0210 0222 0140 2120 2222"            /* 2.  .....".@! "" */
	$"3002 2022 0003 1002 0020 0230 3220 2033"            /* 0. "..... .02  3 */
	$"4020 0232 2020 0220 0012 0200 2212 2110"            /* @ .2  . ....".!. */
	$"0022 3020 2002 2022 2023 2002 0222 0304"            /* ."0  . " # ..".. */
	$"0232 2220 2200 0000 3022 0220 0202 0002"            /* .2" "...0". .... */
	$"0021 1320 3330 0200 0030 0220 3000 3034"            /* .!. 30...0. 0.04 */
	$"3002 0320 2320 3002 0021 0300 0002 3022"            /* 0.. # 0..!....0" */
	$"0110 2023 0304 3300 3002 0000 0000 0203"            /* .. #..3.0....... */
	$"4340 2012 2004 3033 0000 0002 2020 0022"            /* C@ . .03....  ." */
	$"2002 0032 0030 4340 0342 2034 0000 0434"            /*  ..2.0C@.B 4...4 */
	$"4303 0012 2004 0304 2000 3300 0200 4000"            /* C... ... .3...@. */
	$"2020 0300 2020 2233 0000 3403 2302 0040"            /*   ..  "3..4.#..@ */
	$"3323 3203 0100 0013 0020 0022 2200 0000"            /* 3#2...... .""... */
	$"3003 3030 2022 0320 0020 0300 3003 0003"            /* 0.00 ". . ..0... */
	$"0002 3002 0120 2100 2022 2020 2202 0000"            /* ..0.. !. "  "... */
	$"3230 1000 1020 2002 0300 3000 2300 0200"            /* 20...  ...0.#... */
	$"4040 0200 1220 1003 0000 0211 2104 0203"            /* @@... ......!... */
	$"2102 3232 2330 2303 0030 3333 0030 2020"            /* !.22#0#..033.0   */
	$"2030 0302 2002 0200 2000 2120 2003 0203"            /*  0.. ... .!  ... */
	$"0120 0233 0230 4330 0000 2303 0000 2200"            /* . .3.0C0..#...". */
	$"0010 2000 2221 3220 0301 0220 2300 0214"            /* .. ."!2 ... #... */
	$"0000 0334 3033 0030 3000 0024 1022 0031"            /* ...403.00..$.".1 */
	$"0020 0203 0000 0303 0001 0240 0002 2200"            /* . .........@..". */
	$"3003 0300 2000 2023 3040 0000 0022 0022"            /* 0... . #0@..."." */
	$"0220 0203 0300 3002 3302 2000 0000 1133"            /* . ....0.3. ....3 */
	$"0430 0403 2000 0400 3030 2000 2030 2302"            /* .0.. ...00 . 0#. */
	$"0012 2300 0030 3022 2000 0100 0420 0023"            /* ..#..00" .... .# */
	$"3020 0330 0200 0022 0040 3222 0000 0003"            /* 0 .0...".@2".... */
	$"2020 2202 2001 3022 4030 0343 0002 2030"            /*   ". .0"@0.C.. 0 */
	$"0200 3300 0002 0023 3000 0203 0000 0000"            /* ..3....#0....... */
	$"2230 2100 2220 3004 0030 0213 0020 0030"            /* "0!." 0..0... .0 */
	$"0120 0032 0200 2020 0032 2022 0222 2002"            /* . .2..  .2 "." . */
	$"1200 2000 0003 3030 0300 3002 0020 0000"            /* .. ...00..0.. .. */
	$"0120 2330 0000 0002 2023 1224 0204 1022"            /* . #0.... #.$..." */
	$"2101 0020 0334 0320 2300 4303 0000 2002"            /* !.. .4. #.C... . */
	$"2002 3034 3022 0203 0002 0022 2000 0302"            /*  .040"....." ... */
	$"1202 2222 3023 0020 3000 0033 3020 3020"            /* ..""0#. 0..30 0  */
	$"0220 4340 4430 0000 0023 2020 2000 0023"            /* . C@D0...#   ..# */
	$"3203 3222 0003 0000 0222 0030 0303 0320"            /* 2.2".....".0...  */
	$"3233 2304 0003 2000 2040 2232 3022 0200"            /* 23#... . @"20".. */
	$"0000 0010 2000 0240 2011 0100 0034 3203"            /* .... ..@ ....42. */
	$"0200 0300 0030 0020 2200 0000 3330 0202"            /* .....0. "...30.. */
	$"0032 0203 0020 0032 0223 2200 2004 0030"            /* .2... .2.#". ..0 */
	$"2000 3333 0330 3320 0201 0030 3030 0303"            /*  .33.03 ...000.. */
	$"0042 0330 2200 0000 1010 2000 2003 0000"            /* .B.0"..... . ... */
	$"0000 0000 0004 0000 9999 9999 9999 0001"            /* ........������.. */
	$"BBBB BBBB BBBB 0002 AAAA AAAA AAAA 0003"            /* ������..������.. */
	$"8888 8888 8888 0004 7777 7777 7777"                 /* ������..wwwwww */
};

data 'ppat' (134) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8020 0000 0000 0040 0040 0000 0000 0000"            /* � .....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0004 0001"            /* ...H...H........ */
	$"0004 0000 0000 0000 084E 0000 0000 4122"            /* .........N....A" */
	$"2722 7627 1621 3172 7222 2717 4115 4716"            /* '"v'.!1rr"'.A.G. */
	$"1112 2271 4447 1111 1227 2444 1511 2612"            /* .."qDG...'$D..&. */
	$"2275 6276 1412 2621 2766 2612 6172 2161"            /* "ubv..&!'f&.ar!a */
	$"1167 6776 7612 7665 7727 1651 1115 6726"            /* .ggvv.vew'.Q..g& */
	$"2724 4226 6526 6216 7777 6612 2645 2212"            /* '$B&e&b.wwf.&E". */
	$"1622 6722 1267 6617 6612 6121 2161 2766"            /* ."g".gf.f.a!!a'f */
	$"2557 4276 6624 5624 1217 1712 2441 4172"            /* %WBvf$V$....$AAr */
	$"1622 2772 7727 2277 7461 2166 1722 6611"            /* ."'rw'"wta!f."f. */
	$"7211 7672 2761 4625 1757 1274 7636 0221"            /* r.vr'aF%.W.tv6.! */
	$"1277 2262 1167 6127 2611 1217 2711 2721"            /* .w"b.ga'&...'.'! */
	$"1226 7722 1666 6411 2621 1661 4226 6722"            /* .&w".fd.&!.aB&g" */
	$"7126 2772 6221 1161 2212 4677 2111 2611"            /* q&'rb!.a".Fw!.&. */
	$"6121 6226 1666 1517 1276 6724 1213 4311"            /* a!b&.f...vg$..C. */
	$"1272 2761 2761 1161 7136 4472 2221 2222"            /* .r'a'a.aq6Dr"!"" */
	$"1224 4161 6162 1126 4612 1766 2454 1546"            /* .$Aaab.&F..f$T.F */
	$"7572 7267 7214 1156 7612 4412 6277 6232"            /* urrgr..Vv.D.bwb2 */
	$"7676 1467 1621 1722 3226 7262 6563 5430"            /* vv.g.!."2&rbecT0 */
	$"7652 7726 1726 1215 6261 3417 7212 1756"            /* vRw&.&..ba4.r..V */
	$"4111 2234 2111 2166 1262 6172 1540 1553"            /* A."4!.!f.bar.@.S */
	$"7662 6217 1722 1174 2276 5427 2226 5212"            /* vbb..".t"vT'"&R. */
	$"2114 1147 1262 7276 2722 6226 6227 7221"            /* !..G.brv'"b&b'r! */
	$"6614 1261 2725 5162 2277 7777 6622 1217"            /* f..a'%Qb"wwwf".. */
	$"2622 5152 2262 6226 2622 2242 1476 7141"            /* &"QR"bb&&""B.vqA */
	$"1164 1712 6216 1543 2722 7717 7722 1112"            /* .d..b..C'"w.w".. */
	$"7272 1725 7722 6261 1226 6127 6776 1461"            /* rr.%w"ba.&a'gv.a */
	$"1276 7722 1261 1141 2277 2722 2672 6772"            /* .vw".a.A"w'"&rgr */
	$"1722 2126 2226 6262 7111 1446 7627 1126"            /* ."!&"&bbq..Fv'.& */
	$"7147 7721 1711 6567 2266 6677 1272 6661"            /* qGw!..eg"ffw.rfa */
	$"7166 1676 2726 2267 1641 1316 6221 1521"            /* qf.v'&"g.A..b!.! */
	$"7141 1776 6261 1121 7272 1427 6515 6622"            /* qA.vba.!rr.'e.f" */
	$"2242 4711 7766 6661 1511 1112 2626 6561"            /* "BG.wffa....&&ea */
	$"2441 1222 2221 2467 7222 6127 1412 2654"            /* $A.""!$gr"a'..&T */
	$"7257 2111 1126 6667 1111 4272 5761 6612"            /* rW!..&fg..BrWaf. */
	$"7111 4417 1713 6447 2224 2214 4431 2161"            /* q.D...dG"$".D1!a */
	$"1242 2152 1162 6267 7141 1141 1521 6167"            /* .B!R.bbgqA.A.!ag */
	$"2646 2647 7761 2441 2654 2555 5142 2262"            /* &F&Gwa$A&T%UQB"b */
	$"6221 2761 6142 6267 7227 2346 4172 7227"            /* b!'aaBbgr'#FArr' */
	$"7711 1142 7626 1341 7717 5616 5552 7111"            /* w..Bv&.Aw.V.URq. */
	$"2423 7771 1117 2722 7122 2265 4122 1777"            /* $#wq..'"q""eA".w */
	$"7211 1116 2227 6542 7275 1656 5467 7341"            /* r..."'eBru.VTgsA */
	$"6265 1167 1177 2711 7212 2226 4173 4447"            /* be.g.w'.r."&AsDG */
	$"7716 1614 6227 7777 7717 7141 5514 2153"            /* w...b'www.qAU.!S */
	$"1277 5626 1222 4541 1521 7276 4244 5416"            /* .wV&."EA.!rvBDT. */
	$"2211 5113 2272 2771 2722 2754 4762 6146"            /* ".Q."r'q'"'TGbaF */
	$"5126 6162 2411 6141 7621 1112 7624 4412"            /* Q&ab$.aAv!..v$D. */
	$"7671 1142 2227 7272 2227 2266 2271 1772"            /* vq.B"'rr"'"f"q.r */
	$"2122 2226 7417 2266 6211 1171 2262 6112"            /* !""&t."fb..q"ba. */
	$"1121 1642 6222 6222 6667 6226 2122 1111"            /* .!.Bb"b"fgb&!".. */
	$"1126 7272 2126 2721 2716 1614 7221 7211"            /* .&rr!&'!'...r!r. */
	$"4776 1472 7151 4466 1772 7622 7772 1111"            /* Gv.rqQDf.rv"wr.. */
	$"6412 2622 6116 2722 7221 1212 7222 2412"            /* d.&"a.'"r!..r"$. */
	$"5727 2767 1453 1617 4462 7227 4162 1621"            /* W''g.S..Dbr'Ab.! */
	$"1117 2657 1714 4012 2666 2277 2727 2216"            /* ..&W..@.&f"w''". */
	$"6226 1216 5715 1446 1612 6271 6417 2121"            /* b&..W..F..bqd.!! */
	$"1617 1521 2122 1642 1614 2161 2271 4262"            /* ...!!".B..!a"qBb */
	$"2661 1617 7145 3161 2627 1676 6722 2221"            /* &a..qE1a&'.vg""! */
	$"1242 2637 6111 1262 6665 5276 7641 4122"            /* .B&7a..bfeRvvAA" */
	$"6261 2222 1221 3172 2617 2171 7215 6777"            /* ba"".!1r&.!qr.gw */
	$"2112 5221 1711 4417 6166 5722 2761 7772"            /* !.R!..D.afW"'awr */
	$"6611 1671 6612 2621 2777 1276 2621 1721"            /* f..qf.&!'w.v&!.! */
	$"6722 2612 2524 1171 7661 7167 7672 1222"            /* g"&.%$.qvaqgvr." */
	$"7156 2421 1126 6216 2217 7276 6615 2262"            /* qV$!.&b.".rvf."b */
	$"7721 6612 2141 6774 2762 5527 6661 7722"            /* w!f.!Agt'bU'faw" */
	$"2162 2121 1124 5624 2661 1727 7225 6227"            /* !b!!.$V$&a.'r%b' */
	$"7216 6762 2272 2214 1122 5226 6157 2722"            /* r.gb"r".."R&aW'" */
	$"6117 2777 7115 4227 2262 1426 2722 2117"            /* a.'wq.B'"b.&'"!. */
	$"6177 2227 6522 6126 6261 2262 1212 3462"            /* aw"'e"a&ba"b..4b */
	$"7127 7442 7564 2772 2626 2626 6161 2112"            /* q'tBud'r&&&&aa!. */
	$"2776 7621 3714 5762 5121 6277 7121 2351"            /* 'vv!7.WbQ!bwq!#Q */
	$"1722 7723 2672 7275 5551 2261 2667 6112"            /* ."w#&rruUQ"a&ga. */
	$"7612 4764 5215 4277 6177 2677 1211 6624"            /* v.GdR.Bwaw&w..f$ */
	$"2662 2244 1646 2211 5444 1223 6261 1201"            /* &b"D.F".TD.#ba.. */
	$"2216 2222 2711 6221 1271 1762 6727 6575"            /* ".""'.b!.q.bg'eu */
	$"4725 4311 7214 7215 5254 6121 2224 2674"            /* G%C.r.r.RTa!"$&t */
	$"7124 1221 1127 2771 4122 7161 2771 7122"            /* q$.!.''qA"qa'qq" */
	$"2725 3116 7154 2766 5434 1072 2727 1362"            /* '%1.qT'fT4.r''.b */
	$"1212 2116 1112 2767 4112 2177 7152 1615"            /* ..!...'gA.!wqR.. */
	$"6224 4431 1412 6214 5217 0115 6272 6346"            /* b$D1..b.R...brcF */
	$"4777 2111 1412 1216 4516 1722 2212 1111"            /* Gw!.....E..""... */
	$"6714 5414 7211 1722 6666 7154 4225 5551"            /* g.T.r.."ffqTB%UQ */
	$"4711 2216 1111 6674 1167 1656 2671 1162"            /* G."...ft.g.V&q.b */
	$"2712 7612 6271 6117 2272 7656 7500 5117"            /* '.v.bqa."rvVu.Q. */
	$"1121 4226 1126 7266 7226 2117 4547 2761"            /* .!B&.&rfr&!.EG'a */
	$"1226 2242 7211 1452 2276 6772 1354 7171"            /* .&"Br..R"vgr.Tqq */
	$"7711 0466 2761 7122 1126 2117 5161 6711"            /* w..f'aq".&!.Qag. */
	$"1666 1116 2111 1447 2265 7727 4444 2266"            /* .f..!..G"ew'DD"f */
	$"2422 4444 6711 2126 7166 6622 7112 4171"            /* $"DDg.!&qff"q.Aq */
	$"7412 2111 2161 7516 1677 2616 5504 7761"            /* t.!.!au..w&.U.wa */
	$"6716 7401 7227 7217 7721 1215 1344 2266"            /* g.t.r'r.w!...D"f */
	$"2261 2711 2261 1121 1176 2612 5546 1122"            /* "a'."a.!.v&.UF." */
	$"6211 2762 2726 2622 6226 1246 5344 7622"            /* b.'b'&&"b&.FSDv" */
	$"7171 1322 7216 1111 1121 6111 2344 1112"            /* qq."r....!a.#D.. */
	$"6271 1244 2771 6117 5676 6222 5140 1277"            /* bq.D'qa.Vvb"Q@.w */
	$"2641 6771 6672 2211 7425 4145 1126 1772"            /* &Agqfr".t%AE.&.r */
	$"7261 1214 6721 6117 6477 6622 2251 2221"            /* ra..g!a.dwf""Q"! */
	$"7142 2612 7621 6772 1422 1412 7222 2272"            /* qB&.v!gr."..r""r */
	$"2622 7123 6226 6611 7262 2244 2271 1722"            /* &"q#b&f.rb"D"q." */
	$"7166 7667 1116 1771 1017 7222 6211 2144"            /* qfvg...q..r"b.!D */
	$"4425 1272 7776 1162 6767 7624 1142 1767"            /* D%.rwv.bggv$.B.g */
	$"6272 2616 7262 2271 6447 7276 2611 2144"            /* br&.rb"qdGrv&.!D */
	$"3413 4151 2622 6272 3126 5211 4274 7726"            /* 4.AQ&"br1&R.Btw& */
	$"2662 2721 7162 6626 5102 6772 7672 2241"            /* &b'!qbf&Q.grvr"A */
	$"4464 4612 4426 4141 1711 2414 4264 4261"            /* DdF.D&AA..$.BdBa */
	$"2662 6226 6477 2721 1412 2342 2616 6274"            /* &bb&dw'!..#B&.bt */
	$"1171 1267 7741 7224 7272 6211 6762 1626"            /* .q.gwAr$rrb.gb.& */
	$"2251 2446 1542 6126 1442 2507 7666 6627"            /* "Q$F.Ba&.B%.vff' */
	$"2265 3227 2114 4111 3272 1241 3761 6771"            /* "e2'!.A.2r.A7agq */
	$"0214 2111 5117 1476 2666 7262 0642 2551"            /* ..!.Q..v&frb.B%Q */
	$"1224 1616 1114 4424 4527 2231 4666 6625"            /* .$....D$E'"1Fff% */
	$"4121 2265 1161 2266 1227 4521 1414 2654"            /* A!"e.a"f.'E!..&T */
	$"1217 6676 1511 4112 4124 6211 6216 6612"            /* ..fv..A.A$b.b.f. */
	$"4622 4171 5422 2666 1747 1242 6256 4213"            /* F"AqT"&f.G.BbVB. */
	$"3276 1251 7615 4731 1617 6127 7666 6666"            /* 2v.Qv.G1..a'vfff */
	$"2666 6264 4261 2666 5712 2447 2666 4422"            /* &fbdBa&fW.$G&fD" */
	$"7216 7134 3226 2631 1112 1661 2666 6751"            /* r.q42&&1...a&fgQ */
	$"2662 6621 2211 6762 5262 2617 7222 1325"            /* &bf!".gbRb&.r".% */
	$"0717 1125 1212 2721 4476 6666 6662 2161"            /* ...%..'!Dvfffb!a */
	$"1226 7762 7211 2262 7121 6126 7667 4011"            /* .&wbr."bq!a&vg@. */
	$"2611 5365 4147 6762 4266 6652 6617 6622"            /* &.SeAGgbBffRf.f" */
	$"4627 7122 2277 7762 2167 2212 6611 1677"            /* F'q""wwb!g".f..w */
	$"6267 1621 4211 4422 2726 6124 2212 6012"            /* bg.!B.D"'&a$".`. */
	$"4561 1167 2222 2727 5142 6722 4742 1242"            /* Ea.g""''QBg"GB.B */
	$"7611 2213 1225 1317 1142 2114 1214 2125"            /* v."..%...B!...!% */
	$"1512 4267 7127 7726 6511 6422 6162 1672"            /* ..Bgq'w&e.d"ab.r */
	$"6171 1622 2766 3416 2503 5262 7310 0176"            /* aq."'f4.%.Rbs..v */
	$"1311 2222 4225 4226 6221 2646 7144 0444"            /* ..""B%B&b!&FqD.D */
	$"2714 2661 2171 1514 6511 4127 6455 4072"            /* '.&a!q..e.A'dU@r */
	$"7621 4112 7512 4311 1176 6616 7044 0000"            /* v!A.u.C..vf.pD.. */
	$"0000 0000 0007 0000 FFFF FFFF FFFF 0001"            /* ........������.. */
	$"9999 9999 9999 0002 6666 6666 6666 0003"            /* ������..ffffff.. */
	$"DDDD DDDD DDDD 0004 BBBB BBBB BBBB 0005"            /* ������..������.. */
	$"AAAA AAAA AAAA 0006 7777 7777 7777 0007"            /* ������..wwwwww.. */
	$"4444 4444 4444"                                     /* DDDDDD */
};

data 'ppat' (135) {
	$"0001 0000 001C 0000 004E 0000 0000 FFFF"            /* .........N....�� */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"8040 0000 0000 0040 0040 0000 0000 0000"            /* �@.....@.@...... */
	$"0000 0048 0000 0048 0000 0000 0008 0001"            /* ...H...H........ */
	$"0008 0000 0000 0000 104E 0000 0000 0914"            /* .........N....�. */
	$"1514 0909 0909 0914 0C09 1414 1105 0511"            /* ..�����..�...... */
	$"1105 0505 0513 15FF 0EFF 0EFF 0E09 0511"            /* .......�.�.�.�.. */
	$"1111 1111 1105 1209 0C0E 0B0C 0505 0512"            /* .......�........ */
	$"0613 0914 0B15 1205 1309 0909 0909 0909"            /* ..�......������� */
	$"1409 0909 0909 0914 1515 1505 0611 1111"            /* .������......... */
	$"1111 0505 0512 1213 0709 14FF 1507 0411"            /* .........�.�.... */
	$"1111 1105 1105 1209 15FF 0C0D 1105 0505"            /* .......�.�.�.... */
	$"1213 0915 150E 0912 1209 0909 0909 0914"            /* ..�...�..������. */
	$"0909 0909 0909 0914 0C0E FF05 1411 1111"            /* �������...�..... */
	$"1111 1105 0512 1312 1309 1512 0505 1213"            /* .........�...... */
	$"1111 1111 0505 1314 15FF 0E15 1211 0505"            /* .........�...... */
	$"1213 1414 FF15 0905 1213 0909 0909 0915"            /* ....�.�...�����. */
	$"0909 1409 0909 0914 0CFF FF12 0B11 1111"            /* ��.����..��..... */
	$"1111 1105 0512 1313 1414 0505 0505 1209"            /* ...............� */
	$"0511 1105 0512 0914 0E0E 150E 1411 1105"            /* ......�......... */
	$"0609 090C 0F14 1212 1212 0909 0909 1214"            /* .��.......����.. */
	$"0909 0909 0909 0914 15FF FF06 1405 1105"            /* �������..��..... */
	$"0505 0505 1212 1309 0A11 0505 0505 0506"            /* .......�........ */
	$"0911 0505 0513 1415 0E0B 150C 1305 1405"            /* �............... */
	$"1209 150E 1512 1212 0609 1313 0505 1214"            /* .�.......�...... */
	$"0909 0909 0909 0915 15FF 0B09 1409 1105"            /* �������..�.�.�.. */
	$"1205 1212 1309 1415 0511 1111 1105 0512"            /* .....�.......... */
	$"0912 0512 0914 150E 150C 0D15 0704 0903"            /* �...�.....�...�. */
	$"050A 0E14 0505 0506 1315 0510 1105 1314"            /* ................ */
	$"0909 1313 0909 0915 0C0C 140C 0905 0505"            /* ��..���.....�... */
	$"0512 1209 0914 0C05 1103 1111 0505 0505"            /* ...��........... */
	$"1314 1415 0E15 1514 1415 0C14 0600 1210"            /* ................ */
	$"0514 0E05 0505 0505 1214 1404 0505 1414"            /* ................ */
	$"1213 0908 0909 1415 0DFF 1509 1105 1206"            /* ..�.��..��.�.... */
	$"1313 1415 0907 1211 1111 1111 1111 0506"            /* ....�........... */
	$"1315 0CFF FFFF 0505 1206 0914 0404 1103"            /* ...���....�..... */
	$"0514 1405 0605 0505 0512 1514 1309 15FF"            /* .............�.� */
	$"1206 0909 0914 0909 0915 0E05 0505 1206"            /* ..���.���....... */
	$"1307 1309 150B 0911 1010 1111 1105 0505"            /* ...�..�......... */
	$"1215 0E0C FFFF 0505 1213 0909 1406 0310"            /* ....��....��.... */
	$"0509 1411 1305 0505 0506 09FF 0B09 15FF"            /* .�........��.�.� */
	$"1407 0909 0907 1205 0506 1412 1105 1212"            /* ..���........... */
	$"0612 1209 1415 FF14 1103 1111 1111 0505"            /* ...�..�......... */
	$"0915 1515 0EFF 0505 1212 0709 0906 0310"            /* �....�.....��... */
	$"0509 0B05 1205 0505 0505 090C 0511 09FF"            /* .�........�...�� */
	$"FFFF 1509 1206 1111 1105 1309 1105 1105"            /* ��.�.......�.... */
	$"0512 1213 0914 FF0E 1410 1011 1111 0505"            /* ....�.�......... */
	$"0915 1515 15FF 0505 0506 1212 0914 1003"            /* �....�......�... */
	$"0514 0E05 0505 1105 0505 0714 0511 090E"            /* ..............�. */
	$"FF0C 0909 0505 1111 1105 0609 1111 1105"            /* �.��.......�.... */
	$"0505 1212 0914 15FF 0C05 1111 1111 0505"            /* ....�..�........ */
	$"090C 1515 150E 1205 0512 1212 1314 0510"            /* �............... */
	$"0515 0B05 1105 0505 0505 1209 0511 09FF"            /* ...........�..�� */
	$"1513 0605 0511 1010 1105 050A 0511 1111"            /* ................ */
	$"1105 0505 1209 14FF 0E0D 1110 1105 0513"            /* .....�.�.�...... */
	$"0C0E 1413 15FF 0905 0605 0612 1209 0911"            /* .....��......��. */
	$"0615 1405 1005 0505 0505 1214 0511 0914"            /* ..............�. */
	$"0504 0514 FF05 1011 1011 0514 0911 1111"            /* ....�.......�... */
	$"1105 0512 0909 1415 FF15 0911 1105 1215"            /* ....��..�.�..... */
	$"0E09 0612 15FF 1412 1205 1206 1207 1411"            /* .�...�.......... */
	$"120B 1505 1105 0505 0612 0914 1205 1305"            /* ..........�..... */
	$"1111 1113 0E0C 0503 1005 0514 FF12 1111"            /* ............�... */
	$"1105 0505 0709 1415 0EFF 0E13 0505 0709"            /* .....�...�.....� */
	$"1205 0507 0C0E 1513 0605 0512 0609 0C05"            /* .............�.. */
	$"0709 1206 1205 0505 1206 0914 1205 1209"            /* .�........�....� */
	$"0511 0411 140C 1410 1111 1214 FF15 0505"            /* ............�... */
	$"0505 0512 1314 150F 150E FF09 0505 1212"            /* ..........��.... */
	$"1212 1214 0EFF 0E15 1205 0506 1209 FF09"            /* .....�.......��� */
	$"0505 0512 130B 0905 0407 0914 0505 0505"            /* ......�...�..... */
	$"1312 1111 060B 0D12 1105 060D FF0C 1405"            /* ......�....��... */
	$"0505 0512 0914 1515 150C 0911 0505 0505"            /* ....�.....�..... */
	$"1212 1212 14FF FFFF 1505 1105 120D 1411"            /* .....���.....�.. */
	$"0505 0505 0609 1501 040C 0911 0505 0505"            /* .....�....�..... */
	$"1209 1111 0509 150E 1305 0915 0E15 0505"            /* .�...�....�..... */
	$"0814 0813 1315 1509 0914 1105 1105 0512"            /* .......��....... */
	$"1206 1212 0915 FF0C 0911 1105 0512 1414"            /* ....�.�.�....... */
	$"0505 0505 1209 0B01 0414 1111 0505 0505"            /* .....�.......... */
	$"1209 0511 1109 0E0C 1513 140E 0B05 0505"            /* .�...�.......... */
	$"060A 1505 1111 1105 0612 1011 0505 1206"            /* ................ */
	$"1212 1212 1314 FF0E 1411 1111 0505 0615"            /* ......�......... */
	$"1405 0505 1213 1412 0905 1105 0505 0505"            /* ........�....... */
	$"0509 0511 0514 0C15 150D 15FF 1211 0505"            /* .�.......�.�.... */
	$"1209 0911 1111 1105 1305 1011 0505 0512"            /* .��............. */
	$"1212 0613 1314 1515 1411 1110 0505 0509"            /* ...............� */
	$"0D12 0612 1213 140A 0511 0511 0505 0505"            /* �............... */
	$"1213 1311 0514 0EFF 15FF 0C15 1111 0505"            /* .......�.�...... */
	$"1209 0911 0411 1105 0911 1011 1105 1212"            /* .��.....�....... */
	$"1212 1206 1214 0F0E 0911 1111 0505 1212"            /* ........�....... */
	$"1415 1212 1309 1414 1011 0505 0505 0505"            /* .....�.......... */
	$"1213 0911 0615 FFFF FF0E 0C12 1110 0505"            /* ..�...���....... */
	$"1207 0911 1111 0506 1411 1111 0505 1212"            /* ..�............. */
	$"1212 0612 0909 150E 1311 1103 1111 0512"            /* ....��.......... */
	$"090E 1406 1309 1512 1111 0505 0505 0512"            /* �....�.......... */
	$"1209 0905 14FF 0E0C FFFF 0910 1111 0505"            /* .��..�..���..... */
	$"0509 0A12 1111 060A 0B11 1111 0505 0612"            /* .�.............. */
	$"1212 1213 0914 0E0C 0511 1111 1105 0512"            /* ....�........... */
	$"090D 1508 1209 1411 1111 0505 0505 0512"            /* ��...�.......... */
	$"1209 0909 0EFF FFFF 0C09 1111 1111 0505"            /* .���.���.�...... */
	$"0509 1407 0512 090C 0C05 1111 0505 1212"            /* .�....�......... */
	$"1213 1209 0914 FF15 1103 1104 1111 1105"            /* ...��.�......... */
	$"1315 1515 1214 1310 1105 0505 0505 1205"            /* ................ */
	$"0614 0914 150E FFFF 1310 0304 1111 1111"            /* ..�...��........ */
	$"0509 1515 1209 150C 0911 1111 0505 1212"            /* .�...�..�....... */
	$"1213 1213 0915 0C09 1011 1105 1111 0505"            /* ....�..�........ */
	$"1214 1515 140A 1004 1105 0505 0505 1212"            /* ................ */
	$"0714 0511 120C FF14 0512 1211 1111 1105"            /* ......�......... */
	$"0509 140C 0912 0309 0905 1111 0505 1212"            /* .�..�..��....... */
	$"1312 1309 15FF 1412 1010 1111 1105 0505"            /* ...�.�.......... */
	$"0614 FF0E 0C09 1003 0505 0505 0505 0512"            /* ..�..�.......... */
	$"1409 0505 1314 FFFF FF14 0914 0511 1105"            /* .�....���.�..... */
	$"0509 1515 1305 0305 0A12 1111 0505 1212"            /* .�.............. */
	$"1313 0909 FF0E 1511 1111 1111 1111 0505"            /* ..���........... */
	$"1214 FF0E 1509 1011 0505 0505 0505 1213"            /* ..�..�.......... */
	$"0911 1105 1315 0B14 1205 0505 0614 1409"            /* �..............� */
	$"1209 1515 1203 0405 1209 1205 0512 1212"            /* .�.......�...... */
	$"1309 0915 0E0C 1403 1111 1111 1111 0505"            /* .��............. */
	$"1215 1513 0609 0911 1105 0505 0505 1209"            /* .....��........� */
	$"0511 1113 14FF 0905 0505 0505 1212 1415"            /* .....��......... */
	$"1515 1505 0205 1111 1105 0609 1514 0913"            /* ...........�..�. */
	$"1309 150E 0EFF 1404 1010 1111 1111 0505"            /* .�...�.......... */
	$"1315 1412 1212 0909 1105 0505 0506 0913"            /* ......��......�. */
	$"1111 1315 1411 1105 0505 0505 1206 0714"            /* ................ */
	$"1515 1504 0311 1010 1111 0506 1314 0C15"            /* ................ */
	$"1415 FF15 0909 0909 1111 1111 1105 0512"            /* ..�.����........ */
	$"090E 1205 1212 1315 0805 0506 1209 1311"            /* �............�.. */
	$"0509 FF12 1011 0505 0505 0505 0512 1208"            /* .��............. */
	$"14FF 1514 1010 0310 1010 1105 0509 1415"            /* .�...........�.. */
	$"0EFF FF15 0908 0709 0911 1111 1111 0512"            /* .��.�..��....... */
	$"1409 0505 0512 1209 1512 0505 1309 0609"            /* .�.....�.....�.� */
	$"15FF 1402 1011 0505 0512 0505 0505 1212"            /* .�.............. */
	$"0915 150D 1211 1010 1010 1011 0505 0915"            /* �..�..........�. */
	$"FFFF FF0C 1409 0913 0914 1111 1105 0614"            /* ���..��.�....... */
	$"0905 0505 0512 1209 FF15 1209 1412 1309"            /* �......��..�...� */
	$"090C 0902 0311 0505 0512 0512 0512 1212"            /* �.�............. */
	$"1314 1515 0911 1103 1011 1011 1105 0514"            /* ....�........... */
	$"15FF 0E0C 1515 1407 1314 FF14 1309 1413"            /* .�........�..�.. */
	$"1111 0505 0505 1213 0B0E 1413 1205 0512"            /* ................ */
	$"1214 1402 1011 0505 0505 0505 0505 0612"            /* ................ */
	$"1209 150E FF05 1111 1111 1111 1105 1209"            /* .�..�..........� */
	$"14FF 0E0C 1515 1513 1309 0EFF FF13 1309"            /* .�.......�.��..� */
	$"1111 0505 0505 0513 1515 1212 0505 0505"            /* ................ */
	$"1213 1402 1010 0505 0505 0505 1212 1212"            /* ................ */
	$"1209 1515 1514 0511 0505 1111 1105 0609"            /* .�.............� */
	$"150E 0C15 1515 0E06 1309 FF14 0505 1214"            /* .........��..... */
	$"0911 0505 1105 0512 1414 1205 1105 0512"            /* �............... */
	$"0512 0911 1011 1105 0505 0505 1205 1212"            /* ..�............. */
	$"1213 150C 1409 1206 1205 0511 0505 1214"            /* .....�.......... */
	$"15FF 0E0C 1515 0913 1314 0905 0512 1213"            /* .�....�...�..... */
	$"1414 1105 1105 0512 1513 0511 0505 1212"            /* ................ */
	$"1212 1309 1003 1111 0505 0505 0505 1212"            /* ...�............ */
	$"0609 0D14 0505 0505 1212 1305 0512 0914"            /* .��...........�. */
	$"FFFF 0E0C 1408 1213 1309 0505 1212 1208"            /* ��.......�...... */
	$"0915 1311 0511 0512 1412 1111 0505 1212"            /* �............... */
	$"1212 0614 1210 1111 0505 0505 0512 1206"            /* ................ */
	$"1209 1512 1111 1111 0405 0509 1409 140C"            /* .�.........�.�.. */
	$"0EFF 1412 0613 1213 1211 0505 0512 1212"            /* .�.............. */
	$"1309 1511 1105 0509 0905 1111 0505 1212"            /* .�.....��....... */
	$"0606 1209 1511 1011 0511 0505 0505 1212"            /* ...�............ */
	$"1209 1512 1011 1011 0310 0505 09FF FF0E"            /* .�..........���. */
	$"0C0E 1405 1212 1209 0511 0505 0512 0612"            /* .......�........ */
	$"1309 1413 0505 0614 0505 1111 0505 1212"            /* .�.............. */
	$"1206 1309 1514 0311 1105 0505 0505 1212"            /* ...�............ */
	$"0914 0E05 1111 1111 1010 1112 07FF 0C0E"            /* �............�.. */
	$"1515 0E09 1212 1309 1111 0505 0512 1212"            /* ...�...�........ */
	$"0609 1415 0912 1505 1105 0511 0505 1206"            /* .�..�........... */
	$"1213 1209 150C 1211 1111 1105 1205 1207"            /* ...�............ */
	$"14FF FF05 1111 0411 1010 0505 0715 FF0E"            /* .��...........�. */
	$"1509 150E 1312 0713 1011 0505 0512 1212"            /* .�.............. */
	$"0613 090C FF0C 0E11 0505 0511 0505 1212"            /* ..�.�........... */
	$"1213 1209 150E 1512 1105 0505 0512 1314"            /* ...�............ */
	$"FF0E FF12 1103 1110 1011 0505 0915 150E"            /* �.�.........�... */
	$"0906 0AFF FF14 1409 1105 0505 1205 1212"            /* �..��..�........ */
	$"1213 14FF 0EFF 0C09 0511 0505 0505 1212"            /* ...�.�.�........ */
	$"1213 1309 140C 150C 1512 0505 1313 0909"            /* ...�..........�� */
	$"1415 0C09 0411 1111 1111 0512 0915 FF09"            /* ...�........�.�� */
	$"0512 0915 0EFF FF14 1011 0505 0505 1212"            /* ..�..��......... */
	$"1213 090E FF0E 1515 0505 0505 0505 1206"            /* ..�.�........... */
	$"1212 0909 150E 150E FFFF FF14 0505 0512"            /* ..��....���..... */
	$"0914 140E 0511 1111 0411 0512 0AFF 1505"            /* �............�.. */
	$"0512 090C 1515 0C15 1011 0505 0505 0512"            /* ..�............. */
	$"1213 09FF 0E14 0809 1405 0505 0505 1212"            /* ..��...�........ */
	$"0708 0914 150E 150C 0E0C 0905 0511 0506"            /* ..�.......�..... */
	$"0909 1415 0911 1111 1105 0609 1515 0511"            /* ��..�......�.... */
	$"0506 0915 0E15 14FF 0511 1105 0512 0612"            /* ..�....�........ */
	$"1213 0915 0E09 1309 1413 1105 1212 1212"            /* ..�..�.�........ */
	$"1309 0914 1515 15FF 0E13 0511 1105 0612"            /* .��....�........ */
	$"1309 0915 FF06 0505 0506 090C 1411 0405"            /* .��.�.....�..... */
	$"0512 090E 0C09 130B 0911 1111 0505 1212"            /* ..�..�..�....... */
	$"1313 140E 1512 1213 0914 0512 1213 1213"            /* ........�....... */
	$"0909 0915 150E 1515 1211 1111 1105 1212"            /* ���............. */
	$"1213 0915 1514 0605 0609 1515 1211 1105"            /* ..�......�...... */
	$"0512 140C 1412 0614 FF12 1105 0505 1212"            /* ........�....... */
	$"1309 1415 0912 1212 1309 1513 1213 1313"            /* .�..�....�...... */
	$"1206 0512 1414 0E05 0505 1105 0505 0612"            /* ................ */
	$"1213 0909 0511 0512 1212 0609 140E 1205"            /* ..��.......�.... */
	$"0507 FF0D 0512 1209 15FF 1211 0505 1212"            /* ..��...�.�...... */
	$"0909 1514 0512 1212 1209 140C 1313 1409"            /* ��.......�.....� */
	$"1111 0506 090C 0D11 1105 0505 0512 0612"            /* ....�.�......... */
	$"0613 1211 1105 0605 0512 0613 0914 0D12"            /* ............�.�. */
	$"1214 FF09 0505 0513 0C0E 0E09 0505 0613"            /* ..��.......�.... */
	$"0815 1505 0505 0505 0612 0915 0505 1211"            /* ..........�..... */
	$"0506 0914 0CFF 1410 1011 1105 0612 1212"            /* ..�..�.......... */
	$"1212 1111 0505 0505 1212 1206 0609 1515"            /* .............�.. */
	$"09FF FF05 0505 1212 140E 1507 0505 1314"            /* ���............. */
	$"0C12 1111 0511 0505 0506 0714 1105 0505"            /* ................ */
	$"0505 1212 0914 1410 1111 0505 1212 1313"            /* ....�........... */
	$"0605 1011 0511 0505 0512 1212 1313 09FF"            /* ..............�� */
	$"FFFF FF12 0505 0512 14FF 1210 1105 1209"            /* ���......�.....� */
	$"1415 1111 1105 0505 0512 0914 0511 0505"            /* ..........�..... */
	$"0505 0512 0613 1406 1111 0512 1309 0913"            /* .............��. */
	$"0611 1011 0505 0505 0505 1206 1212 0915"            /* ..............�. */
	$"FFFF 0E09 0505 0512 0914 0310 0505 0512"            /* ��.�....�....... */
	$"0914 1411 1105 1105 0506 0714 1305 0505"            /* �............... */
	$"0505 0505 0612 1314 0905 0506 0914 0907"            /* ........�...�.�. */
	$"1303 1010 1105 0505 0505 0512 0612 0915"            /* ..............�. */
	$"FFFF FF0C 0505 0506 1405 1010 1105 0506"            /* ���............. */
	$"1314 1505 1105 0511 0512 1314 0E05 0511"            /* ................ */
	$"1105 0505 1205 1212 1509 0506 1414 0913"            /* .........�....�. */
	$"1302 0310 1105 0505 1205 0505 1212 0914"            /* ..............�. */
	$"0E15 1213 1414 1312 0903 1011 1105 0512"            /* ........�....... */
	$"0709 1414 1105 0505 0506 090C 0C12 0505"            /* .�........�..... */
	$"0511 1105 0505 0506 090C 0909 1414 090A"            /* ........�.��..�. */
	$"0902 1011 1105 0505 0505 0506 0506 0914"            /* �.............�. */
	$"0C14 0505 1314 1515 1510 1011 0505 0512"            /* ................ */
	$"1309 1415 0605 0505 0512 1409 1412 0511"            /* .�.........�.... */
	$"1111 1111 1105 0512 090E 0C15 1514 0B09"            /* ........�......� */
	$"1202 1011 1105 0505 1205 0612 1212 0914"            /* ..............�. */
	$"0E13 0505 0513 1515 0E09 0311 1105 0506"            /* .........�...... */
	$"1213 1415 FF09 0512 1313 1209 0913 1111"            /* ....��.....��... */
	$"1111 1111 1105 0512 0915 0D0C 1515 0912"            /* ........�.�...�. */
	$"0502 0203 1105 0505 1205 1212 1209 090B"            /* .............��. */
	$"0E05 1105 0506 090E FF0C 0511 0505 0512"            /* ......�.�....... */
	$"1209 1414 FF15 1212 0613 1313 0909 0911"            /* .�..�.......���. */
	$"0505 1111 0505 0512 0915 150E FF15 0505"            /* ........�...�... */
	$"0503 0010 1104 0505 1205 1212 1308 0915"            /* ..............�. */
	$"1511 1105 0505 1314 FF15 1411 0505 0612"            /* ........�....... */
	$"1213 0914 FF09 1212 1313 0909 0909 1512"            /* ..�.��....����.. */
	$"1111 1105 1105 0513 140C 150C 1512 1105"            /* ................ */
	$"0511 0002 0311 1105 0505 1212 1213 1415"            /* ................ */
	$"1411 1111 0505 1214 FF0C 1513 0505 1206"            /* ........�....... */
	$"1208 0914 1512 1212 1313 1309 0909 1414"            /* ..�........���.. */
	$"1111 1111 0505 1209 1515 150E 1211 1105"            /* .......�........ */
	$"1105 0002 1110 1105 0505 1212 1309 140C"            /* .............�.. */
	$"0911 1111 1105 0609 0E15 1514 0505 0512"            /* �......�........ */
	$"1213 0914 0C12 0506 1309 0909 0909 1415"            /* ..�......�����.. */
	$"1111 0411 0512 090B 0E0B 1413 0211 0505"            /* ......�......... */
	$"0505 1102 0310 0305 1105 0613 0914 1515"            /* ............�... */
	$"0511 1011 1105 1209 FF0C 1515 1205 0512"            /* .......��....... */
	$"1213 0914 1512 0512 1309 0909 0909 0915"            /* ..�......������. */
	$"0511 1106 0914 0C0E 1509 1410 1011 1105"            /* ....�....�...... */
	$"1111 1212 1003 0311 1111 0513 0915 0E09"            /* ............�..� */
	$"1111 1011 1105 1209 0C15 1515 0605 0512"            /* .......�........ */
	$"1213 0909 1512 0512 1309 0909 0909 1414"            /* ..��.....�����.. */
	$"1211 0609 0914 1515 0512 0614 0505 0505"            /* ...��........... */
	$"1105 0512 0911 0311 0311 0506 1415 0911"            /* ....�.........�. */
	$"1111 1111 0505 1213 0C0E 1515 1305 0512"            /* ................ */
	$"0613 0914 1405 0512 1213 0909 0909 0915"            /* ..�.......�����. */
	$"1405 0909 0909 140C 0905 090E 1311 0505"            /* ..����..�.�..... */
	$"0505 0505 1215 1406 0505 0715 0E0E 1311"            /* ................ */
	$"1111 1111 1105 0509 0C15 1515 0605 0505"            /* .......�........ */
	$"1207 0914 140A 0512 1209 0909 0909 0000"            /* ..�......�����.. */
	$"0000 0000 0016 0000 CCCC 9999 9999 0001"            /* ........�̙���.. */
	$"CCCC 9999 6666 0002 9999 9999 9999 0003"            /* �̙�ff..������.. */
	$"9999 9999 6666 0004 9999 6666 6666 0005"            /* ����ff..��ffff.. */
	$"6666 6666 6666 0006 6666 6666 3333 0007"            /* ffffff..ffff33.. */
	$"6666 3333 3333 0008 3333 6666 3333 0009"            /* ff3333..33ff33.� */
	$"3333 3333 3333 000A 3333 3333 0000 000B"            /* 333333..3333.... */
	$"2222 0000 0000 000C 1111 0000 0000 000D"            /* "".............� */
	$"0000 2222 0000 000E 0000 1111 0000 000F"            /* ..""............ */
	$"0000 0000 1111 0010 8888 8888 8888 0011"            /* ........������.. */
	$"7777 7777 7777 0012 5555 5555 5555 0013"            /* wwwwww..UUUUUU.. */
	$"4444 4444 4444 0014 2222 2222 2222 0015"            /* DDDDDD.."""""".. */
	$"1111 1111 1111 00FF 0000 0000 0000"                 /* .......�...... */
};

