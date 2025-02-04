mkdir release
cp qujisho.txt release/qujisho-general.txt
cat qujisho.txt | perl -wpe 's/\n/\r\n/g' | ( printf "\xff\xfe" ; iconv -f utf-8 -t utf-16le )   > release/qujisho-windows.txt
