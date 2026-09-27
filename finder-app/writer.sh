set -e

writefile="$1"
writestr="$2"

if [ "$writefile" = "" ] || [ "$writestr" = "" ]; then
    exit 1
fi

mkdir -p "$(dirname "$writefile")"
touch "$writefile"

echo "$writestr" | tee "$writefile"