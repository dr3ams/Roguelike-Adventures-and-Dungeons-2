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
})