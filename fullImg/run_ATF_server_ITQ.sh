BASE_PATH=/home/rgirdhar/data/Work/Code/0001_FeatureExtraction/ComputeFeatures/Features/CNN
CODE_PATH=/srv2/rgirdhar/Work/Code/0002_Retrieval/Try/ScalableLSH/Deploy/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${BASE_PATH}/external/caffe/build/lib/:/home/rgirdhar/data/Software/cpp/zeromq/install/lib/
GLOG_logtostderr=1 ${CODE_PATH}/computeFeatAndSearch.bin \
    -n ${CODE_PATH}/deploy.prototxt \
    -m /srv2/rgirdhar/Work/Datasets/processed/0014_CNNData/001_AlexNet/bvlc_reference_caffenet.caffemodel \
    -l pool5 \
    -i /memexdata/Dataset/processed/0008_JPLWeapons2/Search/indexes/fullImg_ITQ_256bit.index \
    -s /memexdata/Dataset/processed/0008_JPLWeapons2/features/CNN/pool5_fullImg_normed \
    --imgslist /memexdata/Dataset/processed/0008_JPLWeapons2/lists/Images.txt \
    --nPathParts -1 \
    --port-num 5566 \
    --num-output 100 \
    --nRerank 1000
# -g /srv2/rgirdhar/Work/Code/0005_ObjSegment/scripts/seg_service_scripts_2/temp-dir/result.jpg \
