\version "2.22.2"

upper =  \relative d {

    \set fingeringOrientations = #'(up left down)
    \stemDown

    d16 _0
    a' -2
    fs' -3
    e -0
    fs
    a,
    fs'
    a,
    d,
    a'
    fs'
    e
    fs
    a,
    fs'
    a,

    | % 2
    d,=
    b' -0
    g' -4
    fs -3
    g
    b,
    g'
    b,
    d,
    b'
    g'
    fs
    g
    b,
    g'
    b,

    | % 3
    d,
    cs' -2
    g' -4
    fs -3
    g
    cs,
    g'
    cs,
    d,
    cs'
    g'
    fs
    g
    cs,
    g'
    cs,

    | % 4
    d,
    d' -3
    fs -2
    e -0
    fs
    d
    fs
    d
    d,
    d'
    fs
    e
    fs
    d
    fs
    cs -1

    | % 5
    d,
    b' -0
    fs' -2
    e -0
    fs
    d -3
    cs -1
    d
    \stemNeutral
    b -0
    d \fingeringShift #UP -4
    cs -3
    d
    fs, -1
    a -4
    gs -3
    fs -1

    | % 6
    gs _3
    d' -4
    e -0
    d
    e
    d
    e
    d
    gs,
    d'
    e
    d
    e
    d
    e
    d

    | % 7
    <\single \smallNoteHead a -4 cs -3>
    e' -0
    a -2
    gs -1
    a
    e
    d \fingeringShift #DOWN -3
    e
    cs -2
    e
    d
    e
    a, -1
    cs -2
    b -0
    a -2

    | % 8
    b,=, _1
    fs' -4
    d' -3
    cs -1
    d
    fs,
    d'
    fs,
    b,
    fs'
    d'
    cs
    d
    fs,
    d'
    fs,

    | % 9
    b, _2
    gs' -1
    a -2
    b -4
    a
    (gs)
    fs -4
    e -2
    d' -4
    cs -3
    b -0
    a' -4
    gs -3
    fs -1
    e -0
    d -2

    | \barNumberCheck #10
    << {
        \override Fingering.staff-padding = #4.5
        cs=' 16 -1
        (b= -0)
        a= 16 -1
        a' -4
    } \\ {
        \single \smallNoteHead a,,=, 8 -0
        s8
    } >>
    e''='16 -3
    a
    cs, -1
    e -0
    a,
    b
    cs
    e
    d
    cs
    b
    a -2

    | % 11
    <\single \smallNoteHead a,=, ds'=' -4>
    a'= -2
    c -1
    b -0
    c
    a
    ds
    a
    fs' -3
    a,
    c
    b
    c
    a
    ds
    a

    | % 12
    g _0
    b -0
    e -0
    fs -1
    g -2
    e
    b -3
    a -1
    g
    b -0
    e
    fs
    g
    e
    cs -1
    b -0

    | % 13
    << {
        as=16 -2
        cs -1
        as
        cs
    } \\ {
        \single \smallNoteHead
        fs,=8 -3
        s8
    } >>
    e'='16
    cs
    e
    cs
    as
    cs
    as
    cs
    e
    cs \fingeringShift #DOWN -2
    e
    cs

    | % 14
    << {
        \override Fingering.staff-padding = #3.5
        d='16 -3
        (cs -2)
        b -0
        d
    } \\ {
        \single \smallNoteHead
        b,=,8 -1
        s8
    } >>
    cs'='16
    d
    e
    cs
    d
    cs
    b
    a -2
    g -0
    fs -4
    e -2
    d -0

    | % 15
    cs _3
    g' -4
    a -1
    g -0
    a
    g -4
    a
    g -4
    cs,
    g'
    a
    g
    a
    g
    a
    g

    | % 16
    d _3
    fs -2
    c' -4
    b -1
    c
    fs,
    c'
    fs,
    d
    fs
    c'
    b
    c
    fs,
    c'
    fs,

    | % 17
    d _3
    g -4
    b -2
    a -1
    b
    g
    b
    g
    d
    g
    b
    a
    b -2
    g -4
    b -0
    g -0

    | % 18
    d _0
    cs' \fingeringShift #DOWN -2
    g' -4
    fs -3
    g
    cs,
    g'
    cs,
    d,
    cs'
    g'
    fs
    g
    cs,
    g'
    cs,

    | % 19
    d,=
    a' -1
    fs' -2
    e -0
    fs
    d -3
    cs -1
    b16 -0
    << {
        \override Fingering.staff-padding = #2.5
        a -1
        (g -0)
        fs -3
        e -1
    } \\ {
        s4
    } >>

    d16 -0
    cs -3
    b -1
    a -0

    | \barNumberCheck #20
    gs=, _3
    e' -1
    b' -0
    cs -1
    d -2
    b
    cs
    d
    gs,,=,
    e'
    b'
    cs
    d
    b
    cs -2
    d -4

    | % 21
    g,,=, _3
    e' -1
    a -2
    b -0
    cs -2
    a -1
    b
    cs
    g,=,
    e'
    a
    b
    cs
    a
    b
    cs

    | % 22
    g,=, _3
    e' -1
    a -2
    cs -3
    e -0
    gs -3
    \once \override Script.padding = #2
    a8~ -4 \fermata
    a16
    e, -1
    fs -3
    g -0
    a -1
    b -0
    cs -1
    d -2

    | % 23
    e -0
    cs -2
    a -1
    b -0
    cs -1
    d -2
    e
    fs -1
    g -2
    e
    cs
    d
    e
    fs
    g
    \once \override Fingering.padding = #1.5
    <a -4> \glissando

    | % 24
    \once \override Fingering.padding = #1.5
    <bf -4>
    a -3
    gs -2
    (a -4)
    a
    g -2
    fs -1
    (g -3)
    g
    e -0
    cs -2
    b -0
    \barreBracket #0 #-3
    a -1
    e
    fs -3
    g -0

    | % 25
    a, _0
    e' -1
    a -2
    cs -3
    e -0
    fs -1
    g -2
    e
    fs
    d -2
    a -1
    g -0
    fs -3
    d -0
    e -1
    fs

    | % 26
    a,=,
    d
    fs
    a
    d
    e
    fs
    d
    gs -4
    % \single  \footnote #'(-0.75 . -4.0) "Johann Kellner ('Source B')" AccidentalCautionary
    fs? -2  % Source B
    e -0
    (f -1)
    f
    e -0
    ds -3
    (e -4)

    | % 27
    e -4
    d? -2
    cs -1
    (d)
    d
    b -0
    gs -1
    fs -4
    e -2
    gs
    b
    d
    e -0
    gs -3
    a -4
    gs

    | % 28
    a
    e
    cs -3
    b
    cs
    e
    a, -2
    cs
    e, -2
    a -3
    gs -1
    fs -4
    e -2
    (d -0)
    cs -4
    b -2

    | % 29
    a=,8
    g''16 -3
    fs -2
    e -0
    d -3
    cs -2
    b -0
    a -1
    g'
    fs
    e
    d
    cs
    b
    a -2

    | \barNumberCheck #30
    g -0
    fs'
    e
    d
    cs
    b
    a
    g
    fs -4
    e'
    d
    cs
    b
    a
    g
    fs

    | % 31
    e -2
    d' -4
    cs -3
    b -0
    cs
    e -0
    a, -2
    e'
    b -0
    e
    cs -2
    e
    d -3
    e
    b
    e


    | % 32
    cs -2
    e
    a, -1
    e'
    d
    e
    b
    e
    cs
    e
    a,
    e'
    d
    e
    b
    e

    | % 33
    \break
    cs
    e
    a,
    e'
    b _0
    e
    cs _1
    e
    \stemUp
    s
    e -0
    [s
    e]
    s
    e
    [s
    e]

    | % 34
    s
    e -0
    [s
    e]
    s
    e
    [s
    e]
    s
    e
    [s
    e]
    s
    e
    [s
    e]

    | % 35
    s
    e
    [s
    e]
    s
    e
    [s
    e]
    s
    e
    [s
    e]
    s
    e
    [s
    e]

    | % 36
    \break
    s
    e
    [s
    e]
    s
    e
    [s
    e]
    \stemNeutral
    d -2
    e
    cs -1
    e
    d
    e
    b -0
    e

    | % 37
    cs -2
    e
    a, -1
    b -0
    c \fingeringShift #UP -1
    a _3 _\4
    cs -2
    a
    <d -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    a
    <ds -4>
    a
    e' -1
    a,
    f' -2
    a,

    | % 38
    \break
    <fs' -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    a,
    <g' -4>
    a,
    <gs' -1 \1> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    a,
    <a' -1>
    a,
    <bf' -2> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    a,
    <b' -2>
    a, _1
    <c' -3>
    a,
    <cs' -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    a,

    | % 39
    \barreBracket #0 #-10
    <d'='' -4> \barreText #"VII"
    fs,
    a,
    fs'
    d'
    fs,
    d'
    fs,
    d'
    fs,
    a,
    fs'
    d'
    fs,
    d'
    fs,

    | \barNumberCheck #40
    \break
    d' -4
    e, -3
    a, -1
    e'
    d'
    e,
    d'
    e,
    d'
    e,
    a,
    e'
    d'
    e,
    d'
    e,

    | % 41
    cs' -4
    g -2
    a, -1
    g'
    cs
    g
    cs
    g
    cs
    g
    a,
    g'
    cs
    g
    cs
    g

    | % 42
    <d,= -0 fs' -1  d' -4>1

    \bar "|."
    }

lower =  \relative e' {

    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \override Fingering.direction = #DOWN

    s1*32

    | % 33
    s2
    d16 -2
    [s
    <e -4> \glissando ]
    s
    <fs -4>
    [s
    a, -3\4]
    s

    | % 34
    e'=' -1
    [s
    <fs -4> \glissando ]
    s
    <g -4>
    [s
    a, -1]
    s
    <fs' -2> \glissando
    [s
    <g -2>]
    s
    a -4
    [s
    fs -1]
    s

    | % 35
    g -2
    [s
    fs -1]
    s
    g -2
    [s
    e \fingeringShift #DOWN -1]
    s
    fs -3
    [s
    e -1]
    s
    fs -3
    [s
    d \fingeringShift #DOWN -1]
    s


    | % 36
    e -3
    [s
    d -1]
    s
    e -3
    [s
    cs \fingeringShift #DOWN -1]
    s
    s2

    | % 37

    s1*6

    \bar "|."

}

