//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#loader contenttweaker
#priority 9001

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;


//=====================================================================================================================================================================================================	
//	Creates blocks.  Amazing right?
//=====================================================================================================================================================================================================


val StoneBlocks = [
	"forging_anvil_cast",
	"forging_anvil_cast_wet",
	
	"chalk_cobble",
	"chert_cobble",
	"dolomite_cobble",
	"greywacke_cobble",
	"shale_cobble",
	"siltstone_cobble",

	"zinc_ore",
	"manganese_ore",
	"quartz_ore",
	"chromium_ore", 
	"osmium_ore",
] as string[];

for Block in StoneBlocks {
	var CurrentBlock=VanillaFactory.createBlock( Block , <blockmaterial:rock> );
	CurrentBlock.setToolLevel(0);
	CurrentBlock.setBlockHardness(3);
	CurrentBlock.register();
}

/*
	//	Forging Anvil cast / mold	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createBlock("forging_anvil_cast", <blockmaterial:sand>).register();
VanillaFactory.createBlock("forging_anvil_cast_wet", <blockmaterial:sand>).register();
*/

/*
	//	Add Missing sedimentary rock cobblestones	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createBlock("chalk_cobble", <blockmaterial:rock>).register();
VanillaFactory.createBlock("chert_cobble", <blockmaterial:rock>).register();
VanillaFactory.createBlock("dolomite_cobble", <blockmaterial:rock>).register();
VanillaFactory.createBlock("greywacke_cobble", <blockmaterial:rock>).register();
VanillaFactory.createBlock("shale_cobble", <blockmaterial:rock>).register();
VanillaFactory.createBlock("siltstone_cobble", <blockmaterial:rock>).register();
*/

	//	Menril Log Bark because I need such a block in my builds	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createBlock("menril_bark", <blockmaterial:wood>).register();


/*
	//	Ore blocks so they has a consistant internal name	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createBlock("zinc_ore", <blockmaterial:rock>).register();
VanillaFactory.createBlock("manganese_ore", <blockmaterial:rock>).register();
VanillaFactory.createBlock("quartz_ore", <blockmaterial:rock>).register();
VanillaFactory.createBlock("chromium_ore", <blockmaterial:rock>).register();
VanillaFactory.createBlock("osmium_ore", <blockmaterial:rock>).register();
*/