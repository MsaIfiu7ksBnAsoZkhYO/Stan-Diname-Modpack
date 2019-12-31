//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Bloomery and Coal refining
//=====================================================================================================================================================================================================


	//	Bloomin Bloomery	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [null,                              <minecraft:stone_brick_stairs>, <ceramics:clay_barrel:1>,   <minecraft:stone_brick_stairs>, null                            ],
        [null,                              <minecraft:stone_brick_stairs>, <ceramics:clay_barrel:1>,   <minecraft:stone_brick_stairs>, null                            ],
        [<minecraft:stone_brick_stairs>,    <ore:bricksStone>,              <ceramics:clay_barrel:1>,   <ore:bricksStone>,              <minecraft:stone_brick_stairs>  ],
        [<minecraft:stone_brick_stairs>,    <minecraft:furnace>,            <minecraft:furnace>,        <minecraft:furnace>,            <minecraft:stone_brick_stairs>  ],
        [<ore:bricksStone>,                 <minecraft:furnace>,            <minecraft:furnace>,        <minecraft:furnace>,            <ore:bricksStone>               ]])
    .setFluid( <liquid:mortar> * 500 )
    .addTool( <ore:artisansTrowel>, 10 )
    .addOutput( <rockhounding_oretiers:bloomery> )
    .create();

	//	Coal Refinery	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [null,                  null,                   <ceramics:clay_barrel:1>,    null,                   null                ],
        [null,                  <minecraft:stone_slab>, <minecraft:stone_slab>,      <minecraft:stone_slab>, null                ],
        [<ore:stone>,           <ore:stone>,            <ore:stone>,                 <ore:stone>,            <ore:stone>         ],
        [<minecraft:furnace>,   <minecraft:furnace>,    <minecraft:furnace>,         <minecraft:furnace>,    <minecraft:furnace> ]])
	.setFluid( <liquid:mortar> * 500 )
    .addTool( <ore:artisansTrowel>, 10 )
    .addOutput( <rockhounding_oretiers:coal_refiner> )
    .create();

	//	Drying Pallet	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
    .setShaped([
        [<ore:stickWood>,   <ore:stickWood>,    <ore:stickWood>,    <ore:stickWood>,    <ore:stickWood> ],
        [<ore:slabWood>,    <ore:slabWood>,     <ore:slabWood>,     <ore:slabWood>,     <ore:slabWood>  ],
        [<ore:plankWood>,   null,               <ore:plankWood>,    null,               <ore:plankWood> ]])
    .addOutput( <rockhounding_oretiers:peat_drier> )
    .create();


	//	Forge Hammer	_______________________________________________________________________________________________________________________________________________________________________
val hammerHandle = <tconstruct:tool_rod>.withTag({Material: "wood"});
recipes.addShaped(
	"Rockhounding Forge Hammer", 
	<rockhounding_oretiers:forging_hammer>,
	[
		[null,	        null,	        <tinkersforging:hammer_head/copper> ],
		[null,          hammerHandle,	null                                ],
		[hammerHandle,  null,			null		                   		]
	]
);