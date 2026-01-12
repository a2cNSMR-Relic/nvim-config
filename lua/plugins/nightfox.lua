return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled",
        transparent = false,
        terminal_colors = true,
        dim_inactive = false,
        module_default = true,
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    })
    -- Load the colorscheme
    vim.cmd("colorscheme terafox")
  end,
}
