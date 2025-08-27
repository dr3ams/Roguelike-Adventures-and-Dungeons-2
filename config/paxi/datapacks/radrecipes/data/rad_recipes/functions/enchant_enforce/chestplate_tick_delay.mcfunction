execute as @a[tag=hasillegalchestplateitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Dropplate] Item set from entity @s Inventory[{Slot:102b}]
execute as @a[tag=hasillegalchestplateitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Dropplate] PickupDelay set value 0s
execute as @a[tag=hasillegalchestplateitem] at @s run data remove entity @e[type=item,limit=1,sort=nearest,tag=Dropplate] Item.tag.Enchantments[{id:"minecraft:protection"}]
execute as @a[tag=hasillegalchestplateitem] at @s run tag @e[type=item,limit=1,sort=nearest,tag=Dropplate] add Complete
tag @e[type=item,limit=1,sort=nearest,tag=Dropplate] remove Dropplate
execute as @a[tag=hasillegalchestplateitem] at @s unless entity @e[type=item,limit=1,sort=nearest,tag=Dropplate] if entity @e[type=item,limit=1,sort=nearest,tag=Complete] run replaceitem entity @s armor.chest minecraft:air 64

tag @a[tag=hasillegalchestplateitem] remove hasillegalchestplateitem