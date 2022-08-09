import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent;
import crafttweaker.api.event.entity.living.MCLivingAttackEvent;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class arsPMMO_constants {
	public static var created as bool = false;
	public static var failSpellbookText = "You are not skilled enough to use ";
	public static var failCastingText = "You are not skilled enough to cast this spell!";
	public static var printConsole = 1; //0 send to player, 1 send to log, 2 disable entirely
	public static var spellTools = {
		<item:ars_nouveau:novice_spell_book> : {"magic" : 5},
		<item:ars_nouveau:apprentice_spell_book> : {"magic" : 15},
		<item:ars_nouveau:archmage_spell_book> : {"magic" : 25},
		<item:ars_nouveau:enchanters_mirror> : {"magic" : 20},
		<item:ars_nouveau:wand> : {"magic" : 0},
		<item:arsarsenal:source_steel_axe> : {"magic" : 0},
		<item:arsarsenal:source_steel_pickaxe> : {"magic" : 0},
		<item:ars_nouveau:spell_bow> : {"magic" : 0},
		<item:ars_nouveau:enchanters_sword> : {"magic" : 0},
		<item:ars_nouveau:caster_tome> : {"magic" : 5}
	};
	public static var glyphRequirements = {
		"accelerate" : {"magic" : 10},
		"invisibility" : {"magic" : 15},
		"exchange" : {"magic" : 30, "mining" : 30, "excavation" : 30, "woodcutting" : 30},
		"break" : {"magic" : 20, "mining" : 30, "excavation" : 30, "woodcutting" : 30},
		"blink" : {"magic" : 10},
		"haste" : {"magic" : 15},
		"ender_inventory" : {"magic" : 15},
		"gravity" : {"magic" : 10},
		"wither" : {"magic" : 15}
	};
	public static var pmmoSkills = ["magic", "mining", "excavation", "woodcutting"] as string[];
		//creates scoreboards for each skill
		//pmmo 'level_up_command' needs commands to update scoreboard
}

public function log(input as string, player as MCPlayerEntity, forceConsole as bool) as void {
	if (arsPMMO_constants.printConsole == 1 || forceConsole) {
		print(input);
	} else if (arsPMMO_constants.printConsole == 0) {
		player.sendMessage(input);
		return;
	}
}

public function getSpellRecipe(itemStack as IItemStack, player as MCPlayerEntity) as List<string> {
	var nbtTag = itemStack.getOrCreate as MapData;
	var spellRaw = "";
	if (nbtTag.getAt("mode") != null) {
		var mode = nbtTag.getAt("mode").getString();
		log("Mode: " + mode, player, false);
		if (mode != "0") {
			spellRaw = nbtTag.getAt(mode + "recipe").getString();
			log("Spell: " + spellRaw, player, false);
		}
	} else {
		var slotRaw = nbtTag.getAt("current_slot");
		if (slotRaw != null) {
			var slot = slotRaw.getString();
			log("Slot: " + slot, player, false);
			spellRaw = nbtTag.getAt("spell_" + slot).getString();
			log("Spell: " + spellRaw, player, false);
		}
	}
	
	if (spellRaw == "") {
		log("Spell is empty!", player, false);
		return new List<string>();
	} else {
		var spellRecipeString = (spellRaw[1 .. (spellRaw.length-1)] as string).trim().split(",");
		var spellRecipe = new List<string>();
		for glyph in spellRecipeString {
			if (glyph != " " && glyph != "") {
				log(" > '" + glyph.trim() + "'", player, false);
				spellRecipe.add(glyph.trim());
			}
		}
		return spellRecipe;
	}
	return new List<string>();
}

public function checkToolRequirements(itemStack as IItemStack, player as MCPlayerEntity) as int {
	var world = player.getWorld();
	var itemCaster = false;
	for stack in arsPMMO_constants.spellTools {
		if (stack.matches(itemStack.getDefinition().getDefaultInstance())) {
			itemCaster = true;
			log("SpellCaster: " + (stack as string), player, false);
			for skillName, skillReq in arsPMMO_constants.spellTools[itemStack.getDefinition().getDefaultInstance()] {
				log("-- " + skillName + ": " + skillReq as string, player, false);
				if (!world.isRemote()) {
					if (skillReq > world.asServerWorld().server.executeCommand('scoreboard players get ' + player.getName().getString() + ' pmmo_' + skillName, true)){
						log("  > Fail", player, false);
						return 0;
						break;
					}
				}
			}
		}
	}
	if (itemCaster) {
		return 1;
	} else {
		return 2;
	}
}

