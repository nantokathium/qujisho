mkdir release
cp qujisho.txt release/qujisho-general.txt
cat qujisho.txt | perl -wpe 's/\n/\r\n/g' | iconv -f UTF-8 -t UTF-16LE qujisho.txt > release/qujisho-windows.txt
