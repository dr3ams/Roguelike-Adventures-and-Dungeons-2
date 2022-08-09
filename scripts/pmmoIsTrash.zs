for allItems in game.items {
	allItems.anyDamage().modifyTooltip((stack, tooltip, isAdvanced) => {
		if (stack.empty || tooltip.length == 0) {
			return;
		}
		var index = tooltip.length;
		var removingTags = true;
		// print("editing tooltip for: " + allItems.registryName.toString());
		while (removingTags) {
			while (index-- > 0) {
				var line = tooltip[index];
				// print("#" + index as string + ": " + line.getString());
				if ((allItems.getDefinition().getTags().length > 0 && line.getStringTruncated(1) == "#") || line.getStringTruncated(((" Hardness ").length as int)) == " Hardness ") {
					// print("removing #" + index as string);
					tooltip.remove(tooltip[(index as int)]);
					removingTags = true;
					break;
				}
				if (index == 0) {
					removingTags = false;
					break;
				}
			}
		}
	});
}