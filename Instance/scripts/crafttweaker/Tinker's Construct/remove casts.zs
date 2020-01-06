
/* - Script merged with Casting.zs


//This script removes casting recepies for tinker materials,
//and adds back in the sharpening kit, polishing kit, and blank cast.


//==============================================================
//Importing thingies
//==============================================================

import crafttweaker.liquid.ILiquidStack;
import modtweaker.tconstruct.ITICMaterial;


//==============================================================
//Predefining arrays and stuff
//==============================================================

//define all liquids that can be used to make the casts.
	var CastMetals = [
		<liquid:gold>,
		<liquid:brass>,
		<liquid:alubrass>,
	] as  ILiquidStack[];
	

//==============================================================
//Adjusting recepies
//==============================================================

//Remove recepies for making casts
	mods.tconstruct.Casting.removeTableRecipe(<tconstruct:clay_cast>);
	mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast>);

//Add recepies for each type of cast metal
	for Metal in CastMetals{   
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>, null, Metal, 144, false, 200);
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearWood>, Metal, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tconstruct:fletching"}), <tconstruct:fletching>.withTag({Material:"feather"}), Metal, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tconstruct:arrow_shaft"}), <tconstruct:arrow_shaft>.withTag({Material:"wood"}), Metal, 144, true, 200);
		//mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, Metal, 144, true, 200);
		
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tconstruct:sharpening_kit"}), <tconstruct:sharpening_kit>.withTag({Material:"wood"}), Metal, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"conarm:polishing_kit"}), <conarm:polishing_kit>.withTag({Material:"wood"}), Metal, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tcomplement:chisel_head"}), <tcomplement:chisel_head>.withTag({Material:"wood"}), Metal, 144, true, 200);
		
	}
	

print("           =================== remove casts.zs END =================== ");


/* 
To-do list
	
Do sharpening and polishing kits use oredict?  I might be able to use that instead.	
	
*/

