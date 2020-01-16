//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#priority 1000

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;


//=====================================================================================================================================================================================================	
//	Predefining Arrays
//=====================================================================================================================================================================================================


	//	Ore Blocks	_______________________________________________________________________________________________________________________________________________________________________
val OreBlock = {
	iron : <ore:oreIron>,
	gold : <ore:oreGold>,
	copper : <ore:oreCopper>,
	lead : <ore:oreLead>,
	cobalt : <ore:oreCobalt>,
	tungsten : <ore:oreTungsten>,
	aluminum : <ore:oreAluminum>,
	mithril : <ore:oreMithril>,
	nickel : <ore:oreNickel>,
	osmium : <ore:oreOsmium>,
	silver : <ore:oreSilver>,
	tin : <ore:oreTin>,
	zinc : <ore:oreZinc>,
	antimony : <ore:oreAntimony>,
	ardite : <ore:oreArdite>,
	beryllium : <ore:oreBeryllium>,
	bismuth : <ore:oreBismuth>,
	boron : <ore:oreBoron>,
	cadmium : <ore:oreCadmium>,
	chromium : <ore:oreChromium>,
	coldiron : <ore:oreColdiron>,
	dilithium : <ore:oreDilithium>,
	iridium : <ore:oreIridium>,
	lithium : <ore:oreLithium>,
	magnesium : <ore:oreMagnesium>,
	manganese : <ore:oreManganese>,
	mercury : <ore:oreMercury>,
	platinum : <ore:orePlatinum>,
	plutonium : <ore:orePlutonium>,
	rutile : <ore:oreRutile>,
	starsteel : <ore:oreStarsteel>,
	tantalum : <ore:oreTantalum>,
	thorium : <ore:oreThorium>,
	titanium : <ore:oreTitanium>,
	uranium : <ore:oreUranium>,
	zirconium : <ore:oreZirconium>,
} as IOreDictEntry[string];

	//	Ore Chunks	_______________________________________________________________________________________________________________________________________________________________________
val OreChunk = {
	iron : <ore:oreChunkIron>,
	gold : <ore:oreChunkGold>,
	copper : <ore:oreChunkCopper>,
	lead : <ore:oreChunkLead>,
	cobalt : <ore:oreChunkCobalt>,
	tungsten : <ore:oreChunkTungsten>,
	aluminum : <ore:oreChunkAluminum>,
	mithril : <ore:oreChunkMithril>,
	nickel : <ore:oreChunkNickel>,
	osmium : <ore:oreChunkOsmium>,
	silver : <ore:oreChunkSilver>,
	tin : <ore:oreChunkTin>,
	zinc : <ore:oreChunkZinc>,
	antimony : <ore:oreChunkAntimony>,
	ardite : <ore:oreChunkArdite>,
	beryllium : <ore:oreChunkBeryllium>,
	bismuth : <ore:oreChunkBismuth>,
	boron : <ore:oreChunkBoron>,
	cadmium : <ore:oreChunkCadmium>,
	chromium : <ore:oreChunkChromium>,
	coldiron : <ore:oreChunkColdiron>,
	dilithium : <ore:oreChunkDilithium>,
	iridium : <ore:oreChunkIridium>,
	lithium : <ore:oreChunkLithium>,
	magnesium : <ore:oreChunkMagnesium>,
	manganese : <ore:oreChunkManganese>,
	mercury : <ore:oreChunkMercury>,
	platinum : <ore:oreChunkPlatinum>,
	plutonium : <ore:oreChunkPlutonium>,
	rutile : <ore:oreChunkRutile>,
	starsteel : <ore:oreChunkStarsteel>,
	tantalum : <ore:oreChunkTantalum>,
	thorium : <ore:oreChunkThorium>,
	titanium : <ore:oreChunkTitanium>,
	uranium : <ore:oreChunkUranium>,
	zirconium : <ore:oreChunkZirconium>,
} as IOreDictEntry[string];

	//	Molten Metals (From Orechunks)	_______________________________________________________________________________________________________________________________________________________________________
