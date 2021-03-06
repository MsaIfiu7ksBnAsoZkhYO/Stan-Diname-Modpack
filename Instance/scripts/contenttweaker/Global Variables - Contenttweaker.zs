//=====================================================================================================================================================================================================	
//These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


#loader contenttweaker
#priority 9999


//=====================================================================================================================================================================================================	
//	Defines tables used by the material builder for item creation
//=====================================================================================================================================================================================================	


//=====================================================================================================================================================================================================	
//	Define the material hex colors
//=====================================================================================================================================================================================================	


global GlobalMaterialList as string[string] = {
	"Coal"				:	"000000",
	"Copper"			:	"ff976e",
	"Gold"				:	"ffff7a",
	"Lead"				:	"616161",
	"Lithium"			:	"ffffff",
	"Molybdochalkos"	:	"4c5368",
	"Tin"				:	"fef4e7",
	"Bronze"			:	"dda75e",
	"Cadmium"			:	"ccd2d4",
	"Magnesium"			:	"a5a5a1",
	"Silicon"			:	"2c2c2b",
	"Silver"			:	"f7f7f7",
	"Zinc"				:	"aaaa8d",
	"Aluminum"			:	"c9cac6",
	"Amber"				:	"000000",
	"Brass"				:	"daa860",
	"Electrum"			:	"fde57a",
	"Iron"				:	"d3d3d3",
	"Sulfur"			:	"000000",
	"Aluminumbrass"		:	"efd87e",
	"Beryllium"			:	"000000",
	"Bloodbronze"		:	"d95461",
	"Galvanizedsteel"	:	"e8eff2",
	"InertBloodIron"	:	"000000",
	"Lapis"				:	"000000",
	"Palladium"			:	"ffbc5a",
	"Redstone"			:	"ec0000",
	"Spectre"			:	"000000",
	"Steel"				:	"9a9c9e",
	"Bloodinfusediron"	:	"8c0000",
	"Cobalt"			:	"2a7ced",
	"Demonmetal"		:	"ff4e00",
	"Enori"				:	"000000",
	"Invar"				:	"ccd4ca",
	"Knightslime"		:	"f8aeff",
	"Malachite"			:	"000000",
	"Magnite"			:	"a5453b",
	"Manganese"			:	"e3cfd4",
	"Nickel"			:	"e1f8de",
	"Palis"				:	"000000",
	"Restonia"			:	"000000",
	"AstralStarmetal"	:	"000000",
	"Thorium"			:	"8d9393",
	"Titanium"			:	"ff99ff",
	"Uranium"			:	"b9c089",
	"Alnico"			:	"9baaba",
	"Ardite"			:	"d44d20",
	"Constantan"		:	"fab877",
	"Enchantedmetal"	:	"00ff04",
	"Enderium"			:	"007068",
	"Hexcite"			:	"000000",
	"Obsidian"			:	"000000",
	"Osmium"			:	"c4dae3",
	"Platinum"			:	"B7E7FF",
	"Signalium"			:	"D84100",
	"Thortanium"		:	"404040",
	"Titaniumaluminum"	:	"D6E0EE",
	"Titaniumiridium"	:	"E3E8EC",
	"Alumite"			:	"eeafaf",
	"BaseEssence"		:	"000000",
	"Bassalt"			:	"000000",
	"QuartzBlack"		:	"000000",
	"Dilithium"			:	"daebe4",
	"Enderpearl"		:	"000000",
	"Glowstone"			:	"ffd500",
	"Hardenedsteel"		:	"C0C0C0",
	"Iridium"			:	"e4decd",
	"Jauxum"			:	"7dff8a",
	"Karmesine"			:	"ff7966",
	"Lumium"			:	"FFFF7F",
	"Manyullyn"			:	"aa6fed",
	"Obsidiansteel"		:	"343248",
	"Osmiridium"		:	"666DFF",
	"Osram"				:	"fffad2",
	"Ovium"				:	"7966ff",
	"Prometheum"		:	"262229",
	"Quartz"			:	"000000",
	"Refinedglowstone"	:	"FFFF00",
	"Siliconcarbide"	:	"7d7969",
	"Tanzanite"			:	"000000",
	"Tiberium"			:	"c7d98e",
	"Tungsten"			:	"3D3D3D",
	"Zirconium"			:	"000000",
	"Boron"				:	"aaaaaa",
	"Chromium"			:	"cdcdcf",
	"Emeradic"			:	"000000",
	"Emerald"			:	"000000",
	"Hslasteel"			:	"a49bde",
	"Nichrome"			:	"e8eff2",
	"Stainlesssteel"	:	"e8eff2",
	"Terrax"			:	"c8b4c2",
	"Topaz"				:	"000000",
	"Tritonite"			:	"82a4cc",
	"Valyrium"			:	"d3a6ad",
	"Evilinfusedmetal"	:	"cccd98",
	"Ferroboron"		:	"5f5f5f",
	"Ignitz"			:	"ffd7d2",
	"Inferium"			:	"000000",
	"Mithril"			:	"000000",
	"Quartz"			:	"000000",
	"Ruby"				:	"000000",
	"Sapphire"			:	"000000",
	"Triberium"			:	"99c58e",
	"Abyssum"			:	"3494aa",
	"Aurorium"			:	"ffb6c9",
	"Diamond"			:	"000000",
	"Hardcarbon"		:	"185876",
	"Meteorite"			:	"393437",
	"Prudentium"		:	"000000",
	"Refinedobsidian"	:	"5D00FF",
	"Toughalloy"		:	"1b1428",
	"Unstable"			:	"000000",
	"Astrium"			:	"6f3472",
	"Diamantine"		:	"000000",
	"Dyonite"			:	"ffd957",
	"Eezo"				:	"343739",
	"Fractum"			:	"cab887",
	"Intermedium"		:	"000000",
	"Lumix"				:	"ffffd4",
	"Osgloglas"			:	"7cff82",
	"Violium"			:	"8394a9",
	"Crystalized"		:	"000000",
	"Duranite"			:	"d6ebff",
	"Obsidiorite"		:	"0C1915",
	"Proxii"			:	"c9ecd7",
	"Seismum"			:	"754043",
	"Superium"			:	"000000",
	"Imperiomite"		:	"7fe09b",
	"Iox"				:	"ed4155",
	"Niob"				:	"5f8aa4",
	"Supremium"			:	"000000",
	"Uru"				:	"bdbad0",
	"Insanium"			:	"660066",
	"Nihilite"			:	"5a5c90",
	"Nucleum"			:	"ffffa0",
	"Solarium"			:	"d3d9a9",
	"Vibranium"			:	"d3d9df",
	"Yrdeen"			:	"8b7f92",
	"Adamant"			:	"ffc8ff",
};

