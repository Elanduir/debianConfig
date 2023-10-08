if status is-interactive
    	# Commands to run in interactive sessions can go here
	set fish_greeting "  So Long, and Thanks for All the Fish"
end

fish_add_path .local/share/JetBrains/Toolbox/apps/
fish_add_path /usr/lib/jvm/default/bin/
alias vim=nvim
thefuck --alias | source
alias w='nitrogen --head=0 --random /home/elanduir/Pictures/ultraWide/ --set-zoom-fill &>/dev/null && nitrogen --head=1 --random /home/elanduir/Pictures/ultraWide/ --set-zoom-fill &>/dev/null && nitrogen --head=2 --random /home/elanduir/Pictures/ultraWide/ --set-zoom-fill &>/dev/null'
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/elanduir/.ghcup/bin $PATH # ghcup-env
