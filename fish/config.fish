if status is-interactive
    # Commands to run in interactive sessions can go here
end

set SHELL /usr/bin/fish; export SHELL
set VIMRUNTIME /usr/local/share/nvim/runtime; export VIMRUNTIME
set fish_greeting
if test -d "$HOME/.cargo"
    source "$HOME/.cargo/env.fish"
end
