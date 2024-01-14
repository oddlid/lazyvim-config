return {
  -- add telescope-fzf-native
  -- add custom find function
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    keys = {
      {
        "<leader>fC",
        function()
          require("telescope.builtin").git_files({
            git_command = { "git", "diff", "--name-only", "--diff-filter=d", "HEAD^" },
          })
        end,
        desc = "Find in Commit",
      },
      {
        "<leader>fF",
        function()
          require("telescope.builtin").git_files({
            git_command = { "git", "ls-files", "--", ":!:vendor/*" },
          })
        end,
        desc = "Find Files (exclude vendor/)",
      },
    },
  },
}
