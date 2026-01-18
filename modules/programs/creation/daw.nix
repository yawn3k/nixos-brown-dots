{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (pkgs.reaper.overrideAttrs (old: {
      installPhase =
        let
          # Rebuild the LD_LIBRARY_PATH list with libxml2_13 explicitly.
          newLD = pkgs.lib.makeLibraryPath [
            pkgs.curl
            pkgs.lame
            pkgs.libxml2_13
            pkgs.ffmpeg
            pkgs.vlc
            pkgs.xdotool
            pkgs.stdenv.cc.cc
          ];
        in
        ''
          runHook preInstall
          HOME="$out/share" XDG_DATA_HOME="$out/share" ./install-reaper.sh \
            --install $out/opt \
            --integrate-user-desktop
          rm $out/opt/REAPER/uninstall-reaper.sh
          wrapProgram $out/opt/REAPER/reaper \
            --prefix LD_LIBRARY_PATH : "${newLD}"
          mkdir $out/bin
          ln -s $out/opt/REAPER/reaper $out/bin/
          substituteInPlace $out/share/applications/cockos-reaper.desktop \
            --replace-fail "Exec=\"$out/opt/REAPER/reaper\"" "Exec=reaper"
          runHook postInstall
        '';
    }))
    bitwig-studio

    # Plugins
    airwindows
    cardinal
    (pkgs.lsp-plugins.overrideAttrs (old: { postInstall = ''find $out -name "*.desktop" -delete''; }))
    artyFX
    vital
    surge-XT
    dexed
    sfizz
  ];
}
