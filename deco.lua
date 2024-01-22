minetest.register_decoration({
		deco_type = "simple",
		place_on = {"new_biomes:gdws"},
		sidelen = 16,
                                fill_ratio = 0.01,
		biomes = {"underground_snowy_grassland"},
		y_max = -29000,
		y_min = -30910,
		decoration = "new_biomes:medium_pine",
		place_offset = 0,
		flags = "all_floors, force_placement",
})

minetest.register_decoration({
		deco_type = "simple",
		place_on = {"new_biomes:gdwg"},
		sidelen = 16,
                                fill_ratio = 0.01,
		biomes = {"underground_grassland"},
		y_max = -29000,
		y_min = -30910,
		decoration = "new_biomes:bush_1",
		place_offset = 0,
		flags = "all_floors, force_placement",
})

--Trees

minetest.register_decoration({
		name = "glowing_apple_tree",
		deco_type = "schematic",
		place_on = {"new_biomes:gdwg"},
		sidelen = 16,
		fill_ratio = 0.05,
                                place_offset = 0.002,
		biomes = {"underground_deciduous_forest"},
		y_max = -29000,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z, force_placement, all_floors",
		rotation = "random",
	})

--Decorations

minetest.register_decoration({
		name = "underground_coal_pyramid",
		deco_type = "schematic",
		place_on = {"new_biomes:glowing_sand"},
		sidelen = 16,
                                fill_ratio = 0.01,
	                place_offset = -1,
		biomes = {"underground_sandstone_desert"},
		y_max = -29500,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/coal_oredec.mts",
		flags = "place_center_x, place_center_z, all_floors, force_placement",
})

minetest.register_decoration({
		name = "underground_gold_pillars",
		deco_type = "schematic",
		place_on = {"new_biomes:glowing_desert_sand"},
		sidelen = 16,
                                fill_ratio = 0.01,
	                place_offset = -1,
		biomes = {"underground_desert"},
		y_max = -29500,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/gold_oredec.mts",
		flags = "place_center_x, place_center_z, all_floors, force_placement",
})

minetest.register_decoration({
		name = "underground_diamond_pillars",
		deco_type = "schematic",
		place_on = {"new_biomes:glowing_snowblock"},
		sidelen = 16,
                                fill_ratio = 0.01,
	                place_offset = -1,
		biomes = {"underground_glacier"},
		y_max = -29500,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/diamond_oredec.mts",
		flags = "place_center_x, place_center_z, all_floors, force_placement",
})

minetest.register_decoration({
		name = "underground_mese_pillars",
		deco_type = "schematic",
		place_on = {"new_biomes:gpwm", "new_biomes:gpws"},
		sidelen = 16,
                fill_ratio = 0.01,
	        place_offset = -1,
		biomes = {"underground_tundra_with_permafrost"},
		y_max = -29500,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/mese_oredec.mts",
		flags = "place_center_x, place_center_z, all_floors, force_placement",
})

minetest.register_decoration({
		name = "underground_copper_piles",
		deco_type = "schematic",
		place_on = {"new_biomes:glowing_silver_sand"},
		sidelen = 16,
                fill_ratio = 0.01,
	        place_offset = -1,
		biomes = {"underground_cold_desert"},
		y_max = -29500,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/copper_oredec.mts",
		flags = "place_center_x, place_center_z, all_floors, force_placement",
})

minetest.register_decoration({
		name = "underground_tin_piles",
		deco_type = "schematic",
		place_on = {"new_biomes:gdwg"},
		sidelen = 16,
                fill_ratio = 0.01,
	        place_offset = -1,
		biomes = {"underground_grassland"},
		y_max = -29500,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/tin_oredec.mts",
		flags = "place_center_x, place_center_z, all_floors, force_placement",
})

minetest.register_decoration({
		name = "underground_iron_piles",
		deco_type = "schematic",
		place_on = {"new_biomes:gdws"},
		sidelen = 16,
                fill_ratio = 0.01,
	        place_offset = -1,
		biomes = {"underground_snowy_grassland"},
		y_max = -29500,
		y_min = -30900,
		schematic = minetest.get_modpath("new_biomes") .. "/schematics/iron_oredec.mts",
		flags = "place_center_x, place_center_z, all_floors, force_placement",
})
