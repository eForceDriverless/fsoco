DEST=converted 
if [ ! -d "$DEST" ]
then
  mkdir "$DEST"
fi

IMG=images
if [ ! -d "$DEST/$IMG" ]
then
  mkdir "$DEST/$IMG"
fi

# cp script to converted
cp yolo_to_voc.py "$DEST"

### amz - only missing big orange class, otherwise has same class order
#NAME="amz"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/amz_2019/* "$NAME"
## cp ~/eforce/FSOCO_images/amz_2019/* "images"
## for filename in "~/eforce/FSOCO_images/amz_2019"/*; do


#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/amz_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

## python "$DEST/yolo_to_voc.py"
#rm -rf "$NAME"

### bmefrt - big & small orange swapped
#NAME="bmefrt"
#echo "Converting & extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/bmefrt_2019/* "$NAME"
#python reorder_classes.py -y "$NAME" 0132
#for filename in "$NAME"/*; do
  ### echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/bme_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done


#rm -rf "$NAME"

#### dart - xml format

### dhbwengineering - blue & yellow swapped
#NAME="dhbwengineering"
#echo "Converting & extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/yolo_format/* "$NAME"
#rm $NAME/image_list.txt
#python reorder_classes.py -y "$NAME" 1023
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/dhbw_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

### DimitrisMartinArampatzis - blue & yellow swapped
#NAME="DimitrisMartinArampatzis"
#echo "Converting & extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/dma_labels/* "$NAME"
#python reorder_classes.py -y "$NAME" 1023
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/DimitrisMartinArampatzis_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

#### driverless_UPC - VOC format

## TODO: get eforce images
#### eforce
##NAME="eforce"
##echo "Extracting $NAME"
##mkdir "$NAME"
##cp labels/$NAME/eforce_2019/* "$NAME"
##for filename in "$NAME"/*; do
  ### echo $filename
  ##mv "$filename" "converted/$NAME-$(basename "$filename")"
##done

### copy images to converted/images
##for filename in ~/"eforce/FSOCO_images/eforce_2019"/*; do
  ### echo $filename
  ##cp "$filename" "converted/images/$NAME-$(basename "$filename")"
##done

##rm -rf "$NAME"

### egnition - missing big orange, otherwise same order
#NAME="egnition"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/egn_2019/* "$NAME"
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/egnition_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

### elbflorace - same labels (shit dataset btw)
#NAME="elbflorace"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/efr_2019/* "$NAME"

#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/elbflorace_2019"/*; do
  #echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

### eufs - same labels
#NAME="eufs"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/eufs_2019/* "$NAME"
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/eufs_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

## fastforest (green cones) - ignore for now

### fsteamtallinn - same labels
#NAME="fsteamtallinn"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/fstt_2019/* "$NAME"
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/tallinn_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

### fsteamweingarten - (nothing cones) - ignore for now

### getracing - (red cones) - ignore for now

### GFR - TODO

### greenteam - same labels
#NAME="greenteam"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/greenteam_2019/* "$NAME"
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/GreenTeam_FSOCO_Pictures"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

### hod - blue & yellow swapped (also shit dataset)
#NAME="hod"
#echo "Converting & extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/high-octane_2019/* "$NAME"
#python reorder_classes.py -y "$NAME" 1023
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/high-octane_2019"/*; do
  #echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

### ituracing - blue & yellow swapped
#NAME="ituracing"
#echo "Converting & extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/itu_2019/* "$NAME"
#python reorder_classes.py -y "$NAME" 1023
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/itu_2019"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done

#rm -rf "$NAME"

## kthfs - only "cone" label - ignoring

### mms - blue & yellow swapped
#NAME="mms"
#echo "Converting & extracting $NAME"
#mkdir "$NAME"

## merge all the folders into temp folder
#for folder_name in labels/$NAME/*/; do
  #echo $folder_name
  #cp "$folder_name"/* $NAME
#done

#python reorder_classes.py -y "$NAME" 1023

#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done

## copy images to converted/images
#for filename in ~/"eforce/FSOCO_images/mms_2017-2018_full-collection"/*; do
  ## echo $filename
  #cp "$filename" "converted/images/$NAME-$(basename "$filename")"
#done
#rm -rf "$NAME"

### raceyard - MM-Label Tool format - ignore for now

### scut - red_cones (stand and down) - ignore for now

### StarkStromAugsburg - same labels
#NAME="StarkStromAugsburg"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/ssa_2019/* "$NAME"
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done
#rm -rf "$NAME"

### unicamp eracing - missing big orange, otherwise same order
#NAME="unicamp_eracing"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/unicamp\ eracing/unicamp_labels/* "$NAME"
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done
#rm -rf "$NAME"

### vermilion - only blue & yellow, but in correct order
#NAME="vermilion"
#echo "Extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/vermilion_2019/* "$NAME"
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done
#rm -rf "$NAME"

### WisconsinAutonomous - blue & yellow swapped and no big orange
#NAME="WisconsinAutonomous"
#echo "Converting & extracting $NAME"
#mkdir "$NAME"
#cp labels/$NAME/WA_19/* "$NAME"
#python reorder_classes.py -y "$NAME" 1023
#for filename in "$NAME"/*; do
  ## echo $filename
  #mv "$filename" "converted/$NAME-$(basename "$filename")"
#done
#rm -rf "$NAME"

python "$DEST/yolo_to_voc.py"
