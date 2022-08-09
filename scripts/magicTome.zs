import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;

public class magicTome_constants {
	public static var tomeList = {
		<item:enigmaticlegacy:tattered_tome> : {"min" : 5, "max" : 50},
		<item:enigmaticlegacy:withered_tome> : {"min" : 10,"max" : 70},
		<item:enigmaticlegacy:corrupted_tome> : {"min" : 20, "max" : 100}
	};
	// as a reference, this is how much vanilla xp they give
	// tattered: 50 - 500
	// withered: 100 - 700
	// corrupted: 200 - 1000
	public static var printConsole = 1; //0 send to player, 1 send to console, 2 disable entirely
}

public function log(input as string, player as MCPlayerEntity, forceConsole as bool) as void {
	if (magicTome_constants.printConsole == 1 || forceConsole) {
		print(input);
	} else if (magicTome_constants.printConsole == 0) {
		player.sendMessage(input);
	}
}

public function awardXP(player as MCPlayerEntity, xpMin as int, xpMax as int) as void {
	var world = player.getWorld();
	var xpAmount = world.random.nextInt(xpMin, xpMax);
	log("rewarding " + player.getName().getString() + " XP: " + xpAmount, player, false);
	world.asServerWorld().server.executeCommand('pmmo admin ' + player.getName().getString() + ' add magic xp ' + (xpAmount as string), true);
}

CTEventManager.register<MCRightClickItemEvent>((event) => {
    var player = event.player;
    var world = player.getWorld();
	
	if ((world.isRemote())) {
		return;
	}
	
	var itemStack = event.getItemStack();
	var tomeValid = false;
	var xpMin = 0;
	var xpMax = 0;
	
	for stack in magicTome_constants.tomeList {
		if (stack.matches(itemStack.getDefinition().getDefaultInstance())) {
			tomeValid = true;
			xpMin = magicTome_constants.tomeList[stack]["min"];
			xpMax = magicTome_constants.tomeList[stack]["max"];
			break;
		}
	}
	
	if (!tomeValid) {
		return;
	}
	
	var canUse = true;
	
	var nbtTag = itemStack.getOrCreate as MapData;
	var formerReaders = nbtTag.getAt("formerReaders");
	if (formerReaders != null) {
		for reader in formerReaders.asList() {
			if (reader.getString() == player.getName()) {
				log("already used by " + player.getName(), player, false);
				canUse = false;
			}
		}
	}
	
	if (canUse) {
		awardXP(player, xpMin, xpMax);
	}
	
});