\version "2.22.2"

ornamentation_staff_defaults = \with {
    \remove "Clef_engraver"
    \remove "Key_engraver"
    \remove "Time_signature_engraver"
    % firstClef = ##f
    % timing  = ##f

%    clefGlyph = #"clefs.G"
%    clefPosition = #-2
%    clefTransposition = #-7
%    middleCPosition = #1
%    middleCClefPosition = #1

    fontSize = #-1
    \override StaffSymbol.staff-space = #(magstep -1)
    \override StaffSymbol.thickness = #(magstep -1)

}

ornamentation_score_defaults = \with {
    \override TextScript.padding = 5.0
    \omit BarNumber


}

ornamentation_hspace = \markup { \hspace #4 }

#(define-markup-command (ornamentation_title layout props titleText) (markup?)
    (interpret-markup layout props
#{
    \markup {
        \column {
            \vspace #0.75
            \bold #titleText
        }
    }
#}
))


\bookpart {

    \header {

        breakbefore = ##t
    }

    \paper {
        annotate-spacing = ##f

        ragged-last-bottom = ##t
        ragged-last = ##t
        ragged-right = ##t
        page-breaking = #ly:minimal-breaking

        scoreTitleMarkup = \markup \null
        pieceTitleMarkup = \markup \null

        markup-markup-spacing.basic-distance = 2
        markup-markup-spacing.padding = 2

%{
        markup-­system­-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 0)
            (padding . 0)
            (stretchability . 0)
        )

        score-markup-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 0)
            (padding . 0)
            (stretchability . 0)
        )

        markup-markup-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 0)
            (padding . 0)
            (stretchability . 0)
        )


