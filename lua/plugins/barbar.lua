return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    icons = {
      button = "",
      separator = { left = "▎", right = "" },
      inactive = { separator = { left = "▎", right = "" } },
    },
  },
  version = "^1.0.0",
  config = function(_, opts)
    require("barbar").setup(opts)

    -- Keymaps
    local map = vim.keymap.set
    local opts_silent = { noremap = true, silent = true }

    -- Move to previous/next
    map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts_silent)
    map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts_silent)

    -- Re-order to previous/next
    map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts_silent)
    map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts_silent)

    -- Goto buffer in position...
    map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts_silent)
    map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts_silent)
    map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts_silent)
    map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts_silent)
    map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts_silent)
    map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts_silent)
    map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts_silent)
    map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts_silent)
    map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts_silent)
    map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts_silent)

    -- Pin/unpin buffer
    map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts_silent)

    -- Close buffer
    map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts_silent)

    -- Magic buffer-picking mode
    map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts_silent)

    -- Sort automatically by...
    map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts_silent)
    map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts_silent)
    map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts_silent)
    map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts_silent)
  end,
}
