\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = \markup { \concat { "Andante from Organ Sonata N" \char ##x00BA " 4 in E minor" } }
    composer = "Johann Sebastian Bach"
    worknumber = "BWV 528"
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title " " \fromproperty #'header:worknumber } }
    subtitle = "arranged for guitar"
    copyright = "Copyright © 2023 Jonty Dawson"
    tagline = \markup { \fromproperty #'header:work_title \fromproperty #'header:worknumber }
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "andante-bwv528.ily"
\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        scoreTitleMarkup = \markup { \null }
        markup-system-spacing.minimum-distance = 13
    }

    \header {
        breakbefore = ##f
    }

    \score {

        \new Staff <<
            \clef "treble_8"
            \key b \minor
            \time 4/4

            \once \override Score.MetronomeMark.outside-staff-padding = #1
            \tempo \markup "Andante"

            %\override Glissando.breakable = ##t
            %\override Glissando.after-line-breaking = ##t
            %\override Staff.Fingering.avoid-slur = #'outside
            %\override Staff.Fingering.slur-padding = #1.5
            %\override Staff.Fingering.padding = #1

            \context Voice = "upper" { \voiceOne \upper }
            \context Voice = "lower" { \voiceTwo \lower }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}
