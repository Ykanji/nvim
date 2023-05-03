require('lualine').setup{
	option = {
		icons_enabled = true
	},
	sections = {
		lualine_a = {
			{
				'filename',
				path = 1,
			}
		}
	}
}
