#!/bin/bash

function error {
   echo "Error at $0:$1"
   exit 1
}

trap 'error $LINENO' ERR

generate_preview_images=false
copy_to_docs=false
oxipng_path=
while getopts ":pcx:" opt; do
   case $opt in
      p) generate_preview_images=true ;;
      c) copy_to_docs=true ;;
      x) oxipng_path=${OPTARG} ;;
      :) echo "No arg for option -$OPTARG"; exit 1;;
      \?) echo "Unknown option -$OPTARG"; exit 1;;
   esac
done

shift $(( OPTIND - 1 ))


out_dir=./out
downloads_dir=./gh-pages/assets/downloads/
preview_images_dir=./gh-pages/assets/preview-images/
lilypond_options="-dno-point-and-click -o ../../out/"
# -dresolution=112.7 for 800px width, -dpng-width has defect that causes empty output when height > width
lilypond_options_preview="-dno-print-pages -fpng -dresolution=112.7 -dpreview -o ../../out/"
# --define-default=anti-alias-factor=4

function build()
{
   name=$1

   pushd src/$name
      lilypond $lilypond_options $name.ly
      if $generate_preview_images; then
         echo "Generating preview image..."
         lilypond $lilypond_options_preview $name.ly
      fi
   popd

   if [ -n "$oxipng_path" ]; then
      echo "Optimizing png output (requires oxipng)..."
      $oxipng_path --strip safe $out_dir/$name.preview.png
   fi

   if $copy_to_docs; then
      echo "Copying to gh-pages..."
      mkdir -p $downloads_dir
      mkdir -p $preview_images_dir
      cp $out_dir/$name.pdf $downloads_dir
      cp $out_dir/$name.preview.png $preview_images_dir
   fi
}

mkdir -p $out_dir
build "bach-js-bwv528-organ-sonata-4-andante-guitar"
build "bach-js-bwv998-prelude-fugue-allegro-guitar"
build "bach-js-bwv1007-cello-suite-1-guitar"

exit 0