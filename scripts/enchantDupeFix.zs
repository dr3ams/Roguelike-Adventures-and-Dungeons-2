import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.MCAnvilUpdateEvent;


CTEventManager.register<MCAnvilUpdateEvent>((event) => {
	if (<item:minecraft:enchanted_book>.matches(event.left) && <item:minecraft:enchanted_book>.matches(event.right)) {
		print("both stacks are ench book");
		if (event.left.amount > 1) {
			print("left > 1");
			event.levelCost = 100000;
			event.output = <item:kubejs:forbid>.withTag({display: {Lore: ["{\"text\":\"Yep. This one's going in my cringe compilation.\",\"color\":\"green\",\"italic\":false}" as string, "{\"text\":\"You cheated not only the game, but yourself\",\"color\":\"light_purple\",\"italic\":false}" as string, "{\"text\":\"You get nothing! You lose! Good day, sir!\",\"color\":\"blue\",\"italic\":false}" as string], Name: "{\"color\":\"yellow\",\"text\":\"Yikes\"}" as string}, Enchantments: [{}]});
		}
	}
});