return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Fzf live grep" },
    { "<leader>ff", function() require("fzf-lua").files() end, desc = "Fzf file search" },
    { "<leader>fr", function() require("fzf-lua").lsp_references() end, desc = "Fzf references list" },
    { "<leader>fh", function() require("fzf-lua").lsp_references() end, desc = "Fzf actions list" },
  }
}
