import crafttweaker.api.tag.MCTag;
import crafttweaker.api.recipe.Replacer;

//mods here caused issues with replacer for everything
var excludedModsList as string[] = [
    "ars_nouveau", 
    "toomanyglyphs",
    "atum",
    "rad_recipes",
    "eidolon",
    "paraglider",
    "quark"
];

//cheese
//<tag:items:forge:all_cheese>.add(<item:simplefarming:cheese_slice>, <item:brewevolution:cheese>);
Replacer.forMods(["simplefarming", "simpledelights"]).replace(<item:simplefarming:cheese_slice>, <tag:items:forge:all_cheese>).execute();
Replacer.forMods(["rats"]).replace(<item:rats:cheese>, <tag:items:forge:all_cheese>).excluding(<resource:rats:block_of_cheese>).execute();

//jam
<tag:items:forge:jam>.add(<item:bayou_blues:gooseberry_jam>, <item:simplefarming:jam>, <item:upgrade_aquatic:mulberry_jam_bottle>);
Replacer.forMods(["simplefarming", "simpledelights"]).replace(<item:simplefarming:jam>, <tag:items:forge:jam>).execute();

//olives
<tag:items:forge:olives>.add(<item:greekfantasy:olives>, <item:simplefarming:olives>);
<tag:items:forge:olive_oil>.add(<item:greekfantasy:olive_oil>, <item:simplefarming:olive_oil>);
Replacer.forMods(["greekfantasy", "simplefarming", "simpledelights"]).replace(<item:greekfantasy:olives>, <tag:items:forge:olives>).replace(<item:simplefarming:olives>, <tag:items:forge:olives>).execute();
Replacer.forMods(["greekfantasy", "simplefarming", "simpledelights"]).replace(<item:greekfantasy:olive_oil>, <tag:items:forge:olive_oil>).replace(<item:simplefarming:olive_oil>, <tag:items:forge:olive_oil>).execute();

//vinegar
<tag:items:forge:vinegar>.add(<item:mysticalworld:vinegar>, <item:simplefarming:vinegar>);
Replacer.forMods(["mysticalworld", "simplefarming", "simpledelights"]).replace(<item:mysticalworld:vinegar>, <tag:items:forge:vinegar>).replace(<item:simplefarming:vinegar>, <tag:items:forge:vinegar>).execute();