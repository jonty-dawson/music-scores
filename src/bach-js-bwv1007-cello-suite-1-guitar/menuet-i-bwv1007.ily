\version "2.22.2"

upper =  \relative d {

    \set Staff.fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(up)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \stemNeutral

    \repeat volta 2 {
        << {
            | % 1
            \stemNeutral
            d8 -0
            a'= -1
            fs'=' 4 -2
            e8 -0
            fs16 -1
            (g) -2
            \stemUp

            | % 2

            fs 8
            e
            d
            cs
            d -2
            a -1

            | % 3
            b -0
            d -2
            g -3
            e -0
            cs -1
            a' -4
        }
        \\ {
            \smallNoteHead
            s2.
            |
            s2
            fs,= 4 _3

            |
            g= _0
            r
            a,=,

        }
        >>


        | % 4
        \once \trillAdjustForFingering
        <d= _0 a'= -1 fs'='> 2 \trill -42
        <a'= e'='> 4

        | % 5
        << {
            \stemNeutral
            e= 8 -1
            cs'=' -2
            g'=' 4 -4
            fs 8 -1
            g 16 -2
            (a) -4

            | % 6
            \stemUp
            g 8
            fs
            e -0
            d -2
            \once \trillAdjustForFingering
            cs \parenthesize \prall -12
            b -0

            | % 7
            cs -1
            d 16 -2
            (e -4)
            <d ^2>8 \glissando
            <cs ^2>
            b -0
            cs -3
        }
        \\ {
            \smallNoteHead
            |
            s2.
            |
            s2
            e,,=, 4
            |
            a=,
            r
            e'= -1
        } >>

        | % 8
        a= 4 -2
        e= -1
        a,=,

    }
    \repeat volta 2 {
        | % 9
        << {
            \stemNeutral
            a'= 8 -1
            cs -2
            e 4 -0
            d 8 -2
            e 16 -0
            (fs -1)

            | % 10
            \stemUp
            e 8
            d
            cs
            b
            \once \barreBracket #2 #0
            a -1
            cs

            | % 11
            fs,= 8
            a -1
            ds -4
            e -0
            \once \barreBracket #0 #-11
            \barreSpannerText #"II" #0
            fs \startTextSpan
            a=' -4

            | % 12
            e,= 8
            a'='
            g -2
            fs \stopTextSpan
            g 4
        }
        \\ {
            \smallNoteHead

            s2.
            |
            s2
            g,= 4 -4
            |
            fs -3
            r
            b,=,
            |
            e
            r
            <e,=, b''= -0>
        }
        >>


        | % 13
        << {
        as'= 8 -3
        cs -2
        e -0
        g -4
        \once \trillAdjustForFingering
        fs  \parenthesize \prall -42
        e

        | % 14
        fs=' -2
        b,= -0
        d,= -0
        e'='
        g
        fs
        }
        \\ {
            fs,,=, 4 -1
            s2
            |
            b=, 4
            s2
            |
        } >>

        | % 15
        << {
            e'=' 8 -0
            d -3
            (cs -2)
            b -0
            fs -4
            as -3
        }
        \\ {
            \smallNoteHead
            e= 4 -1
            r
            fs
        } >>

        | % 16
        << {
            \single \stemDown

        b,=, 4. -0
        b'= 8
        a= -2
        g -0
        }
        \\ {
            \single \stemUp
            b= 4.
            r4.
        } >>

        | % 17
        << {
            fs= 8 -3
            a -1
            d=' 4 -2
            a= 8 -2
            b16 -0
            (c -1)

            | % 18

            c 8
            a -2
            b
            g=
            g,=, -3
            fs'= -4
        }
        \\ {
            \smallNoteHead
            s2
            d= 4
            |
            g8 -0
            s8
            s2
        } >>

        | % 19
        << {
            gs= 8 -1
            b -0
            e 4 -0
            b 8
            cs 16 -2
            (d -3)

            | % 20
            d=' 8 -3
            b -0
            cs -2
            a= -1
            a,=,
            e'= -1
        }
        \\ {
            \smallNoteHead
            s2
            e= 4 -1
            |
            a -1
            s2
        } >>

        | % 21
        << {
            a= 8 -2
            cs -3
            e -0
            g -2
            fs -1
            a -4

            | % 22
            b,= -0
            d -3 \3
            fs -4
            a -1
            g -4
            % "Source B"
            b -3

            | % 23
            a -1
            cs,=' -2
            d -4
            fs,= -1
            a,=, -0
            cs'='-3 \3

            | % 24
            <d,= _0 d'=' ^4> 2.
        }
        \\ {
            \smallNoteHead
            a'= 4
            r
            d,=
            |
            b'=
            r
            e,= -2
            |
            s2.
            |
            s2.
        }
        >>
        |
    }
}
