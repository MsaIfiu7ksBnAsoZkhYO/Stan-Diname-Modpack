
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

    //  Dynamically create the Ore processing parts.
//for Material,HexColor in GlobalMaterialList {
for Material in GlobalOreMetal {
    print("MATERIAL:   "~Material);
    var HexColor = GlobalMaterialList[Material];

        //  Create the materials as defined above
    var PINGAS = MaterialSystem.getMaterialBuilder()
        .setName( Material )
        .setColor( Color.fromHex( HexColor ) )
        .build()
    ;

        //  Create the parts as specified in the above lists
    PINGAS.registerParts( PartList );

        //  Make fluids
    VanillaFactory.createFluid( "Stage1_"~Material, Color.fromHex( HexColor ) ).register();
    VanillaFactory.createFluid( "Stage2_"~Material, Color.fromHex( HexColor ) ).register();  
    VanillaFactory.createFluid( "Stage3_"~Material, Color.fromHex( HexColor ) ).register(); 
    VanillaFactory.createFluid( "Stage4_"~Material, Color.fromHex( HexColor ) ).register(); 


        /*/  Generates an Ore block
    var ore = PINGAS.registerPart("ore").getData();
    ore.addDataValue("hardness", "3");
    ore.addDataValue("resistance", "15");
    ore.addDataValue("harvestLevel", GlobalHarvestLevel[Material]);
    ore.addDataValue("harvestTool", "pickaxe");
    */
    
}