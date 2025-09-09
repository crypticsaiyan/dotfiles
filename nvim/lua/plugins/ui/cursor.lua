return {
	"sphamba/smear-cursor.nvim",
	enabled = false,
	opts = {
		smear_between_buffers = true,

		smear_between_neighbor_lines = true,

		scroll_buffer_space = true,

		legacy_computing_symbols_support = false,

		-- Smear Effect
		-- smear_insert_mode = true,
		-- stiffness = 1,
		trailing_stiffness = 0.5,
		damping = 0.67,
		matrix_pixel_threshold = 0.1,
	},
}
