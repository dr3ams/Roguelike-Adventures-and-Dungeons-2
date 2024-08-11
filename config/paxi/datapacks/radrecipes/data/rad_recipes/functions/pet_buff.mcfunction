attribute @s minecraft:generic.max_health modifier add 09b27e01-2ced-40ea-b1ad-98967c6eb6ff "Pet Health Bonus" 1 multiply_base
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
attribute @s minecraft:generic.attack_damage modifier add 09b27e01-2ced-40ea-b1ad-98967c6eb6ff "Pet Damage Bonus" 1 multiply_base
tag @s add has_been_buffed