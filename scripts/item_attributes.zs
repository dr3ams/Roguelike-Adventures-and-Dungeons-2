import crafttweaker.api.item.MCIngredientConditioned;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.text.MCTextComponent;

//dungeons gear "why is a bat following me" annoying questions fix
<item:dungeons_gear:spelunker_helmet>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");
<item:dungeons_gear:spelunker_chestplate>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");
<item:dungeons_gear:spelunker_leggings>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");
<item:dungeons_gear:spelunker_boots>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");

<item:dungeons_gear:cave_crawler_helmet>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");
<item:dungeons_gear:cave_crawler_chestplate>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");
<item:dungeons_gear:cave_crawler_leggings>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");
<item:dungeons_gear:cave_crawler_boots>.anyDamage().addTooltip("Summons a squeaky bat that.. doesn't really do much, but it's there.");

//fallback in case a mob spawns with it
<item:blue_skies:debug_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "5dea655f-2321-4af0-8f17-a66e8ce6f0f4", "damage nerf", -1, MULTIPLY_TOTAL, [<equipmentslottype:mainhand>]);

//pirate hat swim boosts
<item:pirate_hat:eyepatch_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:forge:swim_speed>, "309220a7-861a-48f8-b601-4b85c503c890", "pirate swim", 0.2, ADDITION, [<equipmentslottype:head>]);
<item:pirate_hat:sailor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:forge:swim_speed>, "309220a7-861a-48f8-b601-4b85c503c890", "pirate swim", 0.4, ADDITION, [<equipmentslottype:head>]);
<item:pirate_hat:pirate_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:forge:swim_speed>, "309220a7-861a-48f8-b601-4b85c503c890", "pirate swim", 0.6, ADDITION, [<equipmentslottype:head>]);

//mystical world weapon rebalanced to be similar to spartan weaponry
<item:mysticalworld:copper_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Weapon modifier", 4.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:mysticalworld:tin_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Weapon modifier", 4.75, ADDITION, [<equipmentslottype:mainhand>]);
<item:mysticalworld:tin_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Weapon modifier", 8.75, ADDITION, [<equipmentslottype:mainhand>]);
<item:iceandfire:silver_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Weapon modifier", 4.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:iceandfire:silver_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Weapon modifier", 7, ADDITION, [<equipmentslottype:mainhand>]);

//infused arc sword triple damage when charged
<item:blue_skies:infused_arc_sword>.withTag({InfusedCooldown: 0 as int}).anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "1475ecd8-a1c9-40f0-9ca8-33588e0abcb3", "Weapon modifier", 10.8, ADDITION, [<equipmentslottype:mainhand>]);

//weighted lead + magic resistance
<item:mysticalworld:lead_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:forge:entity_gravity>, "309220a7-861a-48f8-b601-4b85c503c890", "lead armor weight", 0.04, MULTIPLY_BASE, [<equipmentslottype:head>]);
<item:mysticalworld:lead_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:forge:entity_gravity>, "b29b5a90-6bf9-4b9f-8203-7e0c51de88a8", "lead armor weight", 0.04, MULTIPLY_BASE, [<equipmentslottype:chest>]);
<item:mysticalworld:lead_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:forge:entity_gravity>, "d0bb4c83-92f3-415d-b7e0-be56feb74fae", "lead armor weight", 0.04, MULTIPLY_BASE, [<equipmentslottype:legs>]);
<item:mysticalworld:lead_boots>.anyDamage().addGlobalAttributeModifier(<attribute:forge:entity_gravity>, "e1c53dc8-1188-4621-902f-f9de8f33ded6", "lead armor weight", 0.04, MULTIPLY_BASE, [<equipmentslottype:feet>]);

