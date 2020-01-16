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
mortar.register();
	
*/

	//	mortar	_______________________________________________________________________________________________________________________________________________________________________
var mortar = VanillaFactory.createFluid("mortar", Color.fromHex("b0b0b0"));
mortar.viscosity = 100000;
mortar.density = 100000;
mortar.register();

	//	molding Sand	_______________________________________________________________________________________________________________________________________________________________________
var moldsand = VanillaFactory.createFluid("moldsand", Color.fromHex("CCCC99"));
moldsand.viscosity = 10000;
moldsand.density = 100000;
moldsand.register();

	//	Smeltery Fuel 3500	_______________________________________________________________________________________________________________________________________________________________________
var smeltery_fuel_3500 = VanillaFactory.createFluid("smeltery_fuel_3500", Color.fromHex("b0b0b0"));
smeltery_fuel_3500.fillSound = <soundevent:block.note.snare>;
smeltery_fuel_3500.luminosity = 20;
smeltery_fuel_3500.viscosity = 3000;
smeltery_fuel_3500.temperature= 3800;
smeltery_fuel_3500.register();