val  MoltenMetal= {
	iron : <liquid:iron>,
	gold : <liquid:gold>,
	copper : <liquid:copper>,
	lead : <liquid:lead>,
	cobalt : <liquid:cobalt>,
	tungsten : <liquid:tungsten>,
	aluminum : <liquid:aluminum>,
	mithril : <liquid:mithril>,
	nickel : <liquid:nickel>,
	osmium : <liquid:osmium>,
	silver : <liquid:silver>,
	tin : <liquid:tin>,
	zinc : <liquid:zinc>,
	antimony : <liquid:antimony>,
	ardite : <liquid:ardite>,
	beryllium : <liquid:beryllium>,
	bismuth : <liquid:bismuth>,
	boron : <liquid:boron>,
	cadmium : <liquid:cadmium>,
	chromium : <liquid:chromium>,
	coldiron : <liquid:coldiron>,
	dilithium : <liquid:dilithium_fluid>,
	iridium : <liquid:iridium>,
	lithium : <liquid:lithium>,
	magnesium : <liquid:magnesium>,
	manganese : <liquid:manganese>,
	mercury : <liquid:mercury>,
	platinum : <liquid:platinum>,
	plutonium : <liquid:plutonium>,
	rutile : <liquid:rutile>,
	starsteel : <liquid:starsteel>,
	tantalum : <liquid:tantalum>,
	thorium : <liquid:thorium>,
	titanium : <liquid:titanium>,
	uranium : <liquid:uranium>,
	zirconium : <liquid:zirconium>,

	bronze : <liquid:bronze>,
	brass : <liquid:brass>,
	steel : <liquid:steel>,	
} as ILiquidStack[string];

//	Magneticraft Chunks	_______________________________________________________________________________________________________________________________________________________________________
val Chunk = {
	iron : <ore:chunkIron>,
	gold : <ore:chunkGold>,
	copper : <ore:chunkCopper>,
	lead : <ore:chunkLead>,
	cobalt : <ore:chunkCobalt>,
	tungsten : <ore:chunkTungsten>,
	aluminum : <ore:chunkAluminum>,
	mithril : <ore:chunkMithril>,
	nickel : <ore:chunkNickel>,
	osmium : <ore:chunkOsmium>,
	silver : <ore:chunkSilver>,
	tin : <ore:chunkTin>,
	zinc : <ore:chunkZinc>,
	antimony : <ore:chunkAntimony>,
	ardite : <ore:chunkArdite>,
	beryllium : <ore:chunkBeryllium>,
	bismuth : <ore:chunkBismuth>,
	boron : <ore:chunkBoron>,
	cadmium : <ore:chunkCadmium>,
	chromium : <ore:chunkChromium>,
	coldiron : <ore:chunkColdiron>,
	dilithium : <ore:chunkDilithium>,
	iridium : <ore:chunkIridium>,
	lithium : <ore:chunkLithium>,
	magnesium : <ore:chunkMagnesium>,
	manganese : <ore:chunkManganese>,
	mercury : <ore:chunkMercury>,
	platinum : <ore:chunkPlatinum>,
	plutonium : <ore:chunkPlutonium>,
	rutile : <ore:chunkRutile>,
	starsteel : <ore:chunkStarsteel>,
	tantalum : <ore:chunkTantalum>,
	thorium : <ore:chunkThorium>,
	titanium : <ore:chunkTitanium>,
	uranium : <ore:chunkUranium>,
	zirconium : <ore:chunkZirconium>,
} as IOreDictEntry[string];

//	Magneticraft RockyChunks	_______________________________________________________________________________________________________________________________________________________________________
val RockyChunk = {
	iron : <ore:rockyChunkIron>,
	gold : <ore:rockyChunkGold>,
	copper : <ore:rockyChunkCopper>,
	lead : <ore:rockyChunkLead>,
	cobalt : <ore:rockyChunkCobalt>,
	tungsten : <ore:rockyChunkTungsten>,
	aluminum : <ore:rockyChunkAluminum>,
	mithril : <ore:rockyChunkMithril>,
	nickel : <ore:rockyChunkNickel>,
	osmium : <ore:rockyChunkOsmium>,
	silver : <ore:rockyChunkSilver>,
	tin : <ore:rockyChunkTin>,
	zinc : <ore:rockyChunkZinc>,
	antimony : <ore:rockyChunkAntimony>,
	ardite : <ore:rockyChunkArdite>,
	beryllium : <ore:rockyChunkBeryllium>,
	bismuth : <ore:rockyChunkBismuth>,
	boron : <ore:rockyChunkBoron>,
	cadmium : <ore:rockyChunkCadmium>,
	chromium : <ore:rockyChunkChromium>,
	coldiron : <ore:rockyChunkColdiron>,
	dilithium : <ore:rockyChunkDilithium>,
	iridium : <ore:rockyChunkIridium>,
	lithium : <ore:rockyChunkLithium>,
	magnesium : <ore:rockyChunkMagnesium>,
	manganese : <ore:rockyChunkManganese>,
	mercury : <ore:rockyChunkMercury>,
	platinum : <ore:rockyChunkPlatinum>,
	plutonium : <ore:rockyChunkPlutonium>,
	rutile : <ore:rockyChunkRutile>,
	starsteel : <ore:rockyChunkStarsteel>,
	tantalum : <ore:rockyChunkTantalum>,
	thorium : <ore:rockyChunkThorium>,
	titanium : <ore:rockyChunkTitanium>,
	uranium : <ore:rockyChunkUranium>,
	zirconium : <ore:rockyChunkZirconium>,
} as IOreDictEntry[string];

