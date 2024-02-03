--Change language to English
vim.api.nvim_exec('language en_US', true)

require 'autocmd'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure plugins ]]
require 'lazy-plugins'

-- [[ Setting options ]]
require 'options'

-- [[ Keymaps ]]
require 'keymaps'

-- [[ Configure Telescope ]]
-- (fuzzy finder)
require 'telescope-setup'

-- [[ Configure Treesitter ]]
-- (syntax parser for highlighting)
require 'treesitter-setup'

-- [[Configure barbar]]
-- (tab management)
require 'barbar-setup'

-- [[ Configure Harpoon ]]
-- (blazing fast navigation)
--[[ require 'harpoon-setup' ]]

-- [[ Configure Undo Tree ]]
-- (visualize undo)
require 'undotree-setup'

-- [[ Configure Toggle Term]]
-- ((terminal))
require 'toggleterm-setup'

-- [[ Configure LSP ]]
-- (Language Server Protocol)
require 'lsp-setup'

-- [[ Configure nvim-cmp ]]
-- (completion)
require 'cmp-setup'

-- [[ Configure Ufo ]]
-- (fold)
require 'ufo-setup'

-- [[ Configure catpuccin]]
-- (colorscheme)
require 'catpuccin-setup'

-- [[ Configure neotree ]]
-- (filebrowser)
require 'neotree-setup'

-- [[ Configure markdownpreview ]]
-- (markdown preview)
require 'markdownpreview-setup'

-- [[ Configure lualine]]
-- (status line)
require 'lualine-setup'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
