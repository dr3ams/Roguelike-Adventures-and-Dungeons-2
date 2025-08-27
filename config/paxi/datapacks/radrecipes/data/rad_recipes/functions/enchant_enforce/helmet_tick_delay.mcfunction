execute as @a[tag=hasillegalhelmetitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Drophelm] Item set from entity @s Inventory[{Slot:103b}]
execute as @a[tag=hasillegalhelmetitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Drophelm] PickupDelay set value 0s
execute as @a[tag=hasillegalhelmetitem] at @s run data remove entity @e[type=item,limit=1,sort=nearest,tag=Drophelm] Item.tag.Enchantments[{id:"minecraft:protection"}]
execute as @a[tag=hasillegalhelmetitem] at @s run tag @e[type=item,limit=1,sort=nearest,tag=Drophelm] add Complete
tag @e[type=item,limit=1,sort=nearest,tag=Drophelm] remove Drophelm
execute as @a[tag=hasillegalhelmetitem] at @s unless entity @e[type=item,limit=1,sort=nearest,tag=Drophelm] if entity @e[type=item,limit=1,sort=nearest,tag=Complete] run replaceitem entity @s armor.head minecraft:air 64

tag @a[tag=hasillegalhelmetitem] remove hasillegalhelmetitem