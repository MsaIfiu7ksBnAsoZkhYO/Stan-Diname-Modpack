//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#priority 1000

/* - I don't think I need to import these here as the values are cast in Global already.
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
*/

//=====================================================================================================================================================================================================	
//	Adjustifying melting recipes.
//=====================================================================================================================================================================================================


	//	Remove Seared Stone from stone.	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.removeRecipe(<liquid:stone>);
mods.tconstruct.Melting.removeRecipe(<liquid:clay>);

	//	Glass 	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.removeRecipe(<liquid:glass>, <minecraft:sand>);
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250, <ore:sandSilica>, 599);
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 375, <ore:shardGlass>, 599);

	//	Custom Ingot Melting Recipes.   	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:molybdochalkos> * 144, <contenttweaker:molybdochalkos_ingot>, 800);
mods.tconstruct.Melting.addRecipe(<liquid:magmolybdochalkosmuth> * 144, <contenttweaker:magmolybdochalkosmuth_ingot>, 700);
mods.tconstruct.Melting.addRecipe(<liquid:cerrosafe> * 144, <contenttweaker:cerrosafe_ingot>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 144, (<minecraft:iron_ingot>), 1855);

	//	Clay related things	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:lime_liquid> * 72, (<ore:dustLime>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:flint_liquid> * 72, (<ore:dustFlint>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:sand_liquid> * 144, (<ore:sand>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:sand_liquid> * 18, (<ore:layerSand>), 400);
//mods.tconstruct.Melting.addRecipe(<liquid:carbon_liquid> * 144, (<ore:dustCarbon>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:gravel_liquid> * 144, (<ore:gravel>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:gravel_liquid> * 36, (<ore:lumpGravel>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:gravel_liquid> * 18, (<ore:layerGravel>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:ash_liquid> * 72, (<ore:dustAsh>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:bone_liquid> * 72, (<ore:dustBone>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:sulfur> * 666, (<ore:dustSulfur>), 400);

	//	The Clay liquids themselves	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 144, (<ore:clay>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 18, (<ore:layerClay>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:porcelain_clay_liquid> * 144, (<ore:clayPorcelain>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:coke_clay_liquid> * 144, (<ore:clayCoke>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:kiln_clay_liquid> * 144, (<ore:clayKiln>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:blast_clay_liquid> * 144, (<ore:clayBlast>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:seared_clay_liquid> * 144, (<ore:claySeared>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:scorched_clay_liquid> * 144, (<ore:clayScorched>), 400);

	//	Unfired Clay bricks	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 144, (<ore:brickClay>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 144, (<ore:plateClayRaw>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:porcelain_clay_liquid> * 144, (<ore:brickPorcelain>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:coke_clay_liquid> * 144, (<ore:brickCoke>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:kiln_clay_liquid> * 144, (<ore:brickKiln>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:blast_clay_liquid> * 144, (<ore:brickBlast>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:seared_clay_liquid> * 144, (<ore:brickSeared>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:scorched_clay_liquid> * 144, (<ore:brickScorched>), 400);

	//	Clay Nuggets	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 16, (<ore:nuggetClay>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:porcelain_clay_liquid> * 16, (<ore:nuggetPorcelain>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:coke_clay_liquid> * 16, (<ore:nuggetCoke>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:kiln_clay_liquid> * 16, (<ore:nuggetKiln>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:blast_clay_liquid> * 16, (<ore:nuggetBlast>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:seared_clay_liquid> * 16, (<ore:nuggetSeared>), 400);
mods.tconstruct.Melting.addRecipe(<liquid:scorched_clay_liquid> * 16, (<ore:nuggetScorched>), 400);

//=====================================================================================================================================================================================================	
//	Dynamic recipe adjustments
//=====================================================================================================================================================================================================


	//Defines the part types and fluid amounts that will get crucible melting recipes
var PartTypes = {
	"chunk"		:	144,
	"ingot"		:	144,
	"block"		:	1296,
	"nugget"	:	16,
	"dust"		:	144,
	"dustSmall"	:	36,
	"dustTiny"	:	16,
	"plate"		:	144,
	"stick"		:	72,
	"gear"		:	576,	
} as  int[string];



	//	Output is liquids, so thats what we iterate through
for Liquid in GlobalMoltenMetal {
	var MeltingTemp = GlobalMeltingTemp[Liquid];
	var MoltenMetal = GlobalMoltenMetal[Liquid];
		
		//	Remove all existing melting recipes
	mods.tconstruct.Melting.removeRecipe(MoltenMetal);
		//	Check that a melting temperature is defined for Liquid
	if(	!isNull( MeltingTemp ) ) {
			//	Make the Crucible recipes based on the defined PartTypes above
		for Part,Amount in PartTypes {
				//	Assign the input item oredictionary entry so we only iterate throught the table once.
			var Input = GlobalGimmeOreDict(Part,Liquid);
				//	Check if the oredictionary entry has an item to use
			if( 
				!(Input.empty) 
			) { 
				mods.tconstruct.Melting.addRecipe( 
					MoltenMetal * Amount, 
					Input, 
					MeltingTemp + 300
				);
			}			
		}
			//	Add Anvil melting recipe
		var Anvil = GlobalAnvil[Liquid];
		if( 
			!isNull( Anvil ) 
		) { 
			mods.tconstruct.Melting.addRecipe( 
				MoltenMetal * 2160 , 
				Anvil , 
				MeltingTemp + 300
			); 
		}

	}
}