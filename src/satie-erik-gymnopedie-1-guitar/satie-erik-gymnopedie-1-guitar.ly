\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    %work_title = \markup { \concat { "Gymnopédie N" \char ##x00BA " 1" } }
    work_title = \markup { \concat { "1" {\super "ère"}  " Gymnopédie"  } }
    subtitle_italic = \markup { \fontsize #-2 "à Mademoiselle Jeanne de Bret" }
    composer = "Erik Satie"
    composition_date = "1888"
    left_title = \markup { \column { "Arranged for guitar by" "Jonty Dawson" \vspace #1 }  }

    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title } }
    copyright = "Copyright © 2025 Jonty Dawson"
    tagline = \markup { \concat {\fromproperty #'header:composer " • " "Gymnopédie N" \char ##x00BA " 1" }}
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"
\include "../common/pseudo-indent.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "gymnopedie-1.ily"
\layout {
    indent = #15
}

\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        system-system-spacing.basic-distance = #1
        system-system-spacing.padding = #1.0
        top-system-spacing.basic-distance = #8
        last-bottom-spacing.basic-distance = #12
        system-count = #7
        print-page-number = #f
       % page-count = #1
        % annotate-spacing = ##t
    }

    \score {
        \new Staff \with {
            instrumentName = \markup {
                \override #'(circle-padding . 0.35)
                \column \center-align {
                    \override #'(font-name . "Fira Sans")
                    \line { \circle 6 = D }
                    \override #'(font-name . "Charter")
                    \line { optional }
                    \line { capo II }
                }
            }
        } <<
            \clef "treble_8"
            \key c \major
            \numericTimeSignature
            \time 3/4

            \once \override Score.MetronomeMark.outside-staff-padding = #2
            \tempo \markup { \fontsize #0 "Lent et douloureux" } % 4 = 72

            \override Staff.DynamicTextSpanner.bound-details.left.padding = #1.0
            \override Staff.DynamicTextSpanner.bound-details.right.padding = #1.0
            \override Staff.Arpeggio.padding = #0.3


            \context Voice = "v1" { \voiceOne \upper }
            \context Voice = "v2" { \voiceTwo \lower }
            \context Voice = "v4" { \voiceFour \lowerInner }
        >>

        % To create MIDI output, uncomment the following line:
        % \midi {}
    }



}
