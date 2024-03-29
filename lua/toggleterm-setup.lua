local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  size = 20,
  open_mapping = [[<leader>t]],
  hide_numbers = true,
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = false,
  persist_size = true,
  direction = "horizontal",
  close_on_exit = true,
  shell = vim.o.shell,
  -- float_opts = {
  --   border = "curved",
  --   winblend = 0,
  --   highlights = {
  --     border = "Normal",
  --     background = "Normal",
  --   },
  -- },
})


vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
