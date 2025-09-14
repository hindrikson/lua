return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Override LazyVim defaults
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "[S]earch [F]iles",
    },
    {
      "<leader>fh",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "[S]earch [H]elp",
    },
    {
      "<leader>fw",
      function()
        require("telescope.builtin").grep_string()
      end,
      desc = "[S]earch current [W]ord",
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "[S]earch by [G]rep",
    },
    {
      "<leader>fd",
      function()
        require("telescope.builtin").diagnostics()
      end,
      desc = "[S]earch [D]iagnostics",
    },
    {
      "<leader>fk",
      function()
        require("telescope.builtin").keymaps()
      end,
      desc = "[S]earch [K]eymaps",
    },
    {
      "<leader>/",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find()
      end,
      desc = "[S]earch current [B]uffer",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "[S]earch [B]uffers",
    },
    {
      "<leader>?",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "[?] Find recently opened files",
    },

    -- Custom directory searches
    {
      "<leader>dt",
      function()
        require("telescope.builtin").find_files({ cwd = "~/.dotfiles/nvim/.config/nvim" })
      end,
      desc = "Search [D]o[T]files nvim",
    },
    {
      "<leader>wi",
      function()
        require("telescope.builtin").find_files({ cwd = "~/.dotfiles/work" })
      end,
      desc = "Search [W]ork files",
    },
    {
      "<leader>pg",
      function()
        require("telescope.builtin").find_files({ cwd = "~/.dotfiles/programs" })
      end,
      desc = "Search [P]ro[G]rams",
    },
    {
      "<leader>dl",
      function()
        require("telescope.builtin").find_files({ cwd = "~/all/repos/github/deep_learning/notes" })
      end,
      desc = "Search [D]eep [L]earning notes",
    },
  },
}
