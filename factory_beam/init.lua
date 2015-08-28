--Code : GPL v3
--Textures : CC-BY-SA 4.0

minetest.register_node('factory_beam:steel_beam', {
	description = 'steel beam',
	tiles = {'steel_beam.png'},
	inventory_image = 'steel_beam_inv.png',
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	is_ground_content = false,
	climbable = false,
	walkable = true,
	groups = {cracky=1,level=1}, --need a steel pickaxe (or more) to break
	sounds = default.node_sound_stone_defaults(),
		node_box = {
		type = 'fixed',
		fixed = {
				{-0.5, 0.5, 0.5, -0.4, -0.5, -0.5},
				{-0.4, 0.5, 0.1, 0.4, -0.5, -0.1},
				{0.5, 0.5, 0.5, 0.4, -0.5, -0.5},
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
				{-0.5, 0.5, 0.5, -0.4, -0.5, -0.5},
				{-0.4, 0.5, 0.1, 0.4, -0.5, -0.1},
				{0.5, 0.5, 0.5, 0.4, -0.5, -0.5},
		}
	},
	on_place = minetest.rotate_node,
})

minetest.register_node('factory_beam:rusty_beam', {
	description = 'rusty beam',
	tiles = {'rusty_beam.png'},
	inventory_image = 'rusty_beam_inv.png',
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	is_ground_content = false,
	climbable = false,
	walkable = true,
	groups = {cracky=1,level=1}, --need a steel pickaxe (or more) to break
	sounds = default.node_sound_stone_defaults(),
		node_box = {
		type = 'fixed',
		fixed = {
				{-0.5, 0.5, 0.5, -0.4, -0.5, -0.5},
				{-0.4, 0.5, 0.1, 0.4, -0.5, -0.1},
				{0.5, 0.5, 0.5, 0.4, -0.5, -0.5},
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
				{-0.5, 0.5, 0.5, -0.4, -0.5, -0.5},
				{-0.4, 0.5, 0.1, 0.4, -0.5, -0.1},
				{0.5, 0.5, 0.5, 0.4, -0.5, -0.5},
		}
	},
	on_place = minetest.rotate_node,
})

minetest.register_craft({
	output = 'factory_beam:rusty_beam 6',
	recipe = {
		{'default:iron_lump', 'default:iron_lump', 'default:iron_lump'},
		{'', 'default:iron_lump', ''},
		{'default:iron_lump', 'default:iron_lump', 'default:iron_lump'},
	}
})

minetest.register_craft({
	output = 'factory_beam:steel_beam 6',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
--recycling with 1 ingot lost
minetest.register_craft({
	type = 'cooking',
	cooktime = 5,
	output = 'default:steel_ingot 1',
	recipe = 'factory_beam:rusty_beam',	
})

minetest.register_craft({
	type = 'cooking',
	cooktime = 5,
	output = 'default:steel_ingot 1',
	recipe = 'factory_beam:steel_beam',	
})
