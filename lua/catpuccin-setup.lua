require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  show_end_of_buffer = false,
  integrations = {
    cmp = true,
    treesitter = true,
    harpoon = true,
    mason = true,
    telescope = {
      enabled = true,
      style = "nvchad"
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
      inlay_hints = {
        background = true,
      },
    },
    which_key = true,
  }
})

vim.cmd.colorscheme "catppuccin"