//=====================================================================================================================================================================================================	
//	Assign the materials's harvestlevel.
//=====================================================================================================================================================================================================	


global GlobalHarvestLevel as string[string] = {
	"Coal"				:	"2",
	"Copper"			:	"2",
	"Gold"				:	"2",
	"Lead"				:	"2",
	"Lithium"			:	"2",
	"Molybdochalkos"	:	"2",
	"Tin"				:	"2",
	"Bronze"			:	"3",
	"Cadmium"			:	"3",
	"Magnesium"			:	"3",
	"Silicon"			:	"3",
	"Silver"			:	"3",
	"Zinc"				:	"3",
	"Aluminum"			:	"4",
	"Amber"				:	"4",
	"Brass"				:	"4",
	"Electrum"			:	"4",
	"Iron"				:	"4",
	"Sulfur"			:	"4",
	"Aluminumbrass"		:	"5",
	"Beryllium"			:	"5",
	"Bloodbronze"		:	"5",
	"Galvanizedsteel"	:	"5",
	"InertBloodIron"	:	"5",
	"Lapis"				:	"5",
	"Palladium"			:	"5",
	"Redstone"			:	"5",
	"Spectre"			:	"5",
	"Steel"				:	"5",
	"Bloodinfusediron"	:	"6",
	"Cobalt"			:	"6",
	"Demonmetal"		:	"6",
	"Enori"				:	"6",
	"Invar"				:	"6",
	"Knightslime"		:	"6",
	"Malachite"			:	"6",
	"Magnite"			:	"6",
	"Manganese"			:	"6",
	"Nickel"			:	"6",
	"Palis"				:	"6",
	"Restonia"			:	"6",
	"AstralStarmetal"	:	"6",
	"Thorium"			:	"6",
	"Titanium"			:	"6",
	"Uranium"			:	"6",
	"Alnico"			:	"7",
	"Ardite"			:	"7",
	"Constantan"		:	"7",
	"Enchantedmetal"	:	"7",
	"Enderium"			:	"7",
	"Hexcite"			:	"7",
	"Obsidian"			:	"7",
	"Osmium"			:	"7",
	"Platinum"			:	"7",
	"Signalium"			:	"7",
	"Thortanium"		:	"7",
	"Titaniumaluminum"	:	"7",
	"Titaniumiridium"	:	"7",
	"Alumite"			:	"8",
	"BaseEssence"		:	"8",
	"Bassalt"			:	"8",
	"QuartzBlack"		:	"8",
	"Dilithium"			:	"8",
	"Enderpearl"		:	"8",
	"Glowstone"			:	"8",
	"Hardenedsteel"		:	"8",
	"Iridium"			:	"8",
	"Jauxum"			:	"8",
	"Karmesine"			:	"8",
	"Lumium"			:	"8",
	"Manyullyn"			:	"8",
	"Obsidiansteel"		:	"8",
	"Osmiridium"		:	"8",
	"Osram"				:	"8",
	"Ovium"				:	"8",
	"Prometheum"		:	"8",
	"Quartz"			:	"8",
	"Refinedglowstone"	:	"8",
	"Siliconcarbide"	:	"8",
	"Tanzanite"			:	"8",
	"Tiberium"			:	"8",
	"Tungsten"			:	"8",
	"Zirconium"			:	"8",
	"Boron"				:	"9",
	"Chromium"			:	"9",
	"Emeradic"			:	"9",
	"Emerald"			:	"9",
	"Hslasteel"			:	"9",
	"Nichrome"			:	"9",
	"Stainlesssteel"	:	"9",
	"Terrax"			:	"9",
	"Topaz"				:	"9",
	"Tritonite"			:	"9",
	"Valyrium"			:	"9",
	"Evilinfusedmetal"	:	"10",
	"Ferroboron"		:	"10",
	"Ignitz"			:	"10",
	"Inferium"			:	"10",
	"Mithril"			:	"10",
	"NetherQuartz"		:	"10",
	"Ruby"				:	"10",
	"Sapphire"			:	"10",
	"Triberium"			:	"10",
	"Abyssum"			:	"11",
	"Aurorium"			:	"11",
	"Diamond"			:	"11",
	"Hardcarbon"		:	"11",
	"Meteorite"			:	"11",
	"Prudentium"		:	"11",
	"Refinedobsidian"	:	"11",
	"Toughalloy"		:	"11",
	"Unstable"			:	"11",
	"Astrium"			:	"12",
	"Diamantine"		:	"12",
	"Dyonite"			:	"12",
	"Eezo"				:	"12",
	"Fractum"			:	"12",
	"Intermedium"		:	"12",
	"Lumix"				:	"12",
	"Osgloglas"			:	"12",
	"Violium"			:	"12",
	"Crystalized"		:	"13",
	"Duranite"			:	"13",
	"Obsidiorite"		:	"13",
	"Proxii"			:	"13",
	"Seismum"			:	"13",
	"Superium"			:	"13",
	"Imperiomite"		:	"14",
	"Iox"				:	"14",
	"Niob"				:	"14",
	"Supremium"			:	"14",
	"Uru"				:	"14",
	"Insanium"			:	"15",
	"Nihilite"			:	"15",
	"Nucleum"			:	"15",
	"Solarium"			:	"15",
	"Vibranium"			:	"15",
	"Yrdeen"			:	"15",
	"Adamant"			:	"16",
};

