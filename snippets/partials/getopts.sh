# Parse options
while getopts ":" OPT
do
  case $OPT in
    "") FOO=$OPTARG ;;
  esac
done
shift $((OPTIND - 1))

