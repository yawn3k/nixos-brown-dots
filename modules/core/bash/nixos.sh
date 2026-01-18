# NixOS specific aliases for bash shell

n() {
    if [ -z "$1" ]; then
    echo -e "Usage: n {conf|build|update|clear|another_action}"
    echo -e "Please provide a subcommand."
    return 1 # Exit the function with an error status
  fi
  if [ -z "$FLAKE_DIR" ]; then
    echo -e "Error: FLAKE_DIR is not set." >&2
    return 1
  fi
  if [ ! -d "$FLAKE_DIR" ]; then
    echo -e "Error: Flake directory not found at '$FLAKE_DIR'" >&2
    echo -e "Please ensure FLAKE_DIR is set correctly and points to an accessible directory." >&2
    return 1
  fi

  case "$1" in
    dir)
      cd $FLAKE_DIR
    ;;
    build)
      echo -e "\e[33m\e[1mRUNNING: \e[39mnixos-rebuild switch --flake $FLAKE_DIR --impure\e[0m"
      sudo nixos-rebuild switch --flake $FLAKE_DIR --impure
    ;;
    update)
      echo -e "\e[33m\e[1mRUNNING: \e[39mnix flake update --flake $FLAKE_DIR\e[0m"
      nix flake update --flake $FLAKE_DIR
    ;;
    clear)
      echo -e "\e[33m\e[1mStarting system cleanup...\e[0m"
      echo -e "\e[33m\e[1mRUNNING: \e[39msudo nix-collect-garbage -d\e[0m"
      sudo nix-collect-garbage -d
      echo -e "\e[33m\e[1mRUNNING: \e[39mnix store optimise\e[0m"
      sudo nix store optimise
      echo -e "\e[33m\e[1mRUNNING: \e[39msudo journalctl --vacuum-size=10M\e[0m"
      sudo journalctl --vacuum-size=10M
      echo -e "System cleanup finished."
    ;;
    which)
      for cmd_name in "$@"; do
        local cmd_path
        cmd_path=$(which "$cmd_name" 2>/dev/null) # Suppress 'which' errors
        # cmd_path=$(which "$cmd_name") # No error suppression
        if [ -n "$cmd_path" ] && [ -e "$cmd_path" ]; then
          ls -l "$cmd_path"
        fi
      done
    ;;
    *)
      return 1 # Exit the function with an error status
    ;;
  esac
}
