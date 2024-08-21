{
  keymaps = [
    # Bufferline bindings
    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = { desc = "Cycle to next buffer"; };
    }

    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = { desc = "Cycle to previous buffer"; };
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>BufferLinePickClose<cr>";
      options = { desc = "Delete buffer"; };
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>BufferLineSortByTabs<cr>";
      options = { desc = "Sort buffers by tabs"; };
    }
  ];
}
