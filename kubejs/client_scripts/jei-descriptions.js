// priority: 0

console.info('> Jei-description script starting...')

onEvent('jei.information', event => {
  event.add('example:ingredient', ['Line 1', 'Line 2'])
  
  
event.add('supplementaries:planter', ["Used for growing crops without a water source block.", "Now you can grow them even in the nether and you won't have to worry about animals trampling your crops!"])
event.add('supplementaries:faucet', ["When turned on, it starts spilling on the ground the inventory of up to two blocks behind it. If you place it in front of a water block (cauldron, water/waterlogged), it will start dripping water particles.", "You can use it to pour liquids to and from jars. Since it can extract items from the side of a block it enables some sort of automation not possible with vanilla.", "It will also interact with other blocks like hives and concrete powder. Its water color will depend on what's behind it."])
event.add('supplementaries:jar', ["Stores 4 buckets or 12 bottles of any vanilla liquids (like honey, milk, lava, potions, soups, dragon beath or xp) as well as fireflies. It functions as a shulker box for liquids or a rudimentary tank. You can now also store cookies and fish! Not compatible with the forge fluid system or with other fluid mods, meant to complement vanilla only."])
event.add('supplementaries:wind_vane', ["Emits a redstone signal, depending on the weather. The worse the weather, the stronger the signal."])
event.add('supplementaries:pedestal', ["Place an item on top to have it displayed. Stacking multiple pedestals will turn them into a pillar."])
event.add('supplementaries:redstone_illuminator', ["Light source that gets stronger with the redstone signal."])
event.add('supplementaries:crank', ["Outputs a redstone signal that gets stronger the more the crank is rotated."])
event.add('supplementaries:spring_launcher', ["Launches any entity on top of it when it is given a redstone signal."])
event.add('supplementaries:turn_table', ["When powered, will rotate any item/entity on top of it."])
event.add('supplementaries:clock_block', ["Right click on the block to get the time in hours. You are able to sleep at 18:00 and Dawn is at 06:00"])
event.add('supplementaries:bellows', ["When powered, will blow entities or items in front of it in the direction it is facing."])
event.add('supplementaries:cog_block', ["Transmits redstone power, just like redstone dust, but connects on all sides.","This makes vertical redstone easier and looks cooler too."])
event.add('supplementaries:safe', ["Extremely hard block that functions as a chest. Retains inventory when broken."])
event.add('supplementaries:hourglass', ["Place sand/gravel/dust in it and it will provide a redstone signal until the powder runs out. Flip and repeat. The speed at which it drains depends on the dust/powder used."])
event.add('supplementaries:laser_block', ["Emits a purple beam when powered by redstone. Does not actually do anything."])

event.add('quark:ancient_tome', ["Upgrades enchantments by 1 level. Can increase an enchantment 1 level beyond its max level."])
event.add('minecraft:feather', ["When brewed with a Speed Potion creates a Potion of Forcefullness. Adding to a slowness potion instead creates a Feeble Potion. (JEI doesn't show these recipes for some reason)"])
event.add('elenaidodge2:iron_feather', ["When brewed with an Awkward Potion creates a Potion of Endurance. This can be inverted into a Weight potion using fermented spider eyes. (JEI doesn't show these recipes for some reason)"])
event.add('elenaidodge2:golden_feather', ["When brewed with an Awkward Potion creates a Potion of Feathers. Add to a Regeneration Potion to create a Replenishment Potion. (JEI doesn't show these recipes for some reason)"])
event.add('undergarden:regalium_ingot', ["Used to trade with Stoneborn."])
event.add('iceandfire:dread_queen_sword', ["Awarded for completing the Large Dread Gate Pearl"])
event.add('blue_skies:infused_arc_sword', ["Charges up over time. When fully charged, the next 31 times you attack, your damage is tripled, after which it changes back to its normal damage."])

event.add('tropicraft:limeade', ["Can be made using the drink mixer.", "Ingredients: lime + sugar + water bucket"])
event.add('tropicraft:caipirinha', ["Can be made using the drink mixer.", "Ingredients: lime + sugar canes + water bucket"])
event.add('tropicraft:lemonade', ["Can be made using the drink mixer.", "Ingredients: lemon + sugar + water bucket"])
event.add('tropicraft:orangeade', ["Can be made using the drink mixer.", "Ingredients: orange + sugar + water bucket"])
event.add('tropicraft:black_coffee', ["Can be made using the drink mixer.", "Ingredients: roasted coffee bean + water bucket"])
event.add('tropicraft:pina_colada', ["Can also be made using the drink mixer.", "Ingredients: pineapple or pineapple cubes + coconut or coconut chunk"])
event.add('tropicraft:coconut_water', ["Can be made using the drink mixer.", "Ingredients: coconut + water bucket"])
event.add('tropicraft:mai_tai', ["Can be made using the drink mixer.", "Ingredients: orange + lime + water bucket"])

event.add('eidolon:crucible', ["When doing the stirring step, stir before dropping the item despite what jei says."])
event.add('mysticalworld:antler_hat', ["Summons Spirit Deer to protect you when hurt."])
event.add('twilightforest:triple_bow', ["This Bow Ignores Invulnerability Frames, meaning all 3 arrows can hit the same target."])
event.add('twilightforest:ice_bow', ["Converts all arrows into ice arrows, which slow down enemies."])
event.add('twilightforest:ender_bow', ["Swaps you and your hit target's positions. Works with harmless arrows as well like training arrows, giving some utility out of combat."])
event.add('greekfantasy:helm_of_darkness', ["Makes the player completely invisible when worn, hiding all armor. If you end up having permanent invisibility while not wearing this helmet, put on and then take this off to fix it."])
event.add('blue_skies:alchemy_table', ["Can convert items into other items of similar type. Rare loot from the Alchemist's Treasure bag."])
event.add('undergarden:cloggrum_battleaxe', ["Obtained from trading with Stoneborn."])
event.add('minecraft:firework_star', ["The Ars Nouveau Aoe glyph recipe accepts any firework star. A basic firework star can be crafted from a gunpowder and any dye."])
event.add('ars_nouveau:caster_tome', ["To cast a spell you need to meet the requirements of all the glyphs. (This applies to all spell books)"])
event.add('ars_nouveau:novice_spell_book', ["To cast a spell you need to meet the requirements of all the glyphs. (This applies to all spell books)"])
event.add('tropicraft:blow_gun', ["Uses any Tipped Slowness Arrows (or Turtle Master Arrows) as ammo. Fires pinpoint shots that deal no damage but completely stop enemies in their tracks for a few seconds."])
event.add('mowziesmobs:blowgun', ["Can be obtained by trading with barakoa. Just need a good disguise..."])
event.add('mowziesmobs:dart', ["Can be obtained by trading with barakoa. Just need a good disguise..."])
event.add('mowziesmobs:spear', ["Can be obtained by trading with barakoa. Just need a good disguise..."])
event.add('enigmaticlegacy:golem_heart', ["A vulnerability means you take x2 damage from that source.","Poison is considered magic damage, which will make it lethal."])
event.add('enigmaticlegacy:angel_blessing', ["A vulnerability means you take x2 damage from that source."])
event.add('enigmaticlegacy:ocean_stone', ["A vulnerability means you take x2 damage from that source."])
event.add('enigmaticlegacy:magma_heart', ["A vulnerability means you take x2 damage from that source."])
event.add('enigmaticlegacy:eye_of_nebula', ["A vulnerability means you take x2 damage from that source."])

event.add('waystones:waystone', ["This item can be bought in the shop"])
event.add('waystones:mossy_waystone', ["This item can be bought in the shop"])
event.add('waystones:sandy_waystone', ["This item can be bought in the shop"])
event.add('waystones:sharestone', ["This item can be bought in the shop"])
event.add('waystones:bound_scroll', ["This item can be bought in the shop"])
event.add('waystones:warp_scroll', ["This item can be bought in the shop"])
event.add('waystones:warp_stone', ["This item can be bought in the shop"])
event.add('waystones:warp_plate', ["This item can be bought in the shop"])
  
  
  
  
})
