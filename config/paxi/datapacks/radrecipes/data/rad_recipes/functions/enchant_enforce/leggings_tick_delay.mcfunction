execute as @a[tag=hasillegalleggingsitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Droplegs] Item set from entity @s Inventory[{Slot:101b}]
execute as @a[tag=hasillegalleggingsitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Droplegs] PickupDelay set value 0s
execute as @a[tag=hasillegalleggingsitem] at @s run data remove entity @e[type=item,limit=1,sort=nearest,tag=Droplegs] Item.tag.Enchantments[{id:"minecraft:protection"}]
execute as @a[tag=hasillegalleggingsitem] at @s run tag @e[type=item,limit=1,sort=nearest,tag=Droplegs] add Complete
tag @e[type=item,limit=1,sort=nearest,tag=Droplegs] remove Droplegs
execute as @a[tag=hasillegalleggingsitem] at @s unless entity @e[type=item,limit=1,sort=nearest,tag=Droplegs] if entity @e[type=item,limit=1,sort=nearest,tag=Complete] run replaceitem entity @s armor.legs minecraft:air 64

tag @a[tag=hasillegalleggingsitem] remove hasillegalleggingsitem