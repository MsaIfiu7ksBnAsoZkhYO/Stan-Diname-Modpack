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
    "dirty_dust",
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
    "oxide_dust"        :   "oxideDust",
    "pulpy_dust"        :   "pulpyDust",
    "squeezed_dust"     :   "squeezedDust",
    "seed_crystal"      :   "seedCrystal",
 } as string[string];

     //  Create these additional fluid types.
val FluidPartList = [
    "leeched_metal_solution",
    "more_leeched_metal_solution",
    "heated_metal_solution",
    "refined_metal_solution",
    "sludge_metal_solution",
    "clean_metal_solution",
    "Distillate",
 ] as string[];


    //Merge the arrays together.
var PartList = [] as string[];
for Base in BasePartList { PartList+=Base; }
for New in NewPartList { PartList+=New; }
for Fluid in FluidPartList { PartList+=Fluid; }

    //  Create new Item parts
for Item,Oredict in NewPartList {
        mods.contenttweaker.MaterialSystem.getPartBuilder() 
            .setName( Item )
            .setOreDictName( Oredict )
            .setPartType( MaterialSystem.getPartType( "item" ) )
            .build();
}

    //  Create new Fluid parts
for Item in FluidPartList {
        mods.contenttweaker.MaterialSystem.getPartBuilder() 
            .setName( Item )
            .setPartType( MaterialSystem.getPartType( "fluid" ) )
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
        
        //  Leaving these in for stability.
        //VanillaFactory.createFluid( "stage1_"~Material, Color.fromHex( HexColor ) ).register();
        //VanillaFactory.createFluid( "stage2_"~Material, Color.fromHex( HexColor ) ).register();
        //VanillaFactory.createFluid( "stage3_"~Material, Color.fromHex( HexColor ) ).register();
        //VanillaFactory.createFluid( "stage4_"~Material, Color.fromHex( HexColor ) ).register();


/*
    VanillaFactory.createFluid( Material~"leeched_metal_solution", Color.fromHex( HexColor ) ).register();
    VanillaFactory.createFluid( Material~"more_leeched_metal_solution", Color.fromHex( HexColor ) ).register();  
    
    VanillaFactory.createFluid( Material~"heated_metal_solution", Color.fromHex( HexColor ) ).register(); 
    VanillaFactory.createFluid( Material~"refined_metal_solution", Color.fromHex( HexColor ) ).register(); 
    VanillaFactory.createFluid( Material~"sludge_metal_solution", Color.fromHex( HexColor ) ).register(); 
    VanillaFactory.createFluid( Material~"clean_metal_solution", Color.fromHex( HexColor ) ).register(); 
*/


        /*/  Generates an Ore block
    var ore = PINGAS.registerPart("ore").getData();
    ore.addDataValue("hardness", "3");
    ore.addDataValue("resistance", "15");
    ore.addDataValue("harvestLevel", GlobalHarvestLevel[Material]);
    ore.addDataValue("harvestTool", "pickaxe");
    */
    
}

val ForgingIngots = [
    "Osmiridium",
    "Stainlesssteel",
    "Alumite",
    "Brass",
    "Galvanizedsteel",
    "Hardenedsteel",
    "Osgloglas",
    "Refinedglowstone",
    "Refinedobsidian",
    "Thortanium",
 ] as string[];

for Material in ForgingIngots {
         print("Forging Ingot Materials:   "~Material);

    var HexColor = GlobalMaterialList[Material];
    var CurrentIngot = MaterialSystem.getMaterialBuilder()
        .setName( Material )
        .setColor( Color.fromHex( HexColor ) )
        .build()
    ;

    CurrentIngot.registerPart( "ingot" );
}