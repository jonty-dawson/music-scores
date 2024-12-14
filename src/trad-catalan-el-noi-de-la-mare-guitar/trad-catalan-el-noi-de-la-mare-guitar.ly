\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = "El Noi de la Mare"
    composer = "Traditional Catalan"
    composition_date = "2024"
    left_title = \markup { \column { "Arranged for guitar by" "Jonty Dawson" \vspace #1 }  }

    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title } }
    copyright = "Copyright © 2024 Jonty Dawson"
    tagline = \markup { \concat {\fromproperty #'header:composer " • " \fromproperty #'header:work_title }}
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"
\include "../common/pseudo-indent.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "el-noi-de-la-mare.ily"
\layout {
    indent = #15
}

\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        system-system-spacing.basic-distance = #1
        system-system-spacing.padding = #1.0
        top-system-spacing.basic-distance = #8
        last-bottom-spacing.basic-distance = #6
        system-count = #15
        page-count = #2
        % annotate-spacing = ##t
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key d \major
            \numericTimeSignature
            \time 6/8

            \once \override Score.MetronomeMark.outside-staff-padding = #2
            \tempo \markup { \fontsize #0 "Slow lullaby" } % 4. = 32

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
