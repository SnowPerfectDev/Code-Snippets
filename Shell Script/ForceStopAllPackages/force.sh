#!/system/bin/sh

default_package="com.termux"

for package in $(pm list packages -3 | cut -d ":" -f 2); do
  if [ "$package" != "$default_package" ]; then
   su -c am force-stop $package
  fi
done
