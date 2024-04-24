furnace.removeByName("stalwart_dungeons:tungsten_ingot_recipe");

blastFurnace.removeByName("stalwart_dungeons:tungsten_ingot_recipe_2");
blastFurnace.addRecipe("tungsten_ingot_from_ore_blast", <item:stalwart_dungeons:tungsten_ingot>, <item:stalwart_dungeons:tungsten_ore>, 1.0, 100);

//furnace.removeByName("brewevolution:dried_bread_recipe");
//smoker.removeByName("brewevolution:dried_bread_recipe_2");


furnace.removeRecipe(<item:mysticalworld:silver_ingot>);
blastFurnace.removeRecipe(<item:mysticalworld:silver_ingot>);

blastFurnace.removeByName("minecraft:emerald_from_blasting");
blastFurnace.removeByName("blue_skies:emerald_from_blasting");
blastFurnace.removeByName("atum:emerald_from_blasting");
blastFurnace.addRecipe("emerald_ingot_from_ore_blast", <item:kubejs:emerald_ingot>, <tag:items:forge:ores/emerald>, 1.0, 100);

furnace.removeByName("minecraft:emerald_from_smelting");
furnace.removeByName("blue_skies:emerald_from_smelting");
furnace.removeByName("atum:emerald_from_smelting");
furnace.addRecipe("emerald_ingot_from_ore_smelt", <item:kubejs:emerald_ingot>, <tag:items:forge:ores/emerald>, 1.0, 200);
