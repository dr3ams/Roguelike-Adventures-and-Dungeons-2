//generate random number between min and max inclusive
function getRndInteger(min, max) {
    return Math.floor(Math.random() * (max - min + 1) ) + min;
}
//multiply most drops from champion entities tiers 2+ multiplied by random value
onEvent("lootjs", (event) => {
    //event.enableLogging();
	//console.info('loot multiply')
    event.disableLootModification("champions:champion_loot");
    event
        .addLootTypeModifier(LootType.ENTITY)
        .customCondition({
            "condition": "champions:entity_champion",
            "entity": "this",
            "minTier": 2,
            "maxTier": 2
        })
        .thenModify(Ingredient.getAll(), (itemStack) => {
            return itemStack.withCount(itemStack.getCount() * getRndInteger(1, 2));
            
        });
    event
        .addLootTypeModifier(LootType.ENTITY)
        .customCondition({
            "condition": "champions:entity_champion",
            "entity": "this",
            "minTier": 3,
            "maxTier": 3
        })
        .thenModify(Ingredient.getAll(), (itemStack) => {
            return itemStack.withCount(itemStack.getCount() * getRndInteger(1, 4));
            
        });
    event
        .addLootTypeModifier(LootType.ENTITY)
        .customCondition({
            "condition": "champions:entity_champion",
            "entity": "this",
            "minTier": 4,
            "maxTier": 4
        })
        .thenModify(Ingredient.getAll(), (itemStack) => {
            return itemStack.withCount(itemStack.getCount() * getRndInteger(1, 8));
        });
    event
        .addLootTypeModifier(LootType.ENTITY)
        .customCondition({
            "condition": "champions:entity_champion",
            "entity": "this",
            "minTier": 5,
            "maxTier": 5
        })
        .thenModify(Ingredient.getAll(), (itemStack) => {
            return itemStack.withCount(itemStack.getCount() * getRndInteger(1, 16));
        });
    event
        .addLootTypeModifier(LootType.ENTITY)
        .customCondition({
            "condition": "champions:entity_champion",
            "entity": "this",
            "minTier": 6,
            "maxTier": 6
        })
        .thenModify(Ingredient.getAll(), (itemStack) => {
            return itemStack.withCount(itemStack.getCount() * getRndInteger(1, 32));
        });
});