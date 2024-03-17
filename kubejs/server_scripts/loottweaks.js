function getRndInteger(min, max) {
    return Math.floor(Math.random() * (max - min + 1) ) + min;
}

onEvent("lootjs", event => {
    event
        .addEntityLootModifier("iceandfire:gorgon")
        .thenApply((context) => {
            global.looting = context.getLooting()
        })
        .thenAdd('greekfantasy:gorgon_blood')
        .thenModify('greekfantasy:gorgon_blood', (itemstack) => {
            let maxloot = global.looting + 1
            return itemstack.withCount(itemstack.getCount() + getRndInteger(0, maxloot))
        })


    // replace emeralds with emerald ingots in all loot chests (10% chance)
  event.addLootTypeModifier(LootType.CHEST).randomChance(0.1).thenReplace("minecraft:emerald", "kubejs:emerald_ingot");

    // turn ingots back into emeralds in village chests. Not getting them that easily...
    event.addLootTableModifier(/.*chests\/village.*/).randomChance(1.0).thenReplace("kubejs:emerald_ingot", "minecraft:emerald");

})

onEvent('block.loot_tables', event => {
    // makes all emerald ores drop themselves
  event.addSimpleBlock(/.*emerald_ore/);
})