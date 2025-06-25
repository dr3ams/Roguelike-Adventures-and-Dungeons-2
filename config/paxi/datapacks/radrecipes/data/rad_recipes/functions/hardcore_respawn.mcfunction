execute store result score @s soulcrystals run data get entity @s ForgeData.PlayerPersisted."enigmaticlegacy.lostsoulfragments" -1
scoreboard players add @s soulcrystals 9

execute as @s run tellraw @s[nbt=!{ForgeData:{PlayerPersisted:{enigmaticlegacy.lostsoulfragments:9}}}] [{"translate":"gamemode.rad2.hardcore_revive","color":"aqua","with":[{"score":{"name":"*","objective":"soulcrystals"} }] }]
tellraw @s[nbt={ForgeData:{PlayerPersisted:{enigmaticlegacy.lostsoulfragments:8}}}] [{"translate":"gamemode.rad2.hardcore_last_life","color":"red"}]
tellraw @s[nbt={ForgeData:{PlayerPersisted:{enigmaticlegacy.lostsoulfragments:9}}}] [{"translate":"gamemode.rad2.hardcore_no_lives","color":"red","bold":true}]

tag @s add respawnedspec
schedule function rad_recipes:hardcore_respawn_1_tick 1t