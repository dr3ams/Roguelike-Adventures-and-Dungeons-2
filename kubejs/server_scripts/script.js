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
	event.shapeless('9x kubejs:diamond_nugget', ['minecraft:diamond'])
	
	event.shaped('minecraft:emerald', [
    'EEE',
    'EEE',
    'EEE'
	], {
    E: 'kubejs:emerald_nugget'
	})
	event.shapeless('9x kubejs:emerald_nugget', ['minecraft:emerald'])
	
	event.shaped('kubejs:coin_02', [
    'CCC',
    'CCC',
    'CCC'
	], {
    C: 'kubejs:coin_01'
	})
	event.shapeless('9x kubejs:coin_01', ['kubejs:coin_02'])
	
	event.shaped('kubejs:coin_03', [
    'CCC',
    'CCC',
    'CCC'
	], {
    C: 'kubejs:coin_02'
	})
	event.shapeless('9x kubejs:coin_02', ['kubejs:coin_03'])
	
	
	event.shaped('kubejs:coin_04', [
    'CCC',
    'CCC',
    'CCC'
	], {
    C: 'kubejs:coin_03'
	})
	event.shapeless('9x kubejs:coin_03', ['kubejs:coin_04'])
	
	event.shaped('kubejs:coin_05', [
    'CCC',
    'CCC',
    'CCC'
	], {
    C: 'kubejs:coin_04'
	})
	event.shapeless('9x kubejs:coin_04', ['kubejs:coin_05'])
	
	event.shaped('kubejs:coin_06', [
    'CCC',
    'CCC',
    'CCC'
	], {
    C: 'kubejs:coin_05'
	})
	event.shapeless('9x kubejs:coin_05', ['kubejs:coin_06'])	

	
event.remove({output: 'quark:magnet'})
event.remove({output: 'quark:backpack'})
event.remove({output: 'quark:ravager_hide'})
event.remove({output: 'quark:bonded_ravager_hide'})
event.remove({output: 'quark:pipe'})
event.remove({output: 'quark:crate'})
event.remove({output: 'quark:soul_compass'})
event.remove({output: 'quark:matrix_enchanter'})


event.remove({output: 'losttrinkets:rock_candy'})
event.remove({output: 'losttrinkets:book_o_enchanting'})
event.remove({output: 'losttrinkets:ash_gloves'})
event.remove({output: 'losttrinkets:octopus_leg'})
event.remove({output: 'losttrinkets:magical_feathers'})

event.remove({output: 'pickletweaks:magnet'})

event.remove({output: 'spartanshields:shield_botania_manasteel'})
event.remove({output: 'spartanshields:shield_botania_terrasteel'})
event.remove({output: 'spartanshields:shield_botania_elementium'})
event.remove({output: 'spartanshields:shield_mekanism_osmium'})
event.remove({output: 'spartanshields:shield_mekanism_lapis_lazuli'})
event.remove({output: 'spartanshields:shield_mekanism_refined_glowstone'})
event.remove({output: 'spartanshields:shield_mekanism_refined_obsidian'})
event.remove({output: 'spartanshields:shield_mekanism_powered_basic'})
event.remove({output: 'spartanshields:shield_mekanism_powered_advanced'})
event.remove({output: 'spartanshields:shield_mekanism_powered_elite'})
event.remove({output: 'spartanshields:shield_mekanism_powered_ultimate'})


event.remove({output: 'mysticalworld:copper_spear'})
event.remove({output: 'mysticalworld:lead_spear'})
event.remove({output: 'mysticalworld:tin_spear'})
event.remove({output: 'mysticalworld:stone_spear'})
event.remove({output: 'mysticalworld:wood_spear'})
event.remove({output: 'mysticalworld:diamond_spear'})
event.remove({output: 'mysticalworld:gold_spear'})
event.remove({output: 'mysticalworld:iron_spear'})

event.remove({output: 'mysticalworld:cactus_knife'})
event.remove({output: 'mysticalworld:lead_knife'})
event.remove({output: 'mysticalworld:stone_knife'})
event.remove({output: 'mysticalworld:wood_knife'})
event.remove({output: 'mysticalworld:diamond_knife'})
event.remove({output: 'mysticalworld:gold_knife'})
event.remove({output: 'mysticalworld:iron_knife'})
	
