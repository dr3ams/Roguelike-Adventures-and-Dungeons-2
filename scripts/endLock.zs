import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCAdvancementEvent;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.util.text.MCStyle;

CTEventManager.register<MCPlayerLoggedInEvent>((event) => {
	//Detect if someone has already unlocked the end
	val player = event.getPlayer();
	val world = player.getWorld();
	val hasAdvancement = (player.world.asServerWorld().server.executeCommand('execute as ' + player.getName() + ' run execute if entity @s[advancements={minecraft:end/kill_dragon=true}]', true));
	if (hasAdvancement) {
		val state = world.asServerWorld().server.executeCommand('scoreboard players get dummy GameState', true);
		if (state == 0) {
			world.asServerWorld().server.executeCommand('scoreboard objectives add GameState dummy "GAME_STATE"', true);
		}
		if (state != 2) {
			world.asServerWorld().server.executeCommand('scoreboard players set dummy GameState 2', true);
		}
	}

});

CTEventManager.register<MCAdvancementEvent>((event) => {
	//Unlock end manually, by getting advancement
	if (event.getId() == <resource:minecraft:end/kill_dragon>) {
		val world = event.entity.getWorld();
		if (!world.isRemote()) {
			val state = world.asServerWorld().server.executeCommand('scoreboard players get dummy GameState', true);
			if (state == 0) {
				world.asServerWorld().server.executeCommand('scoreboard objectives add GameState dummy "GAME_STATE"', true);
			}
			if (state != 2) {
				world.asServerWorld().server.executeCommand('scoreboard players set dummy GameState 2', true);
			}
		}
	}
});

CTEventManager.register<MCPlayerTickEvent>((event) => {
	//End locking
	if (event.isEnd())
		return;
	val player = event.getPlayer();
	if (player.world.gameTime % (5 * 20) != 0)
		return;
	val world = player.getWorld();
	if (!world.isRemote()) {
		val state = world.asServerWorld().server.executeCommand('scoreboard players get dummy GameState', true);
		if (state == 0) {
			world.asServerWorld().server.executeCommand('scoreboard objectives add GameState dummy "GAME_STATE"', true);
			world.asServerWorld().server.executeCommand('scoreboard players set dummy GameState 1', true);
		} else if (state == 1) {
			if (player.world.dimension == "minecraft:the_end") {
				if (player.position.x < -250 || player.position.x > 250 || player.position.z < -250 || player.position.z > 250) {
					player.sendMessage(
						('The lingering powers of the ender dragon tether you to the island, killing it or its shadow will release it\'s grasp.' as MCTextComponent)
						.setStyle(new MCStyle().setColor(<formatting:aqua>).setItalic(true).setBold(true))
					);
					player.moveForced(0, 85, 0);
				}
			}
		}
	}
});
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        