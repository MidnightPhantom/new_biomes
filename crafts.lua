minetest.register_craft({
               output = "new_biomes:glowing_wood 4",
                recipe = {{"new_biomes:glowing_trunk", "", ""},
                                {"", "", ""},
                                {"", "", ""}
                                },
               type = shapeless,
})

minetest.register_craft({
               output = "new_biomes:glowing_aspen_wood 4",
                recipe = {{"new_biomes:aspen_trunk", "", ""},
                                {"", "", ""},
                                {"", "", ""}
                                },
              type = shapeless,
})