onEvent('worldgen.add', event => { 
  event.addSpawn(spawn => { // Create new entity spawn
    spawn.category = 'monster' // Category, can be one of 'creature', 'monster', 'ambient', 'water_creature' or 'water_ambient'
    spawn.entity = 'atum:bonestorm' // Entity ID
    spawn.weight = 16 // Weight
    spawn.minCount = 1 // Min entities per group
    spawn.maxCount = 4 // Max entities per group
    spawn.biomes.values = [      'betterendforge:dust_wastelands'   ]
  })

  event.addSpawn(spawn => {
    spawn.category = 'monster'
    spawn.entity = 'twilightforest:stable_ice_core'
    spawn.weight = 16
    spawn.minCount = 1 
    spawn.maxCount = 4 
    spawn.biomes.values = [      'betterendforge:ice_starfield'   ]
  })

  event.addSpawn(spawn => { 
    spawn.category = 'monster'
    spawn.entity = 'twilightforest:unstable_ice_core'
    spawn.weight = 8
    spawn.minCount = 1
    spawn.maxCount = 4
    spawn.biomes.values = [      'betterendforge:ice_starfield'   ]
  })

  event.addSpawn(spawn => { 
    spawn.category = 'monster'
    spawn.entity = 'iceandfire:troll'
    spawn.weight = 5
    spawn.minCount = 1
    spawn.maxCount = 1
    spawn.biomes.values = [      'mining_dimension:mining','cavebiomeapi:caves']
  })
})

onEvent('worldgen.remove', event => {
  
  event.removeSpawnsByID(spawns => {
    spawns.entities.values = [
      'minecraft:enderman'
    ]
    spawns.biomes.values = [
      'betterendforge:dust_wastelands',
      'betterendforge:ice_starfield'
    ]
  })

})