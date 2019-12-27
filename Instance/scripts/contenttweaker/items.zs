//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#loader contenttweaker
#priority 9001

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;


//=====================================================================================================================================================================================================	
//	Create new items
//=====================================================================================================================================================================================================

	//	Lime things for mortar	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("quicklime").register();
VanillaFactory.createItem("quicklime2").register();
VanillaFactory.createItem("limedust").register();

	//	Flint dust for alternate Porcelain recipe	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("flintdust").register();

	//	Porcelain brick to mimic: clay ball > clay brick > fired brick 	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("porcelain_brick").register();

	//	Custom pewter material ingots that don't exist	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("molybdochalkos_ingot").register();
VanillaFactory.createItem("magmolybdochalkosmuth_ingot").register();

