execute as @a[tag=hasillegalbootsitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Dropboot] Item set from entity @s Inventory[{Slot:100b}]
execute as @a[tag=hasillegalbootsitem] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=Dropboot] PickupDelay set value 0s
execute as @a[tag=hasillegalbootsitem] at @s run data remove entity @e[type=item,limit=1,sort=nearest,tag=Dropboot] Item.tag.Enchantments[{id:"minecraft:protection"}]
execute as @a[tag=hasillegalbootsitem] at @s run tag @e[type=item,limit=1,sort=nearest,tag=Dropboot] add Complete
tag @e[type=item,limit=1,sort=nearest,tag=Dropboot] remove Dropboot
execute as @a[tag=hasillegalbootsitem] at @s unless entity @e[type=item,limit=1,sort=nearest,tag=Dropboot] if entity @e[type=item,limit=1,sort=nearest,tag=Complete] run replaceitem entity @s armor.feet minecraft:air 64

tag @a[tag=hasillegalbootsitem] remove hasillegalbootsitem