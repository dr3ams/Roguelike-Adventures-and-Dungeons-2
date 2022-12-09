import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.world.MCWorld;


public class contributors_constants {
	public static val devUsers as string[] = ["Doctor_Mage", "Bizzoula", "TheFlame52", "Mihawkeyez", "Zarchyar", "recyclebee"];
	public static val feedbackUsers as string[] = ["recyclebee"];
	public static val patreonUsers as string[] = [];
}

CTEventManager.register<MCPlayerLoggedInEvent>((event) => {
	val player = event.getPlayer() as MCPlayerEntity;
	val world = player.getWorld();
	val username = player.getName().getString();
	if (username in contributors_constants.devUsers) {
		world.asServerWorld().server.executeCommand('ftbquests change_progress ' + username + ' complete 6237C8565A36FFF9', true);
	}
	if (username in contributors_constants.patreonUsers) {
		world.asServerWorld().server.executeCommand('ftbquests change_progress ' + username + ' complete 035217898B130AB7', true);
	}
	if (username in contributors_constants.feedbackUsers) {
		world.asServerWorld().server.executeCommand('ftbquests change_progress ' + username + ' complete 5D6983FD863F51B3', true);
	} else {
		if (player.getPersistentData().contains("feedbackNotified"))
			return;
		player.updatePersistentData({feedbackNotified: 1});
		world.asServerWorld().server.executeCommand("tellraw " + username + ' [{"text":"Welcome to ","color":"white"},{"text":"RAD 2! ","color":"green"},{"text":"If you want to help out by providing feedback, click ","color":"white"},{"text":"here. ","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Feedback Form"}]},"clickEvent":{"action":"open_url","value":"https://bit.ly/RAD2FeedbackTEST"}},{"text":"You can also earn a ","color":"white"},{"text":"Custom Title","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"the ","color":"white"},{"text":"Contributor","color":"gold","bold":true}]}},{"text":".","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"}]}}]', true);
	}
	
});