<item:mysticalworld:lead_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:radenchants:magic_resistance>, "d42226ab-a863-4460-b4ae-3fb36a41189b", "lead armor magicres", 0.08, MULTIPLY_BASE, [<equipmentslottype:head>]);
<item:mysticalworld:lead_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:radenchants:magic_resistance>, "6dceba43-18c8-4b9e-a4b3-fc2042d68e73", "lead armor magicres", 0.08, MULTIPLY_BASE, [<equipmentslottype:chest>]);
<item:mysticalworld:lead_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:radenchants:magic_resistance>, "9bc73f25-95a3-4344-8ec3-44bb910b044a", "lead armor magicres", 0.08, MULTIPLY_BASE, [<equipmentslottype:legs>]);
<item:mysticalworld:lead_boots>.anyDamage().addGlobalAttributeModifier(<attribute:radenchants:magic_resistance>, "f6488f1b-af9a-4329-9714-28bdf64af63c", "lead armor magicres", 0.08, MULTIPLY_BASE, [<equipmentslottype:feet>]);

//thallasium paraglider boost
<item:betterendforge:thallasium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:paraglider:max_stamina>, "309220a7-861a-48f8-b601-4b85c503c890", "thallasium light weight", 0.75, MULTIPLY_BASE, [<equipmentslottype:head>]);
<item:betterendforge:thallasium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:paraglider:max_stamina>, "b29b5a90-6bf9-4b9f-8203-7e0c51de88a8", "thallasium light weight", 0.75, MULTIPLY_BASE, [<equipmentslottype:chest>]);
<item:betterendforge:thallasium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:paraglider:max_stamina>, "d0bb4c83-92f3-415d-b7e0-be56feb74fae", "thallasium light weight", 0.75, MULTIPLY_BASE, [<equipmentslottype:legs>]);
<item:betterendforge:thallasium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:paraglider:max_stamina>, "e1c53dc8-1188-4621-902f-f9de8f33ded6", "thallasium light weight", 0.75, MULTIPLY_BASE, [<equipmentslottype:feet>]);

<item:betterendforge:thallasium_helmet>.anyDamage().anyDamage().addTooltip(MCTextComponent.createStringTextComponent("End Drift: +75% Paraglider Stamina").setStyle(<formatting:dark_purple>));
<item:betterendforge:thallasium_chestplate>.anyDamage().anyDamage().addTooltip(MCTextComponent.createStringTextComponent("End Drift: +75% Paraglider Stamina").setStyle(<formatting:dark_purple>));
<item:betterendforge:thallasium_leggings>.anyDamage().anyDamage().addTooltip(MCTextComponent.createStringTextComponent("End Drift: +75% Paraglider Stamina").setStyle(<formatting:dark_purple>));
<item:betterendforge:thallasium_boots>.anyDamage().anyDamage().addTooltip(MCTextComponent.createStringTextComponent("End Drift: +75% Paraglider Stamina").setStyle(<formatting:dark_purple>));


//mystical world blessed attribute on ice and fire silver armor
<item:iceandfire:armor_silver_metal_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "309220a7-861a-48f8-b601-4b85c503c890", "silver armor bless", 2, ADDITION, [<equipmentslottype:head>]);
<item:iceandfire:armor_silver_metal_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "b29b5a90-6bf9-4b9f-8203-7e0c51de88a8", "silver armor bless", 2, ADDITION, [<equipmentslottype:chest>]);
<item:iceandfire:armor_silver_metal_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "d0bb4c83-92f3-415d-b7e0-be56feb74fae", "silver armor bless", 2, ADDITION, [<equipmentslottype:legs>]);
<item:iceandfire:armor_silver_metal_boots>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "e1c53dc8-1188-4621-902f-f9de8f33ded6", "silver armor bless", 2, ADDITION, [<equipmentslottype:feet>]);

//extra smite attribute on ice and fire silver sword and axe
<item:iceandfire:silver_sword>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:smite>, "f0d302a9-2efb-4ad2-b92c-ab82c5263c9d", "undead smite bonus", 1, ADDITION, [<equipmentslottype:mainhand>]);
<item:iceandfire:silver_axe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:smite>, "f0d302a9-2efb-4ad2-b92c-ab82c5263c9d", "undead smite bonus", 1, ADDITION, [<equipmentslottype:mainhand>]);

//buff to ore magnet durability because 12 is just awful and outclassed by the minewood tree.
<item:twilightforest:ore_magnet>.maxDamage = 64;

