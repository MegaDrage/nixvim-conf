{
  imports = [
    ./bufferline.nix
    ./cmp.nix
    #./copilot-chat.nix
    ./git.nix
    ./lightline.nix
    ./lsp
    ./neo-tree.nix
    ./options.nix
    ./treesitter
    ./telescope
    ./keymaps
    ./utils
  ];

  colorschemes.dracula.enable = true;

  diagnostics = { virtual_lines.only_current_line = true; };

  extraConfigVim = ''
    autocmd BufRead,BufNewFile *.pl set filetype=prolog
  '';

  extraConfigLua = "  require(\"telescope\").load_extension(\"lazygit\")\n";

  globals.mapleader = " ";
  keymaps = [
    # Lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options.desc = "LazyGit (root dir)";
    }

    # Commentary
    {
      action = "<cmd>Commentary<CR>";
      key = "<leader>ml";
    }
    {
      action = "<cmd>'<,'>Commentary<CR>";
      key = "<leader>mr";
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

    {
      # Format file
      key = "<leader>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options.desc = "Format the current buffer";
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

    {
      key = "<leader>dt";
      action = "<CMD>TroubleToggle<CR>";
      options.desc = "Toggle trouble";
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

    # ToggleTerm
    {
      mode = "n";
      key = "<leader>tf";
      action = "<cmd>ToggleTerm direction=float<cr>";
    }
    {
      mode = "n";
      key = "<leader>th";
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
    }
    {
      mode = "n";
      key = "<leader>tv";
      action = "<cmd>ToggleTerm direction=vertical size=40<cr>";
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>noh<cr>";
    }
    # Remove arrows

  ];
}
