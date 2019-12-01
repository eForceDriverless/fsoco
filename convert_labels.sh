# amz - only missing big orange class, otherwise has same class order

# bmefrt - big & small orange swapped
python reorder_classes.py -y labels/bmefrt/bmefrt_2019 0132

# dart - xml format

# dhbwengineering - blue & yellow swapped
rm labels/dhbwengineering/yolo_format/image_list.txt
python reorder_classes.py -y labels/dhbwengineering/yolo_format 1023

# DimitrisMartinArampatzis - blue & yellow swapped
python reorder_classes.py -y labels/DimitrisMartinArampatzis/dma_labels/ 1023

# driverless_UPC - VOC format

# eforce (that be we)

# egnition - missing big orange, otherwise same order

# elbflorace - same labels

# eufs - same labels

# fastforest (green cones) - ignore for now

# fsteamtallinn - same labels

# fsteamweingarten - (nothing cones) - ignore for now

# getracing - (red cones) - ignore for now

# GFR - TODO

# greenteam - same labels

# hod - blue & yellow swapped 
python reorder_classes.py -y labels/hod/high-octane_2019 1023

# ituracing - blue & yellow swapped
python reorder_classes.py -y labels/ituracing/itu_2019 1023

# kthfs - only "cone" label - ignoring

# mms - blue & yellow swapped
rm labels/mms/info.txt labels/mms/mms-classes.txt
python reorder_classes.py -ry labels/mms 1023

# raceyard - MM-Label Tool format - ignore for now

# scut - red_cones (stand and down) - ignore for now

# StarkStromAugsburg - same labels

# unicamp eracing - missing big orange, otherwise same order

# vermilion - only blue & yellow, but in correct order

# WisconsinAutonomous - blue & yellow swapped and no big orange
python reorder_classes.py -y labels/WisconsinAutonomous/WA_19 1023
