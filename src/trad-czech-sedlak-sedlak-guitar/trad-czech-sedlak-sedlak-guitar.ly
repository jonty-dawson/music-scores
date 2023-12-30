\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = "Sedlák, sedlák"
    composer = "Traditional Czech"
    subtitle_italic = "Furiant"
    left_title = \markup { \column { "Arranged for guitar by" "Jonty Dawson" \vspace #1 }  }
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title } }
    copyright = "Copyright © 2023 Jonty Dawson"
    tagline = \markup { \concat {\fromproperty #'header:composer " • " \fromproperty #'header:work_title }}
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"
\include "../common/pseudo-indent.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "sedlak-sedlak.ily"
\layout {
    indent = #6
}

\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        system-count = #11
        page-count = #2
        %system-system-spacing.basic-distance = #1
        %system-system-spacing.padding = #3.0
    }

    \score {
        \new Staff  \with {
            instrumentName = \markup { \null }
        } <<
            \clef "treble_8"
            \key a \major
            \time 3/4

            \once \override Score.MetronomeMark.outside-staff-padding = #1
            \tempo \markup "Allegretto"

            \override Staff.DynamicTextSpanner.bound-details.left.padding = #1.0
            \override Staff.DynamicTextSpanner.bound-details.right.padding = #1.0
            \override Staff.Arpeggio.padding = #0.3

            \override Staff.TextScript.outside-staff-padding = #1.0

            \context Voice = "upperVoice" { \voiceOne \upper }
            \context Voice = "lowerVoice" { \voiceTwo \lower }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }



}
