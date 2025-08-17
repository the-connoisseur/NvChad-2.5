local options = {
  ensure_installed = {
    "bash",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },

  highlight = {
    enable = true,
    uselanguagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
