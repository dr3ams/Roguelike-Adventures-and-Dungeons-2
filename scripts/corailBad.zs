import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.event.entity.living.MCLivingEntityUseItemEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.util.text.MCTextComponent;

//MCTextComponent

CTEventManager.register<MCLivingEntityUseItemEvent>((event) => {
        var entity = event.entityLiving;
        var world = entity.getWorld();
        var stack = event.item as IItemStack;

        if (!(entity is MCPlayerEntity)) return;
        var player = entity as MCPlayerEntity;

        if ((world.isRemote())) return;
        if ((stack == <item:tombstone:familiar_stone>)) {
            player.sendStatusMessage(MCTextComponent.createTranslationTextComponent("status.rad2.nope" as string) as MCTextComponent, true);
            event.cancel();
        }
});