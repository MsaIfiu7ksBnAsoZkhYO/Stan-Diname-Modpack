import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


//==============================================================
//	I like the IE workbench.  Make the revolver there.
//==============================================================


mods.immersiveengineering.Blueprint.addRecipe(
	"Revolver", 
	<immersiveengineering:revolver>, 
	[
		<immersiveengineering:material:13>*2,
		<immersiveengineering:material:15>,
		<immersiveengineering:material:16>,
		<immersiveengineering:material:14>,
		<immersiveengineering:material:9>*3,
	]
);


//==============================================================
//	Make the fine copper coil here because I said so.
//==============================================================


mods.immersiveengineering.Blueprint.addRecipe(
	"Wire Coil", 
	<magneticraft:crafting:3>, 
	[
		<ore:wireCopper>,
		<ore:wireCopper>,
		<ore:wireCopper>,
		<ore:wireCopper>,
		<ore:wireCopper>,
		<ore:wireCopper>,
	]
);

//==============================================================
//	Tomorow I'll invent those blueprints
//==============================================================


val ProductionBlueprints = [
	<magneticraft:big_steam_boiler>,
	<magneticraft:solar_tower>,
	<magneticraft:big_combustion_chamber>,
	<magneticraft:solar_mirror>,
	<magneticraft:steam_turbine>,
	<magneticraft:steam_engine>,
	<magneticraft:solar_panel>,
	<magneticraft:refinery>,
	] as IItemStack[];

val ProcessingBlueprints = [
	<magneticraft:hydraulic_press>,
	<magneticraft:sieve>,
	<magneticraft:oil_heater>,
	<magneticraft:pumpjack>,
	<magneticraft:big_electric_furnace>,
	<magneticraft:grinder>,
	<magneticraft:container>,
	<magneticraft:shelving_unit>,
	] as IItemStack[];

val BlueprintParts = [
	<ore:paper>,
	<immersiveengineering:wooden_device0>,
	<ore:dyeBlue>,
	] as IIngredient[];


for Blueprint in ProductionBlueprints{
	mods.immersiveengineering.Blueprint.addRecipe("Magneticraft Production Plans", Blueprint, BlueprintParts);
	recipes.remove( Blueprint );
	}

for Blueprint in ProcessingBlueprints{
	mods.immersiveengineering.Blueprint.addRecipe("Magneticraft Processing Plans", Blueprint, BlueprintParts);
	recipes.remove( Blueprint );
	}