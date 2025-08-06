onEvent('entity.spawned', event => {
	if (event.entity.type == "doggytalents:dog" || event.entity.type == "minecraft:cat") {

    event.server.scheduleInTicks(1, event.server, (callback) => {
      // spawning event is 1 tick before the mob actually spawns for some reason, this took me way too long to figure out
      callback.data.runCommandSilent(`execute as ${event.entity.id} if entity @s[type=doggytalents:dog] at @s run function rad_recipes:doggytalents_pos_fix`)
      callback.data.runCommandSilent(`execute as ${event.entity.id} unless entity @s[tag=has_been_buffed] run function rad_recipes:pet_buff`)
    })

	}

	if (event.entity.type == "blue_skies:summoner" || event.entity.type == "blue_skies:alchemist" || event.entity.type == "blue_skies:arachnarch" || event.entity.type == "blue_skies:starlit_crusher") {

    event.server.scheduleInTicks(1, event.server, (callback) => {
      callback.data.runCommandSilent(`execute as ${event.entity.id} unless entity @s[tag=has_been_nerfed] run function rad_recipes:blue_skies_boss_nerf`)
    })

	}

	if (event.entity.type == "minecraft:zombie" || event.entity.type == "minecraft:zombie_villager" || event.entity.type == "minecraft:husk" || event.entity.type == "minecraft:drowned" || event.entity.type == "minecraft:skeleton" || event.entity.type == "minecraft:stray" || event.entity.type == "minecraft:wither_skeleton" || event.entity.type == "minecraft:piglin" || event.entity.type == "minecraft:piglin_brute" || event.entity.type == "minecraft:pillager" || event.entity.type == "minecraft:vindicator" || event.entity.type == "minecraft:evoker") {

    event.server.scheduleInTicks(1, event.server, (callback) => {
      callback.data.runCommandSilent(`execute as ${event.entity.id} run function rad_recipes:head_lag_fix`)
    })

	}

})