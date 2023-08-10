############################################################################################
#
#   Script Name : q16_organizes_files.sh                                                       
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     : Write a shell script that automatically organizes files in a directory
#                based on their file types (e.g., images, documents, audio files)..            
#############################################################################################

#!/bin/bash

OUT_FILE=/tmp/out.txt
read -p " plz provide directory name to sort the files:" DIR
ls -1 $DIR | awk -F'.' '{print $2}' | sort | uniq > $OUT_FILE
shopt -s extglob
while read -r c1
do
  case  $c1 in
  csv)
        echo "csv file moving in $DIR/csv"
        mkdir -p $DIR/CSV01
        mv $DIR/*.csv $DIR/CSV01
            ;;
  doc)
        echo "doc file moving in $DIR/doc"
        mkdir -p $DIR/DOC01
        mv $DIR/*.doc $DIR/DOC01
            ;;
  jpg)
         echo "jpg file moving in $DIR/jpg"
         mkdir $DIR/JPG01
         mv $DIR/*.jpg $DIR/JPG01
            ;;
  txt)
          echo "txt file moving in $DIR/txt"
          mkdir $DIR/TXT01
          mv $DIR/*.txt $DIR/TXT01
            ;;

 *)
        echo "moving all this extension apart from this goes into         other dir"
        mkdir -p $DIR1/OTHER
        mv "$DIR"/!(csv|jpg|txt|doc) $DIR1/OTHER1
          ;;
        esac
done < $OUT_FILE