//durability increase from 99 to 512
<item:twilightforest:block_and_chain>.maxDamage = 512;

//honey crystal shield durability increase
<item:the_bumblezone:honey_crystal_shield>.maxDamage = 333;

//nerf bulldozer durability to 3
//<item:prefab:item_bulldozer>.maxDamage = 3;

//christmas hat luck nerfed from 50 to 3, speed from +0.05 to +0.02 (+20% speed)
<item:tombstone:christmas_hat>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.luck>, "e6f5182f-39e8-4f5d-9998-fc9ddf7c969e", "Christmas hat luck bonus", -47, ADDITION, [<equipmentslottype:head>]);
<item:tombstone:christmas_hat>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "07c7291f-d909-4411-88c0-3841125b7414", "Christmas hat speed boost", -0.03, ADDITION, [<equipmentslottype:head>]);
<item:tombstone:christmas_hat>.anyDamage().addTooltip("Grants +3 luck, +0.02 speed");

//passages toll warning tooltip
<item:meetyourfight:passages_toll>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Costs 10 XP Levels to use. It will sting a little...").setStyle(<formatting:red>));

//keepsake casket tooltip
<item:twilightforest:keepsake_casket>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("If this item is in your inventory, if you die it will appear at your death point and store your stuff. Warning: May cause your spawnpoint to be obstructed.").setStyle(<formatting:yellow>));

//minecraft dungeons tooltips for consistency
<item:minecraft:bow>.anyDamage().addTooltip("A simple but well-rounded piece of weaponry. The hunters of the Pumpkin Pastures say that a bow doesn't let you down, unlike other trinkets.");
<item:minecraft:crossbow>.anyDamage().addTooltip("The crossbow is the ranged weapon of the Illagers and is a common sight among Pillager warriors.");

//uncrafting table tooltip
<item:twilightforest:uncrafting_table>.addTooltip("The uncrafting function of the uncrafting table is disabled.");

//quark backpack
<item:quark:backpack>.anyDamage().addTooltip("Please use the Backpack from Sophisticated Backpacks instead.");
//soul enchanter
<item:eidolon:soul_enchanter>.addTooltip("This item is purposely disabled due to being insanely powerful. If you found it in the book, the recipe above will not work.");
//golden bridle
<item:greekfantasy:golden_bridle>.addTooltip("Used to tame Pegasus");
//flint and steel
<item:minecraft:flint_and_steel>.anyDamage().addTooltip("Check the quest book on how to enter and exit the nether");

//dual wield tutorial
<item:dungeons_gear:dagger>.anyDamage().addTooltip("This is a Dual Wield weapon. It swaps to your offhand when attacking. Try using one in both your mainhand and offhand!");
<item:dungeons_gear:gauntlet>.anyDamage().addTooltip("This is a Dual Wield weapon. It swaps to your offhand when attacking. Try using one in both your mainhand and offhand!");

//apex enchanting
<item:minecraft:beacon>.addTooltip("Right-Click in JEI to see Apex Enchanting Recipes");

//crystalite armor tooltip
<item:betterendforge:crystalite_chestplate>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Haste I").setStyle(<formatting:gold>));
<item:betterendforge:crystalite_boots>.anyDamage().addTooltip("Speed I");

<item:betterendforge:crystalite_helmet>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Full set grants Regeneration I").setStyle(<formatting:red>));
<item:betterendforge:crystalite_chestplate>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Full set grants Regeneration I").setStyle(<formatting:red>));
<item:betterendforge:crystalite_leggings>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Full set grants Regeneration I").setStyle(<formatting:red>));
<item:betterendforge:crystalite_boots>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Full set grants Regeneration I").setStyle(<formatting:red>));

