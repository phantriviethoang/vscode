
# ~/.bashrc
#


export PATH="$HOME/.fly/bin:$PATH"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1=' [\u \W]\n'
export PATH="$HOME/.config/composer/vendor/bin:$PATH"


alias vue="npm create vue@latest"


# alias p="php -S localhost:8888"
alias s="php artisan serve"

alias a="php artisan"
alias mgt="php artisan migrate"
alias seed="php artisan db:seed"
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias clearall='php artisan cache:clear && php artisan config:clear && php artisan route:clear && php artisan view:clear'

alias test='php artisan test'
alias nrt="npm run test"


alias mgt="php artisan migrate"

alias i="install"
alias n="npm"
alias r="run"
alias t="test"

alias ni="npm install"

alias nr="npm run"

alias d="npm run dev"

alias nf="neofetch"
alias c="clear"
alias x="exit"

# git
alias gs="git status"
alias gl="git log"
alias gcom="git checkout master"
alias gaa="git add ."
alias gc="git commit -m "
alias gp="git push"
alias nah="git reset --hard && git clean -df"


alias vite="npm create vite@latest"

p() {
  if [ $# -eq 0 ]; then
    php -S localhost:8888
  else
    file="$1"
    shift
    if [ ! -f "$file" ]; then
      if [ -f "${file}.php" ]; then
        file="${file}.php"
      else
        echo "File not found: $file or ${file}.php" >&2
        return 2
      fi
    fi
    php "$file" "$@"
  fi
}

pf() {
  if [ $# -eq 0 ]; then
    echo "⚠️  Bạn phải truyền file PHP, ví dụ: pf index.php"
    return 1
  fi

  file="$1"
  shift

  if [ ! -f "$file" ]; then
    if [ -f "${file}.php" ]; then
      file="${file}.php"
    else
      echo "❌ File không tồn tại: $file hoặc ${file}.php" >&2
      return 2
    fi
  fi

  php -S localhost:8888 "$file" "$@"
}


vreact() {
    if [ -z "$1" ]; then
        echo "⚠️ Bạn phải nhập tên project, ví dụ: vreact myapp"
        return 1
    fi

    CREATE_VITE_SKIP_PROMPTS=true npm create vite@latest "$1" -- --template react

    cd "$1" || return

    npm install

    npm run dev
}


cdr() {
    if [ -z "$1" ]; then
        echo "Usage: cdr <directory>"
        return 1
    fi

    cd ~/"$1" || { echo "Directory not found: $1"; return 1; }
    npm run dev
}



vreact() {
    if [ -z "$1" ]; then
        echo "⚠️ Bạn phải nhập tên project, ví dụ: vreact myapp"
        return 1
    fi

    npm create vite@latest "$1" -- --template react

    cd "$1" || return

    npm install

    npm run dev
}


alias cb="cd .."
alias macd='f(){ mkdir -p "$1" && cd "$1"; }; f'


alias vbash='vim ~/.bashrc'
alias ubash='source ~/.bashrc'

echo -ne "\e[2 q"




export PATH=/usr/bin:$PATH
export PATH=$PATH:/home/viethoang/.npm-global/bin
