\version "2.22.2"

upper =  \relative d {

    \set Staff.fingeringOrientations = #'(left up)
    \set Staff.stringNumberOrientations = #'(up)
    \set Staff.strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \stemNeutral

    \repeat volta 2 {
        | % 1
        <d= _0 a'= -1 fs'=' -2> 4
        << {
            g'=' 4. -4
            fs 8
        }
        \\ {
            \smallNoteHead
            \set Staff.fingeringOrientations = #'(right)
            \once \override Arpeggio.positions = #'(-2.5 . 2.5)
            <d,= b'= -0> 2 \arpeggio
        }
        >>
        | % 2

        << {
        cs'=' 16 -1
        e -0
        fs -2
        g -4
        \once \trillAdjustForFingering
        <d,= _0 a'= -1 fs'='> 4 \trill-42 \arpeggio
        e'=' 8 -0
        d -2
        } \\ {
            <a,=, _0 cs'='> 4
            s
            s
        } >>
        | % 3
        << {
        a''=' 8 -4
        c,=' -3


        b8 -0 ~ [
            \override Fingering.staff-padding = #3.5
            \once \override Voice.Rest #'staff-position = #2
            \override Staff.StrokeFinger.avoid-slur = #'around
            b 32 a -4-\rightHandFinger #2 \4 g-2-\rightHandFinger #1 (fs-1)]
            % Sources notate as dotted 8th followed by 3 x 32nd. Many editions show these
            % as a 32nd triplet.
            % b 8.
            % \omit TupletNumber
            % \omit TupletBracket
            % \tuplet 3/2 { a 32 g fs }
            g8 -2-\rightHandFinger #2
            b -0-\rightHandFinger #3
            \revert Fingering.staff-padding
        } \\ {
            \smallNoteHead
            fs= 4 _1
            g_0
            s
        } >>
        | % 4
        << {
            cs=' 16 \fingeringShift #DOWN -2
            g'=' -4
            fs -2
            d -4
            \once \trillAdjustForFingering
            cs 4 \trill -42
            b 8 -0
            a
        } \\ {
            \smallNoteHead
            e= 8 _1
            d _0
            a'= 4 _1
            s4
        } >>

        | % 5
        << {
        e'=' 16 -0
        \once \barreBracket #0 #-2
        cs -1
        a
        g -0
        fs 8. -3
        d 16 -0
        fs
        a -1
        d -2
        e -0
        } \\ {
            \smallNoteHead
            cs,=4 _3
            d= _4
            fs=
        } >>
        | % 6
        << {
        fs'=' 16 -1
        d -2
        b -0
        a -3
        \once \trillAdjustForFingering
        gs 8. \trill -31
        e 32 -2 (fs -4)
        gs 16
        a -2
        b -0
        cs -1
        } \\ {
            \smallNoteHead
            d,= 4 _0

            \once \override Fingering.padding = #'()
            \once \set fingeringOrientations = #'(right)
            \once \override Fingering.add-stem-support = ##f
            \once \override Fingering.extra-offset = #'(0 . -1.5)
            <e= -2>8
            e,=, ~
            e 4 ~
        } >>

        | % 7
        << {
        d''=' 16 -2
        gs=' -3
        a -4
        gs
        a
        e -0
        d -3
        cs -2
        b -0
        d -2
        \once \barreBracket #0 #-2
        cs -1
        a
        }
        \\ {
            \smallNoteHead
            e,=, 4
            fs=, _1
            gs 8 _3
            a _0
        } >>

        | % 8
        << {
        e'= 16 -2
        a -3
        b -0
        gs -1
        \once \trillAdjustForFingering
        a 4 \parenthesize \mordent -21
        a,=,
        } \\ {
            \smallNoteHead
            e'= 8
            e,=,
            s2

        } >>

    }
    \repeat volta 2 {
        | % 9
        \once \set Staff.fingeringOrientations = #'(left)
        <a=, _0 e'= -1 cs'=' ^2> 8
        b'= 16 -0
        a -2
        <a,=, e'= cs'=' g'=' ^4> 4. \arpeggio
        fs''=' 16 -3
        e -0

        | % 10
        \once \barreBracket #0 #4
        <d,= _0 a'= fs'=' ^1> 16
        cs'='
        d -2
        b -3
        \once \trillAdjustForFingering
        <e,= as> 8. \trill -31
        b'= 16 -3
        cs -1
        d -2
        e -4
        fs -1

        \break

        | % 11
        <<  {
        as,= -2
        e'=' -0
        fs -1
        g -2
        fs 8
        % Sources A and B have trill on the E, though most editions show it on preceeding F#.
        % Makes sense on the E as a written-out prepared trill, with the F# the appoggiatura.
        % Consistent with mm 10-11 interpreted as a hemiola.
        \once \trillAdjustForFingering
        e 16 -0-1 \trill
        <d ^2> \glissando
        <cs ^2>
        b -0
        e -0
        <cs ^2>  \glissando
        } \\ {
            \smallNoteHead
            <fs,= _3 as > 4
            b= 4 _3
            e,= 8 _1
            g _0
        } >>

        | % 12
        << {
        \once \override Fingering.padding = 2.0
        <d'=' ^2>16 \glissando
        \once \override NoteColumn.glissando-skip = ##t
        b -4
        \once \override Fingering.padding = 2.0
        <cs ^2>
        as -3
        b= 4 -4
        b,=, _1
        } \\ {
            \smallNoteHead
            fs'= 8 _3
            fs,=, _1
            s2
        } >>

        | % 13

        <fs'= _4 a ^2> 8.
        \once \override Staff.Fingering.slur-padding = #0.75
        b32 -0 (c -1)
        <g,=, _3 d'= -0 b'= ^0> 8. \arpeggio
        cs'=' 16 -2
        d -3
        e -0
        fs -2
        g -3


        | % 14
        ds,= -1
        a''=' -4
        g -3
        fs -2
        \set Staff.fingeringOrientations = #'(left)
        <e,= _1 b'= -0 g'=' ^4> 8.
        fs'=' 16 -2
        e -0
        d -2
        cs -1
        b -0

        | % 15
        << {
            a4 -1
            r 16
            b= -0
            cs -1
            d -2
            e -0
            g -2
            fs -1
            d -3
        }
        \\ {
            r16
            fs,= _3
            g _4
            e -1
            fs4
            \single \smallNoteHead g _0
        }
        >>

        | % 16
    }

    \alternative {
        {
            << {
                a= 16 -1
                d -3
                e -0
                cs -2
                \once \trillAdjustForFingering
                d4 \parenthesize \mordent -32
                d,=
            } \\ {
                \smallNoteHead
                a'= 8
                a,=,
                s2
            } >>

        }
        {
            << {
                a'= 16
                d
                e
                cs
                \smallNoteHead
                cs 8
                d 16 cs
                d 32 (cs d 16~) d8

            } \\ {
                \smallNoteHead
                a= 8
                a,=,
                d= 2
            } >>
            \bar "|."
        }


    }
}
