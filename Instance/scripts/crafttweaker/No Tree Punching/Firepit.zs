//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mods.notreepunching.FirePit;


//=====================================================================================================================================================================================================	
//	Furnace Recipes
//=====================================================================================================================================================================================================


	//	Porcelain Bricks	_______________________________________________________________________________________________________________________________________________________________________
FirePit.add(
    <ceramics:unfired_clay:5>, 
    <contenttweaker:porcelain_brick>
);

	//	Coke Bricks	_______________________________________________________________________________________________________________________________________________________________________
FirePit.add(
    <contenttweaker:unfired_coke_brick>, 
    <contenttweaker:coke_brick> 
);

	//	Clay Bucket	_______________________________________________________________________________________________________________________________________________________________________
FirePit.remove(<notreepunching:pottery/bucket>);
FirePit.add(
    <notreepunching:pottery/bucket>,
    <ceramics:clay_bucket>
);
	
	//	Clay Shears	_______________________________________________________________________________________________________________________________________________________________________
FirePit.add(
    <ceramics:unfired_clay:1>, 
    <ceramics:clay_shears> 
);

	//	Clay Plates	_______________________________________________________________________________________________________________________________________________________________________
FirePit.add(
    <ore:plateClayRaw>, 
    <ceramics:unfired_clay:9> 
);

	//	Torches	_______________________________________________________________________________________________________________________________________________________________________
FirePit.add(
    <ore:stickWood>,
    <minecraft:torch>
);

	//	Porcelain Channel	_______________________________________________________________________________________________________________________________________________________________________
FirePit.add(
    <ceramics:unfired_clay:7>,
    <ceramics:channel>
);

	//	Porcelain Faucet	_______________________________________________________________________________________________________________________________________________________________________
FirePit.add(
    <ceramics:unfired_clay:6>,
	<ceramics:faucet>
);

//=====================================================================================================================================================================================================	
//	Disable the stick > torch on a firepit interaction
//=====================================================================================================================================================================================================


	//	Cancel the event instead of generating torches
events.onPlayerInteractBlock( function( event as crafttweaker.event.PlayerInteractBlockEvent ) {
	if( !isNull( event.player.currentItem ) ) {	
		if( event.block.definition.id == "notreepunching:fire_pit" ) {
			if (<ore:stickWood> has event.player.currentItem) {
				event.cancel();
		  	}
		}
	}
} );


/*
	//	Simply cancels the event for now.	Never had a empty had interaction to begin with.  _______________________________________________________________________________________________________________________________________________________________________
events.onPlayerInteractBlock( function( event as crafttweaker.event.PlayerInteractBlockEvent ) {
	if( !isNull( event.player.currentItem ) ) {	
		if( 
			<ore:stickWood> has event.player.currentItem 
			& //AND
			event.block.definition.id == "notreepunching:fire_pit" 
		) { event.cancel(); }
	} 
} );
*/

