{
  imports = [
    ./bufferline.nix
    ./cmp.nix
    ./lightline.nix
    ./lsp
    ./neo-tree.nix
    ./options.nix
    ./treesitter
    ./telescope
    ./keymaps
    ./utils
  ];

  colorschemes = {
    cyberdream = {
      enable = true;
      settings = {
        transparent = true;
        hide_fillchars = true;
        borderless_telescope = true;
        italic_comments = true;
        terminal_colors = true;
        extensions = { telescope = true; notify = true; };
        # theme = {
          # variant = "default";
          # saturation = 1;
        # };
      };
    };
  };

  # colorschemes.base16 = {
  #   enable = true;
  #   colorscheme = "dracula";
  #   # colorscheme = {
  #   #   base00 = "#${config.stylix.generated.palette.base00}";
  #   #   base01 = "#${config.stylix.generated.palette.base01}";
  #   #   base02 = "#${config.stylix.generated.palette.base02}";
  #   #   base03 = "#${config.stylix.generated.palette.base03}";
  #   #   base04 = "#${config.stylix.generated.palette.base04}";
  #   #   base05 = "#${config.stylix.generated.palette.base05}";
  #   #   base06 = "#${config.stylix.generated.palette.base06}";
  #   #   base07 = "#${config.stylix.generated.palette.base07}";
  #   #   base08 = "#${config.stylix.generated.palette.base08}";
  #   #   base09 = "#${config.stylix.generated.palette.base09}";
  #   #   base0A = "#${config.stylix.generated.palette.base0A}";
  #   #   base0B = "#${config.stylix.generated.palette.base0B}";
  #   #   base0C = "#${config.stylix.generated.palette.base0C}";
  #   #   base0D = "#${config.stylix.generated.palette.base0D}";
  #   #   base0E = "#${config.stylix.generated.palette.base0E}";
  #   #   base0F = "#${config.stylix.generated.palette.base0F}";
  #   # };
  #   settings = {
  #     telescope = true;
  #     telescope_borders = true;
  #   };
  # };

  diagnostics = { virtual_lines.only_current_line = true; };

  extraConfigVim = ''
    autocmd BufRead,BufNewFile *.pl set filetype=prolog
  '';

  extraConfigLua = "  require(\"telescope\").load_extension(\"lazygit\")\n";

  globals = {
    mapleader = " ";
    maplocalleader = " ";
    have_nerd_font = true;
  };

  keymaps = [
    # Lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options.desc = "LazyGit (root dir)";
    }

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
  ];
}
