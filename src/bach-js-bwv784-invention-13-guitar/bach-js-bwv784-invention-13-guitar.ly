\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = \markup { \concat { "Invention N" \char ##x00BA " 13" } }
    composer = "Johann Sebastian Bach"
    worknumber = "BWV 784"
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title " " \fromproperty #'header:worknumber } }
    subtitle = "arranged for guitar (original key A minor)"
    copyright = "Copyright © 2023 Jonty Dawson"
    tagline = \markup { \fromproperty #'header:work_title \fromproperty #'header:worknumber }
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "invention-13-bwv784.ily"
\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        scoreTitleMarkup = \markup { \null }
        markup-system-spacing.basic-distance = 3
    }


    \score {

        \new Staff <<
            \clef "treble_8"
            \key b \minor
            \time 4/4

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
