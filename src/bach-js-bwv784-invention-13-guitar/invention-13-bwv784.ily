\version "2.22.2"

upper =  \relative fs {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP

    | % 1
    r16
    fs -4
    b -0
    d -3
    cs -2
    fs,
    cs'
    e -0

    d8 -3
    fs=' -2
    as, -2
    fs'

    | % 2
    b,=16 -0
    fs -3
    b
    d -4
    cs -2
    fs, -4
    cs'
    e

    d8 -3
    b
    r4

    | % 3
    r16
    fs'=' -2
    d -3
    fs
    b,=
    d
    fs,= -4
    a -2

    g8 -0
    b
    e
    g~ -2

    | % 4
    g16
    e
    cs -2
    e
    \barreBracket #2 #0
    a,=
    cs
    e,= -1
    <g -4> \glissando

    <fs -4>8
    a -2
    d -1
    fs~ -4

    | % 5
    fs16
    d -4
    b -0
    d \fingeringShift #DOWN -3 \2
    g,= 8
    e'=' ~
    e16
    \barreBracket #0 #-2
    cs
    a
    cs

    fs,=8 -3
    d'='~ -3

    | % 6
    d16
    b
    g
    b
    e,= 8 -1
    cs' -3
    d -4
    r
    r4

    | % 7
    r16
    a= -1
    d -2
    fs -1
    e -0
    a,
    e'
    g -2
    fs8 -1
    a -4
    \barreBracket #0 #-5
    cs,='
    a'='

    | % 8
    d,='16 -2
    a -1
    d
    fs -1
    e
    a,=
    e'
    g -2

    \barreBracket #0 #-5
    fs8
    d
    a'=' -4
    fs

    | % 9
    d'=''16 \fingeringShift #UP -4
    b -1
    \barreBracket #3 #0
    fs
    b
    \barreBracket #2 #0
    d,='
    fs
    b,= -0
    d -2

    e8 -0
    gs -4
    b -3
    <d -4> \glissando

    | % 10
    <cs=''-4> 16
    a -1
    e -0
    a -4
    cs, -2
    e
    \barreBracket #2 #0
    a,=
    cs

    d8 -2
    fs -1
    <a -4> \glissando
    <cs -4>

    | % 11
    b='16 -2
    gs -4
    es -1
    gs
    cs, -3
    es -4
    gs, \fingeringShift #DOWN -1
    b -0

    a=8 -1
    a'='~ -4
    a16
    fs -1
    d -2
    fs -2

    | % 12
    b,=8
    gs'~-4
    gs16
    e
    cs -2
    e

    a,=8 -1
    fs'~ -1
    fs16
    d -2
    b -0
    d -3

    | % 13
    gs,=16 -1
    \once \override Fingering.padding = #1.0
    <a'=' -4> \glissando
    <gs -4>
    fs -2
    es -4
    gs -2
    cs,=' -3
    <es -4> \glissando
    \once \override Fingering.padding = #1.0
    <fs -4>8
    r8
    r4

    | % 14
    r16
    a=' -4
    c -4
    a -2
    fs -4
    a -1
    ds,=' -1
    fs -4

    a -1
    fs
    ds -1
    fs
    b,=16 -0
    r16
    r8


    | % 15
    r16
    g'=' -4
    b -3
    g
    e -0
    g \fingeringShift #DOWN -3 \1
    cs,=' -1
    e

    g -2
    e
    cs -1
    e
    a,= -1
    r16
    r8

    | % 16
    r16
    fs'=' -1
    a -4
    fs
    d -2
    fs
    b,= -0
    d -4

    es -1
    d
    b
    d
    gs,= -1
    r16
    r8

    | % 17
    r16
    e'=' -0
    g -2
    e
    cs -2
    e
    as,= -1
    cs -4

    e -0
    cs
    as -1
    cs
    fs,= -1
    r16
    r8

    | % 18
    r16
    fs= -1
    b -0
    d -3
    cs -2
    fs, -4
    cs'='
    e

    d8 -3
    b
    as -2
    fs16 -4
    e -1

    | % 19
    b'= 16 -0
    d -2
    fs -1
    d
    b
    d
    gs,= -1
    b

    d -2
    b
    gs -1
    b
    es,= -2
    \once \override Fingering.padding = #1.0
    <d'=' -2> \glissando
    <cs -2>
    b -0

    | % 20
    as -2
    cs -2
    e -0
    cs -2
    as -2
    cs -1
    e
    <g -4> \glissando

    <as -4>
    g -1
    e
    g
    cs,=' -2
    g' -4
    fs -2
    e

    | % 21
    d=' -3
    fs -2
    b \fingeringShift #UP -3
    <fs -2 \2> \glissando
    <d -2>
    fs -1
    b,= -0
    d -4

    es -1
    d -4
    b
    d
    gs,= -2
    d'=' -4
    cs -3
    b -0

    | % 22
    r16
    cs -1
    as -2
    fs -4
    e -2
    cs'=' -3
    as -4
    e

    r16
    fs -3
    b -0
    d -3
    cs -2
    fs, -4
    cs'='
    e

    | % 23
    d -3
    b -0
    d -2
    fs -1
    e -0
    cs -1
    e
    g -4

    fs -2
    d -3
    fs
    a -4
    g -3
    fs -2
    e -0
    d -4

    | % 24
    cs? -2
    d -4
    e
    fs -2
    g -4
    e
    as -4
    e
    cs'='' -4
    e,='
    d -3
    <b'=' -4> \glissando
    <g -4>
    e
    cs -2
    e -0

    | % 25
    as,= -3
    cs -1
    d -4
    b -0
    fs -3
    b
    cs -2
    as -3

    b
    fs -4
    d -0
    fs
    b,=, 4

   \bar "|."

}

