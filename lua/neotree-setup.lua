require('neo-tree').setup({
  cmd = 'Neotree',
  window = {
    position = "float"
  },
  filesystem = {
    filtered_items = {
      visible = true,
    },
  },
  init = function()
    vim.api.nvim_create_autocmd('BufEnter', {
      -- make a group to be able to delete it later
      group = vim.api.nvim_create_autogroup('NeoTreeInit', { clear = true }),
      callback = function()
        local f = vim.fn.expand('%:p')
        if vim.fn.isdirectory(f) ~= 0 then
          vim.cmd('Neotree current dir=' .. f)
          -- neo-tree is loaded now, delete the init autocmd
          vim.api.nvim_clear_autocmds { group = 'NeoTreeInit' }
        end
      end
    })
    -- keymaps
  end,
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_current',
    }
  }
})
