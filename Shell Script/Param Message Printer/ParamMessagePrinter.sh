a () {
for param; do
 case $param in
  -a)echo "Here is the argument for your parameter: ${@: 2}";;
  -b)echo "Here is the argument for your parameter: ${@: 2}";;
 esac
shift
done
}
