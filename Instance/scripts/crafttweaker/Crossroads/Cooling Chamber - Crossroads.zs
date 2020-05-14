//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;


//=====================================================================================================================================================================================================	
//  Format
//=====================================================================================================================================================================================================	


	/** Add a new fluid cooling chamber recipe that produces the output stack from the input liquid.
	 *
	 * @param output
	 *            the result of the recipe
	 * @param input
	 *            the input liquid and amount that is required to produce the result
	 * @param maxTemp
	 *            the maximum temperature allowed
	 * @param heatAdded
	 *            the amount of heat that is added */


	/** Remove the cooling chamber recipe for the input liquid.
	 *
	 * @param input
	 *            the input liquid of the recipe */

//Add recipe
//mods.crossroads.FluidCoolingChamber.addRecipe( IItemStack output, ILiquidStack input, double maxTemp, double heatAdded );

//Remove Recipe
//mods.crossroads.FluidCoolingChamber.removeRecipe( ILiquidStack input );



//=====================================================================================================================================================================================================	
//  Remove cooling recipes
//=====================================================================================================================================================================================================	

mods.crossroads.FluidCoolingChamber.removeRecipe( <liquid:iron> );

//=====================================================================================================================================================================================================	
//  Add Cooling recipes for unfired clay bricks
//=====================================================================================================================================================================================================	


var ClayBrickItems = {
	<notreepunching:clay_brick>				:	<liquid:clay>,
	<ceramics:unfired_clay:5>				:	<liquid:porcelain_clay_liquid>,
	<contenttweaker:unfired_coke_brick>		:	<liquid:coke_clay_liquid>,
	<contenttweaker:unfired_kiln_brick>		:	<liquid:kiln_clay_liquid>,
	<contenttweaker:unfired_blast_brick>	:	<liquid:blast_clay_liquid>,
	<contenttweaker:unfired_seared_brick>	:	<liquid:seared_clay_liquid>,
	<contenttweaker:unfired_scorched_brick>	:	<liquid:scorched_clay_liquid>,
} as ILiquidStack[IItemStack];

for Output,Input in ClayBrickItems {

	mods.crossroads.FluidCoolingChamber.addRecipe( 
		Output, 
		Input * 144, 
		100.0, 
		10.0 
	);

}


//=====================================================================================================================================================================================================	
//  Add recipes for low temperature ingots 
//=====================================================================================================================================================================================================	


var SandCastable = {
	<ore:ingotLead>						:	<liquid:lead>,
	<ore:ingotBronze>					:	<liquid:bronze>,
	<ore:ingotMolybdochalkos>			:	<liquid:molybdochalkos>,
	<ore:ingotSilver>					:	<liquid:silver>,
	<ore:ingotZinc>						:	<liquid:zinc>,
	<ore:ingotElectrum>					:	<liquid:electrum>,
} as ILiquidStack[IOreDictEntry];


for Ingot,Liquid in SandCastable {

	mods.crossroads.FluidCoolingChamber.addRecipe( 
		Ingot.firstItem, 
		Liquid * 144, 
		1000.0, 
		100.0 
	);

}


//=====================================================================================================================================================================================================	
//  Glass Blocks
//=====================================================================================================================================================================================================	


	mods.crossroads.FluidCoolingChamber.addRecipe( 
		<minecraft:glass>, 
		<liquid:glass> * 1000, 
		1000.0, 
		100.0 
	);