import crafttweaker.api.food.MCFood;

# NU = Math.min(healing + (healing * saturation * 2), Config.NUTRIENT_MAX_FOOD_VALUE.get().floatValue() * numberOfNutrients)
# example The Forbidden Fruit had 0.0 NU, but Mixed Fruit from simplefarming has 12.8 NU
# therefore adding 4.2 NU (12.8 / 3 = 4.26666666667)
<item:enigmaticlegacy:forbidden_fruit>.food = new MCFood(1, 1.6);

# ------ tweaks
<item:byg:green_apple>.food = new MCFood(4, 0.3);
<item:simplefarming:candy>.food = new MCFood(1, 0.2);
<item:good_nights_sleep:candy>.food = new MCFood(1, 0.2);
<item:simplefarming:candy_cane>.food = new MCFood(2, 0.4);
<item:minecraft:golden_carrot>.food = new MCFood(3, 0.9);
<item:brewevolution:cheese>.food = new MCFood(3, 0.5);
<item:simplefarming:cheese_slice>.food = new MCFood(2, 0.1);
<item:simplefarming:cheeseburger>.food = new MCFood(6, 0.5);
<item:projectvibrantjourneys:clam>.food = new MCFood(3, 0.8);
<item:rats:contaminated_food>.food = new MCFood(2, -1.2);
<item:betterdefaultbiomes:cooked_frog_leg>.food = new MCFood(2, 0.15);
<item:quark:cooked_frog_leg>.food = new MCFood(2, 0.15);
<item:aquaculture:frog_legs_cooked>.food = new MCFood(3, 0.2);
<item:fins:crab_sandwich>.food = new MCFood(9, 0.55);
<item:byg:death_cap>.food = new MCFood(3, -1.0);
<item:artifacts:eternal_steak>.food = new MCFood(5, 0.3);
<item:mysticalworld:fish_and_chips>.food = new MCFood(9, 0.8);
<item:betterdefaultbiomes:frog_leg>.food = new MCFood(1, 0.2);
<item:aquaculture:frog_legs_raw>.food = new MCFood(1, 0.3);
<item:quark:frog_leg>.food = new MCFood(1, 0.2);
<item:quark:golden_frog_leg>.food = new MCFood(4, 1.2);
<item:farmersdelight:grilled_salmon>.food = new MCFood(10, 0.8);
<item:simplefarming:hamburger>.food = new MCFood(6, 0.7);
<item:farmersdelight:hamburger>.food = new MCFood(6, 0.7);
<item:largemeals:hearty_lunch>.food = new MCFood(11, 0.8);
<item:simplefarming:hotdog>.food = new MCFood(6, 0.7);
<item:simplefarming:italian_beef>.food = new MCFood(9, 0.6);
<item:simplefarming:lasagna>.food = new MCFood(12, 0.6);
<item:abundance:sunflower_seeds>.food = new MCFood(1, 0.1);
<item:simplefarming:sushi>.food = new MCFood(4, 0.8);
<item:farmersdelight:tomato>.food = new MCFood(3, 0.6);
<item:berry_nice:goldensweetberry>.food = new MCFood(4, 1.2);
# ------ 0 nu's
<item:farmersdelight:apple_cider>.food = new MCFood(4, 0.3);
<item:byg:ether_bulbs>.food = new MCFood(2, 0.1);
<item:alexsmobs:fish_oil>.food = new MCFood(2, 0.3);
<item:relics:infinity_ham>.food = new MCFood(5, 0.3);
<item:upgradednetherite_items:netherite_apple>.food = new MCFood(4, 1.2);
<item:upgradednetherite_items:enchanted_netherite_apple>.food = new MCFood(4, 1.2);
<item:upgradednetherite_items:gold_upgraded_netherite_apple>.food = new MCFood(4, 1.2);
<item:upgradednetherite_items:enchanted_gold_upgraded_netherite_apple>.food = new MCFood(4, 1.2);
<item:good_nights_sleep:luxurious_soup>.food = new MCFood(12, 0.9);
<item:good_nights_sleep:wretched_soup>.food = new MCFood(12, -1.9);
<item:feywild:mandrake_potion>.food = new MCFood(3, 1.2);
<item:mushroomquest:thelastresort>.food = new MCFood(2, 4);
<item:mushroomquest:witchshat>.food = new MCFood(1, 0.2);

# tweaks based on recipe
# ------ easier to make than duplicate/similar food
<item:iceandfire:ambrosia>.food = new MCFood(1, 2.9);
<item:simplefarming:egg_sandwich>.food = new MCFood(7, 0.8);
<item:mysticalworld:beetroot_salad>.food = new MCFood(5, 0.6);