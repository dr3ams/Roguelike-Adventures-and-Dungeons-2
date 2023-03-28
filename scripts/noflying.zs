import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.INumberData;
import crafttweaker.api.potion.MCPotionEffectInstance;
import crafttweaker.api.potion.MCPotionEffect;

CTEventManager.register<MCPlayerTickEvent>((event) => {
    if (event.isEnd()) {
        return;
    }
    val player = event.player;
    if (player.world.gameTime % 100 != 0) {
        return;
    }

    if (player.isPotionActive(<effect:bountifulbaubles:flight>) && player.inventory.hasIItemStack(<item:apotheosis:potion_charm>.withTag({Potion: "bountifulbaubles:flight" as string}).mutable().anyDamage())) {
        player.removePotionEffect(<effect:bountifulbaubles:flight>);
        player.inventory.remove(<item:apotheosis:potion_charm>.withTag({Potion: "bountifulbaubles:flight" as string}).mutable().anyDamage());
        player.sendMessage("§l§oA strange power causes the charm of flight to collapse in on itself destroying the item.");
    }
});

// 