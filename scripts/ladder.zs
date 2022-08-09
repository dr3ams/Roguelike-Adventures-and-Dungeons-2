import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.blocks.MCBlock;

CTEventManager.register<MCPlayerTickEvent>((event) => {
	var player = event.getPlayer() as MCPlayerEntity;
	
	if (!player.isOnLadder() || player.isSneaking() || player.isSpectator() || player.isInWater() || player.isInLava()){
		return;
	}
	
	var force = 0f;
	if (player.getRotationPitch() <= -25f){
		force = 0.5f;
	} else if (player.getRotationPitch() <= -50f){
		force = 0.6f;
	} else if (player.getRotationPitch() <= -75f){
		force = 0.7f;
	}	
	
	if (force != 0f){
		player.addVelocity(0, 0.1f * force, 0);
	}
	
});

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var player = event.player;
    var world = player.getWorld();
	var block = event.getBlockPos();
	
	if (event.getItemStack().empty && (world.getBlockState(block).block as MCBlock).isInTag(<tag:blocks:minecraft:climbable>) && "ladder" in (world.getBlockState(block).block.getRegistryName() as string)) {
		var blockType = world.getBlockState(block).block as MCBlock;
		var dir = 0;
		if (world.getBlockState(block.up()).block.matchesBlock(blockType)) {
			if (world.getBlockState(block.down()).block.matchesBlock(blockType) == false) {
				dir = 1;
			}
		}else if (world.getBlockState(block.down()).block.matchesBlock(blockType)) {
			if (world.getBlockState(block.up()).block.matchesBlock(blockType) == false) {
				dir = -1;
			}
		}
		if (dir == 0){
			return;
		}
		
		var found = false;
		var destinationLadder = block;
		var nextLadder = block;
		var nextNextLadder = block;
		
		while (found == false) {
			if (dir == 1){
				nextLadder = nextLadder.up();
				nextNextLadder = nextLadder.up();
			}else{
				nextLadder = nextLadder.down();
			}
			if (world.getBlockState(nextLadder).block.matchesBlock(blockType)) {
				if (dir == -1 || (dir == 1 && (world.getBlockState(nextNextLadder).block.matchesBlock(blockType) || world.getBlockState(nextNextLadder).block == <block:minecraft:air>))){
					destinationLadder = nextLadder;
				}
			}else{
				found = true;
				player.setPosition(destinationLadder.x + 0.5, destinationLadder.y, destinationLadder.z + 0.5);
				break;
			}
		}
		
	}
});