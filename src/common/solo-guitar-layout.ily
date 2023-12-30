\version "2.22.2"

\include "common-guitar.ily"

defaultStaffSize = #20
myStaffSize = #19.43
% default is 20pt == 7mm
% 6.8 mm
#(set-global-staff-size #'myStaffSize)

\header {
    subject = \markup { \fromproperty #'header:subtitle }
    arranger = "Jonty Dawson"
    author = \markup { \fromproperty #'header:copyright }
    website = "https://jonty-dawson.github.io/music-scores"
    encodingsoftware = "Lilypond 2.22.2"
}

\paper {
    annotate-spacing = ##f

    #(set-paper-size "a4")
    line-width = #180.0

    markup-markup-spacing.basic-distance = 3
    top-system-spacing.basic-distance = 11
    last-bottom-spacing.basic-distance = 15
    system-system-spacing.padding = 4

    % between top of score/movement title and first staff
    markup-system-spacing.minimum-distance = 0
    markup-system-spacing.basic-distance = 5

    %#(define fonts
    %     (make-pango-font-tree "Charter"
    %                       "Fira Sans"
    %                       "Fira Mono"
    %                        (/ myStaffSize defaultStaffSize)))



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
        \override #'(font-name . "Charter")
        \fill-line {
            \left-column \on-the-fly #part-first-page \tiny {
                \fromproperty #'header:copyright
                \fromproperty #'header:website
            }
            \center-column \on-the-fly \print-page-number-check-first {
                \vcenter \fromproperty #'page:page-number-string
            }
            \right-column \tiny {
                \vcenter
                \fromproperty #'header:tagline
                \on-the-fly #last-page \line { "version" \fromproperty #'header:version }
            }
        }
    }

    evenFooterMarkup = \oddFooterMarkup

    % see titling-init.ly in lilypond install

    pieceTitleMarkup =  \markup {
        % could only get font-family to work if loaded via make-pango-font-tree
        % \override #'(font-family . "Charter")
        \override #'(font-name . "Charter")
        \column {
            %\override #'(baseline-skip . 5.5)
            \column {
                \null
                \null
                \fill-line {
                    \override #'(font-name . "Charter Bold")
                    \abs-fontsize #20
                    %\override #'(font-series . bold)
                    %\bold
                    \fromproperty #'header:work_title
                }
                \null

                \when-property #'header:worknumber {
                    \fill-line {
                        \abs-fontsize #14
                        \fromproperty #'header:worknumber
                    }
                    \null
                }
                \when-property #'header:subtitle {
                    \fill-line {
                        \abs-fontsize #14
                        \fromproperty #'header:subtitle
                    }
                    \null
                }
                \when-property #'header:subtitle_italic {
                    \fill-line {
                        \abs-fontsize #14
                        \override #'(font-name . "Charter Italic")
                        \fromproperty #'header:subtitle_italic
                    }
                    \null
                }

%                \vspace #2.0
            }

            \fill-line \general-align #Y #DOWN {
                \left-column {
                    \fromproperty #'header:left_title
                }
                \right-column {
                    \abs-fontsize #14
                    \column {
                        \line {
                            \fromproperty #'header:composer
                        }
                    }
                }
            }
            \vspaceIfPreview #1.0
        }
    }

    bookTitleMarkup =  \markup \null

    scoreTitleMarkup = \markup {
        \override #'(font-name . "Charter Bold")
        \abs-fontsize #16 {
            \column {
                % vertical spacing (markup-system-spacing etc) doesn't seem to apply
                % for "-dpreview", so add some conditional manual spacing
                \vspaceIfPreview #1.0
                \fromproperty #'header:movement
                \vspaceIfPreview #0.5
            }
        }
    }
}




\layout {
    indent = #0
    \context {
        \Staff
        \consists \fingeringSlideEngraver
        \override Glissando.to-fingerings = ##t
        \override Glissando.breakable = ##t
        \override Glissando.after-line-breaking = ##t

        \override Fingering.script-priority = #100
        \override Fingering.font-encoding = #'latin1
        \override Fingering.font-size = #-3  % default is -5
        % can't get these to work for eg semibold, specify font-name instead, overrides font-family, font-shape, font-series
        %\override Fingering.font-family = #'sans
        %\override Fingering.font-series = #'semibold
        %\override Fingering.font-shape = #'upright
        \override Fingering.font-name = #"Fira Sans SemiBold"
        \override Fingering.add-stem-support = ##t

        \override Fingering.avoid-slur = #'outside
        \override Fingering.slur-padding = #0.75
        \override Fingering.padding = #0.75
        \override Fingering.staff-padding = #1.0

        \override StringNumber.script-priority = #200
        \override StringNumber.padding = #0.75
        \override StringNumber.staff-padding = #3.0
        \override StringNumber.add-stem-support = ##t
        \override StringNumber.font-encoding = #'latin1 % #'fetaText is lilypond default
        \override StringNumber.font-name = #"Fira Sans"
        \override StringNumber.font-size = #-3.0
        %\override StringNumber.extra-offset = #'(0.0 . -0.6)
        \override StringNumber.stencil = #(make-stencil-circler 0.1 0.35 ly:text-interface::print)

        \override StrokeFinger.script-priority = #150
        \override StrokeFinger.padding = #1.0
        \override StrokeFinger.font-encoding = #'latin1
        \override StrokeFinger.font-name = #"Fira Sans Italic"
        \override StrokeFinger.font-size = #-2
        \override StrokeFinger.add-stem-support = ##t

    }
}