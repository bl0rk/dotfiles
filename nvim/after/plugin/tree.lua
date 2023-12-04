local function tree_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return {desc="nvim-tree: " .. desc, buffer=bufnr, noremap=true, silent=true, nowait=true}
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set("n", "<C-t>", api.tree.change_root_to_node, opts("CD"))
end

require("nvim-tree").setup {
  on_attach = tree_on_attach,
  sync_root_with_cwd = true,
  actions = {
    change_dir = {
      enable = true,
      global = true
    }
  }
}
