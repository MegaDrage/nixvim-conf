{
  plugins.gitlab = {
    enable = true;
    settings = {
      code_suggestions = {
        auto_filetypes =
          [ "ruby" "typescript" "typescriptreact" "sql" "sh" "javascript" ];
      };
      statuslines.enable = true;
    };
  };
}
