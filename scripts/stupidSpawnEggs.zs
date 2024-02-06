import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.world.MCWorld;

var allSpawnEggs = new stdlib.List<string>();

for item in game.items {
  if "spawn_egg" in item.registryName.path {
    allSpawnEggs.add(item.registryName);
    //print(item.registryName);
  }
}


CTEventManager.register<MCRightClickBlockEvent>((event) => {
        var player = event.player;
        var world = player.getWorld();
        var stack = event.getItemStack() as IItemStack;
        var block = world.getBlockState(event.getBlockPos()).block;

        if ((world.isRemote())) return;
        if (player.isCreative()) return;
        //print("spawn egg bad");
        if ((stack.registryName in allSpawnEggs) && (block == <blockstate:minecraft:spawner>)) {
            //print("nope");
            event.cancel();
        }
});