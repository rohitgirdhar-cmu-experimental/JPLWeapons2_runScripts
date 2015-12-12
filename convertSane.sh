
# ultimately not used, as the unreadable images were actually crappy
i=0
while read line; do
  i=$(($i+1))
  echo $i
  dir=`echo $i / 1000 | bc`
  mkdir -p /memexdata/Dataset/processed/0008_JPLWeapons2/corpus_clean/$dir/
  convert /memexdata/Dataset/processed/0008_JPLWeapons2/corpus/$line /memexdata/Dataset/processed/0008_JPLWeapons2/corpus_clean/$dir/$i.jpg
done < /memexdata/Dataset/processed/0008_JPLWeapons2/lists/Images.txt
