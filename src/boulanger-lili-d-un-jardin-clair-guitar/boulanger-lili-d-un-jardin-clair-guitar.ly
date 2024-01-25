\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\header {
    work_title = "D'un jardin clair"
    composer = "Lili Boulanger"
    composition_date = "1914"
    subtitle_italic = "from Trois Morceaux pour Piano"
    left_title = \markup { \column { "Arranged for guitar by" "Jonty Dawson" \vspace #1 }  }
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title } }
    copyright = "Copyright © 2024 Jonty Dawson"
    tagline = \markup { \concat {\fromproperty #'header:composer " • " \fromproperty #'header:work_title " (" \fromproperty #'header:composition_date ")" }}
    version = "1.0.0"
}

\include "../common/solo-guitar-layout.ily"
\include "../common/pseudo-indent.ily"


% variables can only be declared outside of bookpart / book blocks, include music ily before each
% bookpart, re-assigning variables where necessary

\include "d-un-jardin-clair.ily"
\layout {
    indent = #15
}

\bookpart {
    \paper {
        bookTitleMarkup = \pieceTitleMarkup
        system-count = #11
        page-count = #2
        system-system-spacing.basic-distance = #1
        system-system-spacing.padding = #3.0
        %footnote-separator-markup = \markup { \null }
    }

    \score {
        \new Staff <<
            \clef "treble_8"
            \key e \major
            \time 3/4

            \once \override Score.MetronomeMark.outside-staff-padding = #2
            \tempo \markup { \fontsize #1 "Assez vite" }

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

            \context Voice = "upperVoice" { \voiceOne \upper }
            \context Voice = "lowerVoice" { \voiceTwo \lower }
        >>

        %{
            % experiment - remove fingering. Also Glissando (for finger guides) - but this also remove non-fingering glissandi
            \layout {
                \context {
                \Voice
                \remove Fingering_engraver
                \remove New_fingering_engraver
                \remove Glissando_engraver
                }
            }
        %}
        % To create MIDI output, uncomment the following line:
        %  \midi {}
    }



}
