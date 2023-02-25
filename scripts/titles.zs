import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.world.MCWorld;


public class contributors_constants {
	public static val devUsers as string[] = ["Doctor_Mage", "Bizzoula", "TheFlame52", "Mihawkeyez", "Xaikii", "Zarchyar", "recyclebee"];
	public static val feedbackUsers as string[] = ["recyclebee", "Blapzapp", "Clank", "ManyullynShovel", "DiscordKitten63", "impostersunshine", "Alexluvu18", "HellsHound98", "KeyNapper", "ZeroReaper11", "airhaldeman", "Bizzoula", "polyorchid", "JamCatPlexer", "AliNebraska", "Crysi102", "Weakcheesysauce", "ThorbenP", "Lawyermood", "Rombus", "AhtiPlays", "Tylerrq", "SlimD", "CrimsonNectar", "EninTheReaper", "Fall3nFlame5", "Cesiya", "Vengenc3God", "ooglopboy", "Reindawn", "ColorlessKing", "BrowserCookiez", "CryoMaelstrom", "MrVenkam", "BlueRayser", "Shelmet67", "Rozerov", "tonicsense", "seejhae", "funkimunki123", "Izrul", "RegularInsanity", "enderbot65", "AyaDrevisOwO", "Gh0stdr4g0n17", "CrabRangooon", "aaronguner3", "Crayolavirus", "DerplingDev", "Rafael200pro", "Sir_Avocato", "Sirandrew123", "shatterwing", "Mekurushi", "Mankario", "Asparagusus", "t0srn", "M7MD_4e", "sleepyheadTM", "Nexe0nn", "Mandingduck", "DuoDuel84", "A_person42", "Menolakit", "Shaderius", "ad4mst", "FinnW", "xxAero", "Fireball5559", "WoodsyBread", "JBONA", "_Yazid_", "Methenoobjk", "tr1ssys", "CaptainJack", "DoctorPicklepuss", "Ki_Link", "SAMUNAR", "Flame_922", "oyasumiforever", "SwastikGoomber", "WillowWV", "Zruah", "EmberKitsune", "bixyfroot", "darrynn", "xJasmineDragonx", "Logginq_", "zDasi", "davidlenardson", "Keima_Masuda", "Hellpaladin", "Glirdo", "R2fy2", "Aykou", "connormnstr", "Veeyu", "OhSage", "CrimsonTheMerp", "Krystaliskk", "Duranz", "ddom", "DodoRexyWasTaken", "Piperboi2004", "Melon_Tornado", "XxjcampbellxX", "corners_", "Myst3riousEgg", "Wqffly", "Xyrxo", "za2ch", "bluerabbit05", "jade_Aqua", "Goldboy_121", "Poddkachu1998", "PhantomMars", "MMMisterEd", "AdvancedGaming_0", "ruaqt", "KiwiTheDutchiTTV", "BotMe", "Apyxee", "FurryTame", "QuerHish", "BADUNZcraft", "Pandemicland", "HaloGT1", "KillerKeef", "MrAshton_", "IcyGoneSouth", "RedactedToaster2", "Wladzikxx", "TDN1ght", "FazeNio", "Barokoksu", "Shadow_Demon_Fox", "BackStraight21", "Chaos_41", "ThunderLiger", "xJoshii", "FretfulBroom101", "NS1_DSHADOW", "CrabbyFox", "Quueb", "sapowapo", "JonnyKartofa", "Canopaint", "HisLostAngel", "CheerierBird61", "PatatasBrav", "PurplesaurusRexx", "DerpyTC", "Injuriousness", "_soul_ful_", "MasterNaofumi", "Rollergator", "thggs77", "Zxch_J", "VoidPelt", "JSilentDino", "nintendeplays", "lolgubza", "JustStasiek", "Shadowmagicka23", "Rysiu_Petarda", "Ge0El1", "King_Max10", "TheGus_Fring", "kirasukee", "Coroana", "mason24685", "TheOGJWord", "Vxll", "KenshinH", "GeoHarvest", "g2vnn", "ashler34798", "Grisdom", "Ilke8204", "bossSHREDDER", "xdg22", "Meatball545", "oscarmoon09", "Mizome", "HopeXIII", "Ciolkson", "Crankonator", "DragonCK", "P_One_Snake", "Ashorun", "Butterfinger420", "Grizzly2424", "Inconick_Max", "The_Aristocat", "Gideup", "xSirKotelx", "xx_d", "FireNinja52", "Rbomb29", "xSogax", "fireball5559", "KejsperZbuj", "DownInSmoke", "Kirbywirby77", "Haxxini", "tortorture", "dankercomet4", "WastedWanderer", "MrNoux", "Tsuniwo", "Wise_Snowy", "SlenderDensity", "Plates0", "killermmm965", "Potato______man", "CAS3YYY", "Reticol", "Dr4gontiger", "BreifSpeltWrong", "XpFaeo", "GodlyWolf64", "Mlgyevgeniygoku", "misdetora", "Snake903", "Soulhypez", "karii_", "ZeroGott", "Jontegus07", "Aidn", "Swatundercover", "ohCRTV", "dj_yeetsybot", "UwUChloeUwU", "Panosdier", "Somraoe", "Xinnex69420"];
	public static val patreonUsers as string[] = ["Kruscle", "Emsiron", "Shadow_Demon_Fox", "curleyc", "Ezekiel_Mag", "CheerierBird61", "S_naptrap"];
}

CTEventManager.register<MCPlayerLoggedInEvent>((event) => {
	val player = event.getPlayer() as MCPlayerEntity;
	val world = player.getWorld();
	val username = player.getName().getString();
	if (username in contributors_constants.devUsers) {
		world.asServerWorld().server.executeCommand('ftbquests change_progress ' + username + ' complete 6237C8565A36FFF9', true);
	}
	if (username in contributors_constants.patreonUsers) {
		world.asServerWorld().server.executeCommand('ftbquests change_progress ' + username + ' complete 035217898B130AB7', true);
	}
	if (username in contributors_constants.feedbackUsers) {
		world.asServerWorld().server.executeCommand('ftbquests change_progress ' + username + ' complete 5D6983FD863F51B3', true);
	} else {
		if (player.getPersistentData().contains("feedbackNotified"))
			return;
		player.updatePersistentData({feedbackNotified: 1});
		world.asServerWorld().server.executeCommand("tellraw " + username + ' [{"text":"Welcome to ","color":"white"},{"text":"RAD 2! ","color":"green"},{"text":"If you want to help out by providing feedback, click ","color":"white"},{"text":"here. ","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Feedback Form"}]},"clickEvent":{"action":"open_url","value":"https://bit.ly/RAD2Feedback1"}},{"text":"You can also earn a ","color":"white"},{"text":"Custom Title","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"the ","color":"white"},{"text":"Contributor","color":"gold","bold":true}]}},{"text":".","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"}]}}]', true);
	}
	
});
