#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;

/*

	//	Template	_______________________________________________________________________________________________________________________________________________________________________
var mortar = VanillaFactory.createFluid("mortar", Color.fromHex("b0b0b0"));
mortar.fillSound = <soundevent:block.note.snare>;
mortar.luminosity = 10;
mortar.viscosity = 3000;
mortar.temperature= 1000;
mortar.rarity = "UNCOMMON";
mortar.stillLocation = "contenttweaker:fluids/mortar";
mortar.flowingLocation = "contenttweaker:fluids/mortar_flow";
mortar.material = <blockmaterial:water>
mortar.register();
	
*/

	//	mortar	_______________________________________________________________________________________________________________________________________________________________________
var mortar = VanillaFactory.createFluid("mortar", Color.fromHex("b0b0b0"));
mortar.viscosity = 100000;
mortar.density = 100000;
mortar.stillLocation = "contenttweaker:fluids/mortar";
mortar.flowingLocation = "contenttweaker:fluids/mortar_flow";
mortar.register();

	//	molding Sand	_______________________________________________________________________________________________________________________________________________________________________
var moldsand = VanillaFactory.createFluid("moldsand", Color.fromHex("CCCC99"));
moldsand.viscosity = 10000;
moldsand.density = 100000;
moldsand.stillLocation = "contenttweaker:fluids/moldsand";
moldsand.flowingLocation = "contenttweaker:fluids/moldsand";
moldsand.register();

	//	Smeltery Fuel 3500	_______________________________________________________________________________________________________________________________________________________________________
var smeltery_fuel_3500 = VanillaFactory.createFluid("smeltery_fuel_3500", Color.fromHex("b0b0b0"));
smeltery_fuel_3500.fillSound = <soundevent:block.note.snare>;
smeltery_fuel_3500.luminosity = 20;
smeltery_fuel_3500.viscosity = 3000;
smeltery_fuel_3500.temperature= 3800;
smeltery_fuel_3500.stillLocation = "contenttweaker:fluids/smeltery_fuel_3500";
smeltery_fuel_3500.flowingLocation = "contenttweaker:fluids/smeltery_fuel_3500";
mortar.material = <blockmaterial:lava>;
smeltery_fuel_3500.register();


	//	Lime Liquid	_______________________________________________________________________________________________________________________________________________________________________
var lime_liquid = VanillaFactory.createFluid("lime_liquid", Color.fromHex("ffffff"));
lime_liquid.viscosity = 10000000;
lime_liquid.density = 10000000;
lime_liquid.stillLocation = "contenttweaker:fluids/lime_liquid";
lime_liquid.flowingLocation = "contenttweaker:fluids/lime_liquid_flow";
lime_liquid.register();

	//	Flint Liquid	_______________________________________________________________________________________________________________________________________________________________________
var flint_liquid = VanillaFactory.createFluid("flint_liquid", Color.fromHex("515151"));
flint_liquid.viscosity = 10000000;
flint_liquid.density = 10000000;
flint_liquid.stillLocation = "contenttweaker:fluids/flint_liquid";
flint_liquid.flowingLocation = "contenttweaker:fluids/flint_liquid_flow";
flint_liquid.register();

	//	Sand Liquid 	_______________________________________________________________________________________________________________________________________________________________________
var sand_liquid = VanillaFactory.createFluid("sand_liquid", Color.fromHex("ffffff"));
sand_liquid.viscosity = 10000000;
sand_liquid.density = 10000000;
sand_liquid.stillLocation = "contenttweaker:fluids/sand_liquid";
sand_liquid.flowingLocation = "contenttweaker:fluids/sand_liquid_flow";
sand_liquid.register();

	//	Carbon Liquid	_______________________________________________________________________________________________________________________________________________________________________
var carbon_liquid = VanillaFactory.createFluid("carbon_liquid", Color.fromHex("ffffff"));
carbon_liquid.viscosity = 10000000;
carbon_liquid.density = 10000000;
carbon_liquid.stillLocation = "contenttweaker:fluids/carbon_liquid";
carbon_liquid.flowingLocation = "contenttweaker:fluids/carbon_liquid_flow";
carbon_liquid.register();

	//	Gravel Liquid	_______________________________________________________________________________________________________________________________________________________________________
var gravel_liquid = VanillaFactory.createFluid("gravel_liquid", Color.fromHex("ffffff"));
gravel_liquid.viscosity = 10000000;
gravel_liquid.density = 10000000;
gravel_liquid.stillLocation = "contenttweaker:fluids/gravel_liquid";
gravel_liquid.flowingLocation = "contenttweaker:fluids/gravel_liquid_flow";
gravel_liquid.register();

	//	Ash Liquid	_______________________________________________________________________________________________________________________________________________________________________
