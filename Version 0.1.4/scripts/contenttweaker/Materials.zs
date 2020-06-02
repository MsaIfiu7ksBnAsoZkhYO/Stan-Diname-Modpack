//=====================================================================================================================================================================================================	
//  These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


#loader contenttweaker
#priority 9998

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.VanillaFactory;


//=====================================================================================================================================================================================================	
//  Defining a helper function to make things easier
//=====================================================================================================================================================================================================	


function PartBuilder ( MaterialList as string[] , PartList as string[] ) {
    
    for Material in MaterialList {
    print("MATERIAL:   "~Material);
    
    var HexColor = GlobalMaterialList[Material];
    var BobtheBuilder = MaterialSystem.getMaterialBuilder()
        .setName( Material )
        .setColor( Color.fromHex( HexColor ) )
        .build()
    ;

    BobtheBuilder.registerParts( PartList );

    }

}

//=====================================================================================================================================================================================================	
//  Items to register as new part types
//=====================================================================================================================================================================================================	


val NewPartList = {
    "chunk"             :   "chunk",
    "rocky_chunk"       :   "rockyChunk",
    "oxide_dust"        :   "oxideDust",
    "pulpy_dust"        :   "pulpyDust",
    "squeezed_dust"     :   "squeezedDust",
    "seed_crystal"      :   "seedCrystal",
    "double_plate"      :   "doublePlate",
    "heavy_plate"       :   "heavyPlate",
 } as string[string];

for Item,Oredict in NewPartList {
        mods.contenttweaker.MaterialSystem.getPartBuilder() 
            .setName( Item )
            .setOreDictName( Oredict )
            .setPartType( MaterialSystem.getPartType( "item" ) )
            .build();
}


//=====================================================================================================================================================================================================	
//  Fluids to register as new part types
//=====================================================================================================================================================================================================	


val FluidPartList = [
    "leeched_metal_solution",
    "more_leeched_metal_solution",
    "heated_metal_solution",
    "refined_metal_solution",
    "sludge_metal_solution",
    "clean_metal_solution",
    "distillate",
 ] as string[];

for Item in FluidPartList {
        mods.contenttweaker.MaterialSystem.getPartBuilder() 
            .setName( Item )
            .setPartType( MaterialSystem.getPartType( "fluid" ) )
            .build();
}

/* - Moved to global variables script to keep this uncluttered
//=====================================================================================================================================================================================================	
//  Ore Processing parts and materials
//=====================================================================================================================================================================================================	


val OreProcessingMaterials = [
    "Copper",
    "Iron",
    "Gold"
] as string[];

val OreProcessingParts = [
    "cluster",
    "clump",
    "crystal",
    "distillate",
    "refined_metal_solution",
] as string[];


//=====================================================================================================================================================================================================	
//  Gem processing parts and materials
//=====================================================================================================================================================================================================	


val GemProcessingMaterials = [
    "Diamond",
    "Redstone",
] as string[];

val GemProcessingParts = [
    "beam",
    "bolt",
] as string[];


//=====================================================================================================================================================================================================	
//  Metal Component parts and materials.
//=====================================================================================================================================================================================================	


val MetalComponentMaterials = [
    "Bronze",
    "Brass",
    "Steel"
] as string[];

val MetalComponentParts = [
    "rod",
    "plate",
] as string[];
*/

//=====================================================================================================================================================================================================	
//  I call upon the dynamic powers of function calls!
//=====================================================================================================================================================================================================	


PartBuilder( GlobalOreMetalMaterial , GlobalOreMetalPart );
PartBuilder( GlobalOreGemMaterial , GlobalOreGemPart );
PartBuilder( GlobalAllMetalMaterial , GlobalAllMetalPart );

