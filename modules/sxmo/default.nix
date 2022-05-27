{config, options, lib, pkgs, ...}:

{
  imports = [ ./sxmo.nix ./swmo.nix ];
  config = lib.mkIf (config.services.xserver.desktopManager.swmo.enable || 
                     config.services.xserver.desktopManager.sxmo.enable) {
    environment.systemPackages = with pkgs; [
      libnotify
      mpv
    ];
  };
}
