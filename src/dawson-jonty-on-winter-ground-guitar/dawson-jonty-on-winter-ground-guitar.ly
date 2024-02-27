\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = "On winter ground"
    composer = \markup { \abs-fontsize #12 "Jonty Dawson" }
    composition_date = "2024"
    subtitle = "for guitar"

    title = \markup { \fromproperty #'header:work_title }
    copyright = "Copyright © 2024 Jonty Dawson"
    tagline = \markup { \concat {"Jonty Dawson • " \fromproperty #'header:work_title }}
    version = "1.0.1"
}

\include "../common/solo-guitar-layout.ily"
\include "../common/pseudo-indent.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "on-winter-ground.ily"
\layout {
    indent = #15
}

\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        system-count = #17
        page-count = #3
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key a \major
            \numericTimeSignature
            \time 4/4

            \once \override Score.MetronomeMark.outside-staff-padding = #2
            \tempo \markup { \fontsize #0 "Slow" } 4 = 60

            \override Staff.DynamicTextSpanner.bound-details.left.padding = #1.0
            \override Staff.DynamicTextSpanner.bound-details.right.padding = #1.0
            \override Staff.Arpeggio.padding = #0.3

        % these overridden in solo-guitar-layout.ily. Intead to remove, but need to review other scores
        % that include it.
        \revert Staff.StrokeFinger.script-priority
        \revert Staff.StrokeFinger.padding
        \revert Staff.StrokeFinger.font-encoding
        \revert Staff.StrokeFinger.font-name
        \revert Staff.StrokeFinger.font-size
        % \revert Staff.StrokeFinger.add-stem-support

            \context Voice = "v1" { \voiceOne \upper }
            \context Voice = "v2" { \voiceTwo \lower }
            \context Voice = "v4" { \voiceFour \lowerInner }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }



}
