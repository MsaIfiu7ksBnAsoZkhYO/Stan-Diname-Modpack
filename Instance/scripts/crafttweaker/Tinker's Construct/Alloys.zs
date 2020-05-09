//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);

import crafttweaker.liquid.ILiquidStack;

	//	Fix the Steel smeltery recipes to use one ratio.	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
mods.tconstruct.Alloy.addRecipe(<liquid:steel> * 9, [<liquid:iron> * 9, <liquid:coal> * 25]);



	//Refined Storage Quartz enriched Iron
//mods.tconstruct.Alloy.addRecipe(<liquid:quartz_enriched_iron> * 4, [<liquid:iron> * 3, <liquid:quartz> * 1]);

	//Mythril
//mods.tconstruct.Alloy.addRecipe(<liquid:mythril> * 1, [<liquid:mithril> * 1, <liquid:xu_enchanted_metal> * 2, <liquid:vibrant> * 2]);

	//Titanium Alloys
//mods.tconstruct.Alloy.addRecipe(<liquid:titaniumiridium> * 2, [<liquid:titanium> * 1, <liquid:iridium> * 1]);
//mods.tconstruct.Alloy.addRecipe(<liquid:titaniumaluminide> * 3, [<liquid:titanium> * 3, <liquid:aluminum> * 7]);



	//	remove alloys that full ingot	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.removeRecipe(<liquid:invar>);
mods.tconstruct.Alloy.removeRecipe(<liquid:constantan>);
mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:lumium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:clay>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);


	//	alloy recipes at lowest posible ratios	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(<liquid:invar> * 3, [<liquid:iron> * 2, <liquid:nickel> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:constantan> * 2, [<liquid:copper> * 1, <liquid:nickel> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:signalum> * 16, [<liquid:copper> * 12, <liquid:silver> * 4, <liquid:redstone> * 25]);
mods.tconstruct.Alloy.addRecipe(<liquid:lumium> * 72, [<liquid:tin> * 54, <liquid:silver> * 18, <liquid:glowstone> * 125]);
mods.tconstruct.Alloy.addRecipe(<liquid:enderium> * 72, [<liquid:lead> * 54, <liquid:platinum> * 18, <liquid:ender> * 125]);
mods.tconstruct.Alloy.addRecipe(<liquid:clay> * 72, [<liquid:dirt> * 72, <liquid:stone> * 36, <liquid:water> * 125]);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 18, [<liquid:iron> * 18, <liquid:blood> * 5, <liquid:clay> * 9]);


	//	New Alloys	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(<liquid:molybdochalkos> *9, [<liquid:lead> * 9, <liquid:copper> * 1]);
//mods.tconstruct.Alloy.addRecipe(<liquid:magmolybdochalkosmuth> * 2, [<liquid:molybdochalkos> * 2, <liquid:magnesium> * 1, <liquid:bismuth> * 1]);
//mods.tconstruct.Alloy.addRecipe(<liquid:cerrosafe> * 4, [<liquid:bismuth> * 4, <liquid:lead> * 3, <liquid:tin> * 1, <liquid:cadmium> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:iron> * 2, [<liquid:bloom> * 1 , <liquid:iron> * 1]);
	
	//	Porcelain Clay - Flint Dust	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:porcelain_clay_liquid>	* 2, 
	[
		<liquid:clay>				* 1, 
		<liquid:flint_liquid>		* 1, 
		<liquid:sand_liquid>		* 1, 
		<liquid:water>				* 1
	]
);
	//	Porcelain Clay - Bone Dust	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:porcelain_clay_liquid>	* 2, 
	[
		<liquid:clay>				* 1, 
		<liquid:bone_liquid>		* 1,
		<liquid:sand_liquid>		* 1, 
		<liquid:water>				* 1
	]
);
	//	Porcelain Clay - Ash Dust	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:porcelain_clay_liquid>	* 2, 
	[
		<liquid:clay>				* 1, 
		<liquid:ash_liquid>			* 1, 
		<liquid:sand_liquid>		* 1, 
		<liquid:water>				* 1
	]
);
	//	Coke Clay	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:coke_clay_liquid>			* 2, 
	[
		<liquid:kiln_clay_liquid>		* 1, 
		<liquid:porcelain_clay_liquid>	* 1, 
		<liquid:sand_liquid>			* 2,
		<liquid:water>					* 1
	]
);
	//	Kiln Clay	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:kiln_clay_liquid>			* 2, 
	[
		<liquid:porcelain_clay_liquid>	* 1, 
		<liquid:sand_liquid>			* 2, 
		<liquid:lime_liquid>			* 1,
		<liquid:water>					* 1
	]
);
	//	Blast Clay	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:blast_clay_liquid>		* 2, 
	[
		<liquid:kiln_clay_liquid>	* 1, 
		<liquid:coke_clay_liquid>	* 1, 
		<liquid:carbon_liquid>		* 1, 
		<liquid:water>				* 1
	]
);
	//	Seared Clay	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:seared_clay_liquid>			* 2,
	[
		<liquid:porcelain_clay_liquid>	* 1, 
		<liquid:gravel_liquid>			* 1, 
		<liquid:sand_liquid>			* 1, 
		<liquid:water>					* 1
	]
);
	//	Scorched Clay	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:scorched_clay_liquid>	* 2, 
	[
		<liquid:seared_clay_liquid>	* 1, 
		<liquid:blast_clay_liquid>	* 1, 
		<liquid:sulfur>				* 1, 
		<liquid:water>				* 1
	]
);
	//	Mortar	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:mortar>				* 7,
	[
		<liquid:sand_liquid>	* 1,
		<liquid:lime_liquid>	* 1,
		<liquid:water>			* 7
	]
);
	//	Molding Sand	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Alloy.addRecipe(
	<liquid:moldsand>			* 7,
	[
		<liquid:sand_liquid>	* 1,
		<liquid:clay>			* 1,
		<liquid:water>			* 7
	]
);