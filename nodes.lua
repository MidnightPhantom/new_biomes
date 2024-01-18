minetest.register_node("new_biomes:glowing_leaves", {
               description = "Glowing Apple Tree Leaves",
               drawtype = "allfaces_optional",
               waving = 1,
               tiles = {"default_leaves.png"},
               special_tiles = {"default_leaves_simple.png"},
               paramtype = "light",
               is_ground_content = false,
               groups = {leafdecay = 1,leaves = 1, snappy = 3, glowing_leaves = 1},
               drop = {
                              max_items = 1,
                              items = {
                                             {
                                                items = {"default:sapling"},
                                                rarity = 10,
                                             },
                                             {
                                                 items = {"new_biomes:glowing_leaves"},
                                              }
                                           }
               },
              sounds = default.node_sound_leaves_defaults(),
              light_source = 10,
              after_place_node = after_place_leaves,
})

minetest.register_node("new_biomes:glowing_aspen_leaves", {
               description = "Glowing Aspen Tree Leaves",
               drawtype = "allfaces_optional",
               waving = 1,
               tiles = {"default_aspen_leaves.png"},
               paramtype = "light",
               is_ground_content = false,
               groups = {leafdecay = 1,leaves = 1, snappy = 3, glowing_leaves = 1},
               drop = {
                              max_items = 1,
                              items = {
                                             {
                                                items = {"default:aspen_sapling"},
                                                rarity = 10,
                                             },
                                             {
                                                 items = {"new_biomes:glowing_aspen_leaves"},
                                              }
                                           }
               },
              sounds = default.node_sound_leaves_defaults(),
              light_source = 10,
              after_place_node = after_place_leaves,
})

minetest.register_node("new_biomes:glowing_trunk", {
               description = "Glowing Apple Tree Trunk",
               tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
               paramtype2 = "facedir",
               is_ground_content = false,
               groups = {choppy = 2, oddly_breakable_by_hand = 1, tree = 1, glowing_tree = 1},
               sounds = default.node_sound_wood_defaults(),
               on_place = minetest.rotate_node,
               light_source = 10,
})

minetest.register_node("new_biomes:aspen_trunk", {
	description = "Glowing Aspen Tree",
	tiles = {"default_aspen_tree_top.png", "default_aspen_tree_top.png","default_aspen_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults(),
                light_source = 10,
	on_place = minetest.rotate_node
})

minetest.register_node("new_biomes:glowing_wood", {
	description = "Glowing Apple Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
                light_source = 10,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("new_biomes:glowing_aspen_wood", {
	description = "Glowing Aspen Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_aspen_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
                light_source = 10,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("new_biomes:glowing_dirt",{
    description = "Glowing dirt",
    tiles = {"default_dirt.png"},
    groups = {crumbly = 3, soil = 1, barren_to_fertile=1},
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
               sounds = default.node_sound_sand_defaults(),
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

minetest.register_node("new_biomes:glowing_silver_sand",{
               description = "Glowing Silver Sand",
               tiles = {"default_silver_sand.png"},
               groups = {falling_node = 1, crumbly = 1, sand = 1},
               light_source = 10,
               sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("new_biomes:glowing_silver_sandstone", {
               description = "Glowing Silver Sandstone",
               tiles = {"default_silver_sandstone.png"},
               groups = {crumbly = 1, cracky = 3},
               light_source = 10,
               sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("new_biomes:glowing_permafrost",{
                description = "Glowing Permafrost",
                tiles = {"default_permafrost.png"},
                groups = {cracky = 2, unbreakable_by_hand=1},
                light_source = 10,
                sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("new_biomes:gpws", {
	description = "Glowing Permafrost with Stones",
	tiles = {"default_permafrost.png^default_stones.png",
		"default_permafrost.png",
		"default_permafrost.png^default_stones_side.png"},
	groups = {cracky = 3},
                light_source = 10,
	sounds = default.node_sound_gravel_defaults(),
})

minetest.register_node("new_biomes:gpwm", {
	description = "Glowing Permafrost with Moss",
	tiles = {"default_moss.png", "default_permafrost.png",
		{name = "default_permafrost.png^default_moss_side.png",
			tileable_vertical = false}},
	groups = {cracky = 3},
                light_source = 10,
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
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
