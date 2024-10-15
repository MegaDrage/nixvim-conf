{ pkgs, ... }: {
  imports = [ ./fidget.nix ./ionide.nix ./none-ls.nix ./trouble.nix ];
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        jdt-language-server.enable = true;
        clangd.enable = true;
        elixirls.enable = true;
        gleam.enable = true;
        gopls.enable = true;
        kotlin-language-server.enable = true;
        nixd.enable = true;
        ruff-lsp.enable = true;
        nil-ls.enable = true;
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
