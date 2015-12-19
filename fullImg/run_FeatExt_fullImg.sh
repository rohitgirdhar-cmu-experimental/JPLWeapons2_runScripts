CODE_PATH=/home/rgirdhar/data/Work/Code/0001_FeatureExtraction/ComputeFeatures/Features/CNN/ver2/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CODE_PATH}/../external/caffe/build/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/rgirdhar/data/Software/cpp/zeromq/install/lib
GLOG_logtostderr=0 ${CODE_PATH}/computeFeatures.bin \
    -i /memexdata/Dataset/processed/0008_JPLWeapons2/corpus/ \
    -q /memexdata/Dataset/processed/0008_JPLWeapons2/lists/Images.txt \
    -n ${CODE_PATH}/../deploy_memexgpu.prototxt \
    -m /srv2/rgirdhar/Work/Datasets/processed/0014_CNNData/001_AlexNet/bvlc_reference_caffenet.caffemodel \
    -l pool5 \
    -o /memexdata/Dataset/processed/0008_JPLWeapons2/features/CNN/pool5_fullImg_normed \
    -y \
    -t lmdb \
#    -z 651780
