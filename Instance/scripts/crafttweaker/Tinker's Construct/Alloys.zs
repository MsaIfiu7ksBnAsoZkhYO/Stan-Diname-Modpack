//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);

import crafttweaker.liquid.ILiquidStack;

	//Fix the Steel smeltery recipes to use one ratio.
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
mods.tconstruct.Alloy.addRecipe(<liquid:steel> * 9, [<liquid:iron> * 9, <liquid:coal> * 25]);



	//Refined Storage Quartz enriched Iron
//mods.tconstruct.Alloy.addRecipe(<liquid:quartz_enriched_iron> * 4, [<liquid:iron> * 3, <liquid:quartz> * 1]);

	//Mythril
//mods.tconstruct.Alloy.addRecipe(<liquid:mythril> * 1, [<liquid:mithril> * 1, <liquid:xu_enchanted_metal> * 2, <liquid:vibrant> * 2]);

	//Titanium Alloys
//mods.tconstruct.Alloy.addRecipe(<liquid:titaniumiridium> * 2, [<liquid:titanium> * 1, <liquid:iridium> * 1]);
//mods.tconstruct.Alloy.addRecipe(<liquid:titaniumaluminide> * 3, [<liquid:titanium> * 3, <liquid:aluminum> * 7]);



	//remove alloys that full ingot
mods.tconstruct.Alloy.removeRecipe(<liquid:invar>);
mods.tconstruct.Alloy.removeRecipe(<liquid:constantan>);
mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:lumium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:clay>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);


	//alloy recipes at lowest posible ratios
mods.tconstruct.Alloy.addRecipe(<liquid:invar> * 3, [<liquid:iron> * 2, <liquid:nickel> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:constantan> * 2, [<liquid:copper> * 1, <liquid:nickel> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:signalum> * 16, [<liquid:copper> * 12, <liquid:silver> * 4, <liquid:redstone> * 25]);
mods.tconstruct.Alloy.addRecipe(<liquid:lumium> * 72, [<liquid:tin> * 54, <liquid:silver> * 18, <liquid:glowstone> * 125]);
mods.tconstruct.Alloy.addRecipe(<liquid:enderium> * 72, [<liquid:lead> * 54, <liquid:platinum> * 18, <liquid:ender> * 125]);
mods.tconstruct.Alloy.addRecipe(<liquid:clay> * 72, [<liquid:dirt> * 72, <liquid:stone> * 36, <liquid:water> * 125]);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 18, [<liquid:iron> * 18, <liquid:blood> * 5, <liquid:clay> * 9]);


	//	New Alloys
mods.tconstruct.Alloy.addRecipe(<liquid:molybdochalkos> *9, [<liquid:lead> * 9, <liquid:copper> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:magmolybdochalkosmuth> * 2, [<liquid:molybdochalkos> * 2, <liquid:magnesium> * 1, <liquid:bismuth> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:cerrosafe> * 4, [<liquid:bismuth> * 4, <liquid:lead> * 3, <liquid:tin> * 1, <liquid:cadmium> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:iron> * 1, [<liquid:bloom> * 1 , <liquid:dirt> * 1]);
	
	//	Porcelain Clay
mods.tconstruct.Alloy.addRecipe(<liquid:porcelain_clay_liquid> * 1, [<liquid:clay> * 1, <liquid:flint_liquid> * 1, <liquid:sand_liquid> * 1, <liquid:water> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:porcelain_clay_liquid> * 1, [<liquid:clay> * 1, <liquid:bone_liquid> * 1, <liquid:sand_liquid> * 1, <liquid:water> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:porcelain_clay_liquid> * 1, [<liquid:clay> * 1, <liquid:ash_liquid> * 1, <liquid:sand_liquid> * 1, <liquid:water> * 1]);
	
	//	Coke Clay
mods.tconstruct.Alloy.addRecipe(<liquid:coke_clay_liquid> * 1, [<liquid:porcelain_clay_liquid> * 1, <liquid:gravel_liquid> * 1, <liquid:sand_liquid> * 4, <liquid:water> * 1]);

	//	Kiln Clay
mods.tconstruct.Alloy.addRecipe(<liquid:kiln_clay_liquid> * 1, [<liquid:coke_clay_liquid> * 1, <liquid:ash_liquid> * 1, <liquid:sand_liquid> * 4, <liquid:water> * 1]);

	//	Blast Clay
mods.tconstruct.Alloy.addRecipe(<liquid:blast_clay_liquid> * 1, [<liquid:kiln_clay_liquid> * 1, <liquid:coke_clay_liquid> * 1, <liquid:carbon_liquid> * 1, <liquid:water> * 1]);

	//	Seared Clay
mods.tconstruct.Alloy.addRecipe(<liquid:seared_clay_liquid> * 1, [<liquid:porcelain_clay_liquid> * 1, <liquid:gravel_liquid> * 1, <liquid:sand_liquid> * 1, <liquid:water> * 1]);

	//	Scorched Clay
mods.tconstruct.Alloy.addRecipe(<liquid:scorched_clay_liquid> * 1, [<liquid:seared_clay_liquid> * 1, <liquid:blast_clay_liquid> * 1, <liquid:sulfur> * 1, <liquid:water> * 1]);

	//	Molding Sand
mods.tconstruct.Alloy.addRecipe(
	<liquid:moldsand> * 125,
	[
		<liquid:sand_liquid> * 18,
		<liquid:clay> * 2,
		<liquid:water> * 125
	]
);

	//	Mortar
mods.tconstruct.Alloy.addRecipe(
	<liquid:mortar> * 125,
	[
		<liquid:sand_liquid> * 216,
		<liquid:lime_liquid> * 72,
		<liquid:water> * 125
	]
);
