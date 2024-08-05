const $CorailEntityHelper = java('ovh.corail.tombstone.helper.EntityHelper')
const $CorailModPerks = java('ovh.corail.tombstone.registry.ModPerks')

onEvent("lootjs", event => {
    //event.enableLogging();
    event
        .addLootTypeModifier([LootType.ENTITY])
        .matchEntity((entity) => {
            entity.isUndeadMob(true)
        })
        .matchKiller((entity) => {
            entity.anyType("minecraft:player")
        })
        .thenApply((context) => {
            let looting = context.getLooting()
            let luck = context.getLuck()
            let treasureSeekerLevel = $CorailEntityHelper.getPerkLevelWithBonus(context.getKillerEntity().minecraftPlayer, $CorailModPerks.treasure_seeker)
            let chanceboost = 1 + treasureSeekerLevel * 0.3 + luck * 0.1
            
            //console.log("Grave Dust: " + 0.01 * chanceboost)
            for (let i = 0; i < Math.ceil(Math.sqrt(looting)) + 1; i++) {
                if (Math.random() < (0.01 * chanceboost)) {
                    context.addLoot('tombstone:grave_dust')
                }    
            }
            
            if (Math.random() < (0.001 * chanceboost * (Math.floor(Math.pow(looting, 0.4)) + 1))) {
                context.addLoot('tombstone:essence_of_undeath')
            }
        })
})
