import mods.forestry.Carpenter;
import mods.forestry.Fermenter;
import mods.forestry.Squeezer;

var bronzePlate = <thermalfoundation:material:355>;

var manaPearl = <botania:manaresource:1>;
var manaDiamond = <botania:manaresource:2>;
var manaString = <botania:manaresource:16>;
var manaPowder = <botania:manaresource:23>;

#Removal
recipes.remove(<forestry:carpenter>);

#addition
recipes.addShaped(
	<forestry:carpenter>, 
	[
		[bronzePlate, <minecraft:glass>, bronzePlate],
		[bronzePlate, <forestry:sturdy_machine>, bronzePlate], 
		[bronzePlate, <minecraft:glass>, bronzePlate]
	]);
//More expensive recipe for pre-gear usage




// Carpenter recipes

// Fermenter recipes
Fermenter.addRecipe(
	<liquid:low_grade_methanol>, <minecraft:reeds>, <liquid:creosote>, 1000, 0.5);

Fermenter.addRecipe(
	<liquid:mana_sap>, <minecraft:wheat>, <liquid:dilute_mana>, 144, 0.5);

// Squeezer Recipes
Squeezer.addRecipe(<liquid:dilute_mana> * 144, [manaPearl], 30);
Squeezer.addRecipe(<liquid:dilute_mana> * 144, [manaDiamond], 30);
Squeezer.addRecipe(<liquid:dilute_mana> * 72, [manaPowder], 30);
Squeezer.addRecipe(<liquid:dilute_mana> * 36, [manaString], 30);
Squeezer.addRecipe(<liquid:redstone> * 50, [<minecraft:redstone>], 30);