//	Blocks	_______________________________________________________________________________________________________________________________________________________________________
val Block = {
	iron : <ore:blockIron>,
	gold : <ore:blockGold>,
	copper : <ore:blockCopper>,
	lead : <ore:blockLead>,
	cobalt : <ore:blockCobalt>,
	tungsten : <ore:blockTungsten>,
	aluminum : <ore:blockAluminum>,
	mithril : <ore:blockMithril>,
	nickel : <ore:blockNickel>,
	osmium : <ore:blockOsmium>,
	silver : <ore:blockSilver>,
	tin : <ore:blockTin>,
	zinc : <ore:blockZinc>,
	antimony : <ore:blockAntimony>,
	ardite : <ore:blockArdite>,
	beryllium : <ore:blockBeryllium>,
	bismuth : <ore:blockBismuth>,
	boron : <ore:blockBoron>,
	cadmium : <ore:blockCadmium>,
	chromium : <ore:blockChromium>,
	coldiron : <ore:blockColdiron>,
	dilithium : <ore:blockDilithium>,
	iridium : <ore:blockIridium>,
	lithium : <ore:blockLithium>,
	magnesium : <ore:blockMagnesium>,
	manganese : <ore:blockManganese>,
	mercury : <ore:blockMercury>,
	platinum : <ore:blockPlatinum>,
	plutonium : <ore:blockPlutonium>,
	rutile : <ore:blockRutile>,
	starsteel : <ore:blockStarsteel>,
	tantalum : <ore:blockTantalum>,
	thorium : <ore:blockThorium>,
	titanium : <ore:blockTitanium>,
	uranium : <ore:blockUranium>,
	zirconium : <ore:blockZirconium>,

	bronze : <ore:blockBronze>,
	brass : <ore:blockBrass>,
	steel : <ore:blockSteel>,
} as IOreDictEntry[string];

//	Ingots	_______________________________________________________________________________________________________________________________________________________________________
val Ingot = {
	iron : <ore:ingotIron>,
	gold : <ore:ingotGold>,
	copper : <ore:ingotCopper>,
	lead : <ore:ingotLead>,
	cobalt : <ore:ingotCobalt>,
	tungsten : <ore:ingotTungsten>,
	aluminum : <ore:ingotAluminum>,
	mithril : <ore:ingotMithril>,
	nickel : <ore:ingotNickel>,
	osmium : <ore:ingotOsmium>,
	silver : <ore:ingotSilver>,
	tin : <ore:ingotTin>,
	zinc : <ore:ingotZinc>,
	antimony : <ore:ingotAntimony>,
	ardite : <ore:ingotArdite>,
	beryllium : <ore:ingotBeryllium>,
	bismuth : <ore:ingotBismuth>,
	boron : <ore:ingotBoron>,
	cadmium : <ore:ingotCadmium>,
	chromium : <ore:ingotChromium>,
	coldiron : <ore:ingotColdiron>,
	dilithium : <ore:ingotDilithium>,
	iridium : <ore:ingotIridium>,
	lithium : <ore:ingotLithium>,
	magnesium : <ore:ingotMagnesium>,
	manganese : <ore:ingotManganese>,
	mercury : <ore:ingotMercury>,
	platinum : <ore:ingotPlatinum>,
	plutonium : <ore:ingotPlutonium>,
	rutile : <ore:ingotRutile>,
	starsteel : <ore:ingotStarsteel>,
	tantalum : <ore:ingotTantalum>,
	thorium : <ore:ingotThorium>,
	titanium : <ore:ingotTitanium>,
	uranium : <ore:ingotUranium>,
	zirconium : <ore:ingotZirconium>,

	bronze : <ore:ingotBronze>,
	brass : <ore:ingotBrass>,
	steel : <ore:ingotSteel>,
} as IOreDictEntry[string];

