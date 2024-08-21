{
  imports = [ ./fidget.nix ./ionide.nix ./none-ls.nix ./trouble.nix ];
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        elixirls.enable = true;
        gleam.enable = true;
        gopls.enable = true;
        kotlin-language-server.enable = true;
        nixd.enable = true;
        prolog-ls.enable = true;
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
      extraConfigLua = ''
          on_attach = function(client, bufnr)
            local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
            if client.supports_method("textDocument/formatting") then
              vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
              vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                  vim.lsp.buf.format({ async = true })  -- Асинхронное форматирование
                end,
              })
            end
          end,
      '';
    };
    rust-tools.enable = true;
  };
}
