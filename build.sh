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
# -dresolution=232.3 for 1920px width
lilypond_options_preview="-dno-print-pages -fpng -dresolution=112.7 -dpreview -o ../../out/ --define-default=anti-alias-factor=8"
lilypond_options_preview_full_page="-fpng -dresolution=96.8 --define-default=anti-alias-factor=8"
# --define-default=anti-alias-factor=4

function build()
{
   name=$1
   preview_is_whole_first_page=${2:false}

   pushd src/$name
      lilypond $lilypond_options $name.ly
      if [ $generate_preview_images ]; then
         echo "Generating preview image..."
         if [ $preview_is_whole_first_page ]; then
            echo "preview_is_whole_first_page"
            lilypond $lilypond_options_preview_full_page $name.ly
            if [ -f $name-page1.png ]; then
               mv -f $name-page1.png ../../$out_dir/$name.preview.png
               rm $name-page*.png
            else
               mv -f $name.png ../../$out_dir/$name.preview.png
            fi
         else
            lilypond $lilypond_options_preview $name.ly
         fi
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
build "bach-js-bwv528-organ-sonata-4-andante-guitar" true
build "bach-js-bwv784-invention-13-guitar" true
build "bach-js-bwv998-prelude-fugue-allegro-guitar"
build "bach-js-bwv1007-cello-suite-1-guitar"
build "barrios-agustin-julia-florida-guitar" true
build "boulanger-lili-d-un-jardin-clair-guitar" true
build "dawson-jonty-on-winter-ground-guitar" true
build "satie-erik-gymnopedie-1-guitar" true
build "trad-catalan-el-noi-de-la-mare-guitar" true
build "trad-czech-sedlak-sedlak-guitar" true

exit 0