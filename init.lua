-- Disable netrw (recommended for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable 24-bit color
vim.opt.termguicolors = true

-- Sync with system clipboard
vim.opt.clipboard = "unnamedplus"

-- Allow cursor to move across lines
vim.opt.whichwrap:append("h,l,<,>,[,]")

-- Window navigation keymaps
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

require("config.lazy")

-- Auto-open nvim-tree on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("nvim-tree.api").tree.open()
  end,
})

-- Auto-switch to English input when leaving insert/command mode
vim.api.nvim_create_autocmd({ "InsertLeave", "CmdlineLeave" }, {
  callback = function()
    vim.fn.system('im-select com.apple.keylayout.ABC')
  end,
})

-- Cursor Line and Column
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2a2a" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#2a2a2a" })

vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
  callback = function()
    vim.opt_local.cursorline = true
    vim.opt_local.cursorcolumn = true
  end,
})

vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  callback = function()
    vim.opt_local.cursorline = false
    vim.opt_local.cursorcolumn = false
  end,
})

