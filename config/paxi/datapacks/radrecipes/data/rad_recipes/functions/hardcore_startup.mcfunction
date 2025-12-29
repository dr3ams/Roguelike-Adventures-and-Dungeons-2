gamerule naturalRegeneration false
scoreboard objectives add soulcrystals minecraft.picked_up:enigmaticlegacy.soul_crystal {"text":"Soul Crystals Used","color":"cyan"}
execute as @a unless score @s soulcrystals matches -10..10 run scoreboard players set @s soulcrystals 9
curios replace curse_ring 0 @s with enigmaticlegacy:cursed_ring{itemModifier:"modifiers:none",display:{Lore:['{"translate":"status.rad2.hardcore_cursering","color":"dark_red","italic":false}','{"translate":"status.rad2.hardcore_respawn_cursering_line1","color":"aqua"}','{"translate":"status.rad2.hardcore_respawn_cursering_line2","color":"aqua"}','{"translate":"status.rad2.hardcore_no_friendly_fire_cursering","color":"aqua"}','{"translate":"status.rad2.hardcore_permanant_cursering","color":"red"}','{"translate":"status.rad2.hardcore_noregen_cursering","color":"red"}','{"translate":"status.rad2.hardcore_noamulet_cursering","color":"red"}','{"translate":"status.rad2.hardcore_mimic_chests_cursering","color":"red"}']} } 1
tellraw @s [{"text":"You are playing in ","color":"dark_purple"},{"translate":"gameMode.hardcore","color":"dark_red","bold":"true"},{"text":" Instead of only having one life, the game has some significant changes from the standard game to test your survival skills.","color":"dark_purple"}]
tellraw @s [{"text":"- Features|Mechanics quest chapter is auto-completed. You do not get any rewards from this chapter. You're playing hardcore so you should know the basics already.","color":"gold"}]
tellraw @s [{"text":"- Friendly Fire is disabled between players.","color":"gold"}]
tellraw @s [{"text":"- Start with the Ring of Seven Curses. This is permanant and cannot be removed even with the Unholy Stone.","color":"red"}]
tellraw @s [{"text":"- You do not start with the Enigmatic Amulet.","color":"red"}]
tellraw @s [{"text":"- Loot chests unopened by any player have a 2% to turn into a mimic. The chance increases up to 3% the further away you are from the chest.","color":"red"}]
tellraw @s [{"text":"- You can respawn in Hardcore.","color":"green", "bold":true}, {"text":" However if you run out of Soul Crystals (you get 9 from the cursed ring), you will no longer respawn.","color":"red","bold":false}]
tellraw @s [{"text":"- Your health regenerates much slower.","color":"red"}]
effect give @s upgradednetherite_items:netherite_resistance 60 4
effect give @s uniquee:eternal_flame 60 0

team add Hardcore {"text":"Hardcore","color":"dark_red"}
team modify Hardcore friendlyFire false
team modify Hardcore seeFriendlyInvisibles false
team join Hardcore @s

tag @s add spawnedclear
schedule function rad_recipes:hardcore_startup_1_tick 1t


#fill ~ ~2 ~ ~ ~2 ~ ars_nouveau:phantom_block{color:"100,0,0",age:-900} replace air
#execute if block ~ ~3 ~ air run teleport @s ~ ~4 ~