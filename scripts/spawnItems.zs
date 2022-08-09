import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.inventory.PlayerInventory;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.MapData;


public class spawnItems_constants {
	public static var cleared as string[string] = {};
	public static var printConsole = 1; //0 send to player, 1 send to log, 2 disable entirely
	public static var ticks as int = 0;
}

public function log(input as string, player as MCPlayerEntity, forceConsole as bool) as void {
	if (spawnItems_constants.printConsole == 1 || forceConsole) {
		print(input);
	} else if (spawnItems_constants.printConsole == 0) {
		player.sendMessage(input);
		return;
	}
}


CTEventManager.register<MCPlayerLoggedInEvent>((event) => {
	spawnItems_constants.ticks = 0;
});



CTEventManager.register<MCPlayerTickEvent>((event) => {
	val player = event.getPlayer() as MCPlayerEntity;
	val world = player.world as MCWorld;
    if (world.isRemote()) {
        return;
    }
	if (player.getPersistentData().contains("spawnfix")) {
		return;
	} else {
		spawnItems_constants.ticks++;
		if (spawnItems_constants.ticks == 5) {
			spawnItems_constants.ticks = 0;
			log("removing starter items for " + player.getName().getString(), player, false);
			var inventory = player.getInventory();
			inventory.remove(<item:patchouli:guide_book>.withTag({"patchouli:book": "the_afterlight:afterlight_tome" as string}));
			player.updatePersistentData({spawnfix: 1});
		}
	}
});
