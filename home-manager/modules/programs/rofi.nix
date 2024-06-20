{

  home.file.".config/rofi/config.rasi".text = ''
    configuration { 

    modi: "run,drun";
    icon-theme: "Oranchelo";
    show-icons: true;
    terminal: "foot";
    drun-display-format: "{icon} {name}";
    location: 0;
    sort: true;
    disable-history: true;
    hide-scrollbar: true;
    display-drun: "   Apps ";
    display-run: "   Run ";
    display-window: " 﩯  Window";
    display-Network: " 󰤨  Network";
    sidebar-mode: true;
    kb-accept-entry: "Return,Control+Return";
    kb-row-down: "Control+j";
    kb-row-up: "Control+k";
    kb-remove-to-eol: "";
    kb-remove-char-back: "BackSpace,Shift+BackSpace,Ctrl+BackSpace";
    kb-mode-complete: "";
    kb-mode-next: "Control+l";
    kb-mode-previous: "Control+h";
    kb-accept-custom: "";
    kb-remove-word-back: "";

    }
    @import "~/.cache/wal/colors-rofi-dark.rasi"
  '';

}
