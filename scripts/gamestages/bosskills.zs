import crafttweaker.api.events.CTEventManager;
import mods.gamestages.StageHelper;
import mods.gamestages.events.GameStageAdded;

StageHelper.grantStageOnKill(<entitytype:minecraft:wither>, "Wither_Wiper");
StageHelper.grantStageOnKill(<entitytype:minecraft:ender_dragon>, "Ender_Ender");

CTEventManager.register<GameStageAdded>((event) => {


    if (event.stage == "Wither_Wiper") {
    
        event.player.sendMessage("§d§lThe monsters grow stronger as one of their overlords fall.");
    }
});

CTEventManager.register<GameStageAdded>((event) => {


    if (event.stage == "Ender_Ender") {
    
        event.player.sendMessage("§4§lSlaying the end tyrant has unleashed the true power of the monsters. ");
    }
});