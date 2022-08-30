\version "2.22.2"

gigue_main =  \relative d' {

    \set fingeringOrientations = #'(up left)
    \set Staff.fingeringOrientations = #'(right)
    \set stringNumberOrientations = #'(up)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \stemNeutral

    \repeat volta 2 {
        \partial 8 a= 8 -1
        | % 1
        d -2
        a -1
        b -3
        b
        g -0
        a
        | % 2
        a -.
        d -.
        a -.
        fs -3
        d -0
        a'=

        | % 3
        << {
            d16 -3
            e -0
            fs 8 -2
            e
            e16 -0
            fs -2
            g 8 -3
            fs
        }
        \\ {
            \smallNoteHead
            <d,= _0 a'= -1> 4
            r8

            <a=, _0 a'=> 4
            r8
        } >>


        | % 4
        << {
            \once \trillAdjustForFingering
            <d= a'= fs'='> 4. \trill -32
            <a'= e'='> 4
            e'=' 8
            | % 5
            fs=' 8 -2
            cs -1
            d -3
            d
            b -0
            d -2

            | % 6
            e -4
            b -0
            cs -2
            cs
            a -1
            cs

            | % 7
            \override Script.padding = 0.5
            d -. -3
            fs -. -2
            d -.
            \revert Script.padding
            b -0
            fs -3
            <a ^1> \glissando

            | % 8
            <gs ^1>
            b
            e='
            e,= 4
            b'= 8 -0
        }
        \\ {
            \smallNoteHead
            s2.
            |
            s2 s8
            b,=, 8 -1
            |
            cs 4 -3
            r8
            a 4 -0
            r8
            |
            b=, 4 -1
            r8
            r4.
            |
            e= 4 -2
            r8
            e,=, 4
            r8
        } >>

        | % 9
        << {
            c''=' -1
            b
            d -4
            d
            c
            e -0

            | % 10
            e
            d
            f -1
            f
            e
            d

            | % 11
            c -2
            b -0
            a -3
            e -2
            a
            gs -1
        }
        \\ {
            \smallNoteHead
            a,=, 4
            r8
            b 4 -2
            r8
            |
            c 4 -3
            r8
            d= 4 -0
            r8
            |
            ds 4 -1
            r8
            s 4.

        } >>

        | % 12

        a'= 8
        e
        cs= -4
        a=, 4 -0

    }

    \break

    \repeat volta 2 {
        % include the "half bar" from source A?
        e''=' 8 -0

        | % 13
        << {
            e
            cs -3
            d -4
            d
            b -0
            cs
            | % 14
            cs16 -3
            d -4
            e 8 -0
            cs
            a -2
            g'=' -4
            fs -1


            | % 15
            fs
            d -2
            e -0
            e -0
            cs -2
            d -4

            | % 16
            d16 -2
            e -0
            fs 8 -1
            d
            b -0
            a'=' -4
            g -2
        }
        \\ {
            \smallNoteHead
            a,= 4 -2
            r8
            gs 4 -1
            r8
            |
            a= 4 -2
            r8
            a,=, 4
            r8
            |
            <b'= _3>4 \glissando
            \once \override NoteColumn.glissando-skip = ##t
            r8
            <as = _3>4 \glissando
            \once \override NoteColumn.glissando-skip = ##t
            r8
            |
            <b = _3>4
            r8
            b,=, 4 -1
            r8

        } >>

        | % 17
        << {
            e'=' 8 -0
            a -4
            g -2
            a,=
            g'='
            fs

            | % 18
            d -2
            g -3
            fs -1
            g,= -0
            fs'=' -2
            e -0

            | % 19
            d -3
            cs -1
            b -0
            fs
            b -4
            as -2

            | % 20
            b -4
            fs -3
            d -0
            b 4 -1
            d'=' 8 -3
        }
        \\ {
            \smallNoteHead
            cs=' 4 -1
            r8
            \barreBracket #6 #0
            a= 4 -1
            r8
            |
            b 4 -4
            r8
            g 4 -0
            r8
            |
            es= 4 -2
            r8
            fs 4 -3
            r8
            |
            s2.
        } >>

        | % 21
        << {
            e'=' 8 -0
            cs -2
            d -3
            gs 16 \fingeringShift #UP -1
            a -2
            b 8 -4
            cs,=' -3 \3

            | % 22
            d -4
            b -0
            c \fingeringShift #DOWN -4
            fs 16 -1
            g -2
            a 8 -4
            b,= -0

            | % 23
            c -1
            a -2
            b -0
            e 16 -0
            fs -2
            g 8 -3
            e

            | % 24
            cs 16 -2
            d -3
            e 8 -0
            cs
            a 4 -1
            e'=' 8
        }
        \\ {
            e,=4 -1
            r8
            e,=, 4
            r8
            |
            a=,4
            r8
            d= 4
            r8
            |
            g,=,4 -3
            fs 8 -1
            e 4
            r8
            |
            a=, 4 -0
            r8
            cs 4 -4
            r8
        } >>

        | % 25
        << {
            f'=' 8 -1
            e -0
            g -4
            g
            f
            a -4

            | % 26
            a
            g -2
            bf -4
            bf
            a -3
            g -1

            | % 27
            f \fingeringShift #DOWN -2
            e -0
            d -4
            a=
            d='-4
            <cs ^2> \glissando

            | % 28
            <d=' ^2>
            fs,= 16 -3
            g -4
            a 8 -1
            d,= -0
            fs -3
            a -1
        }
        \\ {
            \smallNoteHead
            d,=4 -0
            r8
            e 4 -2
            r8
            |
            f 4 -1
            r8
            g 4 -0
            r8
            |
            gs 4 -1
            r8
            a 4 -1
            r8
            | s2.
        } >>

        | % 29
        << {
            d=' 8 -4
            b 16 -0
            c! -1
            d 8
            fs,= -3
            g -0
            b -0


            | % 30
            e=' -0
            cs! 16 -1
            d -2
            e 8
            gs,= -1
            a -2
            cs -3


            | % 31
            fs -1
            d 16 -2
            e -4
            fs 8
            as,= -2
            b -0
            g'=' -2

            | % 32
            b,=  -0
            cs -1
            a'=' -4
            <cs,=' ^1> \glissando
            <d ^1>
            b'=' -4
        }
        \\ {
            \smallNoteHead
            b,,=, 4 -2
            r8
            r4.
            |
            cs 4 -3
            r8
            r4.
            |
            d 4 -0
            r8
            r4.
            |
            s2.
        } >>

        | % 33
        << {
            a'= 8 -1
            b 16 -0
            cs -1
            d -2
            e -0
            fs 8 -1
            d
            cs
        }
        \\ {
            \smallNoteHead
            a,=, 2.
        } >>

        | % 34
        d'=' 8 -2
        a -1
        fs -3
        \once \override Script.padding = 2
        d 4 _0 \fermata

    }
}