event.remove({output: 'mysticalworld:quicksilver_block'})
event.remove({output: 'mysticalworld:quicksilver_sword'})
event.remove({output: 'mysticalworld:silver_leggings'})
event.remove({output: 'mysticalworld:silver_spear'})
event.remove({output: 'mysticalworld:quicksilver_boots'})
event.remove({output: 'mysticalworld:silver_pickaxe'})
event.remove({output: 'mysticalworld:silver_wide_post'})
event.remove({output: 'mysticalworld:silver_nugget'})
event.remove({output: 'mysticalworld:quicksilver_spear'})
event.remove({output: 'mysticalworld:quicksilver_nugget'})
event.remove({output: 'mysticalworld:silver_sword'})
event.remove({output: 'mysticalworld:quicksilver_wide_post'})
event.remove({output: 'mysticalworld:silver_ingot'})
event.remove({output: 'mysticalworld:quicksilver_chestplate'})
event.remove({output: 'mysticalworld:silver_hoe'})
event.remove({output: 'mysticalworld:silver_shovel'})
event.remove({output: 'mysticalworld:quicksilver_helmet'})
event.remove({output: 'mysticalworld:quicksilver_small_post'})
event.remove({output: 'mysticalworld:silver_slab'})
event.remove({output: 'mysticalworld:quicksilver_stairs'})
event.remove({output: 'mysticalworld:quicksilver_wall'})
event.remove({output: 'mysticalworld:silver_dust'})
event.remove({output: 'mysticalworld:silver_axe'})
event.remove({output: 'mysticalworld:silver_wall'})
event.remove({output: 'mysticalworld:quicksilver_hoe'})
event.remove({output: 'mysticalworld:quicksilver_pickaxe'})
event.remove({output: 'mysticalworld:quicksilver_dust'})
event.remove({output: 'mysticalworld:quicksilver_slab'})
event.remove({output: 'mysticalworld:quicksilver_axe'})
event.remove({output: 'mysticalworld:silver_stairs'})
event.remove({output: 'mysticalworld:quicksilver_leggings'})
event.remove({output: 'mysticalworld:silver_small_post'})
event.remove({output: 'mysticalworld:silver_block'})
event.remove({output: 'mysticalworld:silver_boots'})
event.remove({output: 'mysticalworld:quicksilver_knife'})
event.remove({output: 'mysticalworld:silver_helmet'})
event.remove({output: 'mysticalworld:silver_chestplate'})
event.remove({output: 'mysticalworld:quicksilver_ingot'})
event.remove({output: 'mysticalworld:quicksilver_shovel'})
event.remove({output: 'mysticalworld:quicksilver_ore'})

//event.remove({output: 'prefab:item_sickle_wood'})
//event.remove({output: 'prefab:item_sickle_stone'})
//event.remove({output: 'prefab:item_sickle_gold'})
//event.remove({output: 'prefab:item_sickle_iron'})
//event.remove({output: 'prefab:item_sickle_diamond'})
//event.remove({output: 'prefab:item_sickle_netherite'})
//event.remove({output: 'prefab:item_swift_blade_wood'})
//event.remove({output: 'prefab:item_swift_blade_stone'})
//event.remove({output: 'prefab:item_swift_blade_iron'})
//event.remove({output: 'prefab:item_swift_blade_diamond'})
//event.remove({output: 'prefab:item_swift_blade_gold'})
//event.remove({output: 'prefab:item_swift_blade_copper'})
//event.remove({output: 'prefab:item_swift_blade_osmium'})
//event.remove({output: 'prefab:item_swift_blade_bronze'})
//event.remove({output: 'prefab:item_swift_blade_steel'})
//event.remove({output: 'prefab:item_swift_blade_obsidian'})
//event.remove({output: 'prefab:item_swift_blade_netherite'})

event.remove({output: 'greekfantasy:wooden_spear'})
event.remove({output: 'greekfantasy:stone_spear'})
event.remove({output: 'greekfantasy:iron_spear'})

event.remove({output: 'iceandfire:copper_sword'})
event.remove({output: 'iceandfire:copper_shovel'})
event.remove({output: 'iceandfire:copper_pickaxe'})
event.remove({output: 'iceandfire:copper_axe'})
event.remove({output: 'iceandfire:copper_hoe'})
event.remove({output: 'iceandfire:silver_ore'})
event.remove({output: 'iceandfire:sapphire_ore'})
event.remove({output: 'iceandfire:copper_ore'})
event.remove({output: 'iceandfire:armor_copper_metal_helmet'})
event.remove({output: 'iceandfire:armor_copper_metal_chestplate'})
event.remove({output: 'iceandfire:armor_copper_metal_leggings'})
event.remove({output: 'iceandfire:armor_copper_metal_boots'})

event.remove({output: 'eidolon:lead_ore'})

event.remove({output: 'byg:ametrine_ore'})
event.remove({output: 'byg:budding_ametrine_ore'})
event.remove({output: 'byg:pendorite_ore'})
	
event.remove({output: 'byg:raw_pendorite'})
event.remove({output: 'byg:pendorite_ingot'})
event.remove({output: 'byg:pendorite_scraps'})
event.remove({output: 'byg:raw_pendorite_block'})
event.remove({output: 'byg:pendorite_block'})
event.remove({output: 'byg:pendorite_axe'})
event.remove({output: 'byg:pendorite_pickaxe'})
event.remove({output: 'byg:pendorite_sword'})
event.remove({output: 'byg:pendorite_battleaxe'})
event.remove({output: 'byg:pendorite_shovel'})
event.remove({output: 'byg:pendorite_hoe'})
event.remove({output: 'byg:pendorite_horse_armor'})

//event.remove({output: 'vanillafoodpantry:rock_salt_ore'})
//event.remove({output: 'vanillafoodpantry:rock_salt_ore_nether'})
//event.remove({output: 'vanillafoodpantry:natron_ore'})
//event.remove({output: 'vanillafoodpantry:trona_ore'})
	
event.remove({output: 'archers_paradox:phantasmal_arrow'})
	
event.remove({output: 'spawnermod:spawner_key'})
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

	event.add('curios:curse_ring', 'enigmaticlegacy:cursed_ring')
	event.remove('curios:ring', 'enigmaticlegacy:cursed_ring')


})
