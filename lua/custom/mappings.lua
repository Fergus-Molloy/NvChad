---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "",
    ["<C-c>"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<leader>fo"] = "",
    --["<leader>th"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
  },
  t = {
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
  },
}

M.fugitive = {
  n = {
    ["<leader>gg"] = { "<cmd>Git<cr>", "open git overview" },
  },
}

M.lspconfig = {
  n = {
    ["<leader>rn"] = {
      "<cmd>Lspsaga rename<cr>",
      "lsp saga rename",
    },
    ["<leader>ca"] = {
      "<cmd>Lspsaga code action<cr>",
      "lsp saga code action",
    },
    ["<leader>do"] = {
      "<cmd>Lspsaga show_line_diagnostics<cr>",
      "lsp saga floating diagnostic",
    },
    ["<leader>ho"] = {
      "<cmd>Lspsaga lsp_finder<cr>",
      "lsp saga hover menu",
    },
    ["<leader>pd"] = {
      "<cmd>Lspsaga peek_definition<cr>",
      "lsp saga peek definition",
    },
    ["<leader>gd"] = {
      "<cmd>Lspsaga goto_definition<cr>",
      "lsp saga peek definition",
    },
    ["K"] = {
      "<cmd>Lspsaga hover_doc<cr>",
      "lsp saga open hover docs",
    },
    ["KK"] = {
      "<cmd>Lspsaga hover_doc ++keep<cr>",
      "lsp saga pin hover docs",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
  t = {
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
}

return M
