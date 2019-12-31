//=====================================================================================================================================================================================================	
//Importinating the classes
//=====================================================================================================================================================================================================	


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


//=====================================================================================================================================================================================================	
//	Hashtables used in dynamic mapping function.  These would be in a separate script file if Zenscript didn't have a stick up its ass.
//=====================================================================================================================================================================================================


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
	adamantine : <ore:chunkAdamantine>,
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

//	Ingots	_______________________________________________________________________________________________________________________________________________________________________
val Ingot = {
	Iron : <ore:ingotIron>,
	Gold : <ore:ingotGold>,
	Copper : <ore:ingotCopper>,
	Lead : <ore:ingotLead>,
	Cobalt : <ore:ingotCobalt>,
	Tungsten : <ore:ingotTungsten>,
	Aluminum : <ore:ingotAluminum>,
	Mithril : <ore:ingotMithril>,
	Nickel : <ore:ingotNickel>,
	Osmium : <ore:ingotOsmium>,
	Silver : <ore:ingotSilver>,
	Tin : <ore:ingotTin>,
	Zinc : <ore:ingotZinc>,
	adamantine : <ore:ingotAdamantine>,
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
} as IOreDictEntry[string];

//	Nuggets	_______________________________________________________________________________________________________________________________________________________________________
val Nugget = {
	Iron : <ore:nuggetIron>,
	Gold : <ore:nuggetGold>,
	Copper : <ore:nuggetCopper>,
	Lead : <ore:nuggetLead>,
	Cobalt : <ore:nuggetCobalt>,
	Tungsten : <ore:nuggetTungsten>,
	Aluminum : <ore:nuggetAluminum>,
	Mithril : <ore:nuggetMithril>,
	Nickel : <ore:nuggetNickel>,
	Osmium : <ore:nuggetOsmium>,
	Silver : <ore:nuggetSilver>,
	Tin : <ore:nuggetTin>,
	Zinc : <ore:nuggetZinc>,
	adamantine : <ore:nuggetAdamantine>,
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
} as IOreDictEntry[string];



//=====================================================================================================================================================================================================	
//	Remove existing ingot recipes and replace them with nuggets.
//=====================================================================================================================================================================================================


//	Special case for Vanilla iron ingots.	_______________________________________________________________________________________________________________________________________________________________________
furnace.remove(<minecraft:iron_ingot>);
furnace.remove(<ore:ingotAstralStarmetal>);

//	Dynamically replace ingots with nuggets	_______________________________________________________________________________________________________________________________________________________________________
for item in Ingot {
        furnace.remove(Ingot[item]);
}

for item in Chunk {
        furnace.addRecipe(Nugget[item].firstItem * 3, Chunk[item], 0.3);
}



/*
furnace.remove(<ore:ingotCopper>);
furnace.addRecipe(<ore:nuggetCopper>.firstItem * 3, <ore:chunkCopper>, 0.0);

furnace.remove(<ore:ingotIron>);
furnace.addRecipe(<ore:nuggetIron>.firstItem * 3, <ore:chunkIron>, 0.0);

furnace.remove(<ore:ingotGold>);
furnace.addRecipe(<ore:nuggetGold>.firstItem * 3, <ore:chunkGold>, 0.0);

*/