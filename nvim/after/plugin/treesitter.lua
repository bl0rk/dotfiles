-- require("nvim-treesitter.configs").setup {
-- 	ensure_installed = { "vim", "vimdoc", "lua", "rust" },
--
-- 	auto_install = false,
--
-- 	highlight = { enable = true },
--
-- 	indent = { enable = true }
-- }

local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" }, 
    additional_vim_regex_highlighting = true
  },
  indent = { enable = true, disable = { "yaml" } }
}

local rainbow = require("rainbow-delimiters")

vim.g.rainbow_delimiters = {
  highlight = {
    "RainbowDelimiterCyan",
    "RainbowDelimiterViolet",
    "RainbowDelimiterRed",
    "RainbowDelimiterBlue",
    "RainbowDelimiterOrange",
    "RainbowDelimiterGreen",
    "RainbowDelimiterYellow"
  }
}
