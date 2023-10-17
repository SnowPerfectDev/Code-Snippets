# Nome da launcher padrão
default_launcher="com.teslacoilsw.launcher"

# Verificar se é superusuário e obter privilégios se necessário
if [ "$(id -u)" != "0" ]; then
  echo "Você não é superusuário. Execute o script como superusuário."
  exit 1
fi

# Iterar pelos pacotes de aplicativos de terceira parte
for package in $(pm list packages -3 | cut -d ":" -f 2); do
  if [ "$package" != "$default_launcher" ]; then
    am force-stop $package
  fi
done
