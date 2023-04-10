import crafttweaker.api.food.MCFood;

for item in game.items {
  if item.food != null && !(item in <tag:items:forge:food>)  {
    var food = item.food as MCFood;
    if food.healing >= 0 {
      <tag:items:crafttweaker:food>.add(item);
    }
  }
}