%}


    }


    \markup {
        \justify \fontsize #4.0 { Ornamentation suggestions }
    }
    \markup \ornamentation_title {
        Allemande
    }

    \markup {
        \override #'(baseline-skip . 15)
        \column {

            \line {

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"



                        s4^\markup \small "bar 5."
                        \relative b {
                            << {
                                b16 [as64 (b as b) as16
                                \breathe
                                g'='16]
                            } \\ {
                                fs,= 8.
                                r16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 8."
                        \relative cs' {
                            << {
                                cs32-- [( b cs16) \breathe a b]
                            } \\ {
                                <a,=, e'=> 8
                                r8
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 11."
                        \relative d' {
                            << {
                                d16 [cs64 (d cs d) cs16
                                \breathe
                                a'='16]
                            } \\ {
                                a,= 8.
                                r16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }

            \line {
                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 12."
                        \relative g {
                            << {
                                g16 [fs64 (g fs g) fs16
                                \breathe
                                d'='16]
                            } \\ {
                                d,= 8.
                                r16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 14."
                        \relative a {
                            a 16
                            cs
                            e
                            g
                            (fs32 [ g fs g
                            fs16) e]
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 19."
                        \relative c' {
                            << {
                                c16-- [b64 (c b32) a16 g]
                            } \\ {
                                g= 8
                                r16
                            } >>
                        }


                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }

            \line {

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 20."
                        \relative e' {
                            << {
                                e16-- [ds64 (e ds32) cs16 b]
                            } \\ {
                                b= 8
                                r16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 21."
                        \relative e {
                            << {
                                e16 [ds64 (e ds e) ds16
                                \breathe
                                b'=16]
                            } \\ {
                                b,=, 8.
                                r16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 23."
                        \relative g' {
                            << {
                                g16 [fs64 (g fs g fs16)
                                e16]
                            } \\ {
                                b= 4
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }
        }
    }

    \markup \ornamentation_title {
        Courante
    }

    \markup {
        \override #'(baseline-skip . 15)
        \column {

            \line {

                \score  {

                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 10."
                        \relative a' {
                            a16-- [gs64 (a gs32) fs16 e]
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {


                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"


                        s4^\markup \small "bar 21."
                        \relative gs {
                            \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
                            << {
                                gs16
                                fs
                                e
                                d'='
                                d [cs64 (d cs d cs16) b]
                            } \\ {
                                r8
                                e,=8~
                                e8.
                                r16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {
                    \new Staff {
                        \time 4/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 38."
                        \relative cs' {
                            \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
                            << {
                                cs16
                                b
                                a
                                g'='
                                g [fs64 (g fs g fs16) e]
                            } \\ {
                                r8
                                a,=8~
                                a8.
                                r16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }
        }
    }


    \markup \ornamentation_title {
        Sarabande
    }

    \markup {
        \override #'(baseline-skip . 15)
        \column {

            \line {

                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"


                        \relative d {
                            \grace^\markup \small "bar 2."
                            \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
                            << {
                                g'=' 32
                                fs64 (g fs g fs g fs 8)
                            } \\ {
                                \set tieWaitForNote = ##t
                                \stemUp
                                \grace { d,= 32~ [a'=] ~ }
                                <d,= a'= > 4
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s8^\markup \small "bar 4."
                        \relative d' {
                            \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
                            << {
                                \set subdivideBeams = ##t
                                \set baseMoment = #(ly:make-moment 1/8)
                                d=' 16 [cs32 (d)
                                \once \override Staff.Slur.positions  = #'(7.0 . 4.0)
                                \tuplet 3/4 { cs32  (d cs } d 64 cs d cs)]
                                b8
                                [a]
                            } \\ {
                                a= 4
                                s4
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s8^\markup \small "bar 6."
                        \relative d {

                            << {
                                \set subdivideBeams = ##t
                                \set baseMoment = #(ly:make-moment 1/8)
                                \once \override Staff.Slur.positions  = #'(4.5 . 4.0)
                                \tuplet 6/4 {a'= 32 [(gs a gs a gs~}
                                gs 16 )
                                e 32 (fs)]
                                s16
                            } \\ {
                                e= 8
                                [e,=, ~]
                                \hideNotes e16
                            } >>
                        }
                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }

            \line {

                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"


                        \relative a {
                            s4^\markup \small "bar 8."
                            \slurUp
                            a= 32^-- (gs a 16 ~ a8)
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s8^\markup \small "bar 10."
                        \relative as {
                            \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
                            << {
                                \once \override Staff.Slur.positions  = #'(5.5 . 4.5)
                                \tuplet 6/4 { as32 [( b as b as b } as 16) b8]
                            } \\ {
                                e,=8.
                                r16
                            } >>
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 11."
                        \relative fs' {
                            << {
                                fs 8 [
                                e 64 (fs e 32)
                                d16]
                            } \\ {
                                b= 8.
                                r16
                            }>>
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 16."


                        \relative d' {
                            \slurUp
                            d=' 32^-- (cs d 16 ~ d8)
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }
        }
    }


    \markup \ornamentation_title {
        "Menuet I"
    }
    \markup {
        \override #'(baseline-skip . 15)
        \column {

            \line {
                \score  {

                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 4."
                        \relative fs' {
                            << {
                                g=' 16 (fs g) fs ~ fs4
                            } \\ {
                                <d,= a'= > 2
                            } >>
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score {
                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 6."
                        \relative e' {
                            << {
                                e='8 [d cs 32 (d cs 16) b]
                            } \\ {
                                s4
                                e,,=,
                            } >>
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }

                \ornamentation_hspace

                \score {
                    \new Staff {
                        \time 3/4
                        \key d \major
                        \clef "treble_8"

                        s4^\markup \small "bar 13."
                        \relative e' {
                            e='8 [g fs 32 (g fs 16) e]
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }
        }
    }

    \markup \ornamentation_title {
        Gigue
    }
    \markup {
        \override #'(baseline-skip . 15)
        \column {

            \line {
                \score  {

                    \new Staff {
                        \time 6/8
                        \key d \major
                        \clef "treble_8"

                        s8.^\markup \small "bar 4."
                        \relative g' {
                            << {
                                g8 [ fs32 (g fs g fs8)]
                            } \\ {
                                <d,= a'=> 8.
                            } >>
                        }

                    }
                    \layout {
                        \context {
                            \Staff
                            \ornamentation_staff_defaults
                        }

                        \context {
                            \Score
                            \ornamentation_score_defaults
                        }
                    }
                }
            }
        }
    }
}