//lightning dragonsteel tooltip
<item:iceandfire:dragonsteel_lightning_sword>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Has Thundering When Crafted").setStyle(<formatting:light_purple>));
<item:iceandfire:dragonsteel_lightning_axe>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Has Thundering When Crafted").setStyle(<formatting:light_purple>));
<item:iceandfire:dragonsteel_lightning_pickaxe>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Has Thundering When Crafted").setStyle(<formatting:light_purple>));
<item:iceandfire:dragonsteel_lightning_shovel>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Has Thundering When Crafted").setStyle(<formatting:light_purple>));
<item:iceandfire:dragonsteel_lightning_hoe>.anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Has Thundering When Crafted").setStyle(<formatting:light_purple>));

//dread sword debuff
<item:iceandfire:dread_knight_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Weapon modifier", 9, ADDITION, [<equipmentslottype:mainhand>]);

//soul weapons
<item:atum:anubis_wrath>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:soul_gathering>, "ab1b3a5a-0a50-401e-af73-701136dbbc2b", "soul_bonus", 1, ADDITION, [<equipmentslottype:mainhand>]);
<item:eidolon:reaper_scythe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:soul_gathering>, "ab1b3a5a-0a50-401e-af73-701136dbbc2b", "soul_bonus", 1, ADDITION, [<equipmentslottype:mainhand>]);

//dimensional carver tooltip + durability increase
<item:alexsmobs:dimensional_carver>.maxDamage = 100;
<item:alexsmobs:dimensional_carver>.anyDamage().anyDamage().addTooltip(MCTextComponent.createStringTextComponent("Teleports you to spawn, unlike the magic mirror this even works across dimensions! (Stops working at 1 durability, does not break)").setStyle(<formatting:light_purple>));

//buddycards gear improvements
//buddysteel Serendipity Boost (fortune)
<item:buddycards:buddysteel_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "309220a7-861a-48f8-b601-4b85c503c890", "buddy luck", 0.25, ADDITION, [<equipmentslottype:head>]);
<item:buddycards:buddysteel_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "b29b5a90-6bf9-4b9f-8203-7e0c51de88a8", "buddy luck", 0.25, ADDITION, [<equipmentslottype:chest>]);
<item:buddycards:buddysteel_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "d0bb4c83-92f3-415d-b7e0-be56feb74fae", "buddy luck", 0.25, ADDITION, [<equipmentslottype:legs>]);
<item:buddycards:buddysteel_boots>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "e1c53dc8-1188-4621-902f-f9de8f33ded6", "buddy luck", 0.25, ADDITION, [<equipmentslottype:feet>]);

<item:buddycards:buddysteel_sword>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.25, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_pickaxe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.25, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_axe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.25, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_shovel>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.25, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_hoe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.25, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_food_knife>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.25, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_fillet_knife>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.25, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_fishing_rod>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.luck>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 2, ADDITION, [<equipmentslottype:mainhand>]);

<item:buddycards:buddysteel_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "Weapon modifier", 1, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_sword>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.02, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_pickaxe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.02, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_axe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.02, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_shovel>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.02, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_hoe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.02, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_food_knife>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.02, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:buddysteel_fillet_knife>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.02, ADDITION, [<equipmentslottype:mainhand>]);

<item:buddycards:perfect_buddysteel_sword>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_pickaxe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_axe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_shovel>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_hoe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "buddy luck", 0.5, ADDITION, [<equipmentslottype:mainhand>]);

<item:buddycards:perfect_buddysteel_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "9862c2d7-52dd-487d-bc6d-a5f9aa914146", "Weapon modifier", 1.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_sword>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.05, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_pickaxe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.05, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_axe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.05, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_shovel>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.05, ADDITION, [<equipmentslottype:mainhand>]);
<item:buddycards:perfect_buddysteel_hoe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "162c8d87-74c6-4935-b595-0e21ababffaf", "buddy lifesteal", 0.05, ADDITION, [<equipmentslottype:mainhand>]);

