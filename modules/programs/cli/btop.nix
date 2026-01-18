{ pkgs, lib, ... }:
{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "btop" ''
      exec ${pkgs.btop-cuda}/bin/btop --config \
        ${pkgs.writeText "btop.conf" ''
          color_theme = "TTY"
          force_tty = False
          graph_symbol = "braile"
          presets = ""
          proc_colors = True
          proc_filter_kernel = True
          proc_gradient = True
          proc_reversed = True
          proc_sorting = "name"
          proc_tree = True
          rounded_corners = True
          show_gpu_info = "off"
          shown_boxes = "cpu mem net proc gpu0"
          theme_background = False
          truecolor = True
          update_ms = 500
        ''} \
      "$@"
    '')
  ];
}
