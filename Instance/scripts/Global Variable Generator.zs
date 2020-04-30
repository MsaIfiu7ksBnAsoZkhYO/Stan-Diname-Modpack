//=====================================================================================================================================================================================================	
//  This script is to generate the lists of available oredictionary entries in the modpack.  
//	The output in crafttweaker.log should be copied into the global variables script.  
//	This is to save on processing time instead of dynamically creating those lists every launch.
//=====================================================================================================================================================================================================	


	//	Should have norun set unless modifying oredict lists.
#norun
#priority 99999


//=====================================================================================================================================================================================================	
//  Get all the oredicts for these things
//=====================================================================================================================================================================================================	

        
        //	Dynamic Oredictionary Parts	_______________________________________________________________________________________________________________________________________________________________________
	val GlobalPrefixPart= [
		"ore",
    	"oreChunk",
		"rock",
		"cluster",
		"ingot",
    	"gem",
		"block",
		"nugget",
		"chunk",
		"rockyChunk",
		"crystal",
    	"shard",
    	"clump",
    	"dustDirty",
    	"dust",
		"dustSmall",
		"dustTiny",
    	"plate",
    	"stick",
		"gear",
	] as string[] ;

    	//	Dynamic Oredictionary Materials	_______________________________________________________________________________________________________________________________________________________________________
	val GlobalPostfixMaterial= [
		"Iron",
		"Copper",
		"Gold",
		"Silver",
		"Lead",
		"Lithium",
		"Tin",
		"Bronze",
		"Cadmium",
		"Magnesium",
		"Molybdochalkos",
		"Cerrosafe",
		"Magmolybdochalkosmuth",
		"Zinc",
		"Aluminum",
		"Brass",
		"Electrum",
		"Galvanizedsteel",
		"Nickel",
		"Palladium",
		"Steel",
		"Alumite",
		"Cobalt",
		"Constantan",
		"Demonmetal",
		"Invar",
		"Iridium",
		"Manganese",
		"Platinum",
		"Thorium",
		"Titanium",
		"Uranium",
		"Alnico",
		"Ardite",
		"Enderium",
		"Obsidiansteel",
		"Osmium",
		"Signalum",
		"Thortanium",
		"Titaniumaluminum",
		"Titaniumiridium",
		"Hardenedsteel",
		"Jauxum",
		"Karmesine",
		"Manyullyn",
		"Osmiridium",
		"Osram",
		"Ovium",
		"Prometheum",
		"Refinedglowstone",
		"Tiberium",
		"Tungsten",
		"Boron",
		"Chromium",
		"Nichrome",
		"Stainlesssteel",
		"Terrax",
		"Tritonite",
		"Valyrium",
		"Ferroboron",
		"Ignitz",
		"Triberium",
		"Abyssum",
		"Aurorium",
		"Hardcarbon",
		"Meteorite",
		"Refinedobsidian",
		"Toughalloy",
		"Astrium",
		"Dyonite",
		"Eezo",
		"Fractum",
		"Lumix",
		"Obsidiorite",
		"Osgloglas",
		"Violium",
		"Yrdeen",
		"Duranite",
		"Obsidiorite",
		"Proxii",
		"Seismum",
		"Imperomite",
		"Iox",
		"Niob",
		"Uru",
		"Nihilite",
		"Nucleum",
		"Solarium",
		"Vibranium",
		"Adamant",
		"Aluminumbrass",
		"Bloodbronze",
		"Bloodinfusediron",
		"Dilithium",
		"Enchantedmetal",
		"Evilinfusedmetal",
		"Glowstone",
		"Hslasteel",
		"Knightslime",
		"Lumium",
		"Redstone",
		"Silicon",
		"Siliconcarbide",
	] as string[] ;


//=====================================================================================================================================================================================================	
//  Gather all the specified oredicts
//=====================================================================================================================================================================================================	

    //  Print all found oredicts based on the lists above.	_______________________________________________________________________________________________________________________________________________________________________
print("=================================================================================================================================================");
print("PINGAS BEGINNING");
for Part in GlobalPrefixPart {
    print("=================================================================================================================================================");
	print("=================================================================================================================================================");
	print("=================================================================================================================================================");
	print("=================================================================================================================================================");
	print("=================================================================================================================================================");
	print("=================================================================================================================================================");
	for Material in GlobalPostfixMaterial {
		
        if (
            !(oreDict[ Part~Material ].empty)
        ) {
            print( Material ~ " : <ore:" ~ oreDict[ Part ~ Material ].name~">," );
        } 
        
    }
}
print("=================================================================================================================================================");
print("PINGAS ENDING");