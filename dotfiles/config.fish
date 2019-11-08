set -x PATH ~/.local/bin $PATH
set -x PATH ~/.cargo/bin $PATH

set -x DISPLAY :0
set -x EDITOR nano

set -x PYENV_ROOT "$HOME/.local/opt/pyenv"
set -x ANDROID_HOME ~/.local/opt/android-sdk

# set tab width
tabs -4
set -x PAGER less -x 4

set -x MANPATH (env MANPATH= manpath)

status --is-interactive; and source (pyenv init - | psub)

set -x PIJUL_CONFIG_DIR ~/.config/pijul

set -x FFSEND_HOST https://send.lambda.dance
set -x FFSEND_FORCE

register-python-argcomplete --shell fish pipx | .

source ~/.config/fish/keys.fish

set -x fish_prompt_git_status_deleted 𝙭

# why it uses ~/.local/pipx by default is beyond me
set -x PIPX_HOME ~/.local/share/pipx

function _is_first_login_session
	test (w -h $USER | wc -l) -eq 1
end

# start x if this is the first login session
if status --is-login; and _is_first_login_session
	startx; end
