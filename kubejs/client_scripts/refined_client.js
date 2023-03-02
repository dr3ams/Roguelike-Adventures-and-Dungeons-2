// priority: 0

console.info('Hello, World! (You will see this line every time client resources reload)')

onEvent('jei.hide.items', event => {
	event.hide('#refinedstorage:network_transmitter')
	event.hide('#refinedstorage:network_receiver')
	event.hide('#refinedstorage:relay')
	event.hide('#refinedstorage:detector')
	event.hide('#refinedstorage:crafter')
	event.hide('#refinedstorage:crafter_manager')
	event.hide('#refinedstorage:crafting_monitor')
	event.hide('refinedstorage:pattern')
	event.hide('refinedstorage:portable_grid')
	event.hide('refinedstorage:creative_portable_grid')
	event.hide('refinedstorage:crafting_upgrade')
	event.hide('refinedstorage:fortune_3_upgrade')
	event.hide('refinedstorage:fortune_2_upgrade')
	event.hide('refinedstorage:fortune_1_upgrade')
	event.hide('refinedstorage:silk_touch_upgrade')
	event.hide('refinedstorage:constructor')
	event.hide('refinedstorage:destructor')
	event.hide('refinedstorage:wireless_crafting_monitor')
	event.hide('refinedstorage:creative_wireless_crafting_monitor')
	event.hide('#refinedstorage:pattern_grid')
})

onEvent('item.tooltip', tooltip => {
	tooltip.add('#refinedstorage:controller', 'Dumbed-down with no power requirment and autocrafting removed.')
	tooltip.add('refinedstorage:1k_storage_part', 'Rumored to be found hidden in old ruins of ancient civilizations.')
})