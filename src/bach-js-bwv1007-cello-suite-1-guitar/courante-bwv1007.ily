\version "2.22.2"

upper =  \relative d' {

    \set fingeringOrientations = #'(up left)
    \set stringNumberOrientations = #'(up)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \stemNeutral

    \repeat volta 2 {
        \stemDown
        \partial 8 d=' 8 -2
        | % 1
        d
        a _1
        d,= _0
        fs'=' 16 -1
        g -2
        a -4
        g
        fs
        e -0

        | % 2
        fs='8
        a,
        d,=
        d'=' 16 -2
        e -0
        fs 8 -1
        d

        | % 3
        b
        g _0
        g,=, _2
        e''=' 16
        fs
        g
        fs
        e
        d -3

        | % 4
        cs 8
        a _1
        a,=, _0
        a' 16 -1
        b -3
        cs -1
        d -2
        e -0
        fs -1

        \stemNeutral
        | % 5
        g -2
        fs -1
        g
        e -0
        g
        (fs
        g)
        e
        a,= -1
        g' -3
        fs
        e

        | % 6
        fs -2
        e -0
        fs
        d -3
        fs
        (e
        fs)
        d
        g,= -0
        fs' -1
        e -0
        d -2

        | % 7
        \stemDown
        cs -1
        e -0
        a -4
        a,= -1
        d 8 -2
        fs,= -3
        a,=, -0
        cs' -1

        | % 8
        \stemNeutral
        <d,= _0 d' ^2> 4.
        fs'=' 16 -1
        e -0
        d
        cs
        b
        a -1

        | % 9
        b'=' 8 -4
        gs -1
        e -0
        fs 16 -1
        gs -3
        a -4
        cs, -1
        b -0
        a -2

        | % 10
        e= 8 -1
        a'=' -4
        \once \trillAdjustForFingering
        gs \trill -43
        fs 16 -1
        e -0
        a
        e
        fs -3
        cs -2

        | % 11
        \stemUp
        d=' -4
        cs -2
        d
        b -0
        \stemNeutral
        d
        (cs
        d)
        b
        e,=
        d'='
        cs
        b

        | % 12
        \stemUp
        cs -2
        b -0
        cs
        \stemNeutral
        a -1
        cs
        (b
        cs)
        a
        d,=
        cs'=' -2
        b -0
        a -2

        | % 13
        \stemUp
        <a'=' -4> \glissando
        <gs -4>
        fs -2
        e -0
        \stemNeutral
        a 8 -4
        gs 16 -3
        fs -1
        e -0
        d
        cs
        b

        | % 14
        a -1
        (b) -3
        a -1
        cs -2
        a
        (b)
        a
        d -2
        a
        (b)
        a
        e'=' -4

        | % 15
        a,=
        (b)
        a
        fs'=' -2
        a,=
        (b)
        a
        gs'=' -3
        a,=
        (b)
        a
        a'=' -4

        | % 16
        \stemUp
        d,=' -2
        cs -1
        b -0
        a -2
        \stemNeutral
        gs -1
        fs -4
        e -2
        d'=' -4
        \once \trillAdjustForFingering
        cs 8. \trill -43
        b 16 -0

        | % 17
        \stemUp
        e -0
        d -2
        fs -1
        e -0
        d -2
        cs -1
        b -0
        a -3
        e 8 -2
        gs -1

        | % 18
        \stemNeutral

        a,=,  2~ _0
        a  8
    }
    \repeat volta 2 {
        e''=' 8 -0
        | % 19
        e='
        cs=' _2
        a _1
        b 16 -0
        cs -1
        d -2
        cs
        b
        a

        | % 20
        \stemDown
        a'=' 8
        cs, _1
        g _0
        fs16 -3
        g -0
        \stemNeutral
        a -1
        g
        fs
        e -1

        | % 21
        fs -3
        d'=' -2
        e -0
        fs -1
        g -2
        fs
        e
        d
        cs 8 -1
        a'=' -4

        | % 22
        fs -1
        d
        d,= -0
        fs'=' 16
        e
        g
        fs
        e
        d

        | % 23
        e 8
        cs _1
        as 16 _2
        e'='
        fs
        g
        fs
        e
        d
        cs

        | % 24
        \stemDown
        d 8
        b _4
        b,=, _1
        d'=' 16
        cs -1
        \stemNeutral
        e -0
        d -3
        cs -2
        b -0

        | % 25
        c -1
        b -0
        c
        e -0
        c
        (b
        c)
        e
        g -2
        fs -1
        g
        e

        | % 26
        << {
            as=' 4~ -4
            as 16
            g!=' -2
            fs -1
            e -0
        }
        \\ {
            \set fingeringOrientations = #'(down right)
            \smallNoteHead
            <fs,= _1 cs'=' -3> 4
            s4
        }
        >>

        d'=' 16 -2
        cs -1
        e -0
        as,= -2

        | % 27
        d,= 8 -0
        fs'=' -1
        e 16
        d
        cs
        b
        fs 8 -3
        as -2

        | % 28
        b,=,  4. -1
        b'= 16 -0
        cs -1
        d
        e
        fs
        g


        | % 29
        \stemDown
        a 8
        c,=' _3
        fs,= _1
        b 16 -0
        c -1
        d -3
        c
        b
        a


        | % 30
        b 8
        g _0
        g,=, _3
        g'= 16 -0
        a -1
        b -0
        cs -1
        d
        b

        | % 31
        \stemUp
        gs
        d'=' -4
        e -0
        d
        e
        d
        gs,=
        d'='
        gs,=
        d'='
        e
        d

        | % 32
        g,!=
        cs -4
        e -0
        cs
        e
        cs
        g
        cs
        g
        cs
        e
        cs

        | % 33
        fs,=
        a -1
        b -0
        c -1
        d,=
        c' -1
        b -0
        a -1
        b -3
        a'=' -4
        <g -2> \glissando
        <fs -2>

        | % 34
        cs -1
        e -0
        fs -2
        g -3
        a,= -1
        g'='
        fs
        e
        \stemNeutral
        fs 8
        d,= _0

        | % 35
        g,=, _2
        fs''=' 16 -1
        e -0
        g -2
        fs
        e
        d -3
        a= 8 -1
        cs -2

        | % 36
        d,= 16 -0
        (e) -1
        d
        fs -3
        d
        (e)
        d
        g -4
        d
        (e)
        d
        a'= -1


        | % 37
        d,=
        (e)
        d
        b'= -3
        d,=
        (e)
        d
        cs'=' -1
        d,=
        (e)
        d
        d'=' -2

        | % 38
        \stemUp
        g=' -3
        fs -2
        e -0
        d -2
        cs -1
        b -0
        a -1
        g'=' -4
        \once \trillAdjustForFingering
        fs 8. \trill -42
        e 16 -0

        | % 39
        a=' -4
        g -2
        a
        fs -1
        a
        (g
        a)
        fs
        b,= -0
        a'='
        <g -2> \glissando
        <fs -2>

        | % 40
        g -4
        fs -2
        g
        e -0
        g
        (fs
        g)
        e
        a,= -1
        g'=' -2
        fs -1
        e -0

        | % 41
        fs
        e
        fs
        d
        g,= -0
        fs'=' -2
        e -0
        d -3
        a 8 -1
        cs -2

        | % 42
        <d,= d'> 2~
        <d= d'> 8

    }
}

