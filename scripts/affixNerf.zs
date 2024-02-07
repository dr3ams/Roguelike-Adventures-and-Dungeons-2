smithing.removeByName("apotheosis:smithing/common_tome_ench");
smithing.removeByName("apotheosis:smithing/uncommon_tome_ench");
smithing.removeByName("apotheosis:smithing/rare_tome_ench");
smithing.removeByName("apotheosis:smithing/epic_tome_ench");
smithing.removeByName("apotheosis:smithing/mythic_tome_ench");
smithing.removeByName("apotheosis:smithing/ancient_tome_ench");

smithing.addRecipe("common_tome", <item:apotheosis:common_tome>, <item:apotheosis:scrap_tome>, <item:apotheosis:common_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}));
craftingTable.addShapeless("activated_common_shard", <item:apotheosis:common_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}) , [<item:apotheosis:common_shard>, <item:minecraft:diamond_block>]);

smithing.addRecipe("uncommon_tome", <item:apotheosis:uncommon_tome>, <item:apotheosis:scrap_tome>, <item:apotheosis:uncommon_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}));
craftingTable.addShapeless("activated_uncommon_shard", <item:apotheosis:uncommon_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}) , [<item:apotheosis:uncommon_shard>, <item:minecraft:netherite_ingot>]);

smithing.addRecipe("rare_tome", <item:apotheosis:rare_tome>, <item:apotheosis:scrap_tome>, <item:apotheosis:rare_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}));
craftingTable.addShapeless("activated_rare_shard", <item:apotheosis:rare_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}) , [<item:apotheosis:rare_shard>, <item:minecraft:netherite_block>]);

smithing.addRecipe("epic_tome", <item:apotheosis:epic_tome>, <item:apotheosis:scrap_tome>, <item:apotheosis:epic_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}));
craftingTable.addShapeless("activated_epic_shard", <item:apotheosis:epic_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}) , [<item:apotheosis:epic_shard>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>]);

smithing.addRecipe("mythic_tome", <item:apotheosis:mythic_tome>, <item:apotheosis:scrap_tome>, <item:apotheosis:mythic_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}));
craftingTable.addShapeless("activated_mythic_shard", <item:apotheosis:mythic_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}) , [<item:apotheosis:mythic_shard>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>]);

smithing.addRecipe("ancient_tome", <item:apotheosis:ancient_tome>, <item:apotheosis:scrap_tome>, <item:apotheosis:ancient_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}));
craftingTable.addShapeless("activated_ancient_shard", <item:apotheosis:ancient_shard>.withTag({Activated: 1 as int, display: {Lore: ["[{\"text\":\"Activated\",\"italic\":false}]" as string]}}) , [<item:apotheosis:ancient_shard>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>]);
