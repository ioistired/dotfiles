set -x PATH ~/.local/bin $PATH
set -x PATH ~/.cargo/bin $PATH

if type -q go
	set -x GOPATH ~/code/language/go
	set -x PATH $GOPATH/bin $PATH
end

set -x DISPLAY :0
set -x EDITOR nano

# set tab width
if status --is-interactive
	tabs -4
end

set -x PAGER less -x 4

set -x PIJUL_CONFIG_DIR ~/.config/pijul
set -x NVM_DIR ~/.local/share/nvm

set -x FFSEND_HOST https://send.lambda.dance
set -x FFSEND_FORCE

set -x DOTNET_CLI_TELEMETRY_OPTOUT 1

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

source ~/.config/fish/config.local.fish
