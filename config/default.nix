{ config, lib, ... }: {
  imports = [
    ./bufferline.nix
    ./cmp.nix
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

  colorschemes.base16 = {
    enable = true;
    # colorscheme = "onedark";
    colorscheme = {
      base00 = "${config.lib.stylix.colors.base00}";
      base01 = "${config.lib.stylix.colors.base01}";
      base02 = "${config.lib.stylix.colors.base02}";
      base03 = "${config.lib.stylix.colors.base03}";
      base04 = "${config.lib.stylix.colors.base04}";
      base05 = "${config.lib.stylix.colors.base05}";
      base06 = "${config.lib.stylix.colors.base06}";
      base07 = "${config.lib.stylix.colors.base07}";
      base08 = "${config.lib.stylix.colors.base08}";
      base09 = "${config.lib.stylix.colors.base09}";
      base0A = "${config.lib.stylix.colors.base0A}";
      base0B = "${config.lib.stylix.colors.base0B}";
      base0C = "${config.lib.stylix.colors.base0C}";
      base0D = "${config.lib.stylix.colors.base0D}";
      base0E = "${config.lib.stylix.colors.base0E}";
      base0F = "${config.lib.stylix.colors.base0F}";
    };
    settings = {
      telescope = true;
      telescope_borders = true;
    };
  };

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
