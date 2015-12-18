CODE_PATH=/home/rgirdhar/data/Work/Code/0002_Retrieval/Try/ScalableLSH/DiskE2LSH
GLOG_logtostderr=0 nice -n 10 $CODE_PATH/buildIndex.bin \
    -d /memexdata/Dataset/processed/0008_JPLWeapons2/features/CNN/pool5_bg_normed \
    -n /memexdata/Dataset/processed/0008_JPLWeapons2/lists/Images.txt \
    -s /memexdata/Dataset/processed/0008_JPLWeapons2/Search/indexes/bgImg_ITQ_256bit.index \
    -b 256 \
    -t 1 \
    -a 900 \
    --nTrain 500000