lower = \relative d {
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(down)
    \override Fingering.direction = #DOWN

    \repeat volta 2 {
        \smallNoteHead
        \partial 8 s8
        | % 1
        \stemUp
        d'='4^~
        d8
        s4.

        | % 2
        fs='4^~ ^2
        fs8
        s4.

        | % 3
        b,=4^~ ^0
        b8
        s4.

        | % 4
        cs='4^~ ^2
        cs8
        s4.

        | % 5
        s2.
        | % 6
        s2.
        | % 7
        s2.
        | % 8
        s2.
        | % 9
        s2.
        | % 10
        s2.

        \stemDown
        | % 11
        b,=, 4 -1
        s4
        e

        | % 12
        a,=, 4 -0
        s4
        d=
        | % 13
        e= 4 -1
        s2
        | % 14
        a,=, 4 -0
        s2
        | % 15
        s2.
        | % 16
        d= 4 -0
        r8
        e8_~ -2
        e4
        | % 17
        cs= 4 -3
        d -0
        e -2
        | % 18
        s8*5
    }
    \pageBreak
    \repeat volta 2 {
        \smallNoteHead
        \stemUp
        s8
        | % 19
        e'=' 4^~
        e8
        s4.
        | % 20
        a=' 4^~ ^4
        a8
        s4.
        | % 21
        s2.
        | % 22
        s2.
        | % 23
        e=' 4^~ ^0
        e16
        s16
        s4.
        |
        | % 24
        d=' 4^~ ^3
        d8
        s4.
        |
        s2.*4
        | % 29
        a'='4^~ ^4
        a8
        s4.
        | % 30
        b,= 4^~ ^0
        b8
        s4.
        | % 31
        \stemDown
        gs= 4~ _3 \4
        gs 8 \noBeam
        gs
        gs 4
        | % 32
        g= 4~ \fingeringShift #DOWN _3
        g 8 \noBeam
        g
        g 4
        | % 33
        fs8 _3
        r
        d _0
        r
        b'=
        r
        | % 34
        cs
        r
        a
        r
        s4
        |
        s2.*3

        | % 38
        g= 4 _0
        r8
        a8~ \noBeam
        a8.
        r16
        | % 39
        fs= 4 _3
        r4
        g _0
        | % 40
        e= 4 _1
        r4
        cs _3
        | % 41
        d= 4 _0
        g
        a
        |
        s8*5
    }
}