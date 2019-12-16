	//Enhance the Plant string recipe
recipes.removeByRecipeName("notreepunching:misc/grass_string");
/*
recipes.addShaped("Plant String", <notreepunching:grass_string>,
 [[	<ore:fiberPlant>,		<ore:fiberPlant>,		<ore:fiberPlant>		],
  [	<ore:fiberPlant>,		null,					<ore:fiberPlant>		],
  [	<ore:fiberPlant>,		<ore:fiberPlant>,		<ore:fiberPlant>		]]);
*/  
 
recipes.addShapeless("Plant String", <notreepunching:grass_string>, 
 [<ore:fiberPlant>, <ore:fiberPlant>, <ore:fiberPlant>]);
  
recipes.addShapeless("Flinty McHatchet", <notreepunching:axe/flint>, 
 [<ore:stringPlant>, <ore:shardFlint>, <ore:stickWood>]);
 
recipes.addShaped("Flinty McPickaxe", <notreepunching:pickaxe/flint>,
 [[	<ore:shardFlint>,	<ore:stringPlant>,	<ore:shardFlint>	],
  [	<ore:shardFlint>,	<ore:stickWood>,	<ore:shardFlint>	],
  [	null,				<ore:stickWood>,	null				]]);
  
recipes.addShaped("Flinty McShovel", <notreepunching:shovel/flint>,
 [[	null,				<ore:shardFlint>,	<ore:shardFlint>	],
  [	null,				<ore:stringPlant>,	<ore:shardFlint>	],
  [	<ore:stickWood>,	null,				null				]]);
  
recipes.addShaped("Flinty McLadyoftheNight", <notreepunching:hoe/flint>,
 [[	<ore:stringPlant>,	<ore:shardFlint>,	<ore:shardFlint>	],
  [	<ore:stickWood>,	null,				null				],
  [	<ore:stickWood>,	null,				null				]]);
  
recipes.addShaped("NTP FireStarter", <notreepunching:fire_starter>,
 [[	<ore:stickWood>,	<ore:stringPlant>,	null	],
  [	<ore:shardFlint>,	<ore:stickWood>,	null	],
  [	null,				null,				null	]]);
 



//==============================================================
//Remove Easy Tool recipes
//==============================================================

recipes.removeByRecipeName("notreepunching:tools/iron_knife");
recipes.removeByRecipeName("notreepunching:tools/iron_mattock");
recipes.removeByRecipeName("notreepunching:tools/iron_saw");
recipes.removeByRecipeName("notreepunching:tools/gold_knife");
recipes.removeByRecipeName("notreepunching:tools/gold_mattock");
recipes.removeByRecipeName("notreepunching:tools/gold_saw");
recipes.removeByRecipeName("notreepunching:copper_knife");
recipes.removeByRecipeName("notreepunching:copper_mattock");
recipes.removeByRecipeName("notreepunching:copper_saw");
recipes.removeByRecipeName("notreepunching:tin_knife");
recipes.removeByRecipeName("notreepunching:tin_mattock");
recipes.removeByRecipeName("notreepunching:tin_saw");
recipes.removeByRecipeName("notreepunching:bronze_knife");
recipes.removeByRecipeName("notreepunching:bronze_mattock");
recipes.removeByRecipeName("notreepunching:bronze_saw");
recipes.removeByRecipeName("notreepunching:steel_knife");
recipes.removeByRecipeName("notreepunching:steel_mattock");
recipes.removeByRecipeName("notreepunching:steel_saw");