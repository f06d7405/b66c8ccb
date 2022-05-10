# Distinguish between root and normal user
if [ "$USER" = "root" ]; then PCOL=3; else PCOL=11; fi

# Error status
local err_code="%(?..%F{15}%K{1}[ERROR %?]%k%f)"

# Format directory
prompt_dir() {
  local sub="s/^$(echo $HOME | sed "s/\//\\\\\//g")/~/"
  local shortpath="$(echo $(pwd) | sed $sub)"
  if [[ "$shortpath" != "~" ]]; then
    echo -n "${shortpath%/*}/%F{3}${shortpath##*/}%f"
  else
    echo -n "%F{3}$shortpath%f"
  fi
}

# Icons
dir_icon() {
  echo -ne "\ue5ff" #
}

clock_icon() {
local h="$(date +"%I")"
case $h in

  00 | 12)
    echo -ne '\ue381' # 
    ;;

  01)
    echo -ne '\ue382' # 
    ;;

  02)
    echo -ne '\ue383' # 
    ;;

  03)
    echo -ne '\ue384' # 
    ;;

  04)
    echo -ne '\ue385' # 
    ;;

  05)
    echo -ne '\ue386' # 
    ;;

  06)
    echo -ne '\ue387' # 
    ;;

  07)
    echo -ne '\ue388' # 
    ;;

  08)
    echo -ne '\ue389' # 
    ;;

  09)
    echo -ne '\ue38a' # 
    ;;

  10)
    echo -ne '\ue38b' # 
    ;;

  11)
    echo -ne '\ue38c' # 
    ;;

  *)
    echo -ne "NA"
    ;;
esac
}

PRTMP0=$'\e[3m'
PRTMP1='%F{15}%n@%F{11}%m'
PRTMP2=$'\e[0m'
PRTMP3='  %F{11}$(dir_icon)%F{15} $(prompt_dir) $(git_prompt_info)
%F{$PCOL} %# %f'

PROMPT=$PRTMP0$PRTMP1$PRTMP2$PRTMP3

RPS1='${err_code} %F{08} $(clock_icon) %T %f'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{15}%f "
ZSH_THEME_GIT_PROMPT_SUFFIX="  %f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{1}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{3}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{2}"