//perfect buddysteel buff (Magic Damage & fortune)
<item:buddycards:perfect_buddysteel_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "309220a7-861a-48f8-b601-4b85c503c890", "buddy luck", 0.5, ADDITION, [<equipmentslottype:head>]);
<item:buddycards:perfect_buddysteel_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "8c68e6d5-5747-48ec-9ddb-d770902b981d", "buddy magic", 0.2, ADDITION, [<equipmentslottype:head>]);
<item:buddycards:perfect_buddysteel_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "b29b5a90-6bf9-4b9f-8203-7e0c51de88a8", "buddy luck", 0.5, ADDITION, [<equipmentslottype:chest>]);
<item:buddycards:perfect_buddysteel_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "cad250f1-a55a-4170-90ea-7b2284a8d0e7", "buddy magic", 0.2, ADDITION, [<equipmentslottype:chest>]);
<item:buddycards:perfect_buddysteel_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "d0bb4c83-92f3-415d-b7e0-be56feb74fae", "buddy luck", 0.5, ADDITION, [<equipmentslottype:legs>]);
<item:buddycards:perfect_buddysteel_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "9e6249f2-0e9d-46b0-a0f1-988d910c048c", "buddy magic", 0.2, ADDITION, [<equipmentslottype:legs>]);
<item:buddycards:perfect_buddysteel_boots>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:serendipity>, "e1c53dc8-1188-4621-902f-f9de8f33ded6", "buddy luck", 0.5, ADDITION, [<equipmentslottype:feet>]);
<item:buddycards:perfect_buddysteel_boots>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "cba394eb-e251-43f9-b4b8-6439c95bec51", "buddy magic", 0.2, ADDITION, [<equipmentslottype:feet>]);

//forbidden axe buff (Smite damage, Souls, Lifesteal)
<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:smite>, "f0d302a9-2efb-4ad2-b92c-ab82c5263c9d", "undead smite bonus", 3, ADDITION, [<equipmentslottype:mainhand>]);
<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:soul_gathering>, "f0d302a9-2efb-4ad2-b92c-ab82c5263c9d", "execution soul harvest", 4, ADDITION, [<equipmentslottype:mainhand>]);
<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "f0d302a9-2efb-4ad2-b92c-ab82c5263c9d", "execution life steal bonus", 0.05, ADDITION, [<equipmentslottype:mainhand>]);

//Silver Spartan Weaponry smite
<item:spartanweaponry:longbow_silver>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:smite>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "undead smite bonus", 2, ADDITION, [<equipmentslottype:mainhand>]);
<item:spartanweaponry:heavy_crossbow_silver>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:smite>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "undead smite bonus", 2, ADDITION, [<equipmentslottype:mainhand>]);

//Enderite Pearl
<item:upgradednetherite_items:ender_upgraded_netherite_pearl>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "no attack", -1, MULTIPLY_TOTAL, [<equipmentslottype:mainhand>]);
<item:upgradednetherite_items:ender_upgraded_netherite_pearl>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_gear:attack_reach>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "extra reach", 2, ADDITION, [<equipmentslottype:mainhand>]);

//Wand and Scepter buff
<item:eidolon:soulfire_wand>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "Magic Boost", 1.5, ADDITION, [<equipmentslottype:mainhand>]);
<item:eidolon:soulfire_wand>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "Magic Boost", 1.5, ADDITION, [<equipmentslottype:offhand>]);
<item:twilightforest:twilight_scepter>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "Magic Boost", 1.0, ADDITION, [<equipmentslottype:mainhand>]);
<item:twilightforest:twilight_scepter>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "Magic Boost", 1.0, ADDITION, [<equipmentslottype:offhand>]);
<item:twilightforest:lifedrain_scepter>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "Magic Boost", 1.0, ADDITION, [<equipmentslottype:mainhand>]);
<item:twilightforest:lifedrain_scepter>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:magic_damage_multiplier>, "284f72cf-cc18-46f4-8035-b2de099a8e9f", "Magic Boost", 1.0, ADDITION, [<equipmentslottype:offhand>]);

//buffs to horse armors
<item:minecraft:diamond_horse_armor>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "d3c32fdb-e4db-4fde-83b8-c3b6eaa42fb0", "Horse Armor Toughness", 2, ADDITION, [<equipmentslottype:chest>]);