//	Nuggets	_______________________________________________________________________________________________________________________________________________________________________
val Nugget = {
	iron : <ore:nuggetIron>,
	gold : <ore:nuggetGold>,
	copper : <ore:nuggetCopper>,
	lead : <ore:nuggetLead>,
	cobalt : <ore:nuggetCobalt>,
	tungsten : <ore:nuggetTungsten>,
	aluminum : <ore:nuggetAluminum>,
	mithril : <ore:nuggetMithril>,
	nickel : <ore:nuggetNickel>,
	osmium : <ore:nuggetOsmium>,
	silver : <ore:nuggetSilver>,
	tin : <ore:nuggetTin>,
	zinc : <ore:nuggetZinc>,
	antimony : <ore:nuggetAntimony>,
	ardite : <ore:nuggetArdite>,
	beryllium : <ore:nuggetBeryllium>,
	bismuth : <ore:nuggetBismuth>,
	boron : <ore:nuggetBoron>,
	cadmium : <ore:nuggetCadmium>,
	chromium : <ore:nuggetChromium>,
	coldiron : <ore:nuggetColdiron>,
	dilithium : <ore:nuggetDilithium>,
	iridium : <ore:nuggetIridium>,
	lithium : <ore:nuggetLithium>,
	magnesium : <ore:nuggetMagnesium>,
	manganese : <ore:nuggetManganese>,
	mercury : <ore:nuggetMercury>,
	platinum : <ore:nuggetPlatinum>,
	plutonium : <ore:nuggetPlutonium>,
	rutile : <ore:nuggetRutile>,
	starsteel : <ore:nuggetStarsteel>,
	tantalum : <ore:nuggetTantalum>,
	thorium : <ore:nuggetThorium>,
	titanium : <ore:nuggetTitanium>,
	uranium : <ore:nuggetUranium>,
	zirconium : <ore:nuggetZirconium>,

	bronze : <ore:nuggetBronze>,
	brass : <ore:nuggetBrass>,
	steel : <ore:nuggetSteel>,
} as IOreDictEntry[string];

//	dusts	_______________________________________________________________________________________________________________________________________________________________________
val Dust = {
	iron : <ore:dustIron>,
	gold : <ore:dustGold>,
	copper : <ore:dustCopper>,
	lead : <ore:dustLead>,
	cobalt : <ore:dustCobalt>,
	tungsten : <ore:dustTungsten>,
	aluminum : <ore:dustAluminum>,
	mithril : <ore:dustMithril>,
	nickel : <ore:dustNickel>,
	osmium : <ore:dustOsmium>,
	silver : <ore:dustSilver>,
	tin : <ore:dustTin>,
	zinc : <ore:dustZinc>,
	antimony : <ore:dustAntimony>,
	ardite : <ore:dustArdite>,
	beryllium : <ore:dustBeryllium>,
	bismuth : <ore:dustBismuth>,
	boron : <ore:dustBoron>,
	cadmium : <ore:dustCadmium>,
	chromium : <ore:dustChromium>,
	coldiron : <ore:dustColdiron>,
	dilithium : <ore:dustDilithium>,
	iridium : <ore:dustIridium>,
	lithium : <ore:dustLithium>,
	magnesium : <ore:dustMagnesium>,
	manganese : <ore:dustManganese>,
	mercury : <ore:dustMercury>,
	platinum : <ore:dustPlatinum>,
	plutonium : <ore:dustPlutonium>,
	rutile : <ore:dustRutile>,
	starsteel : <ore:dustStarsteel>,
	tantalum : <ore:dustTantalum>,
	thorium : <ore:dustThorium>,
	titanium : <ore:dustTitanium>,
	uranium : <ore:dustUranium>,
	zirconium : <ore:dustZirconium>,

	bronze : <ore:dustBronze>,
	brass : <ore:dustBrass>,
	steel : <ore:dustSteel>,
} as IOreDictEntry[string];

