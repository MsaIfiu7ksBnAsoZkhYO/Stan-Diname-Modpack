//==============================================================
//modify recipe relating to NTP's wood crafting tweaks
//==============================================================	
	

	//	shortcut recipes require a saw	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("extrautils2:shortcut_chest");
recipes.addShaped(
  "Chest Shortcut", 
  <minecraft:chest>*4,
  [
    [	<ore:logWood>,  <ore:logWood>,	<ore:logWood>		],
    [<ore:logWood>,   <ore:toolSaw>,	<ore:logWood>		],
    [	<ore:logWood>,  <ore:logWood>,	<ore:logWood>		]
  ]
);

	//	Add oredicted chest recipe	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
  "Vanilla Chest Fix recipe",
  <minecraft:chest>, 
  [
    [<ore:plankWood>, <ore:plankWood>,  <ore:plankWood> ],
    [<ore:plankWood>, null,             <ore:plankWood> ], 
    [<ore:plankWood>, <ore:plankWood>,  <ore:plankWood> ]
  ]
);

	//	Stick shortcut recipe requires saw	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("extrautils2:shortcut_stick");
/* - NTP has a log > stick recipe so this is not needed.
recipes.addShaped(
  "Stick Shortcut", 
  <minecraft:stick>*16,
  [
    [	<ore:toolSaw>,  <ore:logWood>,	null		],
    [	null,           <ore:logWood>,	null		],
    [	null,           null,			      null		]
  ]
);
*/

	//	Removing recipes that bypass the saw requirement	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("extrautils2:shortcut_hopper");
recipes.removeByRecipeName("atum:stick");


	//Terraquesous saw fix
recipes.remove(<terraqueous:planks>);
recipes.remove(<terraqueous:planks:1>);
recipes.remove(<terraqueous:planks:2>);
recipes.remove(<terraqueous:planks:3>);
recipes.remove(<terraqueous:planks:4>);
recipes.remove(<terraqueous:planks:5>);
recipes.remove(<terraqueous:planks:6>);
recipes.remove(<terraqueous:planks:7>);
recipes.remove(<terraqueous:planks:8>);
recipes.remove(<terraqueous:planks:9>);


recipes.addShapeless("Apple Planks", <terraqueous:planks>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk1> ]);
recipes.addShapeless("Cherry Planks", <terraqueous:planks:1>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk1:1> ]);
recipes.addShapeless("Orange Planks", <terraqueous:planks:2>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk1:2> ]);
recipes.addShapeless("Pear Planks", <terraqueous:planks:3>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk1:3> ]);
recipes.addShapeless("Peach Planks", <terraqueous:planks:4>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk1:4> ]);
recipes.addShapeless("Mango Planks", <terraqueous:planks:5>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk2> ]);
recipes.addShapeless("Lemon Planks", <terraqueous:planks:6>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk2:1> ]);
recipes.addShapeless("Plum Planks", <terraqueous:planks:7>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk2:2> ]);
recipes.addShapeless("Coconut Planks", <terraqueous:planks:8>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk2:3> ]);
recipes.addShapeless("Banana Planks", <terraqueous:planks:9>*4, [<ore:toolSaw>.transformDamage(), <terraqueous:trunk2:4> ]);