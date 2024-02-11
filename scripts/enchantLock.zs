import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.MCAnvilUpdateEvent;
import crafttweaker.api.data.IData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.MapData;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.enchantment.MCEnchantment;

CTEventManager.register<MCAnvilUpdateEvent>((event) => {
    var in1 = event.left;
    var in2 = event.right;
    var enchantlist as stdlib.List<MCEnchantment> = new stdlib.List<MCEnchantment>;
    
    if (!(in1.hasTag) && !(in2.hasTag)) return;

    if (in1.hasTag){
        var in1Data = in1.tag.copy().asMap() as IData[string];
        if ("Enchantments" in in1Data) {
            var item1Enchantments = (in1.tag as MapData)."Enchantments";
            for map in item1Enchantments.asList() {
                var id as string = (map as MapData)."id".asString();

                var i = 0;
                var fixedText as string = "";
                while (i < (id.length as int - 12)) {
                    i += 1;
                    fixedText += id[i];
                }
                var enchant = BracketHandlers.getEnchantment(fixedText);
                if !(enchant in enchantlist) enchantlist.add(enchant);
            }
        }
        if ("StoredEnchantments" in in1Data) {
            var item1StoredEnchantments = (in1.tag as MapData)."StoredEnchantments";
            for map in item1StoredEnchantments.asList() {
                var id as string = (map as MapData)."id".asString();

                var i = 0;
                var fixedText as string = "";
                while (i < (id.length as int - 12)) {
                    i += 1;
                    fixedText += id[i];
                }
                var enchant = BracketHandlers.getEnchantment(fixedText);
                if !(enchant in enchantlist) enchantlist.add(enchant);
            }
        }
    }
    if (in2.hasTag) {
        var in2Data = in2.tag.copy().asMap() as IData[string];
        if ("Enchantments" in in2Data) {
            var item2Enchantments = (in2.tag as MapData)."Enchantments";
            for map in item2Enchantments.asList() {
                var id as string = (map as MapData)."id".asString();

                var i = 0;
                var fixedText as string = "";
                while (i < (id.length as int - 12)) {
                    i += 1;
                    fixedText += id[i];
                }
                var enchant = BracketHandlers.getEnchantment(fixedText);
                var validenchant = true;
                for listenchants in enchantlist {
                    if !enchant.isCompatibleWith(listenchants) validenchant = false;
                }
                if (!(enchant in enchantlist) && (enchant.canApply(in1)) && validenchant) enchantlist.add(enchant);
            }
        }
        if ("StoredEnchantments" in in2Data) {
            var item2StoredEnchantments = (in2.tag as MapData)."StoredEnchantments";
            for map in item2StoredEnchantments.asList() {
                var id as string = (map as MapData)."id".asString();

                var i = 0;
                var fixedText as string = "";
                while (i < (id.length as int - 12)) {
                    i += 1;
                    fixedText += id[i];
                }
                var enchant = BracketHandlers.getEnchantment(fixedText);
                var validenchant = true;
                for listenchants in enchantlist {
                    if !enchant.isCompatibleWith(listenchants) validenchant = false;
                }
                if (!(enchant in enchantlist) && (enchant.canApply(in1)) && validenchant) enchantlist.add(enchant);
                
            }
        }
    }

    if (enchantlist.length > 10) {
        event.levelCost = 238609312;
        event.output = <item:kubejs:forbid>.withTag({display: {Lore: ["[{\"text\":\"It appears you are attempting\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"to make an item with more then\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"10 enchants.\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"This is not allowed for balance\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"reasons. Please reduce enchant\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"count and try again.\",\"italic\":false,\"color\":\"red\"}]" as string], Name: "[{\"text\":\"Too Many Enchants\",\"italic\":false,\"color\":\"aqua\"}]" as string}});
    }

});