<item:upgradednetherite:netherite_horse_armor>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "d3c32fdb-e4db-4fde-83b8-c3b6eaa42fb0", "Horse Armor Toughness", 3, ADDITION, [<equipmentslottype:chest>]);
<item:upgradednetherite:netherite_horse_armor>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.knockback_resistance>, "a4b21eca-d3ca-3ecd-72a7-b2a5dbb53dc7", "Horse Knockback Resistance", 0.1, ADDITION, [<equipmentslottype:chest>]);

<item:upgradednetherite:corrupt_upgraded_netherite_horse_armor>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "d3c32fdb-e4db-4fde-83b8-c3b6eaa42fb0", "Horse Armor Toughness", 3, ADDITION, [<equipmentslottype:chest>]);
<item:upgradednetherite:corrupt_upgraded_netherite_horse_armor>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.knockback_resistance>, "a4b21eca-d3ca-3ecd-72a7-b2a5dbb53dc7", "Horse Knockback Resistance", 0.1, ADDITION, [<equipmentslottype:chest>]);
<item:upgradednetherite:corrupt_upgraded_netherite_horse_armor>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.max_health>, "4108792f-c8be-47c8-b56b-2255269bde53", "Corrupted Horse Armor HP Reduction", -0.1, MULTIPLY_TOTAL, [<equipmentslottype:chest>]);
<item:upgradednetherite:corrupt_upgraded_netherite_horse_armor>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "4453815f-dba0-4554-8a5a-ad7c3c8b76123", "Corrupted Horse Armor Speed Boost", 0.5, MULTIPLY_BASE, [<equipmentslottype:chest>]);

for allItems in game.items {

	    if (allItems.getDefinition().isIn(<tag:items:spartanweaponry:greatswords>) ) {
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_gear:attack_reach>, "a1780227-963c-4ada-bf81-14aa59b9fc30", "ReachFix", 1, ADDITION, [<equipmentslottype:mainhand>]);
	    }

	    if (allItems.getDefinition().isIn(<tag:items:spartanweaponry:spears>) ) {
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_gear:attack_reach>, "a1780227-963c-4ada-bf81-14aa59b9fc30", "ReachFix", 1, ADDITION, [<equipmentslottype:mainhand>]);
	    }

	    if (allItems.getDefinition().isIn(<tag:items:spartanweaponry:halberds>) ) {
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_gear:attack_reach>, "a1780227-963c-4ada-bf81-14aa59b9fc30", "ReachFix", 1, ADDITION, [<equipmentslottype:mainhand>]);
	    }

	    if (allItems.getDefinition().isIn(<tag:items:spartanweaponry:pikes>) ) {
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_gear:attack_reach>, "a1780227-963c-4ada-bf81-14aa59b9fc30", "ReachFix", 2, ADDITION, [<equipmentslottype:mainhand>]);
	    }

	    if (allItems.getDefinition().isIn(<tag:items:spartanweaponry:lances>) ) {
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_gear:attack_reach>, "a1780227-963c-4ada-bf81-14aa59b9fc30", "ReachFix", 1, ADDITION, [<equipmentslottype:mainhand>]);
	    }

	    if (allItems.getDefinition().isIn(<tag:items:spartanweaponry:glaives>) ) {
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_gear:attack_reach>, "a1780227-963c-4ada-bf81-14aa59b9fc30", "ReachFix", 1, ADDITION, [<equipmentslottype:mainhand>]);
	    }

	    if (allItems.getDefinition().isIn(<tag:items:upgradednetherite:upgraded_netherite_horse_armor>) ) {
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "d3c32fdb-e4db-4fde-83b8-c3b6eaa42fb0", "Horse Armor Toughness", 3, ADDITION, [<equipmentslottype:chest>]);
		   allItems.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.knockback_resistance>, "a4b21eca-d3ca-3ecd-72a7-b2a5dbb53dc7", "Horse Knockback Resistance", 0.1, ADDITION, [<equipmentslottype:chest>]);
	    }

	    if (allItems.getDefinition().isIn(<tag:items:radrecipes:has_durability_boost>) ) {
    var netheriteMaxDurability = allItems.maxDamage;
    if netheriteMaxDurability != 0 {
        allItems.maxDamage = netheriteMaxDurability * 3;
    }
	    }

}
