\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = "Julia Florida"
    composer = "Agustín Barrios Mangoré"
    subtitle_italic = "Barcarola"
    composition_date = "(1938, revised 1942)"
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title } }
    copyright = "Edition copyright © 2024 Jonty Dawson"
    tagline = \markup { \concat {\fromproperty #'header:composer " • " \fromproperty #'header:work_title " " \fromproperty #'header:composition_date }}
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"
\include "../common/pseudo-indent.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "julia-florida.ily"
\layout {
    indent = #15
}

\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        system-count = #13
        page-count = #2
        system-system-spacing.basic-distance = #1
        system-system-spacing.padding = #3.0
        footnote-separator-markup = \markup { \null }
    }

    \score {
        \new Staff \with {
            instrumentName = \markup {
                \override #'(font-name . "Fira Sans")
                \override #'(circle-padding . 0.35)
                \column {
                    \line { \circle 6 = D }
                }
            }
        } <<
            \clef "treble_8"
            \key d \major
            \time 6/8

            \once \override Score.MetronomeMark.outside-staff-padding = #2
            \tempo \markup { \fontsize #1 "Cantábile" }

            \override Staff.DynamicTextSpanner.bound-details.left.padding = #1.0
            \override Staff.DynamicTextSpanner.bound-details.right.padding = #1.0
            \override Staff.Arpeggio.padding = #0.3


            \context Voice = "upperVoice" { \voiceOne \upper }
            \context Voice = "lowerVoice" { \voiceTwo \lower }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }



}
