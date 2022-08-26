// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

console.info('New recipes script is loading...')

onEvent('recipes', event => {
	// Change recipes here
	
		event.shaped('minecraft:diamond', [
    'DDD',
    'DDD',
    'DDD'
	], {
    D: 'kubejs:diamond_nugget'
	})
	
	event.shaped('minecraft:emerald', [
    'EEE',
    'EEE',
    'EEE'
	], {
    E: 'kubejs:emerald_nugget'
	})
})
	


onEvent('item.tags', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
	
	event.add('curios:emblem', 'kubejs:mark_miner')
	event.add('curios:emblem', 'kubejs:mark_farmer')
	event.add('curios:emblem', 'kubejs:mark_warrior')
	event.add('curios:emblem', 'kubejs:mark_archer')
	event.add('curios:emblem', 'kubejs:mark_wizard')
	event.add('curios:emblem', 'kubejs:mark_pirate')
	event.add('curios:emblem', 'kubejs:mark_thief')
	event.add('curios:emblem', 'kubejs:mark_huntsman')
	event.add('curios:emblem', 'kubejs:mark_healer')
	event.add('curios:emblem', 'kubejs:mark_pitfighter')
	event.add('curios:emblem', 'kubejs:mark_tamer')

	event.add('curios:emblem', 'kubejs:mark_spelunker')
	event.add('curios:emblem', 'kubejs:mark_rancher')
	event.add('curios:emblem', 'kubejs:mark_mercenary')
	event.add('curios:emblem', 'kubejs:mark_arbalester')
	event.add('curios:emblem', 'kubejs:mark_alchemist')
	event.add('curios:emblem', 'kubejs:mark_corsair')
	event.add('curios:emblem', 'kubejs:mark_bandit')
	event.add('curios:emblem', 'kubejs:mark_tracker')
	event.add('curios:emblem', 'kubejs:mark_spiritualist')
	event.add('curios:emblem', 'kubejs:mark_fighter')
	event.add('curios:emblem', 'kubejs:mark_summoner')

	event.add('curios:emblem', 'kubejs:mark_cavemaster')
	event.add('curios:emblem', 'kubejs:mark_agrarian')
	event.add('curios:emblem', 'kubejs:mark_champion')
	event.add('curios:emblem', 'kubejs:mark_artillerist')
	event.add('curios:emblem', 'kubejs:mark_thaumaturge')
	event.add('curios:emblem', 'kubejs:mark_captain')
	event.add('curios:emblem', 'kubejs:mark_rogue')
	event.add('curios:emblem', 'kubejs:mark_pursuer')
	event.add('curios:emblem', 'kubejs:mark_shaman')
	event.add('curios:emblem', 'kubejs:mark_underdog')
	event.add('curios:emblem', 'kubejs:mark_beastmaster')
})