//	Gears	_______________________________________________________________________________________________________________________________________________________________________
val Gear = {
	iron : <ore:gearIron>,
	gold : <ore:gearGold>,
	copper : <ore:gearCopper>,
	lead : <ore:gearLead>,
	cobalt : <ore:gearCobalt>,
	tungsten : <ore:gearTungsten>,
	aluminum : <ore:gearAluminum>,
	mithril : <ore:gearMithril>,
	nickel : <ore:gearNickel>,
	osmium : <ore:gearOsmium>,
	silver : <ore:gearSilver>,
	tin : <ore:gearTin>,
	zinc : <ore:gearZinc>,
	antimony : <ore:gearAntimony>,
	ardite : <ore:gearArdite>,
	beryllium : <ore:gearBeryllium>,
	bismuth : <ore:gearBismuth>,
	boron : <ore:gearBoron>,
	cadmium : <ore:gearCadmium>,
	chromium : <ore:gearChromium>,
	coldiron : <ore:gearColdiron>,
	dilithium : <ore:gearDilithium>,
	iridium : <ore:gearIridium>,
	lithium : <ore:gearLithium>,
	magnesium : <ore:gearMagnesium>,
	manganese : <ore:gearManganese>,
	mercury : <ore:gearMercury>,
	platinum : <ore:gearPlatinum>,
	plutonium : <ore:gearPlutonium>,
	rutile : <ore:gearRutile>,
	starsteel : <ore:gearStarsteel>,
	tantalum : <ore:gearTantalum>,
	thorium : <ore:gearThorium>,
	titanium : <ore:gearTitanium>,
	uranium : <ore:gearUranium>,
	zirconium : <ore:gearZirconium>,

	bronze : <ore:gearBronze>,
	brass : <ore:gearBrass>,
	steel : <ore:gearSteel>,
} as IOreDictEntry[string];

//	Sticks	_______________________________________________________________________________________________________________________________________________________________________
val Stick = {
	iron : <ore:stickIron>,
	gold : <ore:stickGold>,
	copper : <ore:stickCopper>,
	lead : <ore:stickLead>,
	cobalt : <ore:stickCobalt>,
	tungsten : <ore:stickTungsten>,
	aluminum : <ore:stickAluminum>,
	mithril : <ore:stickMithril>,
	nickel : <ore:stickNickel>,
	osmium : <ore:stickOsmium>,
	silver : <ore:stickSilver>,
	tin : <ore:stickTin>,
	zinc : <ore:stickZinc>,
	antimony : <ore:stickAntimony>,
	ardite : <ore:stickArdite>,
	beryllium : <ore:stickBeryllium>,
	bismuth : <ore:stickBismuth>,
	boron : <ore:stickBoron>,
	cadmium : <ore:stickCadmium>,
	chromium : <ore:stickChromium>,
	coldiron : <ore:stickColdiron>,
	dilithium : <ore:stickDilithium>,
	iridium : <ore:stickIridium>,
	lithium : <ore:stickLithium>,
	magnesium : <ore:stickMagnesium>,
	manganese : <ore:stickManganese>,
	mercury : <ore:stickMercury>,
	platinum : <ore:stickPlatinum>,
	plutonium : <ore:stickPlutonium>,
	rutile : <ore:stickRutile>,
	starsteel : <ore:stickStarsteel>,
	tantalum : <ore:stickTantalum>,
	thorium : <ore:stickThorium>,
	titanium : <ore:stickTitanium>,
	uranium : <ore:stickUranium>,
	zirconium : <ore:stickZirconium>,
	
	bronze : <ore:stickBronze>,
	brass : <ore:stickBrass>,
	steel : <ore:stickSteel>,
} as IOreDictEntry[string];

//	Plates	_______________________________________________________________________________________________________________________________________________________________________
val Plate = {
	iron : <ore:plateIron>,
	gold : <ore:plateGold>,
	copper : <ore:plateCopper>,
	lead : <ore:plateLead>,
	cobalt : <ore:plateCobalt>,
	tungsten : <ore:plateTungsten>,
	aluminum : <ore:plateAluminum>,
	mithril : <ore:plateMithril>,
	nickel : <ore:plateNickel>,
	osmium : <ore:plateOsmium>,
	silver : <ore:plateSilver>,
	tin : <ore:plateTin>,
	zinc : <ore:plateZinc>,
	antimony : <ore:plateAntimony>,
	ardite : <ore:plateArdite>,
	beryllium : <ore:plateBeryllium>,
	bismuth : <ore:plateBismuth>,
	boron : <ore:plateBoron>,
	cadmium : <ore:plateCadmium>,
	chromium : <ore:plateChromium>,
	coldiron : <ore:plateColdiron>,
	dilithium : <ore:plateDilithium>,
	iridium : <ore:plateIridium>,
	lithium : <ore:plateLithium>,
	magnesium : <ore:plateMagnesium>,
	manganese : <ore:plateManganese>,
	mercury : <ore:plateMercury>,
	platinum : <ore:platePlatinum>,
	plutonium : <ore:platePlutonium>,
	rutile : <ore:plateRutile>,
	starsteel : <ore:plateStarsteel>,
	tantalum : <ore:plateTantalum>,
	thorium : <ore:plateThorium>,
	titanium : <ore:plateTitanium>,
	uranium : <ore:plateUranium>,
	zirconium : <ore:plateZirconium>,

	bronze : <ore:plateBronze>,
	brass : <ore:plateBrass>,
	steel : <ore:plateSteel>,
} as IOreDictEntry[string];

