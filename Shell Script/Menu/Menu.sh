
#!/bin/bash
# Alternativa simples ao ao menu Select.


# OPÇÕES que vão aparecer no menu
MENU=(
    'Firefox'
    'Chromium'
    'Leafpad'
    'Gedit'
)

# Iniciando
while true; do
   i=0 # volte para 0 :)
   # Imprima o menu
   for menu in "${MENU[@]}"; do
      echo "[$i]  ${menu}"
      let i++
   done
   # Leia a opção ;)
   read -ep $'\n> ' menu_choice
   # USE O CASE/IF aqui.
   printf "Você selecionou: ${MENU[$menu_choice]}\n\n"
done
