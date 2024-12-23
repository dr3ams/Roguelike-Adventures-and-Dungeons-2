#priority 11
import crafttweaker.api.food.MCFood;

<tag:blocks:twilightforest:portal/edge>.add(<block:byg:meadow_grass_block>);

<tag:blocks:minecraft:dragon_immune>.add(
   <block:betterendforge:flavolite>,
   <block:betterendforge:flavolite_stairs>,
   <block:betterendforge:flavolite_wall>,
   <block:betterendforge:thallasium_bars>
);

//<tag:items:curios:charm>.remove(<item:storagenetwork:collector_remote>);

for item in game.items {
  if item.food != null && !(item in <tag:items:forge:food>)  {
    var food = item.food as MCFood;
    if food.healing >= 0 {
      <tag:items:forge:food>.add(item);
    }
  }
}

<tag:items:radrecipes:extra_stackable_bowls>.add(
    <item:simplefarming:fruit_salad>,
    <item:simplefarming:vegetable_medley>,
    <item:simplefarming:borscht>,
    <item:simplefarming:chili>,
    <item:simplefarming:corn_salad>,
    <item:simplefarming:cucumber_soup>,
    <item:simplefarming:oatmeal>,
    <item:simplefarming:onion_soup>,
    <item:simplefarming:pea_soup>,
    <item:simplefarming:pumpkin_soup>,
    <item:simplefarming:quinoa_salad>,
    <item:simplefarming:radish_soup>,
    <item:simplefarming:rice_bowl>,
    <item:simplefarming:salad>,
    <item:simplefarming:sausage_barley_soup>,
    <item:simplefarming:sorghum_porridge>,
    <item:simplefarming:squash_soup>,
    <item:simplefarming:tomato_soup>,
    <item:twilightdelight:glowstew>,
    <item:twilightdelight:thousand_plant_stew>,
    <item:infernalexp:blindsight_tongue_stew>,
    <item:undergarden:bloody_stew>,
    <item:undergarden:inky_stew>,
    <item:undergarden:indigo_stew>,
    <item:undergarden:veiled_stew>
);
//this tag doesn't work when its in stacksize.zs so its here instead
for allItems in game.items {
    if (allItems.getDefinition().isIn(<tag:items:radrecipes:extra_stackable_bowls>)) {
        allItems.setMaxStackSize(16);
    }
}

<tag:items:radrecipes:netherite_bows_durability_boost>.add(
    <item:upgradednetherite:netherite_bow>,
    <item:upgradednetherite:gold_upgraded_netherite_bow>,
    <item:upgradednetherite:fire_upgraded_netherite_bow>,
    <item:upgradednetherite:ender_upgraded_netherite_bow>,
    <item:upgradednetherite:water_upgraded_netherite_bow>,
    <item:upgradednetherite:wither_upgraded_netherite_bow>,
    <item:upgradednetherite:poison_upgraded_netherite_bow>,
    <item:upgradednetherite:phantom_upgraded_netherite_bow>,
    <item:upgradednetherite:feather_upgraded_netherite_bow>,
    <item:upgradednetherite:corrupt_upgraded_netherite_bow>,
    <item:upgradednetherite:netherite_crossbow>,
    <item:upgradednetherite:gold_upgraded_netherite_crossbow>,
    <item:upgradednetherite:fire_upgraded_netherite_crossbow>,
    <item:upgradednetherite:ender_upgraded_netherite_crossbow>,
    <item:upgradednetherite:water_upgraded_netherite_crossbow>,
    <item:upgradednetherite:wither_upgraded_netherite_crossbow>,
    <item:upgradednetherite:poison_upgraded_netherite_crossbow>,
    <item:upgradednetherite:phantom_upgraded_netherite_crossbow>,
    <item:upgradednetherite:feather_upgraded_netherite_crossbow>,
    <item:upgradednetherite:corrupt_upgraded_netherite_crossbow>
);

<tag:items:farmersdelight:wolf_prey>.add(
    <item:blue_skies:venison>,
    <item:mysticalworld:venison>,
    <item:twilightforest:raw_venison>,
    <item:twilightdelight:raw_venison_rib>
);

<tag:items:minecraft:sand>.add(
    <tag:items:tropicraft:sand>
);

