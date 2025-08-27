tellraw @s {"text":"Incompatible enchants found on chestplate: Safeguard and Protection. Removing Protection","color":"dark_red"}
advancement revoke @s only rad_recipes:enforce_enchants/incompatible_enchants_chest

tag @s add hasillegalchestplateitem
summon item ~ ~0.5 ~ {Tags:["Dropplate"],PickupDelay:32767s,Age:5940,Invulnerable:1b,Glowing:1b,Item:{id:"kubejs:forbid",Count:1b,tag:{display:{Name:'{"text":"drop chestplate (if you see this the script broke and the enchant could not be removed. Maybe don\'t try to exploit incompatible enchants next time?)"}'}} }}

schedule function rad_recipes:enchant_enforce/chestplate_tick_delay 1t