umask 0027  # u=rwx,g=rx,o=

set -x PATH ~/.local/bin $PATH

set -x RUSTUP_HOME $HOME/.local/share/rustup
set -x CARGO_HOME $HOME/.local/share/cargo
set -x PATH $CARGO_HOME/bin $PATH

set -x DOTNET_ROOT /usr/share/dotnet
set -x PATH $DOTNET_ROOT $PATH

set -x ASDF_DATA_DIR $HOME/.local/share/asdf

if type -q pyenv
	set -x PYENV_ROOT $HOME/.local/share/pyenv
	fish_add_path $PYENV_ROOT/bin

	status is-login && pyenv init --path | source
	pyenv init - | source
end

if type -q go
	set -x GOPATH ~/code/language/go
	set -x PATH $GOPATH/bin $PATH
end

# set tab width
if status --is-interactive
	tabs -4
end

set -x PAGER less -x 4
if type -q nano
	set -x EDITOR nano
end

set -x PIJUL_CONFIG_DIR ~/.config/pijul
set -x NVM_DIR ~/.local/share/nvm

set -x GEM_HOME ~/.local/lib/gem

set -x DOTNET_CLI_TELEMETRY_OPTOUT 1
set -x NUXT_TELEMETRY_DISABLED 1

set -x NO_COLOR

set -x JISHAKU_NO_DM_TRACEBACK 1

# i don't really use pipenv, so suppress the messages warning that pipenv is being used in a virtualenv
set -x PIPENV_VERBOSITY -1

source ~/.config/fish/keys.fish

set -x fish_prompt_git_status_deleted 𝙭
set -x fish_prompt_pwd_dir_length 0  # don't abbreviate cwd in prompt

# why it uses ~/.local/pipx by default is beyond me
set -x PIPX_HOME ~/.local/share/pipx

for f in ~/.config/fish/functions.local/*.fish
	source $f
end

if test (uname -o) = 'Android'
	alias df 'df -H'
else
	alias df 'df --si'
end

if type -q xclip
	abbr -a -- xcl 'xclip -selection clipboard'
end

source ~/.config/fish/config.local.fish