<tag:items:supplementaries:cookies>.add(
    <item:abnormals_delight:mulberry_cookie>,
    <item:feywild:magical_honey_cookie>,
    <item:farmersrespite:green_tea_cookie>,
    <item:twilightdelight:torchberry_cookie>
);

<tag:items:forge:chef_upgrade_items>.add(
    <item:farmersdelight:vegetable_soup>,
    <item:farmersdelight:baked_cod_stew>,
    <item:farmersdelight:noodle_soup>,
    <item:farmersdelight:pasta_with_meatballs>,
    <item:farmersdelight:pasta_with_mutton_chop>,
    <item:farmersdelight:roasted_mutton_chops>,
    <item:farmersdelight:vegetable_noodles>,
    <item:farmersdelight:squid_ink_pasta>,
    <item:farmersdelight:grilled_salmon>,
    <item:farmersdelight:shepherds_pie>
);

<tag:items:questtag:sleepingbag>.add([
<item:comforts:sleeping_bag_white>, 
<item:comforts:sleeping_bag_orange>, 
<item:comforts:sleeping_bag_magenta>,
<item:comforts:sleeping_bag_light_blue>,
<item:comforts:sleeping_bag_yellow>, 
<item:comforts:sleeping_bag_lime>, 
<item:comforts:sleeping_bag_pink>, 
<item:comforts:sleeping_bag_gray>, 
<item:comforts:sleeping_bag_light_gray>,
<item:comforts:sleeping_bag_cyan>, 
<item:comforts:sleeping_bag_purple>, 
<item:comforts:sleeping_bag_blue>, 
<item:comforts:sleeping_bag_brown>, 
<item:comforts:sleeping_bag_green>, 
<item:comforts:sleeping_bag_red>, 
<item:comforts:sleeping_bag_black>, 

<item:upgrade_aquatic:bedroll>,
<item:upgrade_aquatic:white_bedroll>,
<item:upgrade_aquatic:orange_bedroll>, 
<item:upgrade_aquatic:magenta_bedroll>, 
<item:upgrade_aquatic:light_blue_bedroll>,
<item:upgrade_aquatic:yellow_bedroll>,
<item:upgrade_aquatic:lime_bedroll>, 
<item:upgrade_aquatic:pink_bedroll>, 
<item:upgrade_aquatic:gray_bedroll>, 
<item:upgrade_aquatic:light_gray_bedroll>, 
<item:upgrade_aquatic:cyan_bedroll>, 
<item:upgrade_aquatic:purple_bedroll>,
<item:upgrade_aquatic:blue_bedroll>, 
<item:upgrade_aquatic:brown_bedroll>, 
<item:upgrade_aquatic:green_bedroll>, 
<item:upgrade_aquatic:red_bedroll>, 
<item:upgrade_aquatic:black_bedroll>]);


<tag:items:minecraft:planks>.add(
	<item:tropicraft:palm_planks>,
	<item:tropicraft:mahogany_planks>
);

<tag:items:forge:ores>.add(
    <item:darkerdepths:aridrock_gold_ore>,
    <item:darkerdepths:limestone_gold_ore>,
    <item:darkerdepths:aridrock_iron_ore>,
    <item:darkerdepths:limestone_iron_ore>,
    <item:darkerdepths:aridrock_coal_ore>,
    <item:darkerdepths:limestone_coal_ore>,
    <item:darkerdepths:aridrock_lapis_ore>,
    <item:darkerdepths:limestone_lapis_ore>,
    <item:darkerdepths:aridrock_redstone_ore>,
    <item:darkerdepths:limestone_redstone_ore>,
    <item:darkerdepths:aridrock_diamond_ore>,
    <item:darkerdepths:limestone_diamond_ore>,
    <item:darkerdepths:raw_silver>,
    <item:infernalexp:basalt_iron_ore>,
    <item:stalwart_dungeons:tungsten_ore>,
	<item:buddycards:luminis_ore>,
	<item:randomite:randomite_ore>,
	<item:stalwart_dungeons:chorundum_ore>,

	<item:stalwart_dungeons:chorundum_ore>,
	<item:majruszs_difficulty:end_shard_ore>,
	<item:atum:bone_ore>,
	<item:atum:relic_ore>
);
<tag:items:forge:ores/gold>.add(
    <item:darkerdepths:aridrock_gold_ore>,
    <item:darkerdepths:limestone_gold_ore>,
    <item:byg:brimstone_nether_gold_ore>,
    <item:byg:blue_nether_gold_ore>
);
<tag:items:forge:ores/iron>.add(
    <item:darkerdepths:aridrock_iron_ore>,
    <item:darkerdepths:limestone_iron_ore>,
    <item:infernalexp:basalt_iron_ore>
);
<tag:items:forge:ores/coal>.add(
    <item:darkerdepths:aridrock_coal_ore>,
    <item:darkerdepths:limestone_coal_ore>
);
<tag:items:forge:ores/lapis>.add(
    <item:darkerdepths:aridrock_lapis_ore>,
    <item:darkerdepths:limestone_lapis_ore>
);
<tag:items:forge:ores/redstone>.add(
    <item:darkerdepths:aridrock_redstone_ore>,
    <item:darkerdepths:limestone_redstone_ore>
);
<tag:items:forge:ores/diamond>.add(
    <item:darkerdepths:aridrock_diamond_ore>,
    <item:darkerdepths:limestone_diamond_ore>
);
<tag:items:forge:ores/tungsten>.add(
    <item:stalwart_dungeons:tungsten_ore>
);
<tag:items:forge:ores/silver>.add(
    <item:darkerdepths:raw_silver>
);
<tag:items:forge:ores/amethyst>.add(
    <item:iceandfire:amythest_ore>
);
<tag:items:forge:ores/quartz>.add(
    <item:byg:blue_nether_quartz_ore>,
	<item:byg:brimstone_nether_quartz_ore>
);


