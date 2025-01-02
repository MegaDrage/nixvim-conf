{ pkgs, ... }:
let languages = import ./languages.nix;
in {
  plugins = {
    treesitter = {
      enable = true;
      autoLoad = true;
      nixGrammars = true;
      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;
      settings = {
        indent.enable = true;
        highlight = {
          enable = true;
          # additional_vim_regex_highlighting = true;
        };
        incremental_selection = {
          enable = true;
          keymaps = {
            init_selection = false;
            node_decremental = "grm";
            node_incremental = "grn";
            scope_incremental = "grc";
          };
        };
      };
    };
    treesitter-context = {
      enable = true;
      autoLoad = true;
      settings = { line_numbers = true; };
    };
    rainbow-delimiters.enable = true;
  };
}
