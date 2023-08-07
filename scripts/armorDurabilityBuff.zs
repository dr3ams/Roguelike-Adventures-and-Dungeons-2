import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.armor.ArmorItem;


//use this array to add items not automaticly grabed by the latter scripting
var additionalarmorItems = [
] as IItemStack[];

//block items from being auto added to he list of items to be modified
var blockDurModItems = [
    <item:usefulhats:aquanaut_helmet>,
    <item:usefulhats:bunny_ears>,
    <item:usefulhats:chopping_hat>,
    <item:usefulhats:ender_helmet>,
    <item:usefulhats:halo>,
    <item:usefulhats:lucky_hat>,
    <item:usefulhats:mining_hat>,
    <item:usefulhats:mushroom_hat>,
    <item:usefulhats:postman_hat>,
    <item:usefulhats:shulker_helmet>,
    <item:usefulhats:stocking_cap>,
    <item:usefulhats:straw_hat>,
    <item:usefulhats:wing_helmet>
] as IItemStack[];

var armorItems = new stdlib.List<IItemStack>();

for item in additionalarmorItems {
    armorItems.add(item);
}

for allItems in game.items {
    if (allItems.definition is ArmorItem) && !(allItems in armorItems) && !(allItems in blockDurModItems) {
        armorItems.add(allItems);
    }  
}

for armor in armorItems {
    var armorMaxDurability = armor.maxDamage;
    if armorMaxDurability != 0 {
        armor.maxDamage = (100 + armorMaxDurability) * 2;
    }
}