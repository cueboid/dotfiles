if status is-interactive
    # ime stuff
    set -x GTK_IM_MODULE fcitx5
    set -x QT_IM_MODULE fcitx5
    set -x XMODIFIERS @im=fcitx
    set -x GTK_IM_MODULE fcitx
    set -x QT_IM_MODULE fcitx
    set -x XMODIFIERS "@im=fcitx"
    set -x INPUT_METHOD fcitx
    set -x SDL_IM_MODULE fcitx
    set -x GLFW_IM_MODULE fcitx

    alias hx=helix
    set -x EDITOR hx
    set -x VISUAL hx

    set -U fish_greeting
end
