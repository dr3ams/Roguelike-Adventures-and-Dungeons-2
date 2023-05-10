
//each removal here should get removed from all loot tables
onEvent("lootjs", (event) => {
    //event.enableLogging();
	//console.info('loot nuke')
    event
        .addLootTypeModifier(LootType.UNKNOWN, LootType.BLOCK, LootType.ENTITY, LootType.CHEST, LootType.FISHING, LootType.GIFT)
        .thenRemove("enigmaticlegacy:enigmatic_item")
        .thenRemove("enigmaticlegacy:loot_generator")
        .thenRemove("minecraft:spawner");
});