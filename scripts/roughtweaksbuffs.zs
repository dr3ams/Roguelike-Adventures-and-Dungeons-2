import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.event.entity.living.MCLivingEntityUseItemEvent;
import crafttweaker.api.potion.MCPotionEffectInstance;
import crafttweaker.api.potion.MCPotionEffect;
import crafttweaker.api.util.text.MCTextComponent;

<item:roughtweaks:bandage>.anyDamage().addTooltip(MCTextComponent.createTranslationTextComponent("tooltip.rad2.nobleed" as string).setStyle(<formatting:green>));
<item:roughtweaks:medkit>.anyDamage().addTooltip(MCTextComponent.createTranslationTextComponent("tooltip.rad2.nobleedmedkit" as string).setStyle(<formatting:green>));
<item:roughtweaks:medkit_enchanted>.anyDamage().addTooltip(MCTextComponent.createTranslationTextComponent("tooltip.rad2.nobleedmedkitstrong" as string).setStyle(<formatting:green>));

CTEventManager.register<crafttweaker.api.event.entity.living.MCLivingEntityUseItemEvent>((event) => {
    if event.entity.world.isRemote() return;
    if (!(entity is MCPlayerEntity)) return;

    var player = event.entity as MCPlayerEntity;
    var itemUsed = event.item;
    var itemDur = event.duration;

    if <item:roughtweaks:bandage>.anyDamage().matches(itemUsed){
    // All Roughtweaks healing item durations start at 72000. After 1 use Sets it to 1 to allow duration to reset back to 72000.
    // Known issue: If you stop holding down right click 1 tick before using the item you get the bleed immunity for free. It was between that or the kit not working on the last durability.

// Bandage clears bleed.
    if (itemDur <= 71991 && itemDur > 1) {
    event.duration = 1;
        player.removePotionEffect(<effect:majruszs_difficulty:bleeding> as MCPotionEffect);
    }
    }

    if <item:roughtweaks:medkit>.anyDamage().matches(itemUsed){
    // Medkit clears bleed and gives bleed immunity for 1 minute
    if (itemDur <= 71981 && itemDur > 1) {
    event.duration = 1;
        player.removePotionEffect(<effect:majruszs_difficulty:bleeding> as MCPotionEffect);
        player.addPotionEffect(<effect:majruszs_difficulty:bleeding_immunity>.newInstance(1200, 0, false, false) as MCPotionEffectInstance);
    }
    }

    if <item:roughtweaks:medkit_enchanted>.anyDamage().matches(itemUsed){
    // Enchanted Medkit clears bleed and gives bleed immunity for 2 minutes
    if (itemDur <= 71981 && itemDur > 1) {
    event.duration = 1;
        player.removePotionEffect(<effect:majruszs_difficulty:bleeding> as MCPotionEffect);
        player.addPotionEffect(<effect:majruszs_difficulty:bleeding_immunity>.newInstance(2400, 0, false, false) as MCPotionEffectInstance);
    }
    }

});