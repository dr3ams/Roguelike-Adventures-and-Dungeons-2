// priority: 1

onEvent('jei.subtypes', event => {
  event.useNBTKey('ars_nouveau:enchanters_sword', '2')
  event.useNBTKey('spartanweaponry:pike_wood', '2')
  event.useNBTKey('quark:ancient_tome', '0')
})

onEvent('jei.add.items', event => {
  event.add(Item.of('minecraft:dragon_egg', {}))
  event.add(Item.of('supplementaries:brass_lantern', {}))
  event.add(Item.of('supplementaries:amethyst_shard', {}))
  event.add(Item.of('supplementaries:laser_block', {}))
  event.add(Item.of('magicaljewelry:the_one_ring', {}))
  event.add(Item.of('ars_nouveau:enchanters_sword', {CustomModelData:1,display:{Name:'{"translate":"item.rad2.enchanters_hammer","italic":false}'}}))
  event.add(Item.of('spartanweaponry:pike_wood', {CustomModelData:1,display:{Name:'{"translate":"item.rad2.big_stick","italic":false,"bold":true}'}}))

})