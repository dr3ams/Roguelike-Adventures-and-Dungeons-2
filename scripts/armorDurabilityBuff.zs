import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.armor.ArmorItem;


//use this array to add items not automaticly grabed by the latter scripting. 
//this will bypass the blacklist and the check to make sure the item is armor.
var additionalarmorItems = [
    //<item:minecraft:iron_helmet>
] as IItemStack[];

//block items from being auto added to the list of items to be modified
var blockDurModItems = [
    //<item:minecraft:iron_helmet>
] as IItemStack[];

//block all items from a mod from being auto added to the list of items to be modified
var modBlacklist = [
    "dungeons_gear",
    "dungeons_mobs",
    "usefulhats"
] as string[];

var itemBlacklist = new stdlib.List<IItemStack>();

var armorItems = new stdlib.List<IItemStack>();

for mod in modBlacklist {
    var modItems = loadedMods.getMod(mod).items;
    for item in modItems {
        itemBlacklist.add(item);
    }
}

for item in blockDurModItems {
    if !(item in itemBlacklist) {
        itemBlacklist.add(item);
    }
}

for item in additionalarmorItems {
    armorItems.add(item);
}

for allItems in game.items {
    if (allItems.definition is ArmorItem) && !(allItems in armorItems) && !(allItems in itemBlacklist) {
        armorItems.add(allItems);
    }  
}

for armor in armorItems {
    var armorMaxDurability = armor.maxDamage;
    if armorMaxDurability != 0 {
        armor.maxDamage = (100 + armorMaxDurability) * 2;
    }
}