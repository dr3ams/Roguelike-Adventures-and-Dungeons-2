import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.tag.TagManagerBlock;

 CTEventManager.register<crafttweaker.api.event.block.MCBlockBreakEvent>((event) => {
 var block = event.getBlockState();

//makes emerald ores never drop xp when mined. There is probably a better way to do this but can't figure it out
 if (block.block == <block:minecraft:emerald_ore>){
    event.setExpToDrop(0);
 }
 else if (block.block == <block:blue_skies:everbright_emerald_ore>){
    event.setExpToDrop(0);
 }
 else if (block.block == <block:blue_skies:everdawn_emerald_ore>){
    event.setExpToDrop(0);
 }
 else if (block.block == <block:atum:emerald_ore>){
    event.setExpToDrop(0);
 }

});