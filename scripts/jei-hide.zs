import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;



function removeAllTagsAndHide(item as IItemStack) as void {
	for tag in <tagManager:items>.getAllTagsFor(item) {
		tag.remove(item);
	}
	mods.jei.JEI.hideItem(item);
}

function removeAndHide(item as IItemStack) as void {
	craftingTable.removeRecipe(item);
	removeAllTagsAndHide(item);
}


removeAndHide(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "ensorcellation:instigating" as string}]}));
removeAndHide(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "ensorcellation:instigating" as string}]}));

removeAndHide(<item:quark:magnet>);
removeAndHide(<item:quark:backpack>);
removeAndHide(<item:quark:ravager_hide>);
removeAndHide(<item:quark:bonded_ravager_hide>);
removeAndHide(<item:quark:pipe>);
removeAndHide(<item:quark:crate>);
removeAndHide(<item:quark:soul_compass>);
removeAndHide(<item:quark:matrix_enchanter>);


removeAndHide(<item:losttrinkets:rock_candy>);
removeAndHide(<item:losttrinkets:book_o_enchanting>);
removeAndHide(<item:losttrinkets:ash_gloves>);
removeAndHide(<item:losttrinkets:octopus_leg>);
removeAndHide(<item:losttrinkets:magical_feathers>);



removeAndHide(<item:pickletweaks:magnet>);



removeAndHide(<item:spartanshields:shield_botania_manasteel>);
removeAndHide(<item:spartanshields:shield_botania_terrasteel>);
removeAndHide(<item:spartanshields:shield_botania_elementium>);
removeAndHide(<item:spartanshields:shield_mekanism_osmium>);
removeAndHide(<item:spartanshields:shield_mekanism_lapis_lazuli>);
removeAndHide(<item:spartanshields:shield_mekanism_refined_glowstone>);
removeAndHide(<item:spartanshields:shield_mekanism_refined_obsidian>);
removeAndHide(<item:spartanshields:shield_mekanism_powered_basic>);
removeAndHide(<item:spartanshields:shield_mekanism_powered_advanced>);
removeAndHide(<item:spartanshields:shield_mekanism_powered_elite>);
removeAndHide(<item:spartanshields:shield_mekanism_powered_ultimate>);


removeAndHide(<item:mysticalworld:copper_spear>);
removeAndHide(<item:mysticalworld:lead_spear>);
removeAndHide(<item:mysticalworld:tin_spear>);
removeAndHide(<item:mysticalworld:stone_spear>);
removeAndHide(<item:mysticalworld:wood_spear>);
removeAndHide(<item:mysticalworld:diamond_spear>);
removeAndHide(<item:mysticalworld:gold_spear>);
removeAndHide(<item:mysticalworld:iron_spear>);

removeAndHide(<item:mysticalworld:cactus_knife>);
removeAndHide(<item:mysticalworld:copper_knife>);
removeAndHide(<item:mysticalworld:lead_knife>);
removeAndHide(<item:mysticalworld:tin_knife>);
removeAndHide(<item:mysticalworld:stone_knife>);
removeAndHide(<item:mysticalworld:wood_knife>);
removeAndHide(<item:mysticalworld:diamond_knife>);
removeAndHide(<item:mysticalworld:gold_knife>);
removeAndHide(<item:mysticalworld:iron_knife>);

removeAndHide(<item:prefab:item_sickle_wood>);
removeAndHide(<item:prefab:item_sickle_stone>);
removeAndHide(<item:prefab:item_sickle_gold>);
removeAndHide(<item:prefab:item_sickle_iron>);
removeAndHide(<item:prefab:item_sickle_diamond>);
removeAndHide(<item:prefab:item_sickle_netherite>);
removeAndHide(<item:prefab:item_swift_blade_wood>);
removeAndHide(<item:prefab:item_swift_blade_stone>);
removeAndHide(<item:prefab:item_swift_blade_iron>);
removeAndHide(<item:prefab:item_swift_blade_diamond>);
removeAndHide(<item:prefab:item_swift_blade_gold>);
removeAndHide(<item:prefab:item_swift_blade_copper>);
removeAndHide(<item:prefab:item_swift_blade_osmium>);
removeAndHide(<item:prefab:item_swift_blade_bronze>);
removeAndHide(<item:prefab:item_swift_blade_steel>);
removeAndHide(<item:prefab:item_swift_blade_obsidian>);
removeAndHide(<item:prefab:item_swift_blade_netherite>);

removeAndHide(<item:greekfantasy:wooden_spear>);
removeAndHide(<item:greekfantasy:stone_spear>);
removeAndHide(<item:greekfantasy:iron_spear>);

removeAndHide(<item:iceandfire:copper_sword>);
removeAndHide(<item:iceandfire:copper_shovel>);
removeAndHide(<item:iceandfire:copper_pickaxe>);
removeAndHide(<item:iceandfire:copper_axe>);
removeAndHide(<item:iceandfire:copper_hoe>);
removeAndHide(<item:iceandfire:silver_ore>);
removeAndHide(<item:iceandfire:sapphire_ore>);
removeAndHide(<item:iceandfire:copper_ore>);
removeAndHide(<item:iceandfire:armor_copper_metal_helmet>);
removeAndHide(<item:iceandfire:armor_copper_metal_chestplate>);
removeAndHide(<item:iceandfire:armor_copper_metal_leggings>);
removeAndHide(<item:iceandfire:armor_copper_metal_boots>);


removeAndHide(<item:eidolon:lead_ore>);



removeAndHide(<item:byg:ametrine_ore>);
removeAndHide(<item:byg:budding_ametrine_ore>);
removeAndHide(<item:byg:emeraldite_ore>);
removeAndHide(<item:byg:pendorite_ore>);



removeAndHide(<item:vanillafoodpantry:rock_salt_ore>);
removeAndHide(<item:vanillafoodpantry:rock_salt_ore_nether>);
removeAndHide(<item:vanillafoodpantry:natron_ore>);
removeAndHide(<item:vanillafoodpantry:trona_ore>);



removeAndHide(<item:tropicraft:azurite_ore>);
removeAndHide(<item:tropicraft:eudialyte_ore>);
removeAndHide(<item:tropicraft:manganese_ore>);
removeAndHide(<item:tropicraft:shaka_ore>);
removeAndHide(<item:tropicraft:zircon_ore>);





for allItems in game.items {
	if (allItems.owner == "mysticalworld") {
		if (!("spawn_egg" in (allItems.registryName as string)) && !(":silver_ore" in (allItems.registryName as string)) && ("silver" in (allItems.registryName as string) || "quicksilver" in (allItems.registryName as string))) {
			removeAndHide(allItems);
		}
	}
}