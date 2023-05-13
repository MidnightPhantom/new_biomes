minetest.register_biome({
               name = "underground_grassland",
               node_top = "new_biomes:gdwg",
               depth_top = 3,
               node_filler = "new_biomes:glowing_dirt",
               depth_filler = 5,
               node_stone = "new_biomes:glowing_dirt",
               node_dungeon = "new_biomes:glowing_dirt",
               node_dungeon_stair = "new_biomes:gdwg",
                y_max= -29000,
                y_min = -31000,
                heat_point = 47,
                humidity_point = 69,
})

minetest.register_ore({
               ore_type = "scatter",
               ore = "new_biomes:gdwg",
               wherein = {"new_biomes:glowing_dirt"},
               clust_scarcity = 3*3*3,
               clust_num_ores = 70,
               clust_size = 6,
               y_min = -31000,
               y_max = -29000,
               biomes = {"underground_grassland"},
})

minetest.register_biome({
               name = "underground_snowy_grassland",
               node_top = "new_biomes:gdws",
               depth_top = 3,
               node_filler = "new_biomes:glowing_dirt",
               depth_filler = 5,
               node_stone = "new_biomes:glowing_dirt",
               node_dungeon = "new_biomes:glowing_dirt",
               node_dungeon_stair = "new_biomes:gdws",
                y_max= -29000,
                y_min = -31000,
                heat_point = 0,
                humidity_point = 69,
})

minetest.register_decoration({
		deco_type = "simple",
		place_on = {"new_biomes:glowing_dirt"},
		sidelen = 4,
		noise_params = {
			offset = -0.004,
			scale = 10,
			spread = {x = 100, y = 100, z = 100},
			seed = 53995,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"underground_snowy_grassland"},
		y_max = -29000,
		y_min = -30910,
		decoration = "new_biomes:gdws",
		place_offset_y = 0,
		flags = "force_placement",
	})

minetest.register_ore({
               ore_type = "scatter",
               ore = "new_biomes:gdws",
               wherein = {"new_biomes:gdwg"},
               clust_scarcity = 3*3*3,
               clust_num_ores = 70,
               clust_size = 6,
               y_min = -31000,
               y_max = -29000,
               biomes = {"underground_snowy_grassland"},
})

minetest.register_decoration({
		deco_type = "simple",
		place_on = {"new_biomes:gdws"},
		sidelen = 16,
		noise_params = {
			offset = 0.8,
			scale = 2,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"underground_snowy_grassland"},
		y_max = -29000,
		y_min = -30910,
		decoration = "new_biomes:medium_pine",
		place_offset_y = 0,
		flags = "force_placement",
	})
