// priority: 0

console.info('> Jei-description script starting...')

onEvent('jei.information', event => {
  event.add('example:ingredient', ['Line 1', 'Line 2'])
  
  
event.add('supplementaries:planter', ["Used for growing crops without a water source block.", "Now you can grow them even in the nether and you won't have to worry about animals trampling your crops!"])
event.add('supplementaries:faucet', ["When turned on, it starts spilling on the ground the inventory of up to two blocks behind it. If you place it in front of a water block (cauldron, water/waterlogged), it will start dripping water particles.", "You can use it to pour liquids to and from jars. Since it can extract items from the side of a block it enables some sort of automation not possible with vanilla.", "It will also interact with other blocks like hives and concrete powder. Its water color will depend on what's behind it."])
event.add('supplementaries:jar', ["Stores 4 buckets or 12 bottles of any vanilla liquids (like honey, milk, lava, potions, soups, dragon beath or xp) as well as fireflies. It functions as a shulker box for liquids or a rudimentary tank. You can now also store cookies and fish! Not compatible with the forge fluid system or with other fluid mods, meant to complement vanilla only."])
event.add('supplementaries:wind_vane', ["Emits a redstone signal, depending on the weather. The worse the weather, the stronger the signal."])
event.add('supplementaries:pedestal', ["Place an item on top to have it displayed. Stacking multiple pedestals will turn them into a pillar."])
event.add('supplementaries:redstone_illuminator', ["Light source that can be switched off with a redstone signal"])
event.add('supplementaries:crank', ["Outputs a redstone signal that gets stronger the more the crank is rotated."])
event.add('supplementaries:spring_launcher', ["Launches any entity on top of it when it is given a redstone signal."])
event.add('supplementaries:turn_table', ["When powered, will rotate any item/entity on top of it."])
event.add('supplementaries:clock_block', ["Right click on the block to get the time in hours. You are able to sleep at 18:00 and Dawn is at 06:00"])
event.add('supplementaries:bellows', ["When powered, will blow entities or items in front of it in the direction it is facing."])
event.add('supplementaries:cog_block', ["Transmits redstone power, just like redstone dust, but connects on all sides.","This making vertical redstone easier and looks cooler too."])
event.add('supplementaries:safe', ["Extremely hard block that functions as a chest. Retains inventory when broken."])
event.add('supplementaries:hourglass', ["Place sand in it and it will provide a redstone signal until the sand runs out. Flip and repeat."])
event.add('supplementaries:laser_block', ["Emits a purple beam when powered by redstone. Does not actually do anything."])

event.add('quark:ancient_tome', ["Upgrades enchantments by 1 level. Can increase an enchantment 1 level beyond its max level."])
event.add('minecraft:feather', ["When brewed with a Speed Potion creates a Potion of Forcefullness. Adding to a slowness potion instead creates a Feeble Potion. (JEI doesn't show these recipes for some reason)"])
event.add('elenaidodge2:iron_feather', ["When brewed with an Awkward Potion creates a Potion of Endurance. This can be inverted into a Weight potion using fermented spider eyes. (JEI doesn't show these recipes for some reason)"])
event.add('elenaidodge2:golden_feather', ["When brewed with an Awkward Potion creates a Potion of Feathers. Add to a Regeneration Potion to create a Replenishment Potion. (JEI doesn't show these recipes for some reason)"])
event.add('undergarden:regalium_ingot', ["Used to trade with Stoneborn."])


event.add('waystones:waystone', ["This item can be bought in the shop"])
event.add('waystones:mossy_waystone', ["This item can be bought in the shop"])
event.add('waystones:sandy_waystone', ["This item can be bought in the shop"])
event.add('waystones:sharestone', ["This item can be bought in the shop"])
event.add('waystones:bound_scroll', ["This item can be bought in the shop"])
event.add('waystones:warp_scroll', ["This item can be bought in the shop"])
event.add('waystones:warp_stone', ["This item can be bought in the shop"])
event.add('waystones:warp_plate', ["This item can be bought in the shop"])
  
  
  
  
})