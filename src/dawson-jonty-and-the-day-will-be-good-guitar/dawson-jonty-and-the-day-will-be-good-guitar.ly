\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = \markup { \concat { "And the day will be good" } }
    composer = \markup { \abs-fontsize #10 "Jonty Dawson" }
    title = \markup { \concat {"Jonty Dawson - " \fromproperty #'header:work_title } }
    copyright = "Copyright © 2025 Jonty Dawson"
    tagline = \markup { \concat {"Jonty Dawson • " \fromproperty #'header:work_title }}
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"
\include "../common/pseudo-indent.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "and-the-day-will-be-good.ily"
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
      %  system-count = #12
       % print-page-number = #f
      %  page-count = #2
        % annotate-spacing = ##t
    }

    \score {
        \new Staff \with {
            % instrumentName = "Guitar"
        } <<
            \clef "treble_8"
            \set Staff.clefTransposition = #0

            \key c \major
            \numericTimeSignature
            \time 4/4

            \once \override Score.MetronomeMark.outside-staff-padding = #2
            \tempo Andante 4 = 84

            \override Staff.DynamicTextSpanner.bound-details.left.padding = #1.0
            \override Staff.DynamicTextSpanner.bound-details.right.padding = #1.0
            % padding for barre bracket
            \override Staff.Arpeggio.padding = #'()
            % for actual arpeggio use:
            % \override Staff.Arpeggio.padding = #0.3


            \override Staff.StringNumber.padding = #0.5
            \override Staff.Script.padding = #0.5 % give staccato marks etc more space above and below beams for forced stem direction voices

            % bolder staff lines
            \override Staff.StaffSymbol.thickness = 1.125
            %\override Staff.StaffSymbol.staff-space = 1.0
            \override Staff.StaffSymbol.ledger-line-thickness = #'(1.6 . 0.0)
            \override Staff.Stem.thickness = 0.89

            \override Staff.BarLine.hair-thickness = 1.6
            \override Staff.BarLine.kern = 3.4
            \override Staff.BarLine.thick-thickness = 5.0

            % sharper ends to ties and slurs
            \override Staff.Tie.line-thickness = 0.2
            \override Staff.LaissezVibrerTie.line-thickness = 0.2
            \override Staff.Slur.line-thickness = 0.2
            \override Staff.PhrasingSlur.line-thickness = 0.2

            % thicker middles to ties and slurs
            \override Staff.Tie.thickness = 1.6
            \override Staff.LaissezVibrerTie.thickness = 1.6
            \override Staff.Slur.thickness = 1.6
            \override Staff.PhrasingSlur.thickness = 1.6

            % This seems to roughly match Elaine Gould rule of black beam twice as wide as white gap between beams
            % "Beam thickness is 1/2 stave-space. The distance between beams is 1/4 stavespace"
            \override Staff.Beam.beam-thickness = 0.53
            \override Staff.Beam.length-fraction = 1.0

            \accidentalStyle Score.modern


            \context Voice = "v1" { \voiceOne \upper }
            \context Voice = "v2" { \voiceTwo \lower }
            \context Voice = "v4" { \voiceFour \lowerInner }
        >>

        % To create MIDI output, uncomment the following line:
        % \midi {}
    }



}
