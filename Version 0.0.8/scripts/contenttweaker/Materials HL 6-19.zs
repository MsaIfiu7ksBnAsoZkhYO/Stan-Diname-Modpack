
#norun
#loader contenttweaker
#priority 9998

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.VanillaFactory;


    //  Define the part types to use that already exist in Contentweaker / BASE
val BasePartList = [
    "small_dust",
    "tiny_dust",
    "dust",
    "ingot", 
    "nugget", 
    "plate", 
    "rod", 
    "gear", 
    "crystal",
    "shard",
    "clump",
    "ore_rock",
    "cluster",
] as string[];

    //  Create these additional part types.
val NewPartList = {
    "chunk"             :   "chunk",
    "rocky_chunk"       :   "rockyChunk",
    "dirty_dust"        :   "dustDirty",
    "doubleplate"       :   "plateDouble",
    "heavyplate"        :   "plateHeavy",
    "denseplate"        :   "plateDense",
 } as string[string];


     //  Create these additional part types.
val NewBlockList = {
    "sheetmetal"        :   "blockSheetmetal",
 } as string[string];

    //Merge the arrays together.
var PartList = [] as string[];
for Base in BasePartList { PartList+=Base; }
for New in NewPartList { PartList+=New; }

    //  Create new parts
for Item,Oredict in NewPartList {
        mods.contenttweaker.MaterialSystem.getPartBuilder() 
            .setName( Item )
            .setOreDictName( Oredict )
            .setPartType( MaterialSystem.getPartType( "item" ) )
            .build();
}

/*
    //  Create new block parts
for Item,Oredict in NewBlockList {
        mods.contenttweaker.MaterialSystem.getPartBuilder() 
            .setName( Item )
            .setOreDictName( Oredict )
            .setPartType( MaterialSystem.getPartType( "block" ) )
            .build();
}
*/

    //  Dynamically create the parts from the above lists.
for Material,HexColor in GlobalMaterialList {

        //  Create the materials as defined above
    var PINGAS = MaterialSystem.getMaterialBuilder()
        .setName( Material )
        .setColor( Color.fromHex( HexColor ) )
        .build()
    ;

        //  Create the parts as specified in the above lists
    PINGAS.registerParts( PartList );

        //  Generate a block of the material
    var block = PINGAS.registerPart("block").getData();
    block.addDataValue("hardness", "5");
    block.addDataValue("resistance", "30");
    block.addDataValue("harvestLevel", GlobalHarvestLevel[Material]);
    block.addDataValue("harvestTool", "pickaxe");

/*
        //  Generate a block of sheetmetal Can merge this into the block above
    var sheetmetal = PINGAS.registerPart("sheetmetal").getData();
    sheetmetal.addDataValue("hardness", "5");
    sheetmetal.addDataValue("resistance", "30");
    sheetmetal.addDataValue("harvestLevel", GlobalHarvestLevel[Material]);
    sheetmetal.addDataValue("harvestTool", "pickaxe");
*/     

        //  Make a fluid
    VanillaFactory.createFluid( "Pingas"~Material, Color.fromHex( HexColor ) ).register(); 


        //  Generate an Ore block
    var ore = PINGAS.registerPart("ore").getData();
    ore.addDataValue("hardness", "3");
    ore.addDataValue("resistance", "15");
    ore.addDataValue("harvestLevel", GlobalHarvestLevel[Material]);
    ore.addDataValue("harvestTool", "pickaxe");
    
}