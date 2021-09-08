// Removal

recipes.remove(<arcanearchives:radiant_resonator>);

var aluBrassIngot = <tconstruct:ingots:5>;

// Addition

recipes.addShaped(
	<arcanearchives:radiant_resonator>, 
	[
		[aluBrassIngot, <minecraft:iron_bars>, aluBrassIngot],
		[<botania:livingwood>, <minecraft:water_bucket>, <botania:livingwood>], 
		[<botania:livingwood>, null, <botania:livingwood>]
	]);
