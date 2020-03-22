#norun
//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

//=====================================================================================================================================================================================================	
//	Iron Packpack crafting
//=====================================================================================================================================================================================================

    //  Leather Backpack
RecipeBuilder.get("tailor")
    .setShaped([
        [<harvestcraft:hardenedleatheritem>,    <techguns:itemshared:60>,   <harvestcraft:hardenedleatheritem>  ],
        [<techguns:itemshared:60>,              <leatherworks:pack_brown>,  <techguns:itemshared:60>            ],
        [<harvestcraft:hardenedleatheritem>,    <techguns:itemshared:60>,   <harvestcraft:hardenedleatheritem>  ]])
    .setSecondaryIngredients([
        <ore:string>, 
        <ore:fabricHemp>])
    .addTool( <ore:artisansNeedle> , 1 )
    .addOutput( <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}) )
    .setExtraOutputOne( <minecraft:stick> , 1.0 )
    .create();

    //  Iron Backpack
var LeatherBackpack = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}});
RecipeBuilder.get("tailor")
    .setShaped([
        [null, <magneticraft:crafting:6>, <ore:stickIron>, <magneticraft:crafting:6>, null],
        [<magneticraft:crafting:6>, <ore:plateIron>, <stevescarts:cartmodule:5>, <ore:plateIron>, <magneticraft:crafting:6>],
        [<ore:stickIron>, <stevescarts:cartmodule:5>, LeatherBackpack, <stevescarts:cartmodule:5>, <ore:stickIron>],
        [<magneticraft:crafting:6>, <ore:plateIron>, <stevescarts:cartmodule:5>, <ore:plateIron>, <magneticraft:crafting:6>],
        [null, <magneticraft:crafting:6>, <ore:stickIron>, <magneticraft:crafting:6>, null]])
    .setSecondaryIngredients([<ore:string>])
    .addTool(<ore:artisansNeedle>, 1)
    .addOutput( <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}) )
    .create();

    //  Gold Backpack
    var IronBackpack = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}});
RecipeBuilder.get("tailor")
    .setShaped([
        [null, <magneticraft:crafting:5>, <ore:stickElectrum>, <magneticraft:crafting:5>, null],
        [<magneticraft:crafting:5>, <ore:plateElectrum>, <stevescarts:cartmodule:4>, <ore:plateElectrum>, <magneticraft:crafting:5>],
        [<ore:stickElectrum>, <stevescarts:cartmodule:4>, IronBackpack, <stevescarts:cartmodule:4>, <ore:stickElectrum>],
        [<magneticraft:crafting:5>, <ore:plateElectrum>, <stevescarts:cartmodule:4>, <ore:plateElectrum>, <magneticraft:crafting:5>],
        [null, <magneticraft:crafting:5>, <ore:stickElectrum>, <magneticraft:crafting:5>, null]])
    .setSecondaryIngredients([<ore:string>])
    .addTool(<ore:artisansNeedle>, 1)
    .addOutput(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}))
    .create();

    //  Diamond Backpack
var GoldBackpack = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}});
RecipeBuilder.get("tailor")
    .setShaped([
        [null, <mysticalagriculture:diamond_essence>, <ore:stickPlatinum>, <mysticalagriculture:diamond_essence>, null],
        [<mysticalagriculture:diamond_essence>, <ore:plateDiamatineEmpowered>, null, <ore:plateDiamatineEmpowered>, <mysticalagriculture:diamond_essence>],
        [<ore:stickPlatinum>, null, GoldBackpack, null, <ore:stickPlatinum>],
        [<mysticalagriculture:diamond_essence>, <ore:plateDiamatineEmpowered>, null, <ore:plateDiamatineEmpowered>, <mysticalagriculture:diamond_essence>],
        [null, <mysticalagriculture:diamond_essence>, <ore:stickPlatinum>, <mysticalagriculture:diamond_essence>, null]])
    .addTool(<ore:artisansNeedle>, 1)
    .addTool(<saltmod:salt_pinch>, 0)
    .addOutput(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}))
    .create();