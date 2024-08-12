let
  languages = import ./languages.nix;
in {
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      nixvimInjections = true;
      settings = {
        indent.enable = true;
        ensure_installed = languages;
          highlight = {
            enable = true;
            additional_vim_regex_highlighting = true;
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
      settings = { max_lines = 2; };
    };
    rainbow-delimiters.enable = true;
  };
}
