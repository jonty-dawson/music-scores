\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = "Prelude, Fugue and Allegro"
    composer = "Johann Sebastian Bach"
    worknumber = "BWV 998"
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title " " \fromproperty #'header:worknumber } }
    original_key = \markup { \concat { "Original key E" \char ##x266D " major" } }
    subtitle = "transcription for guitar"
    copyright = "Copyright © 2022 Jonty Dawson"
    tagline = \markup { \fromproperty #'header:work_title \fromproperty #'header:worknumber }
    version = "1.1.0"
}


\include "../common/solo-guitar-layout.ily"

% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "prelude-bwv998.ily"
\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
    }

    \header {
        movement = Prelude
        breakbefore = ##f
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key e \major
            \time 12/8

            \override Glissando.breakable = ##t
            \override Glissando.after-line-breaking = ##t

            \context Voice = "upper" { \voiceOne \upper }
            \context Voice = "lower" { \voiceTwo \lower }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}

%%{

\include "fugue-bwv998.ily"
\bookpart {
    \header {
        movement = Fugue
        breakbefore = ##f
    }

    \score {
        \new Staff <<
            \context Voice = "upper" { \voiceOne \upper }
            \context Voice = "inner" { \voiceThree \inner }
            \context Voice = "lower" { \voiceTwo \lower }
        >>
        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }

}

\include "allegro-bwv998.ily"
\bookpart {
    \header {
        movement = Allegro
        breakbefore = ##t
    }

    \score {
        \new Staff <<
            \context Voice = "upper" { \voiceOne \upper }
            \context Voice = "lower" { \voiceTwo \lower }
        >>
        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}

%%}



