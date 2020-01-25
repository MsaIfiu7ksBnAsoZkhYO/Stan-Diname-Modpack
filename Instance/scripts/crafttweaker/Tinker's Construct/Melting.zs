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
mods.tconstruct.Melting.addRecipe(<liquid:lime_liquid> * 144, (<ore:dustLime>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:flint_liquid> * 36, (<ore:dustFlint>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:sand_liquid> * 144, (<ore:sand>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:carbon_liquid> * 144, (<ore:dustCarbon>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:gravel_liquid> * 144, (<ore:gravel>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:ash_liquid> * 144, (<ore:dustAsh>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:bone_liquid> * 36, (<ore:dustBone>), 300);

	//	The Clay liquids themselves	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:porcelain_clay_liquid> * 144, (<ore:clayPorcelain>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:coke_clay_liquid> * 144, (<ore:clayCoke>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:kiln_clay_liquid> * 144, (<ore:clayKiln>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:blast_clay_liquid> * 144, (<ore:clayBlast>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:seared_clay_liquid> * 144, (<ore:claySeared>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:scorched_clay_liquid> * 144, (<ore:clayScorched>), 300);

	//	Unfired Clay bricks	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:porcelain_clay_liquid> * 144, (<ore:brickPorcelain>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:coke_clay_liquid> * 144, (<ore:brickCoke>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:kiln_clay_liquid> * 144, (<ore:brickKiln>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:blast_clay_liquid> * 144, (<ore:brickBlast>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:seared_clay_liquid> * 144, (<ore:brickSeared>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:scorched_clay_liquid> * 144, (<ore:brickScorched>), 300);

	//	Clay Nuggets	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:porcelain_clay_liquid> * 16, (<ore:nuggetPorcelain>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:coke_clay_liquid> * 16, (<ore:nuggetCoke>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:kiln_clay_liquid> * 16, (<ore:nuggetKiln>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:blast_clay_liquid> * 16, (<ore:nuggetBlast>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:seared_clay_liquid> * 16, (<ore:nuggetSeared>), 300);
mods.tconstruct.Melting.addRecipe(<liquid:scorched_clay_liquid> * 16, (<ore:nuggetScorched>), 300);

//=====================================================================================================================================================================================================	
//	Dynamic recipe adjustments
//=====================================================================================================================================================================================================


	//	Smeltery works in liquids, so we iterate through the list of molten metals	_______________________________________________________________________________________________________________________________________________________________________
for Liquid in GlobalMoltenMetal {
		
		//	Remove all melting recipes from fluid list for a blank slate	_______________________________________________________________________________________________________________________________________________________________________
	mods.tconstruct.Melting.removeRecipe(GlobalMoltenMetal[Liquid]);
		
		//	Check if a new melting temperature exists  Without one the smeltery calculates one for us but that comma probably causes a failure.	_______________________________________________________________________________________________________________________________________________________________________
	if(	
		!isNull( GlobalMeltingTemp[Liquid] ) 
	) {

			//	Make the Melting Rewcipes	_______________________________________________________________________________________________________________________________________________________________________
		if( !isNull( GlobalChunk[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 144 , GlobalChunk[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalIngot[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 144 , GlobalIngot[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalBlock[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 1296 , GlobalBlock[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalNugget[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 16 , GlobalNugget[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalDust[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 144 , GlobalDust[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalDustSmall[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 36 , GlobalDustSmall[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalDustTiny[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 16 , GlobalDustTiny[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalPlate[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 144 , GlobalPlate[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalStick[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 72 , GlobalStick[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalGear[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 576 , GlobalGear[Liquid] , GlobalMeltingTemp[Liquid] ); }
		if( !isNull( GlobalAnvil[Liquid] ) ) { mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 2160 , GlobalAnvil[Liquid] , GlobalMeltingTemp[Liquid] ); }

	}

}