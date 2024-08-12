{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>fw" = "live_grep";
      "<leader>ff" = "find_files";
      "<leader>fb" = "buffers";
      "<leader>fh" = "help_tags";
      "*" = "grep_string";
      "<leader>gb" = "git_branches";
      "<leader>gc" = "git_commits";
      "<leader>gs" =  "git_status";
    };
    extensions.fzf-native = { enable = true; };
  };
}
