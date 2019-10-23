# set the prompt parameter for git
set -g __fish_color_blue -o blue
set -g __fish_color_green -o green
set -g __fish_color_red -o red
set -g __fish_git_prompt_char_cleanstate "✔"
set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_dirtystate "✚"
set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_stateseparator \U0020 # \Ue725
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""
set -g __fish_git_prompt_color $__fish_prompt_normal
set -g __fish_git_prompt_color_branch $__fish_prompt_normal
set -g __fish_git_prompt_color_cleanstate green
set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_untrackedfiles $__fish_prompt_normal
set -g __fish_git_prompt_hide_untrackedfiles 1
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_showupstream "informative"

function fish_prompt --description 'Write out the prompt'

    set -l last_stat $status
    set -l promptcolor $__fish_color_green
    set -l pathcolor $__fish_color_blue
    set -l promptcolor_root $__fish_color_red

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    # set the color for the status depending on the value
    set __fish_color_status (set_color -o green)
    if test $last_stat -gt 0
        set __fish_color_status (set_color -o red)
    end

    switch "$USER"

        case root toor

            # if not set -q __fish_prompt_cwd
            #     if set -q fish_color_cwd_root
            #         set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            #     else
            #         set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            #     end
            # end
            #
            # printf '%s@%s: %s%s%s # ' $USER (prompt_hostname) "$__fish_prompt_cwd" "$PWD" "$__fish_prompt_normal"
            
            set_color $promptcolor_root
            printf '%s' (whoami)
            printf '@'
            printf '%s' (hostname | cut -d . -f 1)
            set_color normal
            printf ':'

            set_color $pathcolor
            # if current dir is not writable, display it in red
            if not [ -w (pwd) ]
                set_color -o red
            end
            printf '%s' (pwd)
            
            set_color normal
            # printf '%s' (__fish_git_prompt)

            if not test $last_stat -eq 0
                set_color $fish_color_error
            end
            printf ' (%s)' $last_stat
            set_color normal

            # printf '\f\r\UE0B1 '
            printf '\f\r# '


        case '*'

            set_color $promptcolor
            printf '%s' (whoami)
            printf '@'
            printf '%s' (hostname|cut -d . -f 1)
            set_color normal
            printf ':'

            set_color $pathcolor
            # if current dir is not writable, display it in red
            if not [ -w (pwd) ]
                set_color -o red
            end
            printf '%s' (pwd)
            
            set_color normal
            printf '%s' (__fish_git_prompt)

            if not test $last_stat -eq 0
                set_color $fish_color_error
            end
            printf ' (%s)' $last_stat
            set_color normal

            # printf '\f\r\UE0B1 '
            printf '\f\r$ '


            # if not set -q __fish_prompt_cwd
#                 set -g __fish_prompt_cwd (set_color $fish_color_cwd)
#             end

            # printf '[%s] %s%s@%s %s%s %s(%s)%s \f\r> ' (date "+%H:%M:%S") "$__fish_color_blue" $USER (prompt_hostname) "$__fish_prompt_cwd" "$PWD" "$__fish_color_status" "$stat" "$__fish_prompt_normal"
            # printf '%s%s@%s%s: %s%s %s(%s)%s $ ' "$__fish_color_blue" $USER (prompt_hostname) "$__fish_prompt_normal" "$__fish_prompt_cwd" "$PWD" "$__fish_color_status" "$stat" "$__fish_prompt_normal"

    end
end
