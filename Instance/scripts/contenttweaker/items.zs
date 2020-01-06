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

	//	Wrought Iron Ingot	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("wrought_iron_ingot").register();

	//	Copshowium parts	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("copshowium_plate").register();
VanillaFactory.createItem("copshowium_rod").register();

	//	Forging Anvil cast / mold	_______________________________________________________________________________________________________________________________________________________________________
//VanillaFactory.createItem("forging_anvil_mold").register();
//VanillaFactory.createItem("forging_anvil_cast").register();
//VanillaFactory.createItem("forging_anvil_cast_wet").register();

	//	Sand Ingot Cast	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("sand_ingot_cast").register();
VanillaFactory.createItem("sand_ingot_cast_wet").register();

	//	Clay Nugget for sand molds	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("clay_nugget").register();

	//	Coke Brick	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("coke_clay").register();
VanillaFactory.createItem("unfired_coke_brick").register();
VanillaFactory.createItem("coke_brick").register();



//=====================================================================================================================================================================================================	
//	Recreate Jaopca chunks that don't play nice with Magneticraft's craftweaker intgration.
//=====================================================================================================================================================================================================


	//	Recreate Magneticraft chunks from Jaopca	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("chunk_adamantine").register();
VanillaFactory.createItem("chunk_amber").register();
VanillaFactory.createItem("chunk_amethyst").register();
VanillaFactory.createItem("chunk_antimony").register();
VanillaFactory.createItem("chunk_aquamarine").register();
VanillaFactory.createItem("chunk_ardite").register();
VanillaFactory.createItem("chunk_astral_starmetal").register();
VanillaFactory.createItem("chunk_beryllium").register();
VanillaFactory.createItem("chunk_bismuth").register();
VanillaFactory.createItem("chunk_boron").register();
VanillaFactory.createItem("chunk_cadmium").register();
VanillaFactory.createItem("chunk_chromium").register();
VanillaFactory.createItem("chunk_coal").register();
VanillaFactory.createItem("chunk_coldiron").register();
VanillaFactory.createItem("chunk_diamond").register();
VanillaFactory.createItem("chunk_dilithium").register();
VanillaFactory.createItem("chunk_emerald").register();
VanillaFactory.createItem("chunk_ender_biotite").register();
VanillaFactory.createItem("chunk_iridium").register();
VanillaFactory.createItem("chunk_lapis").register();
VanillaFactory.createItem("chunk_lithium").register();
VanillaFactory.createItem("chunk_magnesium").register();
VanillaFactory.createItem("chunk_malachite").register();
VanillaFactory.createItem("chunk_manganese").register();
VanillaFactory.createItem("chunk_mercury").register();
VanillaFactory.createItem("chunk_peridot").register();
VanillaFactory.createItem("chunk_platinum").register();
VanillaFactory.createItem("chunk_plutonium").register();
VanillaFactory.createItem("chunk_quartz").register();
VanillaFactory.createItem("chunk_quartz_black").register();
VanillaFactory.createItem("chunk_redstone").register();
VanillaFactory.createItem("chunk_ruby").register();
VanillaFactory.createItem("chunk_rutile").register();
VanillaFactory.createItem("chunk_salt").register();
VanillaFactory.createItem("chunk_sapphire").register();
VanillaFactory.createItem("chunk_starsteel").register();
VanillaFactory.createItem("chunk_sulfur").register();
VanillaFactory.createItem("chunk_tantalum").register();
VanillaFactory.createItem("chunk_tanzanite").register();
VanillaFactory.createItem("chunk_thorium").register();
VanillaFactory.createItem("chunk_titanium").register();
VanillaFactory.createItem("chunk_topaz").register();
VanillaFactory.createItem("chunk_uranium").register();
VanillaFactory.createItem("chunk_zirconium").register();

	//	Recreate Magneticraft Rocky chunks from Jaopca	_______________________________________________________________________________________________________________________________________________________________________
VanillaFactory.createItem("rockychunk_adamantine").register();
VanillaFactory.createItem("rockychunk_amber").register();
VanillaFactory.createItem("rockychunk_amethyst").register();
VanillaFactory.createItem("rockychunk_antimony").register();
VanillaFactory.createItem("rockychunk_aquamarine").register();
VanillaFactory.createItem("rockychunk_ardite").register();
VanillaFactory.createItem("rockychunk_astral_starmetal").register();
VanillaFactory.createItem("rockychunk_beryllium").register();
VanillaFactory.createItem("rockychunk_bismuth").register();
VanillaFactory.createItem("rockychunk_boron").register();
VanillaFactory.createItem("rockychunk_cadmium").register();
VanillaFactory.createItem("rockychunk_chromium").register();
VanillaFactory.createItem("rockychunk_coal").register();
VanillaFactory.createItem("rockychunk_coldiron").register();
VanillaFactory.createItem("rockychunk_diamond").register();
VanillaFactory.createItem("rockychunk_dilithium").register();
VanillaFactory.createItem("rockychunk_emerald").register();
VanillaFactory.createItem("rockychunk_ender_biotite").register();
VanillaFactory.createItem("rockychunk_iridium").register();
VanillaFactory.createItem("rockychunk_lapis").register();
VanillaFactory.createItem("rockychunk_lithium").register();
VanillaFactory.createItem("rockychunk_magnesium").register();
VanillaFactory.createItem("rockychunk_malachite").register();
VanillaFactory.createItem("rockychunk_manganese").register();
VanillaFactory.createItem("rockychunk_mercury").register();
VanillaFactory.createItem("rockychunk_peridot").register();
VanillaFactory.createItem("rockychunk_platinum").register();
VanillaFactory.createItem("rockychunk_plutonium").register();
VanillaFactory.createItem("rockychunk_quartz").register();
VanillaFactory.createItem("rockychunk_quartz_black").register();
VanillaFactory.createItem("rockychunk_redstone").register();
VanillaFactory.createItem("rockychunk_ruby").register();
VanillaFactory.createItem("rockychunk_rutile").register();
VanillaFactory.createItem("rockychunk_salt").register();
VanillaFactory.createItem("rockychunk_sapphire").register();
VanillaFactory.createItem("rockychunk_starsteel").register();
VanillaFactory.createItem("rockychunk_sulfur").register();
VanillaFactory.createItem("rockychunk_tantalum").register();
VanillaFactory.createItem("rockychunk_tanzanite").register();
VanillaFactory.createItem("rockychunk_thorium").register();
VanillaFactory.createItem("rockychunk_titanium").register();
VanillaFactory.createItem("rockychunk_topaz").register();
VanillaFactory.createItem("rockychunk_uranium").register();
VanillaFactory.createItem("rockychunk_zirconium").register();