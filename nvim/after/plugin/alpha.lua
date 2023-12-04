--local status_ok, alpha = pcall(require, "alpha")
--if not status_ok then
--  return
--end

local alpha = require("alpha")

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "           =+++++#######",
  "           ++++++########",
  "      ##   ++++++########=  =*",
  "      ####+++++++#############",
  "      *###+++++++############",
  "        +*++++++=  ########+",
  "     =++++++++       #########*+",
  "     +                       +=",
  "    +-   *@%-+@@    @@*%##@   +-",
  "   ==    @     @@##@@     *@   +-",
  "   +     @     @*  =@     @#    +",
  "  +       @@@@@      @@@@@       +",
  " =                            =- +",
  " +======:                   :+===+-=",
  "   +++= +++++++++++++++++++++  =+-",
  "        ====================="
}

dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", "<cmd>ene<CR>"),
  dashboard.button("SPC f", "󰈞  Find file"),
  dashboard.button("SPC g", "󰊄  Live grep"),
  dashboard.button("c", "  Configuration", "<cmd>cd ~/.config/nvim/ <CR>"),
  dashboard.button("r", " Repos", "<cmd>cd ~/Repos<CR>"),
  dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
  dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
}

alpha.setup(dashboard.opts)
