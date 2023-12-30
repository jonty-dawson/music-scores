\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = \markup { \concat { "Cello Suite N" \char ##x00BA " 1" } }
    % work_title = "Cello Suite Nº 1"
    composer = "Johann Sebastian Bach"
    worknumber = "BWV 1007"
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title " " \fromproperty #'header:worknumber } }
    original_key = \markup { \concat { "Original key G major" } }
    subtitle = "arrangement for guitar"
    copyright = "Copyright © 2022 Jonty Dawson"
    tagline = \markup { \fromproperty #'header:work_title \fromproperty #'header:worknumber }
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "prelude-bwv1007.ily"
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
            \key d \major
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

\include "allemande-bwv1007.ily"
\bookpart {

    \header {
        movement = Allemande
        breakbefore = ##f
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key d \major
            \time 4/4

            \context Voice = "upper" { \voiceOne \upper }
            \context Voice = "lower" { \voiceTwo \lower }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}

\include "courante-bwv1007.ily"
\bookpart {

    \header {
        movement = Courante
        breakbefore = ##f
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key d \major
            \time 3/4

            \context Voice = "upper" { \voiceOne \upper }
            \context Voice = "lower" { \voiceTwo \lower }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}


\include "sarabande-bwv1007.ily"
\bookpart {

    \header {
        movement = "Sarabande"
        breakbefore = ##f
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key d \major
            \time 3/4

            \context Voice = "upper" { \voiceOne \upper }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}


\include "menuet-i-bwv1007.ily"
\bookpart {

    \header {
        movement = "Menuet I"
        breakbefore = ##f
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key d \major
            \time 3/4

            \context Voice = "upper" { \voiceOne \upper }
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}

\include "menuet-ii-bwv1007.ily"
\bookpart {

    \header {
        movement = "Menuet II"
        breakbefore = ##f
    }


    \score  {

        \new Staff = "main" \with {
            \clef "treble_8"
        }
        {

            \main
        }

        % To create MIDI output, uncomment the following line:
        %  \midi {}


    }
}


\include "gigue-bwv1007.ily"
\bookpart {

    \header {
        movement = "Gigue"
        breakbefore = ##f
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key d \major
            \time 6/8

            \gigue_main
        >>

        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }
}


\includeIfNotPreview "ornamentation-bwv1007.ily"

