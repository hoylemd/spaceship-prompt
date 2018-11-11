SPACESHIP_DATE_SHOW="${SPACESHIP_DATE_SHOW=false}"
SPACESHIP_DATE_PREFIX="${SPACESHIP_DATE_PREFIX=''}"
SPACESHIP_DATE_SUFFIX="${SPACESHIP_DATE_SUFFIX=@}"
SPACESHIP_DATE_FORMAT="${SPACESHIP_DATE_FORMAT=false}"
SPACESHIP_DATE_COLOR="${SPACESHIP_DATE_COLOR="red"}"

spaceship_date() {
  [[ $SPACESHIP_DATE_SHOW == false ]] && return
  spaceship::exists date || return

  local 'date_str'

  if [[ $SPACESHIP_DATE_FORMAT != false ]]; then
    date_str="${SPACESHIP_DATE_FORMAT}"
  else
    date_str="%D{%m-%d}"
  fi

  spaceship::section \
    "$SPACESHIP_DATE_COLOR" \
    "$SPACESHIP_DATE_PREFIX" \
    "$date_str" \
    "$SPACESHIP_DATE_SUFFIX"
}
