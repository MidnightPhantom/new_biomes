minetest.register_node("new_biomes:glowing_dirt",{
    description = "Glowing dirt",
    tiles = {"default_dirt.png"},
    groups = {crumbly = 3, soil = 1},
    sounds= default.node_sound_dirt_defaults(),
    light_source = 10,
})

minetest.register_node("new_biomes:gdwg", {
	description = "Glowing Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_glow_dirt_type = 1},
	drop = "new_biomes:glowing_dirt",
                light_source = 10,
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("new_biomes:gdws", {
	description = "Glowing Dirt with Snow",
	tiles = {"default_snow.png", "default_dirt.png",
		{name = "default_dirt.png^default_snow_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_glow_dirt_type = 1, snowy = 1},
	drop = "new_biomes:glowing_dirt",
                light_source = 10,
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.2},
	}),
})

minetest.register_node("new_biomes:medium_pine", {
	description = "Underground wide pine",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.8,
	tiles = {"new_biomes_pine.png"},
	inventory_image = "new_biomes_pine.png",
	wield_image = "new_biomes_pine.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
                light_source = 10,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, underground_plantlife = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})