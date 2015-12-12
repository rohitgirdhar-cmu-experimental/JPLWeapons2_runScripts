outfpath=/memexdata/Dataset/processed/0008_JPLWeapons2/lists/SegList.txt
imgslist=/memexdata/Dataset/processed/0008_JPLWeapons2/lists/Images.txt
nimgs=`wc -l $imgslist | cut -d' ' -f 1`
for ((i=1; i<=$nimgs; i++)); do
  echo $(echo "$i / 1000" | bc)/$i.jpg
done > $outfpath
