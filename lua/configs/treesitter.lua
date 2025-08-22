local options = {
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "python",
    "rust",
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
