minetest.register_decoration({
		deco_type = "simple",
		place_on = {"new_biomes:gdws"},
		sidelen = 16,
                                fill_ratio = 0.2,
		biomes = {"underground_snowy_grassland"},
		y_max = -29000,
		y_min = -30910,
		decoration = "new_biomes:medium_pine",
		place_offset = 0,
		flags = "all_floors, force_placement",
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

