{
  plugins.gitlab = {
    enable = true;
    settings = {
      code_suggestions = {
        auto_filetypes =
          [ "ruby" "typescript" "typescriptreact" "sql" "sh" "javascript" ];
      };
      gitlab_url = "https://gitlab.makeshop.pro";
      statuslines.enable = true;
    };
  };
}