lower =  \relative b, {

    \override Rest.staff-position = #-8
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(down)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5

    | % 1
    b4 -1 ~
    b8
    as8 -1

    \barreBracket #0 #-3
    b16
    fs
    b -1
    d -0
    cs -3
    \barreBracket #14 #0
    fs,
    cs'
    e

    | % 2
    d8 -4
    b -1
    as -1
    fs -1

    \barreBracket #0 #-3
    b=,16
    fs
    b -1
    d
    cs -3
    fs, -1
    cs'=
    e -1

    | % 3
    d8
    b -1
    d
    b

    e=16 -1
    b -1
    g -2
    b
    e -1
    g -0
    b,=, -1
    d -0

    | % 4
    cs=8 -3
    e -1
    a,=, -0
    cs~ -3

    cs16
    a
    fs -1
    a
    d -0
    fs -2
    a,
    cs -1

    | % 5
    <b -3 \6>8
    d -0
    e16 -1
    g,=, -2
    cs -3
    e

    a,=,8
    cs
    d16 -4
    fs,=, -1
    b -1
    d -0

    | % 6
    g,=, 8 -2
    e
    a16 -0
    a'= -2
    g -0
    a

    d,= -0
    a
    d
    fs -3
    e -1
    a,=,
    e'
    g

    | % 7
    fs8 -3
    d
    cs -3
    a

    d16
    a
    d
    fs
    e
    a,=,
    e'
    g -0

    | % 8
    fs8 -3
    d
    r4
    r16

    a'=
    fs
    a
    d,=
    fs
    a
    cs

    | % 9
    b8 -0
    d,= -0
    fs -3 \5
    <a -1 \4> \glissando

    \once \override Fingering.padding = #1.5
    <gs -1>16
    b -0
    e,= -2 \5
    gs
    b
    e -1 \2
    gs,= -1
    b

    | % 10
    a8 -2
    cs,= \fingeringShift #DOWN -2 \5
    e -1
    gs -4

    fs16 -3
    a
    d,=
    fs
    a -1
    d -2
    fs,= -3
    <a -1> \glissando

    | % 11
    <gs= -1> 8
    b, -2 \6
    cs= \fingeringShift #DOWN -1 \5
    es -3

    r16
    fs -3
    d -0
    fs
    b,=, -1
    d
    fs
    <a -1> \glissando

    | % 12
    <gs -1>
    e -2
    cs -3
    e -1
    a,=,
    cs
    e -1
    gs -1

    fs -3
    d -0
    b -2
    d
    gs,=, -3
    b -1
    d8~

    | % 13
    d16
    cs -3
    d -0
    <b -1> \glissando
    <cs -1> 8
    cs'='
    fs,=16 -1
    fs'
    cs -3
    a \fingeringShift #DOWN -1
    fs -3
    cs -2
    a -0
    cs

    | % 14
    fs,=,8 -1
    fs' \fingeringShift #UP -1
    a -3
    c -2

    ds,= -2
    r8
    r16
    a'= -4 \4
    g -2
    fs -1

    | % 15
    e8 -2 \5
    e
    g -0
    bf -2

    cs,= -3
    r8
    r16
    g'= -4
    fs -3
    e -1

    | % 16
    d8 -0
    d
    fs -3
    gs -1

    b,=, -2
    r8
    r16
    fs'= -4
    es -3
    ds -1

    | % 17
    cs8 -3
    cs
    e -1
    g -3

    as,=, -3 \6
    r8
    r16
    e'= -4
    d -2
    cs -1

    | % 18
    d8 -2
    b \fingeringShift #DOWN -1
    as -1
    fs -1

    \barreBracket #0 #-4
    b=,16
    fs
    b -1
    d
    cs -3
    fs,=, -1
    cs'
    e


    | % 19
    d16 -0
    fs -3
    b -0
    fs
    d
    fs
    b,=, -2
    d

    gs,=, -3
    b -1
    d
    b -1
    gs -3
    b -1
    es,=, -1
    gs -3

    | % 20
    fs8 -1
    as -1
    cs -3
    as -1

    fs'= -2
    cs -2
    as -1
    fs=, -1

    | % 21
    b -1
    d -0
    fs -3
    d

    b -2
    d
    es,=, -1
    r8

    | % 22
    as'= -2
    cs,= -3
    as -1
    fs -1

    d'= \fingeringShift #UP -4
    b -1
    as -1
    fs -1

    | % 23
    b=, -1
    gs -3
    cs -3
    as -1

    d -0
    b -1
    e -1
    c -3

    | % 24
    as -1
    g -3
    e
    cs'= \fingeringShift #UP -1

    as \fingeringShift #UP -1 \6
    b -2 \6
    e,=,
    fs -1

    | % 25
    g -2
    es -1
    fs -1
    fs
    b4 -1
    b

   \bar "|."

}