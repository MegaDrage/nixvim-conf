{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        mode = "buffers";
        indicator = {
          style = "icon";
          icon = "  ";
        };
        diagnostics = "nvim_lsp";
        offsets = [{
          fileType = "neo-tree";
          text = "File Explorer";
          separator = true;
          padding = 1;
        }];
      };
    };
  };
}
