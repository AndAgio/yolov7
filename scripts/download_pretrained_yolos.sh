#!/bin/bash

mkdir -p ../pretrained_yolov7s/

names=(yolov7_training.pt yolov7x_training.pt yolov7-w6_training.pt yolov7-e6_training.pt yolov7-d6_training.pt yolov7-e6e_training.pt)

for i in ${!names[@]}; do
  echo 'Downloading' ${urls[$i]} '...'
  curl -L https://github.com/WongKinYiu/yolov7/releases/download/v0.1/${names[$i]} -o ./pretrained_yolov7s/${names[$i]}
done
wait # finish background tasks