execute at @s run playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 2 1.5 0.1
#champions changes the base hp instead of adding a modifier smh
#this reverts the hp back to the blue skies default hp -10%
execute if entity @s[type=blue_skies:alchemist] run attribute @s minecraft:generic.max_health base set 450
execute if entity @s[type=blue_skies:summoner] run attribute @s minecraft:generic.max_health base set 315
execute if entity @s[type=blue_skies:starlit_crusher] run attribute @s minecraft:generic.max_health base set 450
execute if entity @s[type=blue_skies:arachnarch] run attribute @s minecraft:generic.max_health base set 450

#remove improved mobs hp
attribute @s minecraft:generic.max_health modifier remove 7c7e5c2d-1eb0-434a-858f-3ab81f52832c

#change current health to new max hp
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get

tag @s add has_been_nerfed