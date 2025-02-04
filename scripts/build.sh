set -euo pipefail

SRC=./qujisho.txt
BUILD_DIR="./build/"
TRIM_SRC=./build/qujisho.trim.txt
RELEASE_GENERAL=${BUILD_DIR}/qujisho-general.txt
RELEASE_WIN=${BUILD_DIR}/qujisho-windows.txt

# コメント行を取り除く。
cat $SRC | perl -wpe 's/^#.*?$//g' > $TRIM_SRC

cp $TRIM_SRC $RELEASE_GENERAL
cat $TRIM_SRC | perl -wpe 's/\n/\r\n/g' | ( printf "\xff\xfe" ; iconv -f utf-8 -t utf-16le )   > $RELEASE_WIN
