--
-- Function simulating grass growth and prevention for dirt to turn into glowing dirt with grass
--

minetest.register_abm({
    label = "Grass Spread",
    nodenames = {"new_biomes:glowing_dirt"},
    neighbours = {
                  "air",
                  "group:grass",
                  "default:snow",
    },
    interval = 3,
    chance = 80,
    catch_up = false,
    action = function(pos,node)
             -- Checks for low light levels or a node above
             -- Returns of ignore above
             local above = { x = pos.x, y = pos.y+1, z=pos.z}
             if(minetest.get_node_light(above) or 0) <3 then
                      return
             end      
             -- Looks for spreading dirt-type neighbours
             local p2 = minetest.find_node_near(pos, 1, "group:spreading_glow_dirt_type")
             if p2 then
                       local n3 = minetest.get_node(p2)
                       minetest.set_node(pos, {name = n3.name})    
                       return
             end
             
             --Else,any seeding nodes on top
             local name = minetest.get_node(above).name
             -- Snow check is cheapest hence first
             if name == "default:snow" then
                       minetest.set_node(pos,{name = "new_biomes:gdws"})
             elseif minetest.get_item_group(name, "grass") ~= 0 then
                       minetest.set_node(pos, {name = "new_biomes:gdwg"})
             end
     end

})

--
-- Turning glowing dirt with grass into glowing dirt
--

minetest.register_abm({
               label = "Grass Covered",
               nodenames = {"group:spreading_glow_dirt_type"},
               interval = 3,
               chance = 50,
               catch_up = false,
               action = function(pos, node)
                               local above = {x = pos.x, y = pos.y + 1, z = pos.z}
                               local name = minetest.get_node(above).name
                               local nodedef = minetest.registered_nodes[name]
                               if name ~= "ignore" and nodedef and not((nodedef.sunlight_propagates or
                                                               nodedef.paramtype == "light") and
                                                               nodedef.liquidtype == "none") then
                                                if node.name == "new_biomes:gdwg" then
                                                                 minetest.set_node(pos, {name = "new_biomes:glowing_dirt"})
                                                elseif  node.name == "new_biomes:gdws" then
                                                                 minetest.set_node(pos, {name = "new_biomes:glowing_dirt"})
                                                end  
                               end
              end
})

--
--Bonus Function to eradicate falling nodes
--
 
minetest.register_abm({
               label = "AntiFall",
               nodenames = {"default:gravel", "default:silver_sand"},
               neighbours = {
                                      "air",
                                      "group:grass",
                                      "default:snow",
                                    },
                interval = 5,
                chance = 90,
                catch_up = false,
                action = function(pos,node)
                              -- Checks for low light levels or a node above
                              -- Returns of ignore above
                              local above = { x = pos.x, y = pos.y+1, z=pos.z}
                              if(minetest.get_node_light(above) or 0) <3 then
                                 return
                              end      
                              -- Looks for barren_to_fertile neighbours
                              local p2 = minetest.find_node_near(pos, 1, "group:barren_to_fertile")
                              if p2 then
                                  local n3 = minetest.get_node(p2)
                                  minetest.set_node(pos, {name = n3.name})    
                                  return
                              end
             
                             --Else,any seeding nodes on top
                             local name = minetest.get_node(above).name
                             -- Snow check is cheapest hence first
                             if name == "default:snow" then
                                 minetest.set_node(pos,{name = "new_biomes:glowing_dirt"})
                             end
              end
})

--
-- For removing underground decorations if there is a block above them
--This function is not needed anymore but still kept

--minetest.register_abm({
              -- label = "decoration remove",
               --nodenames = {"group:underground_plantlife"},
               --interval = 2,
               --chance = 50,
               --catch_up = false,
              --action = function(pos, node)
                             -- local above = {x = pos.x , y = pos.y + 1, z = pos.z}
                              --local abovet = {x = pos.x + 1, y = pos.y + 1, z = pos.z }
                              --local abovem = {x = pos.x -1, y = pos.y + 1, z = pos.z}
                              --local abovec = {x = pos.x, y = pos.y + 1, z = pos.z + 1}
                              --local aboveb = {x = pos.x, y = pos.y + 1, z = pos.z - 1}
                              --local name = minetest.get_node(above).name
                              --local namet = minetest.get_node(abovet).name
                              --local namem = minetest.get_node(abovem).name
                              --local namec = minetest.get_node(abovec).name
                              --local nameb = minetest.get_node(aboveb).name
                              --local nodedef = minetest.registered_nodes[name]
                              --local nodedeft = minetest.registered_nodes[namet]
                              --local nodedefm = minetest.registered_nodes[namem]
                              --local nodedefc = minetest.registered_nodes[namec]
                              --local nodedefb = minetest.registered_nodes[nameb]
                              --if name ~= "ignore" and nodedef and not((nodedef.sunlight_propagates or
                                                               --nodedef.paramtype == "light") and
                                                               --nodedef.liquidtype == "none") then
                              -- if namet ~= "ignore" and nodedeft and not((nodedeft.sunlight_propagates or
                                                               --nodedeft.paramtype == "light") and
                                                               --nodedeft.liquidtype == "none") then
                                 --if namem ~= "ignore" and nodedefm and not((nodedeft.sunlight_propagates or
                                                               --nodedefm.paramtype == "light") and
                                                               --nodedefm.liquidtype == "none") then
                                   --if namec ~= "ignore" and nodedefc and not((nodedef.sunlight_propagates or
                                                               --nodedefc.paramtype == "light") and
                                                               --nodedefc.liquidtype == "none") then
                                    --if nameb ~= "ignore" and nodedefb and not((nodedeft.sunlight_propagates or
                                                               --nodedefb.paramtype == "light") and
                                                               --nodedefb.liquidtype == "none") then
                                                --if node.name == "new_biomes:medium_pine" then
                                                                 --minetest.set_node(pos, {name = "new_biomes:glowing_dirt"})
                                                --end  
                                      --end
                                    --end
                                  --end
                                --end
                               --end
              --end
--})                                            