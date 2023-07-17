import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.recipe.Replacer;


craftingTable.removeRecipe(<item:berry_nice:goldensweetberry>);
craftingTable.removeRecipe(<item:brewevolution:full_dried_bread>);
craftingTable.removeRecipe(<item:capsule:capsule>.withTag({overpowered: 1 as int, state: 0 as int, color: 16777215 as int, size: 1 as int}));
craftingTable.removeRecipe(<item:usefulhats:wing_helmet>);
craftingTable.removeRecipe(<item:usefulhats:straw_hat>);
craftingTable.removeRecipe(<item:usefulhats:shulker_helmet>);
craftingTable.removeRecipe(<item:usefulhats:chopping_hat>);
craftingTable.removeRecipe(<item:usefulhats:ender_helmet>);
craftingTable.removeRecipe(<item:usefulhats:halo>);
craftingTable.removeRecipe(<item:usefulhats:mining_hat>);
craftingTable.removeRecipe(<item:usefulhats:lucky_hat>);
craftingTable.removeRecipe(<item:waystones:waystone>);
craftingTable.removeRecipe(<item:waystones:mossy_waystone>);
craftingTable.removeRecipe(<item:waystones:sandy_waystone>);
craftingTable.removeRecipe(<item:waystones:sharestone>);
craftingTable.removeRecipe(<item:waystones:bound_scroll>);
craftingTable.removeRecipe(<item:waystones:warp_scroll>);
craftingTable.removeRecipe(<item:waystones:warp_stone>);
craftingTable.removeRecipe(<item:waystones:warp_plate>);

craftingTable.removeRecipe(<item:greekfantasy:golden_apple_sapling>);
craftingTable.removeRecipe(<item:minecraft:enchanted_golden_apple>);

craftingTable.removeRecipe(<item:simplefarming:rice_seeds>);
craftingTable.addShapeless("kill_bad_rice", <item:farmersdelight:rice>, [<item:simplefarming:rice>]);

craftingTable.addShaped("white_chair", <item:tropicraft:white_chair>, 
[[<item:tropicraft:bamboo_stick>, <item:tropicraft:bamboo_bundle>, <item:tropicraft:bamboo_stick>],
 [<item:tropicraft:bamboo_stick>, <item:tropicraft:bamboo_bundle>, <item:tropicraft:bamboo_stick>], 
 [<item:tropicraft:bamboo_stick>, <item:tropicraft:bamboo_bundle>, <item:tropicraft:bamboo_stick>]]);

craftingTable.removeRecipe(<item:apotheosis:hellshelf>);
craftingTable.addShaped("hellshelf", <item:apotheosis:hellshelf>, 
[[<item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>],
 [<item:minecraft:blaze_rod>, <tag:items:forge:bookshelves>, <item:minecraft:potion>.withTag({Potion: "minecraft:regeneration" as string})], 
 [<item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>, <item:minecraft:nether_bricks>]]);

craftingTable.removeRecipe(<item:ars_nouveau:novice_spell_book>);
craftingTable.addShaped("novice_spellbook", <item:ars_nouveau:novice_spell_book>, [
    [<item:ars_nouveau:mana_gem>, <item:ars_nouveau:mana_gem>, <item:ars_nouveau:mana_gem>],
    [<item:ars_nouveau:marvelous_clay>, <item:minecraft:book>, <item:ars_nouveau:marvelous_clay>],
    [<item:ars_nouveau:mana_gem>, <item:ars_nouveau:mana_gem>, <item:ars_nouveau:mana_gem>]
]);

craftingTable.removeRecipe(<item:mining_dimension:teleporter>);
craftingTable.addShaped("mining_dim_teleporter", <item:mining_dimension:teleporter>, [
    [<item:minecraft:diamond_ore>, <item:tropicraft:zirconium_gem>, <item:minecraft:crying_obsidian>],
    [<item:twilightforest:ironwood_ingot>, <item:minecraft:diamond_pickaxe>, <item:undergarden:cloggrum_ingot>],
    [<item:blue_skies:falsite_ingot>, <item:upgradednetherite:fire_upgraded_netherite_ingot>, <item:blue_skies:horizonite_ingot>]
]);

craftingTable.removeRecipe(<item:enigmaticlegacy:gem_ring>);
craftingTable.addShaped("enigmatic_gold_ring", <item:enigmaticlegacy:gem_ring>, [
    [<item:eidolon:arcane_gold_nugget>, <item:upgradednetherite:gold_upgraded_netherite_ingot>, <item:eidolon:arcane_gold_nugget>],
    [<item:upgradednetherite:gold_upgraded_netherite_ingot>, <item:enigmaticlegacy:iron_ring>, <item:upgradednetherite:gold_upgraded_netherite_ingot>],
    [<item:eidolon:arcane_gold_nugget>, <item:upgradednetherite:gold_upgraded_netherite_ingot>, <item:eidolon:arcane_gold_nugget>]
]);




