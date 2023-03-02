// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

console.info('Hello, World! (You will see this line every time server resources reload)')

onEvent('recipes', event => {
	//remove varius refined storage blocks from crafting
	event.remove({output: '#refinedstorage:network_transmitter'})
	event.remove({output: '#refinedstorage:network_receiver'})
	event.remove({output: '#refinedstorage:relay'})
	event.remove({output: '#refinedstorage:detector'})
	event.remove({output: '#refinedstorage:crafter'})
	event.remove({output: '#refinedstorage:crafter_manager'})
	event.remove({output: '#refinedstorage:crafting_monitor'})
	event.remove({output: 'refinedstorage:pattern'})
	event.remove({output: 'refinedstorage:portable_grid'})
	event.remove({output: 'refinedstorage:crafting_upgrade'})
	event.remove({output: 'refinedstorage:fortune_3_upgrade'})
	event.remove({output: 'refinedstorage:fortune_2_upgrade'})
	event.remove({output: 'refinedstorage:fortune_1_upgrade'})
	event.remove({output: 'refinedstorage:silk_touch_upgrade'})
	event.remove({output: 'refinedstorage:constructor'})
	event.remove({output: 'refinedstorage:destructor'})
	event.remove({output: 'refinedstorage:wireless_crafting_monitor'})
	event.remove({output: '#refinedstorage:pattern_grid'})
	event.remove({output: 'refinedstorage:1k_storage_part'})
	event.remove({output: 'refinedstorage:64k_fluid_storage_part'})
	//recipies to turn normal disk into fluid disk
	event.shaped('refinedstorage:64k_fluid_storage_part', [
		'SBS',
		'BDB',
		'SBS'
	], {
		S: '#forge:silicon',
		B: 'minecraft:bucket',
		D: 'refinedstorage:1k_storage_part'
	})
	event.shaped('refinedstorage:256k_fluid_storage_part', [
		'SBS',
		'BDB',
		'SBS'
	], {
		S: '#forge:silicon',
		B: 'minecraft:bucket',
		D: 'refinedstorage:4k_storage_part'
	})
	event.shaped('refinedstorage:1024k_fluid_storage_part', [
		'SBS',
		'BDB',
		'SBS'
	], {
		S: '#forge:silicon',
		B: 'minecraft:bucket',
		D: 'refinedstorage:16k_storage_part'
	})
	event.shaped('refinedstorage:4096k_fluid_storage_part', [
		'SBS',
		'BDB',
		'SBS'
	], {
		S: '#forge:silicon',
		B: 'minecraft:bucket',
		D: 'refinedstorage:64k_storage_part'
	})
})

onEvent('item.tags', event => {

})

onEvent("lootjs", (event) => {
	//event.enableLogging();
	//console.info('loot inject')
	event
		.addLootTableModifier("minecraft:chests/simple_dungeon", "minecraft:chests/buried_treasure", "minecraft:chests/abandoned_mineshaft", "minecraft:chests/desert_pyramid", "minecraft:chests/igloo_chest", "minecraft:chests/jungle_temple", "minecraft:chests/nether_bridge", "minecraft:chests/shipwreck_treasure", "minecraft:chests/stronghold_corridor", "minecraft:chests/stronghold_crossing", "minecraft:chests/underwater_ruin_big", "minecraft:chests/underwater_ruin_small")
		.randomChance(0.175)
		.thenAdd('refinedstorage:1k_storage_part')
		.randomChance(0.33)
		.thenRemove('refinedstorage:1k_storage_part')
		.thenAdd('refinedstorage:4k_storage_part')
		.randomChance(0.33)
		.thenRemove('refinedstorage:4k_storage_part')
		.thenAdd('refinedstorage:16k_storage_part')
		.randomChance(0.33)
		.thenRemove('refinedstorage:16k_storage_part')
		.thenAdd('refinedstorage:64k_storage_part');
	event
		.addLootTableModifier("minecraft:chests/end_city_treasure")
		.randomChance(0.75)
		.thenAdd('refinedstorage:1k_storage_part')
		.randomChance(0.45)
		.thenRemove('refinedstorage:1k_storage_part')
		.thenAdd('refinedstorage:4k_storage_part')
		.randomChance(0.45)
		.thenRemove('refinedstorage:4k_storage_part')
		.thenAdd('refinedstorage:16k_storage_part')
		.randomChance(0.45)
		.thenRemove('refinedstorage:16k_storage_part')
		.thenAdd('refinedstorage:64k_storage_part');
	event
		.addLootTableModifier("minecraft:gameplay/fishing/treasure")
		.randomChance(0.05)
		.thenRemove(Ingredient.getAll())
		.thenAdd('refinedstorage:1k_storage_part')
		.randomChance(0.33)
		.thenRemove('refinedstorage:1k_storage_part')
		.thenAdd('refinedstorage:4k_storage_part')
		.randomChance(0.33)
		.thenRemove('refinedstorage:4k_storage_part')
		.thenAdd('refinedstorage:16k_storage_part')
		.randomChance(0.33)
		.thenRemove('refinedstorage:16k_storage_part')
		.thenAdd('refinedstorage:64k_storage_part');
});