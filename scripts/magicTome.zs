import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;

public function awardXP(player as MCPlayerEntity, xpMin as int, xpMax as int) as void {
	var world = player.getWorld();
	var xpAmount = world.random.nextInt(xpMin, xpMax);
	world.asServerWorld().server.executeCommand('pmmo admin ' + player.getName().getString() + ' add magic xp ' + (xpAmount as string), true);
}

CTEventManager.register<MCRightClickItemEvent>((event) => {
    var player = event.player;
    var world = player.getWorld();
	
	if ((world.isRemote())) {
		return;
	}
	
	var stack = event.getItemStack();
	var tomeValid = false;
	var xpMin = 0;
	var xpMax = 0;
	
	if (stack.registryName == <item:enigmaticlegacy:tattered_tome>.registryName) {
		tomeValid = true;
		xpMin = 5;
		xpMax = 50;
	} else if (stack.registryName == <item:enigmaticlegacy:withered_tome>.registryName) {
		tomeValid = true;
		xpMin = 10;
		xpMax = 70;
	} else if (stack.registryName == <item:enigmaticlegacy:corrupted_tome>.registryName) {
		tomeValid = true;
		xpMin = 20;
		xpMax = 100;
	}
	
	if (!tomeValid)
		return;
	
	var canUse = true;
	
	if (stack.hasTag && (stack.tag as MapData).contains("formerReaders")) {
		var nbtTag = stack.tag as MapData;
		var formerReaders = nbtTag.getAt("formerReaders");
		for reader in formerReaders.asList() {
			if (reader.getString() == player.getName()) {
				canUse = false;
				break;
			}
		}
	}
	
	if (canUse) {
		awardXP(player, xpMin, xpMax);
	}
	
});