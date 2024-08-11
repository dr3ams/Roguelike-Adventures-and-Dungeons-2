onEvent('worldgen.add', event => {

  event.addOre(ore => {
    ore.block = 'betterendforge:flavolite' // Block ID (Use [] syntax for properties)
    ore.spawnsIn.blacklist = false // Inverts spawn whitelist
    ore.spawnsIn.values = [ // List of valid block IDs or tags that the ore can spawn in
      'betterendforge:endstone_dust' // Default behavior - ores spawn in all stone types
    ]
    
    ore.biomes.blacklist = false // Inverts biome whitelist
    ore.biomes.values = [      'betterendforge:megalake'
    ]
    
    ore.clusterMinSize = 50 // Min blocks per cluster (currently ignored, will be implemented later, it's always 1)
    ore.clusterMaxSize = 64 // Max blocks per cluster
    ore.clusterCount = 100 // Clusters per chunk
    ore.minHeight = 20 // Min Y ore spawns in
    ore.maxHeight = 128 // Max Y ore spawns in
    ore.squared = true // Adds random value to X and Z between 0 and 16. Recommended to be true
    // ore.chance = 1 // Spawns the ore every ~4 chunks. You usually combine this with clusterCount = 1 for rare ores
  })
  
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