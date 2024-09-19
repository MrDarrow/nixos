{ config, lib, ...}:

{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        modules-left = ["hyprland/workspaces" "hyprland/language"  "hyprland/window"];
        modules-center = ["clock" "custom/weather"];
        modules-right = ["tray" "pulseaudio" "custom/mem" "backlight" "battery"];

        "hyprland/workspaces" = {
          disable-scroll = true;
        };

        "hyprland/language" = {
          format-en = "US";
          format-es= "ES";
    	    min-length = 5;
    	    tooltip = false;
        };
   
        "hyprland/window" = { 
          max-length = 50;
        };
    
        "clock" = {
            tooltip-format = "<tt><big>(calendar)</big></tt>";
            format = "{:%a; %d %b, %I:%M %p}";
        };
    
        "pulseaudio" = {
            reverse-scrolling = 1;
            format = "{volume}% {icon} {format_source}";
            format-bluetooth = "{volume}% {icon} {format_source}";
            format-bluetooth-muted = " {icon} {format_source}";
            format-muted = " {format_source}";
            format-source = "{volume}% ";
            format-source-muted = "";
            format-icons = {
                headphone = "";
                hands-free = "";
                headset = "";
                phone = "";
                portable = "";
                car = "";
                default = ["" "" ""];
            };
            on-click = "foot pulsemixer";
        };
    
        "custom/mem" = {
            format = "{} ";
            interval = 3;
            exec = "free -h | awk '/Mem:/{printf $3}'";
            tooltip = false;
        };
    
        "cpu" = {
          interval = 2;
          format = "{usage}% ";
          min-length = 6;
        };
    
        "backlight" = {
            device = "intel_backlight";
            format = "{percent}% {icon}";
            format-icons = [""];
            min-length = 7;
        };
    
        battery = {
            states = {
                warning = 30;
                critical = 15;
            };
            format = "{capacity}% {icon}";
            format-charging = "{capacity}% ";
            format-plugged = "{capacity}% ";
            format-alt = "{time} {icon}";
            format-icons = ["" "" "" "" "" "" "" "" "" ""];
        };
    
        tray = {
            spacing = 10;
        };
    
      };
    };
      
    style = ''
      * {
          border: none;
          border-radius: 0;
          min-height: 0;
          font-size: 15px;
          font-family: JetBrains Mono;
      }
      
      window#waybar {
          background: #111a23;
          transition-property: background-color; 
          transition-duration: 0.1s;
      }
      window#waybar.hidden {
          opacity: 0.1;
          background-color: transparent;
      }

      #workspaces,      
      #workspaces button {
        box-shadow: inset 0 -3px transparent;
        padding-right: 6px;
        padding-left: 6px;
        transition: all 0.1s cubic-bezier(0.55, -0.68, 0.48, 1.68);
      }
      #workspaces button.empty {
      color: #111a23;
      }
      #workspaces button.active {
          background: #b4c7d8;
          color: #111a23;
      }
      
      #language {
          padding-left: 6px;
          padding-right: 6px;
          transition: none;
          background: transparent;
          color: #e1e0e1;
      }

      #clock,       
      #pulseaudio,       
      #pulseaudio.muted,      
      #custom-mem, 
      #cpu, 
      #temperature {
      background-color: transparent;
      }
      
      #temperature.critical {
          background-color: #eb4d4b;
      }
      
      #backlight,
      #battery {       
      background-color: transparent;
      color: #e1e0e1;
      }
      #battery.charging {
          background-color: #26A65B;
      }
      
      #battery.warning:not(.charging) {
          background-color: #ffbe61;
          color: black;
      }
      
      #battery.critical:not(.charging) {
          background-color: #f53c3c;
          animation-name: blink;
          animation-duration: 0.5s;
          animation-timing-function: linear;
          animation-iteration-count: infinite;
          animation-direction: alternate;
      }
      
      #tray {
      color: #111a23;
      background: #b4c7d8;
      }
    '';
      };
}

