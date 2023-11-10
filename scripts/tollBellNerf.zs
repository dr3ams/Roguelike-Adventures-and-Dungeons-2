import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.potion.MCPotionEffectInstance;
import crafttweaker.api.potion.MCPotionEffect;
import crafttweaker.api.util.text.MCTextComponent;

var bellLevelCost = 10;
var potionTimeTicks = 300;// ticks divided by 20 = seconds
var potionAmplifier = 3;//this value + 1 = effect level
var instantDamageAmp = 2; // does like 24 points of magic damage to the player at amp of 2

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var player = event.player;
    var world = player.getWorld();
	
	if ((world.isRemote())) {
		return;
	}
    var stack = event.getItemStack();

    if (stack.registryName == <item:meetyourfight:passages_toll>.registryName) { 
        if (player.experienceLevel as float as int < bellLevelCost) { // if the player has less then bellLevelCost xp levels the bell will not work
            player.sendStatusMessage("You do not have enough xp to use the Passage's Toll.", true);
            event.cancel();
            return;
        }
        player.addExperienceLevels(-bellLevelCost); // takes bellLevelCost xp levels fromt he player on use of the bell
        player.addPotionEffect(<effect:minecraft:nausea>.newInstance(potionTimeTicks, potionAmplifier, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:slowness>.newInstance(potionTimeTicks, potionAmplifier, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:blindness>.newInstance(potionTimeTicks, potionAmplifier, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:mining_fatigue>.newInstance(potionTimeTicks, potionAmplifier, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:weakness>.newInstance(potionTimeTicks, potionAmplifier, false, false) as MCPotionEffectInstance);
        player.addPotionEffect(<effect:minecraft:instant_damage>.newInstance(1, instantDamageAmp, true, false) as MCPotionEffectInstance);
    }
});