//craftingTable.removeRecipe(<item:prefab:block_glass_slab>);
//craftingTable.addShaped("slabs_glass", <item:prefab:block_glass_slab> * 4, [[<tag:items:forge:glass>], [<tag:items:forge:glass>]]);

craftingTable.addShapeless("stringball", <item:minecraft:string> * 2, [<item:greekfantasy:web_ball>]);

craftingTable.addShaped("gloves_digging_diamond", <item:bountifulbaubles:gloves_digging_diamond>, [
[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
[<item:minecraft:iron_ingot>, <item:bountifulbaubles:gloves_digging_iron>, <item:minecraft:iron_ingot>],
[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);


//craftingTable.removeByName("rats:rat_upgrade_dragon_vanilla");
craftingTable.removeByName("rats:rat_upgrade_chef");
craftingTable.addShaped("rats_upgrade_chef", <item:rats:rat_upgrade_chef>,[
    [<tag:items:forge:chef_upgrade_items>, <item:rats:chef_toque>, <tag:items:forge:chef_upgrade_items>],
    [<tag:items:forge:chef_upgrade_items>, <item:rats:rat_upgrade_basic>, <tag:items:forge:chef_upgrade_items>],
    [<tag:items:forge:chef_upgrade_items>, <item:minecraft:enchanted_golden_apple>, <tag:items:forge:chef_upgrade_items>]
]);

craftingTable.removeByName("sophisticatedbackpacks:crafting_upgrade");
craftingTable.addShaped("backpack_crafting_upgrade", <item:sophisticatedbackpacks:crafting_upgrade>,[
    [<item:minecraft:air>, <tag:items:forge:workbench>, <item:minecraft:air>],
    [<tag:items:forge:ingots/iron>, <item:sophisticatedbackpacks:upgrade_base>, <tag:items:forge:ingots/iron>],
    [<item:minecraft:air>, <tag:items:forge:chests>, <item:minecraft:air>]
]);

craftingTable.addShaped("cursed_ring", <item:enigmaticlegacy:cursed_ring>,[
    [<item:minecraft:air>, <item:twilightforest:charm_of_life_1>, <item:minecraft:experience_bottle>],
    [<item:upgradednetherite:wither_upgraded_netherite_ingot>, <item:enigmaticlegacy:ender_ring>, <item:upgradednetherite:wither_upgraded_netherite_ingot>],
    [<item:iceandfire:fire_dragon_blood>, <item:twilightforest:charm_of_life_1>, <item:minecraft:air>]
]);

craftingTable.removeByName("tombstone:enchanted_grave_key");

//Silver Ingot conversion and Copper Ingot conversion
for allItems in game.items {
    if (allItems.getDefinition().isIn(<tag:items:forge:ingots/silver>)) {
        craftingTable.addShapeless("any_silver_ingot_convert_" + allItems.owner, allItems, [<tag:items:forge:ingots/silver>]);
    }
    if (allItems.getDefinition().isIn(<tag:items:forge:ingots/copper>)) {
        craftingTable.addShapeless("any_copper_ingot_convert_" + allItems.owner, allItems, [<tag:items:forge:ingots/copper>]);
    }
}

craftingTable.removeByRegex("buddycards:.*_card_display");

craftingTable.addShaped("mush_stem_feywild", <item:minecraft:mushroom_stem> * 4, 
[[<item:enhanced_mushrooms:red_mushroom_stem>, <item:enhanced_mushrooms:red_mushroom_stem>],
 [<item:enhanced_mushrooms:red_mushroom_stem>, <item:enhanced_mushrooms:red_mushroom_stem>]]);

//replace ender pearls with spirit orbs in gateway recipes excluding enderman gateways
Replacer.forMods("gateways").excluding(<resource:gateways:enderman_gate_large>).excluding(<resource:gateways:enderman_gate>).excluding(<resource:gateways:enderman_gate_small>).replace(<item:minecraft:ender_pearl>, <item:paraglider:spirit_orb>).execute();
Replacer.forMods("gateways").excluding(<resource:gateways:enderman_gate>).replace(<item:minecraft:ender_eye>, <item:cofh_core:ectoplasm>).execute();

//custom replacement for enderman gateways found in rad_recipes
craftingTable.removeByName(<resource:gateways:enderman_gate>);
craftingTable.removeByName(<resource:gateways:enderman_gate_small>);

//destruction core way more expensive
craftingTable.removeRecipe(<item:constructionwand:core_destruction>);
craftingTable.addShaped("harder_destruction_core", <item:constructionwand:core_destruction>,[
    [<item:minecraft:netherite_pickaxe>, <item:minecraft:nether_star>, <item:minecraft:netherite_pickaxe>],
    [<item:minecraft:nether_star>, <item:minecraft:netherite_block>, <item:minecraft:nether_star>],
    [<item:minecraft:netherite_pickaxe>, <item:minecraft:nether_star>, <item:minecraft:netherite_pickaxe>]
]);