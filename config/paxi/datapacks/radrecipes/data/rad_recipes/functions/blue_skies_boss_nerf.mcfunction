execute if data entity @s ForgeCaps."champions:champion".affixes[{}] run attribute @s minecraft:generic.max_health modifier add 09b27e01-2ced-40ea-b1ad-98967c6eb6ff "Boss Nerf" -0.3 multiply
execute if data entity @s ForgeCaps."champions:champion".affixes[{}] store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
say I've been nerfed!
tag @s add has_been_nerfed