return {
  { "catppuccin/nvim", name = "catppuccin" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
  require("catppuccin").setup {
        frappe = {
            surface1 = "#100e23",
            surface2 = "#565575",
        },
        macchiato = {},
        mocha = {},
  }
}
