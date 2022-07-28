#!/bin/bash

function error {
   echo "Error at $0:$1"
   exit 1
}

trap 'error $LINENO' ERR

copy_to_docs=false
while getopts :c opt; do
   case $opt in
      c) copy_to_docs=true ;;
      :) echo "No arg for option -$OPTARG"; exit 1;;
      \?) echo "Unknown option -$OPTARG"; exit 1;;
   esac
done

shift $(( OPTIND - 1 ))

out_dir=./out
downloads_dir=./gh-pages/assets/downloads/
preview_images_dir=./gh-pages/assets/preview-images/
lilypond_options="-dno-point-and-click -dpreview -o out/"

function build()
{
   name=$1
   mkdir -p $out_dir

   lilypond $lilypond_options src/$name/$name.ly

   if $copy_to_docs; then
      echo "Copying to gh-pages..."
      mkdir -p $downloads_dir
      mkdir -p $preview_images_dir
      cp $out_dir/$name.pdf $downloads_dir
      cp $out_dir/$name.preview.png $preview_images_dir
   fi
}


build "bach-js-bwv998-prelude-fugue-allegro-guitar"

exit 0