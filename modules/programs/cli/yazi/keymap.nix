{
  mgr.keymap = [
    { on = ";"; run = "shell --interactive --block"; }
    { on = "<Esc>"; run = "escape"; }
    { on = "<Up>"; run = "arrow -1"; }
    { on = "<Down>"; run = "arrow 1"; }
    { on = "<Left>"; run = "leave"; }
    { on = "<Right>"; run = "enter"; }
    { on = "<i>"; run = "arrow -1"; }
    { on = "<k>"; run = "arrow 1"; }
    { on = "<j>"; run = "leave"; }
    { on = "<l>"; run = "enter"; }
    { on = "<q>"; run = "close"; }
    { on = "<e>"; run = "leave"; }
    { on = "<C-a>"; run = "toggle_all --state=on"; }
    { on = "<S-a>"; run = "toggle_all"; }
    { on = "<C-c>"; run = "yank"; }
    { on = "<y>"; run = "yank"; }
    { on = "<C-x>"; run = "yank --cut"; }
    { on = "<t>"; run = "shell 'printf \"%s\n\" $YAZI_SELECTED_FILES | wl-copy' --confirm"; }
    { on = "<p>"; run = "paste"; }
    { on = "<C-v>"; run = "paste"; }
    { on = "<x>"; run = "remove --permanently"; }
    { on = "<a>"; run = "create"; }
    { on = "<C-r>"; run = "rename --cursor=before_ext"; }
    { on = "<C-f>"; run = "plugin fzf"; }
    { on = "<f>"; run = "find --insensitive"; }
    { on = "<s>"; run = "toggle"; }
    { on = "<S-s>"; run = "visual_mode"; }
    { on = "<Tab>"; run = "spot"; }
    { on = "<C-t>"; run = "tab_create --current"; }
    { on = "<A-q>"; run = "tab_switch -1 --relative"; }
    { on = "<A-e>"; run = "tab_switch 1 --relative"; }
    { on = "<o>"; run = "open"; desc = "Open selected files"; }
    { on = "<S-o>"; run = "open --interactive"; desc = "Open selected files interactively"; }
  ];
  tasks.keymap = [
    { on = "<Esc>"; run = "close"; }
    { on = "<C-q>"; run = "close"; }
    { on = "<i>"; run = "arrow -1"; }
    { on = "<k>"; run = "arrow 1"; }
    { on = "<Up>"; run = "arrow -1"; }
    { on = "<Down>"; run = "arrow 1"; }
    { on = "<Enter>"; run = "inspect"; }
    { on = "x"; run = "cancel"; }
    { on = "?"; run = "help"; }
  ];
  spot.keymap = [
    { on = "<Esc>"; run = "close"; }
    { on = "<C-q>"; run = "close"; }
    { on = "<Tab>"; run = "close"; }
    { on = "<i>"; run = "arrow -1"; }
    { on = "<k>"; run = "arrow 1"; }
    { on = "<j>"; run = "swipe -1"; }
    { on = "<l>"; run = "swipe 1"; }
    { on = "<Up>";run = "arrow -1"; }
    { on = "<Down>"; run = "arrow 1"; }
    { on = "<Left>"; run = "swipe -1"; }
    { on = "<Right>"; run = "swipe 1"; }
    { on = "<C-c>"; run = "copy cell"; }
    { on = "?"; run = "help"; }
  ];
  pick.keymap = [
    { on = "<Esc>"; run = "close"; }
    { on = "<C-q>"; run = "close"; }
    { on = "<Enter>"; run = "close --submit"; }
    { on = "<i>"; run = "arrow -1"; }
    { on = "<k>"; run = "arrow 1"; }
    { on = "<Up>"; run = "arrow -1"; }
    { on = "<Down>"; run = "arrow 1"; }
    { on = "?"; run = "help"; }
  ];
  cmp.keymap = [
    { on = "<C-q>"; run = "close"; }
    { on = "<Tab>"; run = "close --submit"; }
    { on = "<Enter>"; run = [ "close --submit" "input:close --submit" ]; }
    { on = "<i>"; run = "arrow -1"; }
    { on = "<k>"; run = "arrow 1"; }
    { on = "<Up>"; run = "arrow -1"; }
    { on = "<Down>"; run = "arrow 1"; }
    { on = "?"; run = "help"; }
  ];
  help.keymap = [
    { on = "<Esc>"; run = "escape"; }
    { on = "<C-q>"; run = "close"; }
    { on = "<i>"; run = "arrow -1"; }
    { on = "<k>"; run = "arrow 1"; }
    { on = "<Up>"; run = "arrow -1"; }
    { on = "<Down>"; run = "arrow 1"; }
    { on = "f"; run = "filter"; }
  ];
}
