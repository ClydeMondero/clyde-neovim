require('neo-tree').setup({
  cmd = 'Neotree',
  window = {
    position = "left",
    width = 40
  },
  filesystem = {
    filtered_items = {
      visible = true,
    },
  },
  init = function()
    vim.api.nvim_create_autocmd('BufEnter', {
      group = vim.api.nvim_create_autogroup('NeoTreeInit', { clear = true }),
      callback = function()
        local f = vim.fn.expand('%:p')
        if vim.fn.isdirectory(f) ~= 0 then
          vim.cmd('Neotree current dir=' .. f)
          vim.api.nvim_clear_autocmds { group = 'NeoTreeInit' }
        end
      end
    })
  end,
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_current',
    }
  }
})
