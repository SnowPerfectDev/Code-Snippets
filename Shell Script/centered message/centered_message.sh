center_message() {
  termwidth=$(stty size | cut -d" " -f2)

  padding="$(printf '%0.1s' ={1..500})"
  message="$1"

  spaces_around_message=$(( (termwidth - 2 - ${#message}) / 2 ))
  spaces_between_message=$(( (termwidth - 1 - ${#message}) / 2 ))

  printf '%*.*s %s %*.*s\n' 0 "$spaces_around_message" "$padding" "$message" 0 "$spaces_between_message" "$padding"
}

# Chamada da função com a mensagem que deseja centralizar
center_message "Mensagem centralizada"
