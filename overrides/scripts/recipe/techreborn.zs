import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.MetalPress;
import mods.forestry.Carpenter;
import mods.techreborn.wireMill;

var IEcircuitBoard = <immersiveengineering:material:27>;

var basicCircuit = <techreborn:part:29>;
var basicFrame = <techreborn:machine_frame>;
var refinedIronIngot = <techreborn:ingot:19>;

var copperCable = <techreborn:cable>;
var goldCable = <techreborn:cable:2>;
var insCopperCable = <techreborn:cable:5>;
var insGoldCable = <techreborn:cable:6>;


//Removal
furnace.remove(<ore:ingotRefinedIron>);
recipes.remove(<techreborn:treetap>);
recipes.remove(<techreborn:cable:*>);
recipes.remove(basicCircuit);
recipes.remove(basicFrame);

//Addition
//TODO: Add Glass Cable Recipe
AlloySmelter.addRecipe(refinedIronIngot * 8, <ore:ingotInvar> * 7, <contenttweaker:low_grade_graphite>, 200);
AlloySmelter.addRecipe(refinedIronIngot * 8, <ore:dustInvar> * 7, <contenttweaker:low_grade_graphite>, 200);


MetalPress.addRecipe(copperCable, <ore:ingotCopper>, <immersiveengineering:mold:4>, 512);

Carpenter.addRecipe(
	<techreborn:treetap>, 
	[
		[null, <ore:stickTreatedWood>, null], 
		[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <tconstruct:channel:*>], 
		[<ore:plankTreatedWood>, null, null]
	], 80);


//Insulated Cables, TODO: Use "better" rubber for maybe gold+
recipes.addShapeless(insCopperCable, [copperCable, <ore:itemRubber>, <ore:itemRubber>]); //Copper
recipes.addShapeless(insGoldCable, [goldCable, <ore:itemRubber>, <ore:itemRubber>]); //Gold

//Machine Frames
recipes.addShaped(
	basicFrame, 
	[
		[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>], 
		[insCopperCable, basicCircuit, insCopperCable], 
		[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]
	]);

//Circuits
Carpenter.addRecipe(
	basicCircuit, 
	[
		[insCopperCable, <ore:plateRefinedIron>, <ore:plateRefinedIron>], 
		[insCopperCable, IEcircuitBoard, insCopperCable]
	], 120, <liquid:redstone> * 400);