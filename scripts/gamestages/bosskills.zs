import crafttweaker.api.events.CTEventManager;
import mods.gamestages.StageHelper;
import mods.gamestages.events.GameStageAdded;


//need to add localization for them so that underscore is not shown in game nitpick but can be left for full release
StageHelper.grantStageOnKill(<entitytype:minecraft:wither>, "Wither_Wiper");
StageHelper.grantStageOnKill(<entitytype:minecraft:ender_dragon>, "Ender_Ender");

CTEventManager.register<GameStageAdded>((event) => {


    if (event.stage == "Wither_Wiper") {

//change message to something thats more creative    
        event.player.sendMessage("§d§lThe monsters grow stronger as one of their overlords fall.");
    }
});

CTEventManager.register<GameStageAdded>((event) => {


    if (event.stage == "Ender_Ender") {

//change message to something thats more creative     
        event.player.sendMessage("§4§lSlaying the end tyrant has unleashed the true power of the monsters. ");
    }
});

//locks legendary and ultimate champions behind killing wither
mods.champions.ChampionStages.addTierStage("Wither_Wiper", 3);
mods.champions.ChampionStages.addTierStage("Wither_Wiper", 4);

//locks demonic champions behind killing edragon
mods.champions.ChampionStages.addTierStage("Ender_Ender", 5);