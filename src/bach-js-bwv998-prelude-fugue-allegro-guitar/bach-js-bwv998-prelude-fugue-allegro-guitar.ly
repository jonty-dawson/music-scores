\version "2.22.2"
\language "english"

mSkipTypesetting = ##f

\include "common-bwv998.ily"


defaultStaffSize = #20
myStaffSize = #19.43
% default is 20pt == 7mm
% 6.8 mm
#(set-global-staff-size #'myStaffSize)

\header {
    work_title = "Prelude, Fugue and Allegro"
    composer = "Johann Sebastian Bach"
    worknumber = "BWV 998"
    title = \markup { \concat { \fromproperty #'header:composer " - " \fromproperty #'header:work_title " " \fromproperty #'header:worknumber } }
    original_key = \markup { \concat { "Original key E" \char ##x266D " major" } }
    subtitle = "transcription for guitar"
    subject = \markup { \fromproperty #'header:subtitle }
    arranger = "Jonty Dawson"
    copyright = "Copyright © 2022 Jonty Dawson"
    author = \markup { \fromproperty #'header:copyright }
    website = "https://jonty-dawson.github.io/music-scores"
    encodingdate = "2022-07-19"
    encodingsoftware = "Lilypond 2.22.2"
    tagline = \markup { \fromproperty #'header:work_title \fromproperty #'header:worknumber }
}


\paper {
    annotate-spacing = ##f

    #(set-paper-size "a4")
    line-width = #180.0

    markup-markup-spacing.basic-distance = 3
    top-system-spacing.basic-distance = 11
    last-bottom-spacing.basic-distance = 15
    system-system-spacing.padding = 4

    #(define fonts
        (make-pango-font-tree "Charter"
                          "Fira Sans"
                          "Fira Mono"
                           (/ myStaffSize defaultStaffSize)))

    %page-space-weighting = #10
    %page-count = #5
    ragged-last-bottom = ##f

    max-systems-per-page = #8
    %page-breaking = #ly:minimal-breaking

    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
        \fill-line {
            \left-column \on-the-fly #part-first-page \tiny {
                \fromproperty #'header:copyright
                \fromproperty #'header:website
            }
            \center-column \on-the-fly \print-page-number-check-first {
                \vcenter \fromproperty #'page:page-number-string
            }
            \right-column \tiny {
                \vcenter  \fromproperty #'header:tagline
            }
        }
    }

    evenFooterMarkup = \oddFooterMarkup

    % see titling-init.ly in lilypond install

    pieceTitleMarkup =  \markup {
        \column {
            %\override #'(baseline-skip . 5.5)
            \column {
                \null
                \null
                \fill-line {
                    \abs-fontsize #20
                    \fromproperty #'header:work_title
                }
                \null
                \fill-line {
                    \abs-fontsize #14
                    \fromproperty #'header:worknumber
                }
                \null
                \fill-line {
                    \abs-fontsize #14
                    \fromproperty #'header:subtitle
                }
                \null
            }

            \fill-line {
                \null
                \null
                \vcenter  \right-column {
                    \abs-fontsize #14
                    \line {
                        \fromproperty #'header:composer
                    }

                    %\abs-fontsize #10
                    %\fromproperty #'header:original_key

                }
            }
            %\vspace #2.0
        }
    }

    bookTitleMarkup =  \markup \null

    scoreTitleMarkup = \markup {
        \column {
            \abs-fontsize #16 {
                \column {
                    \null

                    \fromproperty #'header:movement
                }
            }
        }
    }
}

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

\layout {
    indent = #0
    \context {
        \Staff \consists \fingeringSlideEngraver
        \override Glissando.to-fingerings = ##t

        \override Glissando.breakable = ##t
        \override Glissando.after-line-breaking = ##t

        %\fingeringAllowInsideStaff

        %\stringAllowInsideStaff

        \override Fingering.script-priority = #100
        \override Fingering.font-encoding = #'latin1
        \override Fingering.font-size = #-3  % default is -5
        % can't get these to work for eg semibold, specify font-name instead, overrides font-family, font-shape, font-series
        %\override Fingering.font-family = #'sans
        %\override Fingering.font-series = #'semibold
        %\override Fingering.font-shape = #'upright
        \override Fingering.font-name = #"Fira Sans SemiBold"
        \override Fingering.add-stem-support = ##t

        %\override Fingering.avoid-slur = #'outside
        %\override Fingering.slur-padding = #1.5
        %\override Fingering.padding = #1.0

        \override StringNumber.script-priority = #200
        \override StringNumber.padding = #0.5
        \override StringNumber.staff-padding = #3.0
        \override StringNumber.add-stem-support = ##t
        \override StringNumber.font-encoding = #'latin1 % #'fetaText is lilypond default
        \override StringNumber.font-name = #"Fira Sans"
        \override StringNumber.font-size = #-3.0
        %\override StringNumber.extra-offset = #'(0.0 . -0.6)
        \override StringNumber.stencil = #(make-stencil-circler 0.1 0.35 ly:text-interface::print)

        \override StrokeFinger.padding = #1.0
        \override StrokeFinger.font-encoding = #'latin1
        \override StrokeFinger.font-name = #"Fira Sans Italic"
        \override StrokeFinger.font-size = #-2
        \override StrokeFinger.add-stem-support = ##t

    }
}


