//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#loader contenttweaker
#priority 9001

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;


	//	Forging Anvil cast / mold	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createBlock("forging_anvil_cast", <blockmaterial:sand>).register();
VanillaFactory.createBlock("forging_anvil_cast_wet", <blockmaterial:sand>).register();


	//	Add Missing sedimentary rock cobblestones	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createBlock("chalk_cobble", <blockmaterial:sand>).register();
VanillaFactory.createBlock("chert_cobble", <blockmaterial:sand>).register();
VanillaFactory.createBlock("dolomite_cobble", <blockmaterial:sand>).register();
VanillaFactory.createBlock("greywacke_cobble", <blockmaterial:sand>).register();
VanillaFactory.createBlock("shale_cobble", <blockmaterial:sand>).register();
VanillaFactory.createBlock("siltstone_cobble", <blockmaterial:sand>).register();