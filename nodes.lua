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
	groups = {snappy = 3, flora = 1, attached_node = 1,  underground_plantlife = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})

minetest.register_node("new_biomes:glowing_sand",{
               description = "Glowing Sand",
               tiles = {"default_sand.png"},
               groups = {falling_node = 1, crumbly = 1, sand = 1},
               light_source = 10,
               sounds = default.node_sound_snow_defaults(),
})

minetest.register_node("new_biomes:glowing_sandstone", {
               description = "Glowing Sandstone",
               tiles = {"default_sandstone.png"},
               groups = {crumbly = 1, cracky = 3},
               light_source = 10,
               sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("new_biomes:glowing_desert_sand",{
               description = "Glowing Desert Sand",
               tiles = {"default_desert_sand.png"},
               groups = {falling_node = 1, crumbly = 1, sand = 1},
               light_source = 10,
               sounds = default.node_sound_snow_defaults(),
})

minetest.register_node("new_biomes:glowing_desert_sandstone", {
               description = "Glowing Desert Sandstone",
               tiles = {"default_desert_sandstone.png"},
               groups = {crumbly = 1, cracky = 3},
               light_source = 10,
               sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("new_biomes:glowing_desert_stone", {
               description = "Glowing Desert Stone",
               tiles = {"default_desert_stone.png"},
               groups = {stone = 1, cracky = 3},
               drops = "new_biomes:glowing_desert_cobble",
               light_source = 10,
               sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("new_biomes:glowing_desert_cobble", {
               description = "Glowing Desert Cobblestone",
               tiles = {"default_desert_cobble.png"},
               groups = {cracky = 3, stone =2},
               light_source = 10,
               sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("new_biomes:glowing_snowblock", {
               description = "Glowing Snow  Block",
               tiles = {"default_snow.png"},
               groups = {crumbly = 3, underground_snow = 1},
               sounds = default.node_sound_snow_defaults(),
               light_source = 10,

               on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "new_biomes:gdwg" then
			minetest.set_node(pos, {name = "new_biomes:gdws"})
		end
	end,
})

minetest.register_node("new_biomes:glowing_ice", {
               description = "Glowing Ice",
               tiles = {"default_ice.png"},
               paramtype = "light",
               groups = {cracky = 3, slippery = 1},
               light_source = 10,
               sounds = default.node_sound_ice_defaults(),
})