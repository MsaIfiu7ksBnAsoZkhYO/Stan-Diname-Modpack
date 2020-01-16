#norun
//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.tcomplement.highoven.HighOven;
//Note, the High Oven integration only works with a custom fork of ModTweaker provided by : Riernar
//https://github.com/Riernar/ModTweaker


//=====================================================================================================================================================================================================	
//	Predefining Arrays
//=====================================================================================================================================================================================================


	//	Ore Blocks	_______________________________________________________________________________________________________________________________________________________________________
val OreBlock = {
	Iron : <ore:oreIron>,
	Gold : <ore:oreGold>,
	Copper : <ore:oreCopper>,
	Lead : <ore:oreLead>,
	Cobalt : <ore:oreCobalt>,
	Tungsten : <ore:oreTungsten>,
	Aluminum : <ore:oreAluminum>,
	Mithril : <ore:oreMithril>,
	Nickel : <ore:oreNickel>,
	Osmium : <ore:oreOsmium>,
	Silver : <ore:oreSilver>,
	Tin : <ore:oreTin>,
	Zinc : <ore:oreZinc>,
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
	Iron : <ore:oreChunkIron>,
	Gold : <ore:oreChunkGold>,
	Copper : <ore:oreChunkCopper>,
	Lead : <ore:oreChunkLead>,
	Cobalt : <ore:oreChunkCobalt>,
	Tungsten : <ore:oreChunkTungsten>,
	Aluminum : <ore:oreChunkAluminum>,
	Mithril : <ore:oreChunkMithril>,
	Nickel : <ore:oreChunkNickel>,
	Osmium : <ore:oreChunkOsmium>,
	Silver : <ore:oreChunkSilver>,
	Tin : <ore:oreChunkTin>,
	Zinc : <ore:oreChunkZinc>,
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
	Iron : <liquid:iron>,
	Gold : <liquid:gold>,
	Copper : <liquid:copper>,
	Lead : <liquid:lead>,
	Cobalt : <liquid:cobalt>,
	Tungsten : <liquid:tungsten>,
	Aluminum : <liquid:aluminum>,
	Mithril : <liquid:mithril>,
	Nickel : <liquid:nickel>,
	Osmium : <liquid:osmium>,
	Silver : <liquid:silver>,
	Tin : <liquid:tin>,
	Zinc : <liquid:zinc>,
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
} as ILiquidStack[string];

//	Magneticraft Chunks	_______________________________________________________________________________________________________________________________________________________________________
val Chunk = {
	Iron : <ore:chunkIron>,
	Gold : <ore:chunkGold>,
	Copper : <ore:chunkCopper>,
	Lead : <ore:chunkLead>,
	Cobalt : <ore:chunkCobalt>,
	Tungsten : <ore:chunkTungsten>,
	Aluminum : <ore:chunkAluminum>,
	Mithril : <ore:chunkMithril>,
	Nickel : <ore:chunkNickel>,
	Osmium : <ore:chunkOsmium>,
	Silver : <ore:chunkSilver>,
	Tin : <ore:chunkTin>,
	Zinc : <ore:chunkZinc>,
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
	Iron : <ore:rockyChunkIron>,
	Gold : <ore:rockyChunkGold>,
	Copper : <ore:rockyChunkCopper>,
	Lead : <ore:rockyChunkLead>,
	Cobalt : <ore:rockyChunkCobalt>,
	Tungsten : <ore:rockyChunkTungsten>,
	Aluminum : <ore:rockyChunkAluminum>,
	Mithril : <ore:rockyChunkMithril>,
	Nickel : <ore:rockyChunkNickel>,
	Osmium : <ore:rockyChunkOsmium>,
	Silver : <ore:rockyChunkSilver>,
	Tin : <ore:rockyChunkTin>,
	Zinc : <ore:rockyChunkZinc>,
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

//	Melting Temperatures	_______________________________________________________________________________________________________________________________________________________________________
val MeltingTemp = {
	Iron : 1855,
	Gold : 1300,
	Copper : 1300,
	Lead : 627,
	Cobalt : 1795,
	Tungsten : 3722,
	Aluminum : 960,
	Mithril : 2600,
	Nickel : 1755,
	Osmium : 3350,
	Silver : 1261,
	Tin : 532,
	Zinc : 719,
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
} as int[string];


//=====================================================================================================================================================================================================	
//	Adjustifying melting recipes.
//=====================================================================================================================================================================================================


	//	Override and Remove High Oven Melting recipes.   	_______________________________________________________________________________________________________________________________________________________________________
for Liquid in MoltenMetal {
	HighOven.removeMeltingOverride(MoltenMetal[Liquid]);
}

	//	Add back melting recipes for chunks   	_______________________________________________________________________________________________________________________________________________________________________
for item in Chunk {
	HighOven.addMeltingOverride(MoltenMetal[item] * 144 , Chunk[item] , MeltingTemp[item]);
}


//=====================================================================================================================================================================================================	
//	Test Heat recipe for vaporization
//=====================================================================================================================================================================================================


HighOven.addHeatRecipe(<liquid:cadmium> * 1, <liquid:water> * 1, 1066);