<tag:blocks:forge:ores>.add(
    <block:darkerdepths:aridrock_gold_ore>,
    <block:darkerdepths:limestone_gold_ore>,
    <block:darkerdepths:aridrock_iron_ore>,
    <block:darkerdepths:limestone_iron_ore>,
    <block:darkerdepths:aridrock_coal_ore>,
    <block:darkerdepths:limestone_coal_ore>,
    <block:darkerdepths:aridrock_lapis_ore>,
    <block:darkerdepths:limestone_lapis_ore>,
    <block:darkerdepths:aridrock_redstone_ore>,
    <block:darkerdepths:limestone_redstone_ore>,
    <block:darkerdepths:aridrock_diamond_ore>,
    <block:darkerdepths:limestone_diamond_ore>,
    <block:infernalexp:basalt_iron_ore>,
    <block:stalwart_dungeons:tungsten_ore>,
	<block:buddycards:luminis_ore>,
	<block:randomite:randomite_ore>,
	<block:stalwart_dungeons:chorundum_ore>,
	<block:stalwart_dungeons:chorundum_ore>,
	<block:majruszs_difficulty:end_shard_ore>,
	<block:atum:bone_ore>,
	<block:atum:relic_ore>
);
<tag:blocks:forge:ores/gold>.add(
    <block:darkerdepths:aridrock_gold_ore>,
    <block:darkerdepths:limestone_gold_ore>,
    <block:byg:brimstone_nether_gold_ore>,
    <block:byg:blue_nether_gold_ore>
);
<tag:blocks:forge:ores/iron>.add(
    <block:darkerdepths:aridrock_iron_ore>,
    <block:darkerdepths:limestone_iron_ore>,
    <block:infernalexp:basalt_iron_ore>
);
<tag:blocks:forge:ores/coal>.add(
    <block:darkerdepths:aridrock_coal_ore>,
    <block:darkerdepths:limestone_coal_ore>
);
<tag:blocks:forge:ores/lapis>.add(
    <block:darkerdepths:aridrock_lapis_ore>,
    <block:darkerdepths:limestone_lapis_ore>
);
<tag:blocks:forge:ores/redstone>.add(
    <block:darkerdepths:aridrock_redstone_ore>,
    <block:darkerdepths:limestone_redstone_ore>
);
<tag:blocks:forge:ores/diamond>.add(
    <block:darkerdepths:aridrock_diamond_ore>,
    <block:darkerdepths:limestone_diamond_ore>
);
<tag:blocks:forge:ores/tungsten>.add(
    <block:stalwart_dungeons:tungsten_ore>
);
<tag:blocks:forge:ores/amethyst>.add(
    <block:iceandfire:amythest_ore>
);

<tag:blocks:forge:ores/quartz>.add(
    <block:byg:blue_nether_quartz_ore>,
	<block:byg:brimstone_nether_quartz_ore>
);