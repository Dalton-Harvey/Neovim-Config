return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,
      background = {
        light = "latte",
        dark = "mocha",
      },
      custom_highlights = function(colors)
          return{
            AlphaHeader = {fg = colors.mauve},
          }
      end,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}

