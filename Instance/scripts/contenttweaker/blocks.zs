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
