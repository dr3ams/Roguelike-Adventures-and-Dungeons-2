gamemode survival @a[gamemode=spectator,tag=respawnedspec,nbt=!{ForgeData:{PlayerPersisted:{enigmaticlegacy.lostsoulfragments:9}}}]

execute as @a[tag=respawnedspec] run curios replace curse_ring 0 @s with enigmaticlegacy:cursed_ring{itemModifier:"modifiers:none",display:{Lore:['{"translate":"status.rad2.hardcore_cursering","color":"dark_red","italic":false}','{"translate":"status.rad2.hardcore_respawn_cursering_line1","color":"aqua"}','{"translate":"status.rad2.hardcore_respawn_cursering_line2","color":"aqua"}','{"translate":"status.rad2.hardcore_no_friendly_fire_cursering","color":"aqua"}','{"translate":"status.rad2.hardcore_permanant_cursering","color":"red"}','{"translate":"status.rad2.hardcore_noregen_cursering","color":"red"}']} } 1

tag @a remove respawnedspec