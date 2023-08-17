import crafttweaker.api.villagers.VillagerTrades;

villagerTrades.removeEnchantedBookForEmeraldsTrade(<profession:minecraft:librarian>, 1);
villagerTrades.removeEnchantedBookForEmeraldsTrade(<profession:minecraft:librarian>, 2);
villagerTrades.removeEnchantedBookForEmeraldsTrade(<profession:minecraft:librarian>, 3);
villagerTrades.removeEnchantedBookForEmeraldsTrade(<profession:minecraft:librarian>, 4);

villagerTrades.addTrade(<profession:minecraft:librarian>, 2, <item:minecraft:emerald> * 1, <item:supplementaries:brass_lantern>, 12, 5, 0.05);
villagerTrades.removeItemsForEmeraldsTrade(<profession:minecraft:librarian>, 2, <item:minecraft:lantern>);

villagerTrades.addTrade(<profession:minecraft:librarian>, 4, <item:minecraft:emerald> * 12, <item:minecraft:book> * 1, <item:apotheosis:scrap_tome>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:librarian>, 5, <item:minecraft:emerald> * 26, <item:minecraft:book> * 1, <item:tombstone:book_of_disenchantment>, 3, 10, 0.05);

villagerTrades.removeEmeraldForItemsTrade(<profession:minecraft:fletcher>, 1, <item:minecraft:stick>.definition);
villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, 1, <item:spartanweaponry:arrow_wood> * 32, 16, 2, 0.05);

villagerTrades.addTrade(<profession:morevillagers:oceanographer>, 1, <item:minecraft:emerald> * 1, <item:minecraft:prismarine_shard> * 2, 2, 5, 0.05);
villagerTrades.removeItemsForEmeraldsTrade(<profession:morevillagers:oceanographer>, 1, <item:minecraft:sea_lantern>);

villagerTrades.addTrade(<profession:morevillagers:enderian>, 3, <item:minecraft:emerald> * 1, <item:alexsmobs:enderiophage_rocket> * 8, 5, 10, 0.05);
villagerTrades.removeItemsForEmeraldsTrade(<profession:morevillagers:enderian>, 3, <item:minecraft:firework_rocket>);
villagerTrades.addTrade(<profession:morevillagers:enderian>, 5, 64, <item:alexsmobs:mysterious_worm>, 1, 200, 0.0);
villagerTrades.removeItemsForEmeraldsTrade(<profession:morevillagers:enderian>, 5, <item:minecraft:dragon_head>);

villagerTrades.addTrade(<profession:minecraft:nitwit>, 1, <item:minecraft:emerald> * 1, <item:minecraft:dirt> * 4, 16, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:nitwit>, 1, <item:minecraft:emerald> * 1, <item:minecraft:gravel> * 4, 16, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:nitwit>, 1, <item:minecraft:emerald> * 1, <item:minecraft:wheat_seeds> * 4, 16, 2, 0.05);

villagerTrades.addTrade(<profession:minecraft:nitwit>, 2, <item:minecraft:emerald> * 1, <item:minecraft:coarse_dirt> * 3, 16, 3, 0.05);
villagerTrades.addTrade(<profession:minecraft:nitwit>, 2, <item:minecraft:emerald> * 1, <item:minecraft:poppy> * 3, 16, 3, 0.05);
villagerTrades.addTrade(<profession:minecraft:nitwit>, 2, <item:minecraft:emerald> * 1, <item:aquaculture:tin_can> * 2, 16, 3, 0.05);

villagerTrades.addTrade(<profession:minecraft:nitwit>, 3, <item:minecraft:emerald> * 1, <item:minecraft:rotten_flesh> * 2, 16, 5, 0.05);
villagerTrades.addTrade(<profession:minecraft:nitwit>, 3, <item:minecraft:emerald> * 2, <item:rats:garbage_pile> * 1, 16, 5, 0.05);
villagerTrades.addTrade(<profession:minecraft:nitwit>, 3, <item:minecraft:emerald> * 1, <item:atum:dusty_bone> * 2, 16, 5, 0.05);

villagerTrades.addTrade(<profession:minecraft:nitwit>, 4, <item:minecraft:emerald> * 1, <item:rats:contaminated_food> * 4, 16, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:nitwit>, 4, <item:minecraft:emerald> * 1, <item:minecraft:poisonous_potato> * 1, 16, 10, 0.05);

villagerTrades.addTrade(<profession:minecraft:nitwit>, 5, <item:minecraft:emerald> * 5, <item:relics:old_boot> * 1, 8, 2, 0.05);
