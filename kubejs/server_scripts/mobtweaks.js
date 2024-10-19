onEvent('entity.spawned', event => {
	if (event.entity.type == "doggytalents:dog" || event.entity.type == "minecraft:cat") {

    event.server.scheduleInTicks(1, event.server, (callback) => {
      // spawning event is 1 tick before the mob actually spawns for some reason, this took me way too long to figure out
      callback.data.runCommandSilent(`execute as ${event.entity.id} unless entity @s[tag=has_been_buffed] run function rad_recipes:pet_buff`)
    })

	}

	if (event.entity.type == "blue_skies:summoner" || event.entity.type == "blue_skies:alchemist" || event.entity.type == "blue_skies:arachnarch" || event.entity.type == "blue_skies:starlit_crusher") {

    event.server.scheduleInTicks(1, event.server, (callback) => {
      // spawning event is 1 tick before the mob actually spawns for some reason, this took me way too long to figure out
      callback.data.runCommandSilent(`execute as ${event.entity.id} unless entity @s[tag=has_been_nerfed] run function rad_recipes:blue_skies_boss_nerf`)
    })

	}

})