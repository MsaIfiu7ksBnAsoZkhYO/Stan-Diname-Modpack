#norun
#priority 9999

import crafttweaker.recipes.ICraftingRecipe
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;

val = AllRecipes = recipes.all;

for Recipes in AllRecipes.getName(); {
    RecipeBuilder.get("basic")
        .setCopy( Copy.byName(Recipes) )
        .create();
}


recipes.removeAll();



//mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "oliveoil", Amount: 1000}}));
//mods.jei.JEI.removeAndHide(<nuclearcraft:rad_shielding:*>);