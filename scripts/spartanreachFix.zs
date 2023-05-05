import crafttweaker.api.item.MCIngredientConditioned;
import crafttweaker.api.item.IItemStack;

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

}