//=====================================================================================================================================================================================================	
//	Specify which materials are to be considered Ore blocks to get ore processing parts made
//=====================================================================================================================================================================================================	

global GlobalOreMetalMaterial as string[] = [
	"Copper",
	"Gold",
	"Lead",
	"Lithium",
	"Tin",
	"Magnesium",
	"Silver",
	"Zinc",
	"Aluminum",
	"Iron",
	"Palladium",
	"Cobalt",
	"Magnite",
	"Manganese",
	"Nickel",
	"Thorium",
	"Titanium",
	"Uranium",
	"Ardite",
	"Osmium",
	"Platinum",
	"Iridium",
	"Jauxum",
	"Karmesine",
	"Osram",
	"Ovium",
	"Prometheum",
	"Tiberium",
	"Tungsten",
	"Zirconium",
	"Boron",
	"Chromium",
	"Valyrium",
	"Mithril",
	"Abyssum",
	"Aurorium",
	"Meteorite",
	"Eezo",
	"Duranite",
	"Vibranium",
];
global GlobalOreMetalPart as string[] = [
    "cluster",
    "ore_rock",
	"crystal",
    "shard",
    "clump",
	"dirty_dust",
    "dust",
	"tiny_dust",
	
	"chunk",
	"rocky_chunk",
	"oxide_dust",
	"pulpy_dust",
	"squeezed_dust",
	"seed_crystal",

    "leeched_metal_solution",
    "more_leeched_metal_solution",
    "heated_metal_solution",
    "refined_metal_solution",
    "sludge_metal_solution",
    "clean_metal_solution",
    "distillate",
];

