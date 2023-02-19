import crafttweaker.api.events.CTEventManager;
import mods.gamestages.StageHelper;
import mods.gamestages.events.GameStageAdded;
import crafttweaker.api.util.BlockPos;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.INumberData;


CTEventManager.register<MCPlayerTickEvent>((event) => {
    if (event.isEnd()) {
        return;
    }
    val player = event.player;
    if (player.world.gameTime % 100 != 0) {
        return;
    }
    if (player.world.dimension == "minecraft:the_end" && !player.hasGameStage("Ender_Ender")) {
        if (player.position.x < -250 || player.position.x > 250 || player.position.z < -250 || player.position.z > 250) {
            player.moveForced(0, 85, 0);
        if (!player.getPersistentData().contains("leftEndOnce") && !player.getPersistentData().contains("leftEndTwice") && !player.getPersistentData().contains("leftEndThrice")){
            player.sendMessage("§b§l§oThe lingering powers of the ender dragon tether you to the island, killing it or its shadow will release it's grasp.");
            player.updatePersistentData({leftEndOnce: 1});
            return;
        }
        if (player.getPersistentData().contains("leftEndOnce") && !player.getPersistentData().contains("leftEndTwice")){
            player.sendMessage("§b§l§oThe lingering powers of the ender dragon tether you to the island, killing it or its shadow will release it's grasp.");
            player.updatePersistentData({leftEndTwice: 1});
            player.getPersistentData().remove("leftEndOnce");
            return;
        }
        if (player.getPersistentData().contains("leftEndTwice") && !player.getPersistentData().contains("leftEndThrice")) {
            player.sendMessage("§b§l§oThe lingering powers of the ender dragon tether you to the island, killing it or its shadow will release it's grasp.");
            player.updatePersistentData({leftEndThrice: 1});
            player.getPersistentData().remove("leftEndTwice");
            return;
        }
        if (player.getPersistentData().contains("leftEndThrice")) {
            player.sendMessage("§l§oYou know what fine I'll tell you straight up GO KILL AN ENDER DRAGON!!");
            return;
        }
        }
    }
});
