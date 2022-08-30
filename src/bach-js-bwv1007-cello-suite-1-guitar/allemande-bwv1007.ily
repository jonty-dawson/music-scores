\version "2.22.2"



upper =  \relative d' {

    \set fingeringOrientations = #'(up right down)
    \set stringNumberOrientations = #'(up)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \stemDown


    \repeat volta 2 {
        \partial 16 fs16 -2

        | % 1

        \once \set fingeringOrientations = #'(right down)
        <d, -0 a' -1 fs' >4~ \arpeggio
        fs'16
        e -0
        d -2
        cs -1
        d
        a -1
        b -0
        cs -1
        d
        e
        fs -1
        g -2

        | % 2
        \stemNeutral

        a -4
        fs
        d
        cs
        d
        b
        a
        g -0
        fs -3
        g
        a
        b
        cs
        d
        e
        fs

        | % 3
        g
        e
        d
        cs
        d
        b
        cs
        d -3
        e, -1
        a -2
        cs -3
        d -4
        e -0
        fs -1
        g -2
        e

        | % 4
        fs
        d -2
        d
        a -1
        a
        fs -3
        fs
        d -4
        d8.
        fs'16
        g
        fs
        e
        d

        | % 5
        << {
            e -0
            fs -1
            g
            e
        }
        \\ {
            \smallNoteHead
            g,= 8. -0
            r16
        }
        >>

        \stemNeutral
        d'=' 16
        cs
        d
        e -4
        \once \trillAdjustForFingering
        <\single \smallNoteHead fs,= _2 as> 8. \trill -31
        g'16 -2
        fs -1
        e -0
        d
        cs

        | % 6
        d -2
        b -4
        b
        fs -3
        fs
        d -0
        d
        b -1
        b8.
        fs'16
        b -0
        d -2
        cs -1
        e -0

        | % 7
        << {
            d -2
            cs -1
            b -0
            cs
        }
        \\ {
            \smallNoteHead
            b= 8. -3
            r16
        }
        >>
        d=' 16
        gs -4
        d
        cs
        d
        gs
        b,
        cs
        d -2
        b -3
        e, -1
        d'

        | % 8
        \once \set fingeringOrientations = #'(right)
        \once \trillAdjustForFingering
        <\single \smallNoteHead a,=, _0 \single \smallNoteHead e'= -1 cs'='> 8 \mordent ^20
        a'= 16 -1
        b -0
        cs -2
        a
        d -3
        b -0
        cs
        a
        cs
        d
        e -0
        fs -2
        g -3
        e


        | % 9
        fs
        a, -1
        d, -0
        a'
        fs'
        d
        e
        cs
        d
        b
        d
        e -0
        fs -1
        gs -3
        a -4
        fs

        | % 10
        gs -3
        b, -0
        d, -0
        b'
        gs'
        e
        fs
        a
        gs
        e
        a
        fs
        gs
        e -0
        b' \fingeringShift #UP -4
        d, -3

        | % 11
        <\single \smallNoteHead a= _2_\4 cs='> 8. \trill -31
        a'16 -1
        e -0
        d \fingeringShift #DOWN -2
        cs -1
        b -0
        a -1
        e' -0
        d -3
        b -0
        cs -2
        a -1
        e' -0
        g, \fingeringShift #UP -3

        | % 12
        <\single \smallNoteHead d= _2 fs=> 8. \trill -31
        d'16 \fingeringShift #DOWN -2
        a -1
        g -0
        fs -3
        e -1
        d -0
        a'=
        g
        e
        fs
        d
        a'
        cs, -3

        | % 13
        b -1
        d -0
        e -2
        fs -4
        gs -1
        a -2
        b -0
        cs -2
        d -3
        e -0
        gs \fingeringShift #UP -1
        a -2
        b -4
        e, -0
        d'8 \fingeringShift #UP -4

        | % 14
        a,=16 -1 \4
        d'='' -4
        cs -3
        b -1
        cs -3
        a -4
        e -0
        a \fingeringShift #DOWN -4 \1
        \barreBracket #2 #0
        a, -1
        cs
        e -0
        g -2
        \once \trillAdjustForFingering
        fs8. \trill -21
        e16 -0


        | % 15
        \once \set fingeringOrientations = #'(right)
        <d,= _0 a'= -1 fs'=' ^2>8. \arpeggio
        e'=' 16 -0
        d -2
        cs -1
        b -0
        a' \fingeringShift #UP -2
        gs -1
        b -4
        e,=' -0
        d \fingeringShift #DOWN -3
        cs -2
        a -1
        e -2
        gs -1

        | % 16
        a,=, 8. -0
        e'16 -1
        a -2
        cs -3
        e -0
        gs -3
        a -4
        e -0
        cs
        a
        a,=,8.
    }

    \pageBreak

    \repeat volta 2 {

        e''=' 16 -0

        | % 17
        <a,= _1 e'='>4~
        e'16
        cs -2
        d -3
        e
        a,
        b
        cs
        d
        e -0
        cs
        a
        g -0

        | % 18
        fs -3
        a -1
        d -2
        cs -1
        d -2
        e -4
        fs -1
        g -2
        a -4
        fs
        e -0
        d -1
        << {
            c -3 \3
            b -2
            c
            a' -4
        }
        \\ {
            \smallNoteHead
            fs,= 8. -1
            r16
        }
        >>
        | % 19
        \stemUp
        %\once \hide Stem
        %\grace \parenthesize  c,!='16
        \once \trillAdjustForFingering
        < \single \smallNoteHead g= _2 b= -31> 8  \trill^\markup { \teeny \natural }
        \once \override Slur #'direction = #DOWN
        \once \override Fingering.padding = 1.75
        \appoggiatura a16 -\tweak Fingering.font-size #-3 \fingeringShift #DOWN -1
        g8 -0
        \stemNeutral

        g'16 -3
        e, -1
        fs -3
        g -4
        \once \override Beam.auto-knee-gap = #0
        a, -0
        g'' -2
        <fs -1> \glissando
        <g -1>
        << {
            a -4
            <fs -1> \glissando
            <g -1>
            e -0
        }
        \\ {
            \smallNoteHead
            c=' 8. -3
            r16
        }
        >>

        | % 20
        \once \trillAdjustForFingering
        <\single \smallNoteHead b_1 ds -32>8 \trill
        \appoggiatura cs16 -\tweak Fingering.font-size #-3 \fingeringShift #DOWN -2
        b8 -0
        fs'16 -2
        a, -1
        g -0
        fs -3
        g
        b -0
        cs -1
        d -2
        e -4
        g -2
        fs -1
        e -0

        | % 21
        a8 \fingeringShift #UP -3
        fs,=16 -1
        g -2
        a -4
        b -0
        c \fingeringShift #DOWN -1
        e, -3
        \once \trillAdjustForFingering
        <\single \smallNoteHead b=,_2 ds-31> 8. \trill
        b'=16 -0
        fs'=' -1
        a -4
        <g -2> \glissando
        <fs -2>

        | % 22
        << {
            \once \set fingeringOrientations = #'(right)
            <e,= _1 b' -0 g' ^4>8. \arpeggio
            fs'='16 -2
            e -0
            d -3
            c -1
            b -0
            c
            a -2
            f' -1
            e
            f
            g -3
            a -4
            <e -3> \glissando

            | % 23

            <ds -3>
            e -0
            % \single  \footnote #'(-0.75 . -4.0) "Source B" AccidentalCautionary
            fs? -1
            b,= -0
        }
        \\ {
            s4*4
            |
            \smallNoteHead
            b 8. -2
            r16
        }
        >>

        c -1
        a -2
        g -0
        fs -4
        g
        b
        e
        fs -1
        << {
            \once \trillAdjustForFingering
            fs8. -21 \trill
            e16 -0
        }
        \\ {
            b4 -0
        }
        >>

        | % 24
        <e,= b'_1 e >8. \arpeggio
        fs'='16 -2
        g -4
        fs
        g
        d -3

        << {
            cs -2
            d -3
            e -0
            b -3
        }
        \\ {
            \smallNoteHead
            a= 8. -1
            r16
        }
        >>

        a -1
        g -0
        fs -3
        e -1

        | % 25
        d -0
        a' -1
        cs -2
        g'=' -3
        fs -2
        e -0
        d \fingeringShift #UP -3 \3
        e -1
        fs -3
        g -4
        a -1
        b -3
        a
        b
        c -4
        a

        | % 26

        << {
            \stemDown
            b8
            d, _3
            g,=16 _0
            a' -1
            g -4
            fs -3
            \stemUp
            e -1
            fs
            g
            b -3
            <a -1>8. \glissando
            <g -1>16
        }
        \\ {
            \stemUp
            \smallNoteHead
            b=' 4 ^~ ^4
            b 16
            s 16*3
            \stemDown
            cs,='8. _2
            r16
            s4
        }
        >>

        | % 27
        << {
            \stemDown
            a'=' 8
            e _3
            fs,= 16 _2
            <g'=' -1> \glissando
            <fs -1>
            e -0
            \stemUp
            d -2
            cs -1
            b -0
            d
            fs -1
            a -4
            <g -2> \glissando
            <fs -2>
        }
        \\ {
            \stemUp
            \smallNoteHead
            a=' 4 ^~ ^4
            a 16
            s 16*3
            \stemDown
            b,= 8. _3
            r16
            s4
        }
        >>

        | % 28
        << {
            \stemDown
            g'=' 8
            d _3
            e,= 16 _1
            b' -0
            cs -2
            d -3
            \stemUp
            cs
            e -0
            fs -2
            g -3
            a, -1
            g -0
            fs -3
            e -1
        }
        \\ {
            \stemUp
            \smallNoteHead
            g'=' 4 ^~ ^4
            g 16
            s 16*3
            \stemDown
            a,= 8. -1
            r16
            s4
        }
        >>

        | % 29
        d,=16 -0
        a'= -1
        cs -2
        e -0
        g -3
        e
        cs
        a
        \once \set fingeringOrientations = #'(right)
        <d,= _0 a'= -1 fs'=' -2>8. \arpeggio
        a'= 16
        b -0
        d -2
        e -0
        gs -3

        | % 30
        << {
            a -4
            e -3
            cs -4
            b -0
            a \fingeringShift #DOWN -2
            c -1
            d -4
            fs -3
            g -4
            d -3
            b -0
            a -2
            g -0
            b -0
            e -0
            g \fingeringShift #UP -4 \2

            | % 31
            cs,=' -1
            e -0
            g -4
            b -3
            a8. -1
            g,= 16 -0
            fs \fingeringShift #DOWN -3
            d' -2
            e, -1
            d -0
            a=, -0
            e'= -1
            d'=' -3
            cs -2
        }
        \\ {
            \smallNoteHead
            cs,=8. _1
            r16
            s4

            b 8. _1
            r16
            s4

            | % 31
            a 8. _0
            r16
            s 2.

        }
        >>

        | % 32
        d'=' 16
        d,= -0
        \barreSpannerText #"VII" #0
        fs -3 \startTextSpan
        a -1
        d
        fs \stopTextSpan
        a -4
        cs -3
        d -4
        a -3
        \barreBracket #0 #-2
        fs -1
        d
        d,= 8.
    }


}

lower = \relative d {
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(down)
    \override Fingering.direction = #DOWN

    s1*32
}