//=====================================================================================================================================================================================================	
//	Specify which materials are to be considered Gemstones to get Gemstone processing parts made
//=====================================================================================================================================================================================================	


global GlobalOreGemMaterial as string[] = [
	"Coal",
	"Amber",
	"Sulfur",
	"Lapis",
	"Redstone",
	"Malachite",
	"Obsidian",
	"Hexcite",
	"QuartzBlack",
	"Dilithium",
	"Glowstone",
	"Quartz",
	"Tanzanite",
	"Emerald",
	"Topaz",
	"Ruby",
	"Sapphire",
	"Diamond",
];
global GlobalOreGemPart as string[] = [
	"flawed_gem",
	"flawless_gem",
	"chipped_gem",
];


//=====================================================================================================================================================================================================	
//	Specify which materials are to be considered metals to get parts like plates and rods made
//=====================================================================================================================================================================================================	


global GlobalAllMetalMaterial as string[] = [
	"Copper",
	"Gold",
	"Lead",
	"Lithium",
	"Molybdochalkos",
	"Tin",
	"Bronze",
	"Magnesium",
	"Silver",
	"Zinc",
	"Aluminum",
	"Brass",
	"Electrum",
	"Iron",
	"Aluminumbrass",
	"Beryllium",
	"Bloodbronze",
	"Galvanizedsteel",
	"InertBloodIron",
	"Palladium",
	"Spectre",
	"Steel",
	"Bloodinfusediron",
	"Cobalt",
	"Invar",
	"Knightslime",
	"Magnite",
	"Manganese",
	"Nickel",
	"AstralStarmetal",
	"Thorium",
	"Titanium",
	"Uranium",
	"Ardite",
	"Constantan",
	"Enderium",
	"Osmium",
	"Platinum",
	"Signalium",
	"Thortanium",
	"Titaniumaluminum",
	"Titaniumiridium",
	"Alumite",
	"Dilithium",
	"Hardenedsteel",
	"Iridium",
	"Jauxum",
	"Karmesine",
	"Lumium",
	"Manyullyn",
	"Obsidiansteel",
	"Osmiridium",
	"Osram",
	"Ovium",
	"Prometheum",
	"Refinedglowstone",
	"Tiberium",
	"Tungsten",
	"Zirconium",
	"Boron",
	"Chromium",
	"Hslasteel",
	"Stainlesssteel",
	"Terrax",
	"Tritonite",
	"Valyrium",
	"Ferroboron",
	"Ignitz",
	"Inferium",
	"Mithril",
	"Triberium",
	"Abyssum",
	"Aurorium",
	"Hardcarbon",
	"Prudentium",
	"Refinedobsidian",
	"Toughalloy",
	"Astrium",
	"Dyonite",
	"Eezo",
	"Fractum",
	"Intermedium",
	"Lumix",
	"Obsidiorite",
	"Osgloglas",
	"Violium",
	"Crystalized",
	"Duranite",
	"Proxii",
	"Seismum",
	"Superium",
	"Imperiomite",
	"Iox",
	"Niob",
	"Supremium",
	"Uru",
	"Insanium",
	"Nihilite",
	"Nucleum",
	"Solarium",
	"Vibranium",
	"Yrdeen",
	"Adamant",
];
global GlobalAllMetalPart as string[] = [
    "ingot", 
    "nugget", 
    "plate", 
    "rod", 
    "gear",
];