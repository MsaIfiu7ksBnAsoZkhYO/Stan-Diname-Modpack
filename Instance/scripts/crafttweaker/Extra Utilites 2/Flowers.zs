//=====================================================================================================================================================================================================	
//	Remove the ability to right click harvest XU flowers
//=====================================================================================================================================================================================================


<ore:toolKama>.add(<tconstruct:kama:*>);
<ore:toolKama>.add(<tconstruct:scythe:*>);

	//	Disable default right click harvest of red orchid
events.onPlayerInteractBlock( function( event as crafttweaker.event.PlayerInteractBlockEvent ) {
	if( !isNull( event.player.currentItem ) ) {	
		if( 
			event.block.definition.id == "extrautils2:enderlilly" 
			|
			event.block.definition.id == "extrautils2:redorchid" 
		) {
			if ( !(<ore:toolKama> has event.player.currentItem)) {
				event.cancel();
		  	}
		}
	} else {
		if( 
			event.block.definition.id == "extrautils2:enderlilly" 
			|
			event.block.definition.id == "extrautils2:redorchid" 
		) { event.cancel(); }
	}
} );