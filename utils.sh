#!/usr/bin/env bash

print_colors() {
  for i in {0..255}
  do 
    echo $(tput setaf $i)"COLOR CODE: $i"
  done 
}

mkdir_and_cd() {
  dirname="$1"
  mkdir "${dirname}" && cd "${dirname}"
}

create_executable_file() {
  filename="$1"
  echo "#!/usr/bin/env bash" > "${filename}"
  chmod +x "${filename}"
}

create_and_edit_executable_file() {
  filename="$1"
  create_executable_file "${filename}"
  vim "${filename}"
}

reload_bash() {
  source ~/.bashrc
}

alias cl="clear"

alias colors="print_colors"

alias mkdircd="mkdir_and_cd"

alias touchx="create_executable_file"

alias vimx="create_and_edit_executable_file"

alias copy="xclip -selection clipboard"

alias watch="htop"

alias down="sudo shutdown now"

alias lock="gnome-screensaver-command --lock"

alias reloadsh="reload_bash"
