#!/bin/bash

# Nome da launcher padrão
default_launcher="de.mm20.launcher2.release"

# Iterar pelos pacotes de aplicativos de terceira parte
for package in $(pm list packages -3 | cut -d ":" -f 2); do
  # Verificar se o pacote não é da launcher padrão nem um processo do sistema
  if [ "$package" != "$default_launcher" ] && [ $(pm dump "$package" | grep -c "System:true") -eq 0 ]; then
    am force-stop $package
  fi
done
