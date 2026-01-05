closeguiscreen

summon artifacts:mimic ~0 ~0 ~0 {Tags:["surprise_chest"],DeathLootTable:"",DeathLootTableSeed:0,Attributes:[{Base:3.0d,Name:"generic.attack_damage",Modifiers:[{Amount:-400.0d, Operation: 0, UUID: [I; 577059721, 292440540, -1687447183, 1218141157], Name: "effect.minecraft.weakness 99"}]},{Base:30.0d,Name:"generic.max_health"},{Base:0.5d,Name:"generic.knockback_resistance"}],ActiveEffects:[{Id:18b,Amplifier:99,Duration:40,ShowParticles:1b}]}

data modify entity @e[type=artifacts:mimic,limit=1,sort=nearest,tag=surprise_chest] DeathLootTable set from block ~ ~ ~ LootTable

data modify entity @e[type=artifacts:mimic,limit=1,sort=nearest,tag=surprise_chest] DeathLootTableSeed set from block ~ ~ ~ LootTableSeed

fill ~ ~ ~ ~ ~ ~ air replace lootr:lootr_chest