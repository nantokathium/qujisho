mkdir release
cp qujisho.txt release/qujisho-general.txt
iconv -f UTF-8 -t UTF-16LE qujisho.txt | sed 's/$/r/g' > release/qujisho-windows.txt
