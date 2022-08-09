import crafttweaker.api.game.MCGame;
import crafttweaker.api.enchantment.MCEnchantment;

var enchList = game.enchantments;

mods.jei.JEI.hideItem(<item:minecraft:enchanted_book>);


for enchantment in enchList {
    var level = enchantment.maxLevel;
    
    var nameArr = enchantment.getName().split(".");
    var name = "";
    for num,str in nameArr {
        if (num != 0) {
            name = name + str;
        } 
        if (num == 1) {
            name = name + ":";
        }
    }

    if(enchantment.getName() == "enchantment.ensorcellation.frost_walker") {
        mods.jei.JEI.addIngredient(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "minecraft:frost_walker" as string}]}));
    }
    mods.jei.JEI.addIngredient(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level as short, id: name as string}]}));
}
