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
	Gold : <ore:chunkGold>,
	Copper : <ore:chunkCopper>,
	Lead : <ore:chunkLead>,
	Aluminum : <ore:chunkAluminium>,
	Silver : <ore:chunkSilver>,
	Tin : <ore:chunkTin>,
	Zinc : <ore:chunkZinc>,
	bismuth : <ore:chunkBismuth>,
	magnesium : <ore:chunkMagnesium>,
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
	
	EnchantedMetal : <ore:ingotEnchantedMetal>,
	Uranium : <ore:ingotUranium>,
	Ferroboron : <ore:ingotFerroboron>,
	Knightslime : <ore:ingotKnightslime>,
	Insanium : <ore:ingotInsanium>,
	BaseEssence : <ore:ingotBaseEssence>,
	Inferium : <ore:ingotInferium>,
	Prudentium : <ore:ingotPrudentium>,
	Intermedium : <ore:ingotIntermedium>,
	Superium : <ore:ingotSuperium>,
	Supremium : <ore:ingotSupremium>,
	Soulium : <ore:ingotSoulium>,
	Manganese : <ore:ingotManganese>,
	LithiumManganeseDioxide : <ore:ingotLithiumManganeseDioxide>,
	HSLASteel : <ore:ingotHSLASteel>,
	SiliconCarbide : <ore:ingotSiliconCarbide>,
	Copshowium : <ore:ingotCopshowium>,
	Osmiridium : <ore:ingotOsmiridium>,
	Tough : <ore:ingotTough>,
	SiCSiCCMC : <ore:ingotSiCSiCCMC>,
	Pigiron : <ore:ingotPigiron>,
	Elementium : <ore:ingotElementium>,
	ElectrotineAlloy : <ore:ingotElectrotineAlloy>,
	RedAlloy : <ore:ingotRedAlloy>,
	Carbon : <ore:ingotCarbon>,
	Alubrass : <ore:ingotAlubrass>,
	FireDragonsteel : <ore:ingotFireDragonsteel>,
	Manasteel : <ore:ingotManasteel>,
	Mirion : <ore:ingotMirion>,
	Extreme : <ore:ingotExtreme>,
	EvilMetal : <ore:ingotEvilMetal>,
	Osgloglas : <ore:ingotOsgloglas>,
	ObsidianSteel : <ore:ingotObsidianSteel>,
	Unstable : <ore:ingotUnstable>,
	Redstone : <ore:ingotRedstone>,
	Thermoconducting : <ore:ingotThermoconducting>,
	Terrasteel : <ore:ingotTerrasteel>,
	Alumite : <ore:ingotAlumite>,
	IceDragonsteel : <ore:ingotIceDragonsteel>,
	MagnesiumDiboride : <ore:ingotMagnesiumDiboride>,
	Shibuichi : <ore:ingotShibuichi>,
	TinSilver : <ore:ingotTinSilver>,
	LeadPlatinum : <ore:ingotLeadPlatinum>,
	Zircaloy : <ore:ingotZircaloy>,
	Manyullyn : <ore:ingotManyullyn>,
	emonicMetal : <ore:ingotDemonicMetal>,
	RefinedGlowstone : <ore:ingotRefinedGlowstone>,

	Amber : <ore:gemEnderBiotite>,
	Amethyst : <ore:gemAmethyst>,
	Ruby : <ore:gemRuby>,
	Peridot : <ore:gemPeridot>,
	Topaz : <ore:gemTopaz>,
	Tanzanite : <ore:gemTanzanite>,
	Malachite : <ore:gemMalachite>,
	Sapphire : <ore:gemSapphire>,
	Amber : <ore:gemAmber>,
	Lapis : <ore:gemLapis>,
	BlackQuartz : <ore:gemQuartzBlack>,
	Redstone : <ore:dustRedstone>,
	Aquamarine : <ore:gemAquamarine>,
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
	magnesium : <ore:nuggetMagnesium>,
	manganese : <ore:nuggetManganese>,
	platinum : <ore:nuggetPlatinum>,
	plutonium : <ore:nuggetPlutonium>,
	rutile : <ore:nuggetRutile>,
	starsteel : <ore:nuggetStarsteel>,
	tantalum : <ore:nuggetTantalum>,
	titanium : <ore:nuggetTitanium>,
	uranium : <ore:nuggetUranium>,
	zirconium : <ore:nuggetZirconium>,
} as IOreDictEntry[string];


//=====================================================================================================================================================================================================	
//	Remove Recipes
//=====================================================================================================================================================================================================


	//	Remove Vanilla Charcoal_______________________________________________________________________________________________________________________________________________________________________
furnace.remove(<minecraft:coal:1>);

//	Special case removals.	_______________________________________________________________________________________________________________________________________________________________________
furnace.remove(<minecraft:iron_ingot>);
furnace.remove(<minecraft:glass>);
furnace.remove(<ore:ingotAstralStarmetal>);

//	Dynamically Remove all ingots	_______________________________________________________________________________________________________________________________________________________________________
for item in Ingot {
        furnace.remove(Ingot[item]);
}


//=====================================================================================================================================================================================================	
//	Add 
//=====================================================================================================================================================================================================


	//	Logs > rockhouding charcoal lump	_______________________________________________________________________________________________________________________________________________________________________
furnace.addRecipe(<rockhounding_oretiers:tier_items:4>, <ore:logWood>, 0.1);


//	Dynamically Add chunk to nugget	_______________________________________________________________________________________________________________________________________________________________________
for item in Chunk {
        furnace.addRecipe(Nugget[item].firstItem * 3, Chunk[item], 0.3);
}