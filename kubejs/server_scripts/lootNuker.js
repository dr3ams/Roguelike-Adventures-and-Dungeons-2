
//each removal here should get removed from all loot tables
onEvent("lootjs", (event) => {
    //event.enableLogging();
	//console.info('loot nuke')
    event//just delaing with rice dont mind me
        .addBlockLootModifier("simplefarming:rice_crop")
        .thenReplace('simplefarming:rice', 'farmersdelight:rice_panicle')
        .thenRemove('simplefarming:rice_seeds');
    
    event//this part nukes the item from all loot tables
        .addLootTypeModifier(LootType.UNKNOWN, LootType.BLOCK, LootType.ENTITY, LootType.CHEST, LootType.FISHING, LootType.GIFT)
        .thenRemove("enigmaticlegacy:enigmatic_item")
        .thenRemove("enigmaticlegacy:loot_generator")
        .thenRemove("minecraft:spawner")
        .thenReplace('simplefarming:rice', 'farmersdelight:rice_panicle')
        .thenReplace('simplefarming:rice_seeds', 'farmersdelight:rice');

    event//nuke basic iron gear from the village weaponsmith loot. Scaling loot is added through paxi/radrecipes/spartanweaponry datapack.
        .addLootTableModifier("minecraft:chests/village/village_weaponsmith")
        .thenRemove("minecraft:iron_helmet")
        .thenRemove("minecraft:iron_chestplate")
        .thenRemove("minecraft:iron_leggings")
        .thenRemove("minecraft:iron_boots")
        .thenRemove("minecraft:iron_sword")
        .thenRemove("minecraft:iron_pickaxe");
});
