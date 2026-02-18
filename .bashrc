# ~/.bashrc
#


export PATH="$HOME/.fly/bin:$PATH"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1=' [\u \W]\n'
export PATH="$HOME/.config/composer/vendor/bin:$PATH"


alias c.="code ."

alias vue="npm create vue@latest"
alias daisy="npm i -D daisyui@latest"
alias tw="npm install tailwindcss @tailwindcss/vite"


# alias p="php -S localhost:8888"
alias pp="php -S localhost:8888 -t public"
alias s="php artisan serve"

am() {
  if [ $# -eq 0 ]; then
    echo "⚠️ Usage: am <type> <name> [options]"
    echo "👉 Example: am controller UserController"
    return 1
  fi

  php artisan make:"$1" "${@:2}"
}


# Alias viết tắt cho các loại hay dùng
alias mc="am controller"    # mc UserController --resource
alias mm="am model"         # mm Post -m → model + migration
alias mmgr="am migration"   # mgr create_posts_table
alias ms="am seeder"        # ms UserSeeder
alias mr="am request"       # mr StoreUserRequest
alias mres="am resource"       # mres ProjectResource
alias mmdw="am middleware"   # mmw AuthMiddleware
alias mj="am job"           # mj SendEmailJob
alias me="am event"         # me UserRegistered
alias menum="am enum"         # menum Enum\PermissionsEnum
alias ml="am listener"      # ml SendWelcomeEmail
alias mlw="am livewire"      # mlw hello-world
alias mp="am policy"        # mp PostPolicy
alias mf="am factory"       # mf PostFactory
alias mcm="am command"     # mcmm ClearCacheCommand
alias mmail="am mail"           # mmail OrderShipped
alias mt="am test"
alias mview="am view"
alias mcom="am component"

# Migrate Laravel

function mgr {
    if [ "$#" -eq 0 ]; then
        php artisan migrate
        return
    fi

    php artisan migrate:"$1" "${@:2}"
}

alias a="php artisan"

alias wfd="php artisan wayfinder:generate"

alias seed="php artisan db:seed"

alias fresh="php artisan migrate:fresh"
alias refresh='php artisan migrate:refresh'

#alias mgr='php artisan migrate'

alias mgrf='php artisan migrate:fresh'
alias mgri='php artisan migrate:install'
alias mgrrf='php artisan migrate:refresh'
alias mgrrs='php artisan migrate:reset'
alias mgrrb="php artisan migrate:rollback" # rollback
alias mgrst='php artisan migrate:status'

alias mfs="php artisan migrate:fresh --seed"


alias sqlit="sed -e 's/\(DB_.*\)/# \\1/g' -e 's/# \(DB_CONNECTION=\).*/\\1sqlite/g' -i .env"
alias lenv="cp -n .env.example .env && (grep '^APP_KEY=.\+' .env > /dev/null || artisan key:generate)"
alias laravel-setup="composer install && lenv && sqlit && artisan migrate --force --seed"

alias breeze="composer require laravel/breeze --dev"
alias breezei="php artisan breeze:install"

alias tinker="php artisan tinker"
alias clearall='php artisan cache:clear && php artisan config:clear && php artisan route:clear && php artisan view:clear'
alias opcl='php artisan optimize:clear'

alias route='php artisan route:list'     # list route
alias rlist='php artisan route:list'     # list route

alias rlev='php artisan route:list --except-vendor'     # list route

alias slink='php artisan storage:link'

alias qwork='php artisan queue:work'

alias test='php artisan test'

alias nrt="npm run test"

alias i="install"
alias n="npm"
alias r="run"
alias t="test"

alias ni="npm install"

alias nr="npm run"

alias nrw="npm run watch"
alias nrb="npm run build"
alias d="npm run dev"
alias rd="composer run dev"

alias cps='composer require'
alias ci='composer install'

alias vdpl='php artisan vendor:publish'

alias ln='laravel new'

alias pest='./vendor/bin/pest'
alias rector='./vendor/bin/rector'

alias nf="neofetch"
alias c="clear"
alias q="exit"

# git

alias g="git"

alias gs="git status"
alias gss="git status -s"

alias gl="git --no-pager log --oneline --decorate --graph --all"
alias gll="git --no-pager log"

alias gcom="git checkout main"
alias gcomt="git checkout master"

alias ga="git add ."
alias gadd="git add "
alias gc="git commit -m "

alias wip='git commit -m "wip"'

gcm() {
  if [ -z "$*" ]; then
    echo "❌ Commit message is required"
    return 1
  fi
  git commit -m "$*"
}


alias gp="git push"
alias gpf="git push origin main -f"
alias gpl="git pull"

alias co="git checkout"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias gba="git branch -a"

alias gcl="git clone "

alias grm="git remote -v"

gclc() {
    git clone "$1" && cd "$(basename "$1" .git)"
}

alias grb="git rebase -i HEAD~5"
alias grs="git reset --soft HEAD~1"


alias nah="git reset --hard && git clean -df"


sh() {
  npx shadcn@latest add "$@"
}


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

md() {
  mkdir -p "$1"
}


alias vbash='vim ~/.bashrc'
alias ubash='source ~/.bashrc'

echo -ne "\e[2 q"




export PATH=/usr/bin:$PATH
export PATH=$PATH:/home/viethoang/.npm-global/bin
