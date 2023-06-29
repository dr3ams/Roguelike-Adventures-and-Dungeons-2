import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.potion.MCPotionEffectInstance;
import crafttweaker.api.potion.MCPotionEffect;
import crafttweaker.api.util.text.MCTextComponent;

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var player = event.player;
    var world = player.getWorld();
	
	if ((world.isRemote())) {
		return;
	}
    var stack = event.getItemStack();

    if (stack.registryName == <item:meetyourfight:passages_toll>.registryName) { // if the player has less then 3 xp levels the bell will not work
        if (player.experienceLevel as float as int < 3) {
            player.sendStatusMessage("You do not have enought xp to use the Passage's Toll.", true);
            event.cancel();
            return;
        }
        player.addExperienceLevels(-3); // takes 3 xp levels fromt he player on use of the bell
        player.addPotionEffect(<effect:minecraft:nausea>.newInstance(300, 3, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:slowness>.newInstance(300, 3, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:blindness>.newInstance(300, 3, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:instant_damage>.newInstance(1, 2, true, false) as MCPotionEffectInstance); // dose like 24 points of magic damage to the player
    }
});