{
  keymaps = [
    # Neotree
    {
      mode = "n";
      key = "<leader>nf";
      action = "<CMD>Neotree float focus<CR>";
      options.desc = "Open Neotree float";
    }
    {
      mode = "n";
      key = "<leader>ng";
      action = "<CMD>Neotree float git_status<CR>";
      options.desc = "Open Neotree float git_status";
    }
    {
      mode = "n";
      key = "<leader>nl";
      action = "<CMD>Neotree left focus<CR>";
      options.desc = "Open Neotree left focus";
    }

  ];
}
