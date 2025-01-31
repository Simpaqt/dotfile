set -g fish_greeting
if status is-interactive
    starship init fish | source
end

set -gx EDITOR nvim

zoxide init fish | source
#abbreviations
abbr -a mkdir "mkdir -p"
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

#alias
alias vi="nvim"
alias vim="nvim"
alias ani="ani-cli"
alias lg="lazygit"
alias ld="lazydocker"
alias c="clear"
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias str="sudo mount /dev/sdb3 /Storage"
alias str2="sudo mount /dev/sdb4 /Storage2"
alias gmg="sudo mount /dev/nvme0n1p1 /Gaming"

#nix alias
alias rebuild="sudo nixos-rebuild switch"
alias hms="home-manager switch"
alias update="sudo nix-channel --update && sudo nixos-rebuild switch --upgrade"
alias cleanup="sudo nix-collect-garbage"
alias rbs="sudo nixos-rebuild switch -I nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos/nixpkgs -I nixos-config=/etc/nixos/configuration.nix"


function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
