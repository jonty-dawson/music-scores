---
layout: page
title: __JS Bach__ Prelude, Fugue and Allegro BWV 998 *for guitar*
name: bach-js-bwv998-prelude-fugue-allegro-guitar
sort_key: bach-js-bwv-0998
date: 2022-7-28
composer: Johann Sebastian Bach
work_title: Prelude, Fugue and Allegro
work_number: BWV 998
instrument: Guitar
original_key: E&#x266D; major
subheading: A transcription for classical guitar in E, rather than the more usual D.
image:
  path: assets/edition-cards/bach-js-bwv998-prelude-fugue-allegro-guitar.card.jpg
  alt: >
    Sheet music PDF. JS Bach: Prelude, Fugue and Allegro BWV 998, transcribed for classical guitar.
preview_image:
  width: 800
  height: 740
preview_caption: Incipit
---

{% include edition_content_head.md %}
<!--more-->
{% include edition_content_preview_image.md %}

## Edition notes

The guitar versions that I've come across of this work are mostly in D with drop D scordatura, including the one I used when first starting to learn the piece. I was interested in trying an arrangement in E, and found some freely-available online, but didn't get on with some of the editing choices. I don't have any urtext edition, and since images of the autograph manuscript are available via IMSLP and elsewhere, I decided to attempt to transcribe from source. I'm definitely no expert here, and the piece is really a bit beyond my playing ability, so exploring this just for kicks. Bach uses New German organ tablature towards the end of the Allegro, presumably due to running out of page space - notation that was certainly not familiar to me, but making for more fun in researching how to decipher.

The piece appears to have been conceived for a keyboard instrument (perhaps the lute-harpsichord) rather than lute. I've kept close to the original, with minor simplifications for dependable playing on guitar, notably in the Fugue bars 25-27. It seems common practice in guitar arrangements to allow the bass notes in the Prelude to ring long - but I tend to play these with durations pretty much as notated, keeping the feel pastoral but sprightly.

This is my first attempt at using Lilypond, so it has been a learning exercise for me, trying to figure out a reasonable approach for classical guitar notation. I wanted to include comprehensive left-hand fingering indications, while avoiding too much additional visual clutter from string or fret spanners. After trying out a few approaches in Lilypond, I arrived at one that suits my purposes, and isn't too arduous to write:

* left-hand fingering is usually placed outside the staff, above or below stems and beams - an approach more common in keyboard music, but one that keeps the numbers legible as they are on white space background. Traditionally-engraved guitar music more often places these to the left of note heads, but I found that approach tended to require frequent layout tweaks to avoid clashes.
* fingerings are personal preferences, converged upon during learning to tackle the piece. These are often simply what I find easiest to play. Sometimes chosen to emphasise a voice in the implied polyphony, allowing notes to be prolonged. Other things being equal, tending to prefer long string lengths and open strings.
* restrained use of conventional capitalised roman numeral fret position, preferring instead to use up or down position-shift indicators.
* string indications if necessary to avoid ambiguity.
* barré brackets to denote which strings are stopped.
* infrequent right-hand fingering indication.
* the typeface for fingering is sans-serif with an open numeral 4 glyph - I find this leads to less visual confusion than a closed numeral 4, sometimes mistaken with 1 when printed on staff.

## Links

Bach, JS *BWV 998 Autograph Manuscript image*. <https://commons.wikimedia.org/wiki/File:Bach%2C_Prelude%2C_Fugue_and_Allegro_in_E-flat_major%2C_BWV_998_manuscript.jpg>

Bach Digital entry for BWV 998 <https://www.bach-digital.de/receive/BachDigitalWork_work_00001176>

IMSLP *BWV 998 various editions* <https://imslp.org/wiki/Prelude%2C_Fugue_and_Allegro_in_E-flat_major%2C_BWV_998_(Bach,_Johann_Sebastian).>

IMSLP *BWV 998 autograph manuscript facsimile* <https://s9.imslp.org/files/imglnks/usimg/0/01/IMSLP112000-PMLP181067-bwv998_pre-fug_para_alaude_ou_cravo_cravo.pdf>

Lilypond <https://lilypond.org/>

Pyrounaki, Sofia (2018) *Transcription, performance and recording of
Johann Sebastian Bach's works for lute on a
ten-string guitar.* <https://doi.org/10.17630/sta/13>

Titmuss, Clive (2009) *The Big Bach Lutebook*.
<http://earlymusicstudio.com/tablatures/the-big-bach-lutebook/>

Titmuss, Clive (2015) *The Myth of Bach’s Lute Suites* <https://www.thisisclassicalguitar.com/bachs-lute-suites-clive-titmuss/>

Yates, Stanley (1998) *Bach's Unaccompanied String Music: A New (Historical) Approach to Stylistic and Idiomatic Transcription for the Guitar*. <http://www.stanleyyates.com/articles/bacharr/intro.html>



### German Organ Tabulature
<https://www.w3.org/2021/03/smufl14/tables/german-organ-tablature.html>

<https://steemit.com/classical-music/@partitura/german-organ-tablature-explained-part-1>

<https://www.johnmckean.info/single-post/2017/04/23/introducing-m%C3%B6ller-a-music-font-for-german-organ-tablature>

## Revision history
* v1.0.0 Initial edition
* [v1.1.0](https://github.com/jonty-dawson/music-scores/commit/61226f7fbba288a6505a4863692b2c9383c741b3) Layout and fingering changes. Fugue bars 26-28 simplified.
* [v1.1.1](https://github.com/jonty-dawson/music-scores/commit/fa8565fd91e00530e9822f793d47360d0cdd685c) Fix transcription error, Fugue bar 75 accidental.

{% include edition_content_summary.md %}
