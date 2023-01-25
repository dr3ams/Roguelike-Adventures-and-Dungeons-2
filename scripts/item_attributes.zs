import crafttweaker.api.item.MCIngredientConditioned;
import crafttweaker.api.item.IItemStack;

//fallback in case a mob spawns with it
<item:blue_skies:debug_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "5dea655f-2321-4af0-8f17-a66e8ce6f0f4", "damage nerf", -1, MULTIPLY_TOTAL, [<equipmentslottype:mainhand>]);

//bamboo spear damage nerf to 5
<item:tropicraft:bamboo_spear>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "5dea655f-2321-4af0-8f17-a66e8ce6f0f4", "damage nerf", -4, ADDITION, [<equipmentslottype:mainhand>]);

//mystical world blessed attribute on ice and fire silver armor
<item:iceandfire:armor_silver_metal_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "309220a7-861a-48f8-b601-4b85c503c890", "silver armor bless", 1, ADDITION, [<equipmentslottype:head>]);
<item:iceandfire:armor_silver_metal_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "b29b5a90-6bf9-4b9f-8203-7e0c51de88a8", "silver armor bless", 1, ADDITION, [<equipmentslottype:chest>]);
<item:iceandfire:armor_silver_metal_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "d0bb4c83-92f3-415d-b7e0-be56feb74fae", "silver armor bless", 1, ADDITION, [<equipmentslottype:legs>]);
<item:iceandfire:armor_silver_metal_boots>.anyDamage().addGlobalAttributeModifier(<attribute:mysticalworld:blessed>, "e1c53dc8-1188-4621-902f-f9de8f33ded6", "silver armor bless", 1, ADDITION, [<equipmentslottype:feet>]);

//buff to ore magnet durability because 12 is just awful and outclassed by the minewood tree.
<item:twilightforest:ore_magnet>.maxDamage = 50;

//christmas hat luck nerfed from 50 to 3, speed from +0.05 to +0.02 (+20% speed)
<item:tombstone:christmas_hat>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.luck>, "e6f5182f-39e8-4f5d-9998-fc9ddf7c969e", "Christmas hat luck bonus", -47, ADDITION, [<equipmentslottype:head>]);
<item:tombstone:christmas_hat>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "07c7291f-d909-4411-88c0-3841125b7414", "Christmas hat speed boost", -0.03, ADDITION, [<equipmentslottype:head>]);
<item:tombstone:christmas_hat>.addTooltip("Grants +3 luck, +0.02 speed");

//minecraft dungeons tooltips for consistency
<item:minecraft:bow>.addTooltip("A simple but well-rounded piece of weaponry. The hunters of the Pumpkin Pastures say that a bow doesn't let you down, unlike other trinkets.");
<item:minecraft:crossbow>.addTooltip("The crossbow is the ranged weapon of the Illagers and is a common sight among Pillager warriors.");

//uncrafting table tooltip
<item:twilightforest:uncrafting_table>.addTooltip("The uncrafting function of the uncrafting table is disabled.");

//dual wield tutorial
<item:dungeons_gear:dagger>.addTooltip("This is a Dual Wield weapon. It swaps to your offhand when attacking. Try using one in both your mainhand and offhand!");
<item:dungeons_gear:gauntlet>.addTooltip("This is a Dual Wield weapon. It swaps to your offhand when attacking. Try using one in both your mainhand and offhand!");