//	Melting Temperatures _______________________________________________________________________________________________________________________________________________________________________
val MeltingTemp = {
	iron : 1855,
	gold : 1300,
	copper : 1300,
	lead : 627,
	cobalt : 1795,
	tungsten : 3722,
	aluminum : 960,
	mithril : 2600,
	nickel : 1755,
	osmium : 3350,
	silver : 1261,
	tin : 532,
	zinc : 719,
	antimony : 930,
	ardite : 2100,
	beryllium : 1587,
	bismuth : 571,
	boron : 2300,
	cadmium : 621,
	chromium : 2207,
	coldiron : 2400,
	dilithium : 650,
	iridium : 2754,
	lithium : 480,
	magnesium : 950,
	manganese : 1546,
	mercury : 262,
	platinum : 2068,
	plutonium : 939,
	rutile : 1968,
	starsteel : 2700,
	tantalum : 3266,
	thorium : 2055,
	titanium : 1968,
	uranium : 1432,
	zirconium : 2155,
	
	bronze : 1250,
	brass : 1200,
	steel : 1670,
} as int[string];

//	Anvils _______________________________________________________________________________________________________________________________________________________________________
var Anvil = {
	copper : <tinkersforging:tinkers_anvil/copper>,
	tin : <tinkersforging:tinkers_anvil/tin>,
	silver : <tinkersforging:tinkers_anvil/silver>,
	iron : <tinkersforging:tinkers_anvil/iron>,
	aluminum : <tinkersforging:tinkers_anvil/alumifun>,
	
	bronze : <tinkersforging:tinkers_anvil/bronze>,
	brass : <tinkersforging:tinkers_anvil/brass>,
	steel : <tinkersforging:tinkers_anvil/steel>,
} as IItemStack[string];



//=====================================================================================================================================================================================================	
//	Adjustifying melting recipes.
//=====================================================================================================================================================================================================


	//	Remove Seared Stone from stone.	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.removeRecipe(<liquid:stone>);

	//	Glass Shards	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 375, <ore:shardGlass>, 599);

	//	Custom Ingot Melting Recipes.   	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.addRecipe(<liquid:molybdochalkos> * 144, <contenttweaker:molybdochalkos_ingot>, 800);
mods.tconstruct.Melting.addRecipe(<liquid:magmolybdochalkosmuth> * 144, <contenttweaker:magmolybdochalkosmuth_ingot>, 700);
mods.tconstruct.Melting.addRecipe(<liquid:cerrosafe> * 144, <contenttweaker:cerrosafe_ingot>, 900);


//=====================================================================================================================================================================================================	
//	Dynamic recipe adjustments
//=====================================================================================================================================================================================================


	//	Remove all melting recipes from fluid list	_______________________________________________________________________________________________________________________________________________________________________
for liquid in MoltenMetal {
	mods.tconstruct.Melting.removeRecipe(MoltenMetal[liquid]);
}

	//	Melting Raw Ores	_______________________________________________________________________________________________________________________________________________________________________
for liquid in Chunk {
		mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * 144 , Chunk[liquid] , MeltingTemp[liquid] );
}

	//	All other material states	_______________________________________________________________________________________________________________________________________________________________________
for liquid in Ingot {
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * (144 * 9) , Block[liquid] , MeltingTemp[liquid] );
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * (144 * 1) , Ingot[liquid] , MeltingTemp[liquid] );
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * (144 / 9) , Nugget[liquid] , MeltingTemp[liquid] );
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * 144 , Dust[liquid] , MeltingTemp[liquid] );
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * 144 , Plate[liquid] , MeltingTemp[liquid] );
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * (144 * 4) , Gear[liquid] , MeltingTemp[liquid] );
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * (144 / 2) , Stick[liquid] , MeltingTemp[liquid] );
}

	//	Anvil Melting Recipes.   	_______________________________________________________________________________________________________________________________________________________________________
for liquid in Anvil {
	mods.tconstruct.Melting.addRecipe( MoltenMetal[liquid] * 2160 , Anvil[liquid] , MeltingTemp[liquid] );
}