public function checkGlyphRequirements(spellRecipe as List<string>, player as MCPlayerEntity) as bool {
	var world = player.getWorld();
	for glyphName, glyphReq in arsPMMO_constants.glyphRequirements{
		if glyphName in spellRecipe {
			log("Checking req for: " + glyphName + ":", player, false);
			for skillName, skillReq in glyphReq {
				log(" " + skillName + " > " + skillReq, player, false);
				if (skillReq > world.asServerWorld().server.executeCommand('scoreboard players get ' + player.getName().getString() + ' pmmo_' + skillName, true)) {
					log("  > Fail", player, false);
					return false;
				} else {
					log("  > Pass", player, false);
				}
			}
		}
	}
	return true;
}

CTEventManager.register<MCRightClickItemEvent>((event) => {
    var player = event.player;
	if (player.isCreative()) {
		return;
	}
    var world = player.getWorld();
	if ((world.isRemote())) {
		return;
	}
	var itemStack = event.getItemStack();
	if (<item:ars_nouveau:enchanters_sword>.matches(itemStack.getDefinition().getDefaultInstance())) {
		return;
	}
	var bookRequirements = checkToolRequirements(itemStack, player);
	
	if (bookRequirements == 0) {
		player.sendStatusMessage("§c" + arsPMMO_constants.failSpellbookText + itemStack.displayName + "!", true);
		log("tool req not met", player, false);
		event.cancel();
	} else if (bookRequirements == 1) {
		var spellRecipe = getSpellRecipe(itemStack, player);
		if (spellRecipe.length == 0) {
			log("Invalid spell!", player, false);
		} else {
			var doSpell = checkGlyphRequirements(spellRecipe, player);
			if (!doSpell) {
				log("spell req not met", player, false);
				player.sendStatusMessage("§c" + arsPMMO_constants.failCastingText, true);
				event.cancel();
			} else {
				log("Allowing spell for " + player.getName(), player, false);
			}
			
		}
	} else if (bookRequirements == 2) {
		// log("invalid item", player, false);
	}
});


CTEventManager.register<MCLivingAttackEvent>((event) => {
		var source = event.source.getTrueSource();
		var victim = event.getEntityLiving();
		if (source is MCPlayerEntity) {
			var player = source as MCPlayerEntity;
			if (player.isCreative()) {
				return;
			}
			var world = player.getWorld();
			// log(player.getName().getString() + " attacks " + victim.getName(), player, false);
			if ((world.isRemote())) {
				// log("exiting client thread", player, false);
				return;
			}
			var itemStack = player.getHeldItemMainhand();
			var doHit = checkToolRequirements(itemStack, player);
			if (doHit == 0) {
				log("tool req not met", player, false);
			} else if (doHit == 1) {
				var spellRecipe = getSpellRecipe(itemStack, player);
				if (spellRecipe.length == 0) {
					log("Invalid spell!", player, false);
				} else {
					var doSpell = checkGlyphRequirements(spellRecipe, player);
					if (!doSpell) {
						log("spell req not met", player, false);
						player.sendStatusMessage("§c" + arsPMMO_constants.failCastingText, true);
						event.cancel();
					} else {
						log("Allowing spell for " + player.getName().getString(), player, false);
					}
				}
			} else if (doHit == 2) {
				// log("invalid item", player, false);
			}
			
			
		}
});


CTEventManager.register<MCPlayerLoggedInEvent>((event) => {
	if (!arsPMMO_constants.created) {
		arsPMMO_constants.created = true;
		var player = event.player;
		var world = player.getWorld();
		log("Created scoreboards", player, false);
		for skill in arsPMMO_constants.pmmoSkills {
			world.asServerWorld().server.executeCommand('scoreboard objectives add pmmo_' + skill + ' dummy "' + skill + '"', true);
		}
	}
});