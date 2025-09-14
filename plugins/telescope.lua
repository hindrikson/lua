return {
  "nvim-telescope/telescope.nvim",
  keys = {
    vim.keymap.set("n", "<leader>dt", function()
      require("telescope.builtin").find_files({ cwd = "~/.dotfiles/nvim/.config/nvim" })
    end, {
      desc = "Search [D]o[T]files nvim",
    }),

    vim.keymap.set("n", "<leader>wi", function()
      require("telescope.builtin").find_files({ cwd = "~/.dotfiles/work" })
    end, {
      desc = "Search [W]ork files",
    }),

    vim.keymap.set("n", "<leader>pg", function()
      require("telescope.builtin").find_files({ cwd = "~/.dotfiles/programs" })
    end, {
      desc = "Search [P]ro[G]rams",
    }),
  },
}
