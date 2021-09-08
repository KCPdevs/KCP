import crafttweaker.item.IItemStack;
import mods.forestry.Carpenter;
import mods.forestry.Fermenter;
import mods.forestry.Squeezer;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Blueprint;
import mods.techreborn.compressor;

var ironSheetmetal = <immersiveengineering:sheetmetal:9>;
var fluidPipe = <immersiveengineering:metal_device1:6>;
var lightEngineering = <immersiveengineering:metal_decoration0:4>;
var heavyEngineering = <immersiveengineering:metal_decoration0:5>;
var cokeBrick = <immersiveengineering:stone_decoration>;
var kilnBrick = <immersiveengineering:stone_decoration:10>;

var ironMechanical = <immersiveengineering:material:8>;
var steelMechanical = <immersiveengineering:material:9>;
var copperWire = <immersiveengineering:material:20>;
var circuitBoard = <immersiveengineering:material:27>;

var copperTube = <forestry:thermionic_tubes>;
var goldTube = <forestry:thermionic_tubes:4>;

var ironPlate = <thermalfoundation:material:32>;

// Removal
var removedRecipes = [
    fluidPipe,
    lightEngineering,
    heavyEngineering,
    cokeBrick,
    kilnBrick,
    <immersiveengineering:sheetmetal:*>
] as IItemStack[];

for recipe in removedRecipes {
    recipes.remove(recipe);
}

MetalPress.removeRecipe(copperWire);
Blueprint.removeRecipe(circuitBoard);

//Crafting Recipes


//Crusher Recipes
mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:brick_dust>, <minecraft:brick>, 2048);

//Metal Press


//Forestry Fermenter/Carpenter Recipes
Carpenter.addRecipe(
    cokeBrick * 3,
    [
        [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>],
        [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], 
        [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]
    ], 30, <liquid:mana_sap> * 500);
    
    
Carpenter.addRecipe(
    heavyEngineering * 1, 
    [
        [<ore:ingotSteel>, steelMechanical, <ore:ingotSteel>], 
        [<minecraft:piston>, <botania:manaresource:4>, <minecraft:piston>], 
        [<ore:ingotSteel>, steelMechanical, <ore:ingotSteel>]
    ], 30, <liquid:low_grade_methanol> * 250);

Carpenter.addRecipe(
	lightEngineering * 1, 
	[
		[<ore:ingotIron>, ironMechanical, <ore:ingotIron>], 
		[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
		[<ore:ingotIron>, ironMechanical, <ore:ingotIron>]
	], 30, <liquid:low_grade_methanol> * 250);
	
Carpenter.addRecipe(
	fluidPipe * 8, 
	[
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
		[null, null, null], 
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
	], 30, <liquid:low_grade_methanol> * 50);
	
	
Carpenter.addRecipe(
	kilnBrick * 2, 
	[
		[<minecraft:sand>, <contenttweaker:brick_dust>, null],
		[<contenttweaker:brick_dust>, <minecraft:sand>, null], 
		[null, null, null]
	], 30, <liquid:low_grade_methanol> * 50);
	
Carpenter.addRecipe(
	circuitBoard, 
	[
		[goldTube, copperTube, goldTube], 
		[<ore:plankTreatedWood>, <ore:plateCopper>, <ore:plankTreatedWood>], 
		[null, null, null]
	], 90, <liquid:low_grade_methanol> * 100);

//TR Compressor
compressor.addRecipe(
	ironSheetmetal, 
	ironPlate * 4, 
	200, 32);