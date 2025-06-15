import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.event.entity.living.MCLivingEntityUseItemEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.world.MCWorld;

CTEventManager.register<MCLivingEntityUseItemEvent>((event) => {
        var entity = event.entityLiving;
        var world = entity.getWorld();
        var stack = event.item as IItemStack;
        var player = entity as MCPlayerEntity;

        if ((world.isRemote())) return;
        if ((stack == <item:tombstone:familiar_stone>)) {
            player.sendStatusMessage("This Item is disabled", true);
            event.cancel();
        }
});