SUDO=""

if [[ $(command -v sudo 2>/dev/null) ]]; then
    echo "sudo is found"
    SUDO="sudo "
fi
POSITIONAL=()
verbose=FALSE
key=$1
while [[ $# -gt 0 ]]
do
    case $key in
    -v|--verbose)
    verbose=TRUE
    shift
    ;;
    *)
    shift
    POSITIONAL+=("$1")
    esac
    echo "verbose: ${verbose}"
done


if [[ $(command -v dnf 2>/dev/null) ]]; then
    echo "Install dependencies for CentOS 8..."
    ${SUDO} dnf install -y bison clang-devel cmake elfutils flex gcc-c++ llvm-devel luajit luajit-devel ncurses-devel python3-devel python2-devel 
    ${SUDO} dnf --enablerepo=PowerTools install -y elfutils-libelf-devel-static
    echo "Done."
fi 

