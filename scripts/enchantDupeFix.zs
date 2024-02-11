import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.MCAnvilUpdateEvent;


CTEventManager.register<MCAnvilUpdateEvent>((event) => {
	if (((<item:minecraft:enchanted_book>.matches(event.left)) && (event.left.amount > 1)) || ((<item:minecraft:enchanted_book>.matches(event.right)) && (event.right.amount > 1))) {
			event.levelCost = 238609312;
			event.output = <item:kubejs:forbid>.withTag({display: {Lore: ["[{\"text\":\"Having stacked books can cause loss\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"of the extra books with no extra\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"benefit.\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"Unstack books before attempting to\",\"italic\":false,\"color\":\"red\"}]" as string, "[{\"text\":\"use in an anvil.\",\"italic\":false,\"color\":\"red\"}]" as string], Name: "[{\"text\":\"Stacked Book Bug Warning\",\"italic\":false,\"color\":\"dark_aqua\"}]" as string}});
	}
});