var ash_liquid = VanillaFactory.createFluid("ash_liquid", Color.fromHex("A8A8A8"));
ash_liquid.viscosity = 10000000;
ash_liquid.density = 10000000;
ash_liquid.stillLocation = "contenttweaker:fluids/ash_liquid";
ash_liquid.flowingLocation = "contenttweaker:fluids/ash_liquid_flow";
ash_liquid.register();

	//	Bone Liquid	_______________________________________________________________________________________________________________________________________________________________________
var bone_liquid = VanillaFactory.createFluid("bone_liquid", Color.fromHex("FAF1D2"));
bone_liquid.viscosity = 1000000;
bone_liquid.density = 1000000;
bone_liquid.stillLocation = "contenttweaker:fluids/bone_liquid";
bone_liquid.flowingLocation = "contenttweaker:fluids/bone_liquid_flow";
bone_liquid.register();

	//	Porcelain Clay	_______________________________________________________________________________________________________________________________________________________________________
var porcelain_clay_liquid = VanillaFactory.createFluid("porcelain_clay_liquid", Color.fromHex("FFFFFF"));
porcelain_clay_liquid.viscosity = 1000000;
porcelain_clay_liquid.density = 1000000;
porcelain_clay_liquid.stillLocation = "contenttweaker:fluids/porcelain_clay_liquid";
porcelain_clay_liquid.flowingLocation = "contenttweaker:fluids/porcelain_clay_liquid_flow";
porcelain_clay_liquid.register();

	//	Seared Clay	_______________________________________________________________________________________________________________________________________________________________________
var seared_clay_liquid = VanillaFactory.createFluid("seared_clay_liquid", Color.fromHex("FFFFFF"));
seared_clay_liquid.viscosity = 1000000;
seared_clay_liquid.density = 1000000;
seared_clay_liquid.stillLocation = "contenttweaker:fluids/seared_clay_liquid";
seared_clay_liquid.flowingLocation = "contenttweaker:fluids/seared_clay_liquid_flow";
seared_clay_liquid.register();

	//	Seared Clay	_______________________________________________________________________________________________________________________________________________________________________
var scorched_clay_liquid = VanillaFactory.createFluid("scorched_clay_liquid", Color.fromHex("FFFFFF"));
scorched_clay_liquid.viscosity = 1000000;
scorched_clay_liquid.density = 1000000;
scorched_clay_liquid.stillLocation = "contenttweaker:fluids/scorched_clay_liquid";
scorched_clay_liquid.flowingLocation = "contenttweaker:fluids/scorched_clay_liquid_flow";
scorched_clay_liquid.register();

	//	Coke Clay	_______________________________________________________________________________________________________________________________________________________________________
var coke_clay_liquid = VanillaFactory.createFluid("coke_clay_liquid", Color.fromHex("FFFFFF"));
coke_clay_liquid.viscosity = 1000000;
coke_clay_liquid.density = 1000000;
coke_clay_liquid.stillLocation = "contenttweaker:fluids/coke_clay_liquid";
coke_clay_liquid.flowingLocation = "contenttweaker:fluids/coke_clay_liquid_flow";
coke_clay_liquid.register();

	//	Kiln Clay	_______________________________________________________________________________________________________________________________________________________________________
var kiln_clay_liquid = VanillaFactory.createFluid("kiln_clay_liquid", Color.fromHex("FFFFFF"));
kiln_clay_liquid.viscosity = 1000000;
kiln_clay_liquid.density = 1000000;
kiln_clay_liquid.stillLocation = "contenttweaker:fluids/kiln_clay_liquid";
kiln_clay_liquid.flowingLocation = "contenttweaker:fluids/kiln_clay_liquid_flow";
kiln_clay_liquid.register();

	//	Blast Clay	_______________________________________________________________________________________________________________________________________________________________________
var blast_clay_liquid = VanillaFactory.createFluid("blast_clay_liquid", Color.fromHex("FFFFFF"));
blast_clay_liquid.viscosity = 1000000;
blast_clay_liquid.density = 1000000;
blast_clay_liquid.stillLocation = "contenttweaker:fluids/blast_clay_liquid";
blast_clay_liquid.flowingLocation = "contenttweaker:fluids/blast_clay_liquid_flow";
blast_clay_liquid.register();