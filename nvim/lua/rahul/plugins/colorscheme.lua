return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- ensure it's loaded before other plugins
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        show_end_of_buffer = false, -- shows the ~ in the end of buffer
        term_colors = true,
        dim_inactive = {
          enabled = false,
        },
        integrations = {
          -- enable integrations as needed
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          treesitter = true,
          notify = false,
          mini = false,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

