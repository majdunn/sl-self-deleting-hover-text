// ABOUT THIS SCRIPT
// This script will set the hover text of your prim and then delete itself.

/***********************************************************************/
// VARIABLES - Set these variables to your preference.
/***********************************************************************/

// Set your text here.
// Change the text BETWEEN the " ". Leave the " "
// TIP: Add /n to make a new line. ie "Your text here./nSecond line"
string hoverText = "Your text here./nSecond line";

// Set the color of your text here.
// See http://wiki.secondlife.com/wiki/Category:LSL_Color for a color chart.
vector hoverColor = <1.0,1.0,1.0>;

// Set the transparency of the hover text here.
// Choose between 0.0 and 1.0 (0.0 = transparent - 1.0 = opaque)
float hoverAlpha = 1.0;

/***********************************************************************/
// RUN THE PROGRAM
// Do NOT edit below this line unless you know what you are doing!
/***********************************************************************/

init()
{
	llSetText(hoverText, hoverColor, hoverAlpha);
	llRemoveInventory(llGetScriptName());
}

default
{
	state_entry()
	{
		init(); // initialize the script
	}
	on_rez(integer start_param)
	{
		init(); // initialize the script
	}
	changed(integer change)
	{
		if (change & (CHANGED_INVENTORY)) // if inventory changes
            init(); // initialize the script
	}
}

// MIT LICENCE
// Copyright 2014 MJ Dunn <mjdunnonline@gmail.com>
