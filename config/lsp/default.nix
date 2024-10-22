{ pkgs, ... }: {
  imports = [ ./fidget.nix ./ionide.nix ./none-ls.nix ./trouble.nix ];
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        jdtls.enable = true;
        clangd.enable = true;
        elixirls.enable = true;
        gleam.enable = true;
        gopls.enable = true;
        kotlin_language_server.enable = true;
        nixd.enable = true;
        ruff_lsp.enable = true;
        nil_ls.enable = true;
        marksman.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    rust-tools.enable = true;
  };
}
