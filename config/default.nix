{
  imports = [
    ./bufferline.nix
    ./cmp.nix
    ./copilot-chat.nix
    ./git.nix
    ./lightline.nix
    ./lsp/default.nix
    ./lsp/fidget.nix
    ./lsp/ionide.nix
    ./lsp/none-ls.nix
    ./lsp/trouble.nix
    ./neo-tree.nix
    #./options.nix
    ./treesitter
    ./utils/auto-pairs.nix
    ./utils/autosave.nix
    ./utils/blankline.nix
    ./utils/telescope.nix
    ./utils/toggleterm.nix
    ./utils/which-key.nix
    ./utils/wilder.nix
    ./utils/gitsigns.nix
    ./utils/dashboard.nix
    ./utils/autotag.nix
    ./utils/commentary.nix
    ./utils/lazygit.nix
    ./utils/markdown-preview.nix
    ./utils/noice.nix
    ./utils/todo-comments.nix
  ];

  colorschemes.dracula.enable = true;

  diagnostics = { virtual_lines.only_current_line = true; };

  extraConfigVim = ''
    autocmd BufRead,BufNewFile *.pl set filetype=prolog
  '';

  extraConfigLua = ''
    require("telescope").load_extension("lazygit")
  '';

  globals.mapleader = " ";
  keymaps = [
    # Lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options = { desc = "LazyGit (root dir)"; };
    }

    {
      action = "<cmd>Commentary<CR>";
      key = "<leader>/";
    }

    # Neotree
    {
      mode = "n";
      key = "<leader>e";
      action = "<CMD>Neotree float focus<CR>";
      options.desc = "Open Neotree float";
    }
    {
      mode = "n";
      key = "<leader>o";
      action = "<CMD>Neotree float git_status<CR>";
      options.desc = "Open Neotree float git_status";
    }
    {
      mode = "n";
      key = "<leader>E";
      action = "<CMD>Neotree left focus<CR>";
      options.desc = "Open Neotree left focus";
    }

    {
      key = "<leader>c";
      action = "+context";
    }
    {
      key = "<leader>co";
      action = "<CMD>TSContextToggle<CR>";
      options.desc = "Toggle Treesitter context";
    }
    {
      key = "<leader>ct";
      action = "<CMD>CopilotChatToggle<CR>";
      options.desc = "Toggle Copilot Chat Window";
    }
    {
      key = "<leader>cf";
      action = "<CMD>CopilotChatFix<CR>";
      options.desc = "Fix the selected code";
    }
    {
      key = "<leader>cs";
      action = "<CMD>CopilotChatStop<CR>";
      options.desc = "Stop current Copilot output";
    }
    {
      key = "<leader>cr";
      action = "<CMD>CopilotChatReview<CR>";
      options.desc = "Review the selected code";
    }
    {
      key = "<leader>ce";
      action = "<CMD>CopilotChatExplain<CR>";
      options.desc = "Give an explanation for the selected code";
    }
    {
      key = "<leader>cd";
      action = "<CMD>CopilotChatDocs<CR>";
      options.desc = "Add documentation for the selection";
    }
    {
      key = "<leader>cp";
      action = "<CMD>CopilotChatTests<CR>";
      options.desc = "Add tests for my code";
    }

    #File 

    #{
    #  mode = "n";
    #  key = "<leader>f";
    #  action = "+find/file";
    #}
    {
      # Format file
      key = "<leader>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options.desc = "Format the current buffer";
    }

    # Git    
    {
      mode = "n";
      key = "<leader>g";
      action = "+git";
    }
    {
      mode = "n";
      key = "<leader>gt";
      action = "+toggles";
    }
    {
      key = "<leader>gtb";
      action = "<CMD>Gitsigns toggle_current_line_blame<CR>";
      options.desc = "Gitsigns current line blame";
    }
    {
      key = "<leader>gtd";
      action = "<CMD>Gitsigns toggle_deleted";
      options.desc = "Gitsigns deleted";
    }
    {
      key = "<leader>gd";
      action = "<CMD>Gitsigns diffthis<CR>";
      options.desc = "Gitsigns diff this buffer";
    }
    {
      mode = "n";
      key = "<leader>gr";
      action = "+resets";
    }
    {
      key = "<leader>grh";
      action = "<CMD>Gitsigns reset_hunk<CR>";
      options.desc = "Gitsigns reset hunk";
    }
    {
      key = "<leader>grb";
      action = "<CMD>Gitsigns reset_buffer<CR>";
      options.desc = "Gitsigns reset current buffer";
    }

    # Terminal
    {
      # Escape terminal mode using ESC
      mode = "t";
      key = "<esc>";
      action = "<C-\\><C-n>";
      options.desc = "Escape terminal mode";
    }

    # Trouble 
    {
      mode = "n";
      key = "<leader>d";
      action = "+diagnostics/debug";
    }
    {
      key = "<leader>dt";
      action = "<CMD>TroubleToggle<CR>";
      options.desc = "Toggle trouble";
    }

    # Rust
    {
      mode = "n";
      key = "<leader>r";
      action = "+rust";
    }
    {
      # Start standalone rust-analyzer (fixes issues when opening files from nvim tree)
      mode = "n";
      key = "<leader>rs";
      action = "<CMD>RustStartStandaloneServerForBuffer<CR>";
      options.desc = "Start standalone rust-analyzer";
    }
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
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = { desc = "Cycle to next buffer"; };
    }

    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = { desc = "Cycle to previous buffer"; };
    }

    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = { desc = "Delete buffer"; };
    }
  ];
}
