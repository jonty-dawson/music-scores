\version "2.22.2"

upper =  \relative fs {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \trillAdjustForFingering

    r8
    fs8 -3
    b -0
    e -0
    cs=' -3
    e,= -2
    a -2
    d -4

    | % 2

    b
    d,= -0
    g -0
    c -4
    \barreSpannerText #"II" #0
    \barreBracket #2 #-10
    as16 -2 \startTextSpan
    e'=' -4
    d -2
    cs
    cs8. \trill -21
    b16 -4 \stopTextSpan

    | %3
    b16
    b32 -0
    <cs -2> \glissando
    \once \override Fingering.padding = #1.0
    <d -2>16
    b -4
    \once \fingeringChord
    \once \override Fingering.extra-offset = #'(-0.5 . 0)
    <e,= -1>
    b'= -3
    g'='8 -1
    r16
    a,=32
    b -3
    cs16
    a
    \once \fingeringChord
    \once \override Fingering.extra-offset = #'(-0.5 . 0)
    <d,= -0>
    a'=
    fs'='8 -3

    | %4
    r16
    g,=32 -0
    a -1
    b16
    g
    << {
    \once \fingeringChord
    \once \set fingeringOrientations = #'(right)
    <c,= -2>
    g'=
    e'=' 8~ -0

    e 16
    e -0
    \barreSpannerText #"II" #0
    \barreBracket #-1 #-12
    <b ^4 d -2> \startTextSpan
    cs
    <cs>8. \noBeam
    b16 -4 \stopTextSpan
    } \\ {
        \voiceThree
        \stemDown
        s8 *4
        <b= >16 \noBeam
        <as ^24 >8 \prall
        e= 16 \rest
    } >>

    | %5
    b'= 16
    b32 -0
    <cs -2> \glissando
    \once \override Fingering.padding = #1.0
    <d -2> 16
    b -0
    e,= -1
    d'=' 32 -2
    <cs -1 > \glissando
    <d ^1 gs=' ^2> 16
    b'=' -4
    cs,=' \3 -3
    a32 \fingeringShift #DOWN -2
    b
    cs16 -3
    a
    d,=
    cs'=' 32
    b
    \barreBracket #0 #0
    <cs fs -1> 16
    a'=' -4

    | %6
    \barreBracket #0 #-14
    \barreSpannerText #"IV" #0
    <fs=' -4> \startTextSpan
    b,=32
    <cs -3> \stopTextSpan \glissando
    <d ^3 es -\tweak Fingering.extra-offset #'(-1.0 . 2.0) ^2>16
    b -0
    << {
        gs -1
        d'=' -2
        <b'=' -4> 8 ~
        \once \set fingeringOrientations = #'(right)
        <cs,=' -3 b'=' >16
        <a'=' -2> 32
        <gs -1> \glissando
        \once \override Fingering.padding = #1.5
        <a -1> 16
        <fs -4> \glissando
        <es -4> 8.
        <fs -4> 16
    } \\ {
        \voiceFour
        \set fingeringOrientations = #'(left)
        s16 * 2
        es16 \rest
        <es=' -3> 16
        s16 * 8
    } >>



    | %7
    fs=' 8
    cs -3
    << {
        fs8 -4
        b -4
    } \\ {
        \voiceThree
        \barreSpannerText #"IV" #0
        \barreBracket #0 #-3
        b,=16 \startTextSpan
        fs= \stopTextSpan
        s8
    }
    >>

    gs'=' 16 -1
    r16
    b,= 8 -0
    << {
        e8 -4
        a -4
    } \\ {
        \voiceThree
        \barreSpannerText #"II" #0
        \barreBracket #0 #-3
        a,= 16 \startTextSpan
        e= \stopTextSpan
        s8
    }
    >>


    | %8
    fs'=' 16 -2
    r16
    a, 8 -1
    << {
        d -3
        g -3
    } \\ {
        \voiceThree
        \set fingeringOrientations = #'(left)
        <g,= -0> 16
        d=
        s8
    } >>

    \barreSpannerText #"IV" #0
    \barreBracket #2 #-9
    es'=' 16 -3 \startTextSpan
    b'=' -4
    a -2
    gs
    gs 8. \trill -21
    fs 16 -4

    | %9
    fs=' 16
    fs 32
    gs \stopTextSpan
    a 16 -2
    fs
    b,= -0
    fs'=' \2 \fingeringShift #UP -1
    <b,= -3 d'='' -4> 8
    gs= 16 \fingeringShift #DOWN -1
    e'=' 32 -0
    fs -3
    gs 16 -4
    e -0
    a,= -1
    e'=' -0
    <a,= -2 cs'='' \fingeringShift #UP  -4> 8

    | %10
    fs= 16 \fingeringShift #DOWN -2
    d'=' 32 -1
    e -4
    fs 16 -1
    d -2
    g,= -0
    d'='
    <g,= -1 b'=' \fingeringShift #UP -4 > 8
    es 16 -1
    b''=' -4
    \barreBracket #-1 #-12
    \barreSpannerText  #"IV" #0
    a -2 \startTextSpan
    gs
    gs 8. \trill -21
    fs 16 -4  \stopTextSpan

    | %11
    fs=' 8
    as,= 16 -2
    fs -4
    b -0
    fs
    cs' -2
    fs,=
    d'=' -3
    b 32
    cs
    d 16
    b
    e -0
    b
    fs'=' -1
    b,

    | %12

    <d=' ^2 g=' ^3> 16
    e,= 32 -1
    fs -3
    g -4
    (fs)
    e 16

    a= 16 -3
    e -2
    b' -0
    e, -1

    <g= cs=' -2> 16
    a= 32 -1
    b -0
    cs
    (b)
    a 16 -2

    d=' -3
    a
    e'='
    a,= -1

    | %13
    <cs=' ^1 fs=' ^2> 16
    d 32 -3
    e
    fs -2
    d -3
    cs -1
    d
    g -4
    d -3
    cs -2
    d
    a'=' -4
    d, -2
    cs -1
    d

    <fs=' ^3 b=' ^4> 16
    g,= 32 -0
    a \fingeringShift #DOWN -2
    b -0
    g -0
    fs -4
    g
    cs -2
    g
    fs
    g
    d'=' -2
    g,= -0
    fs -3
    g

    | %14
    e'=' 32
    g,=
    fs -4
    e -1
    fs 16 -3
    d'=' -2
    \barreBracket #0 #-3
    <a cs> 8. -21 \trill
    d 16
    d
    a 32 -1
    g -0
    fs 16-3
    a
    \barreBracket #3 #0
    e
    a
    d,= -0
    a'= -2

    | %15
    cs,= 16 -3
    e'=' 32 -0
    <d -2> \glissando
    <cs -2 >16
    e
    b -0
    e
    a,=
    e'='
    g,=
    b 32 -0
    a -2
    g -0 (
    a)
    b 16
    fs -3
    b
    e,= -1
    b'=

    | %16
    d,= -0
    fs'=' 32 -2
    e -0
    \once \override Fingering.padding = #1.0
    d -2
    (e -4)
    fs 16 -1
    cs -2
    fs -3
    b, -0
    fs'
    \barreBracket #2 #0
    a, -1
    cs 32
    b -4
    a16
    cs
    gs -1
    cs -3
    fs,= -1
    cs'=' -4

    | %17
    es,= 16 -1
    cs'=' 32 -1
    b -4
    \barreBracket #2 #0
    a16
    cs
    gs -1
    cs -3
    fs,= -1
    cs'=' -4

    es,= 16 -1
    fs'=' 32 -1
    gs -3
    \once \override Fingering.padding = #2.0
    <a=' -4>16  \glissando
    \once \override NoteColumn.glissando-skip = ##t
    cs,=' -1
    \once \override Fingering.padding = #2.0
    <gs'=' -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    cs,='
    \once \override Fingering.padding = #2.0
    <fs=' -4>
    bs,= -2

    | %18
    es=' 16 -4
    fs=' 32 -1
    gs -3
    \once \override Fingering.padding = #2.0
    <a=' -4>16 \glissando
    \once \override NoteColumn.glissando-skip = ##t
    cs,=' -1
    \once \override Fingering.padding = #2.0
    <gs'=' -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    cs,='
    \once \override Fingering.padding = #2.0
    <fs=' -4>
    bs,= -2

    es 16 -4
    cs 32 -1
    ds -3
    es 16 -4
    cs -3
    \once \override Fingering.padding = #2.0
    <fs -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    cs -3
    \once \override Fingering.padding = #2.0
    <gs'=' -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    cs,=' -1

    | %19

    <a'=' -4>
    fs,= 32 -2
    gs -4
    a 16 -2
    fs -4
    b -0
    fs
    cs'=' -1
    fs,=
    <a ^2 d? ^4>
    b 32 -0
    cs -2
    d -4
    (cs)
    b 16
    e -0
    b
    fs'=' -2
    b,=

    | %20
    <d=' ^3 gs=' ^4> 16
    e,= 32 -2
    fs -4
    gs -1
    fs
    e 16
    a -3
    e -2
    b'= -0
    e,= -1

    <gs= ^1 cs=' ^3>
    a= 32 -2
    b -0
    cs -4
    a -3
    gs -1
    a
    d -4
    a -3
    gs -1
    a
    e'=' -0
    \once \override Fingering.padding = #2.0
    <a,= -1> \glissando
    <gs -1> \glissando
    \once \override Fingering.padding = #2.0
    <a -1>

    | %21
    \barreBracket #0 #0
    <cs=' fs=' > 16
    d=' 32 -2
    e -4
    fs
    d
    cs
    d
    \barreBracket #-3 #-9
    gs -4
    d
    cs
    d
    <a'=' -4>16
    d,=' -2

    <d=' ^3 b'='^4> 16
    e=' 32 -0
    fs \2 -4
    e 16 -0
    \once \override Fingering.padding = #2.0
    d 32 \fingeringShift #DOWN -4
    (cs -3)
    <gs ^1 b ^0> 8.
    a 16 -2

    | %22
    a= 16
    a 32
    b -0
    c 16 -1
    a
    << {
        ds,= -1
        c'=' -1
        a'=' 8 -4
        e'=''16 \rest
        b,= 32 -0
        cs -2
        ds 16 -4
        b
    } \\ {
        \voiceThree
        s8
        d=' 16 \rest
        \once \fingeringChord
        <c=' -3>16
        \once \fingeringChord
        <b= \fingeringShift #DOWN -3>

    } >>



    e 16 -0
    ds 32
    e
    fs 16 -4
    a,= -3


    | %23
    << {
    c=' 16 -1
    b -0
    g'=' 8 ~ -4
    g 32
    fs -2
    e -0
    d -4
    \once \override Fingering.padding = #1.5
    c -1
    (b) -0
    a -3
    g -0
    } \\ {
        \voiceThree
        s8
        \once \override Stem.details.beamed-lengths = #'(1)
        b= 16
        g

    } >>

    e'=' 32
    d
    c
    b
    \once \override Fingering.padding = #1.5
    a -2
    (g) -0
    fs -4
    e -2
    <g= e'='> 8
    <fs= ^3 ds'=' ^4> 16.
    <e= ^2 e' ^0> 32

    | %24
    e' 16
    r16
    <g,= b=> 8
    <c,= a'= ^2 e' ^0>
    <a''=' -4>  \glissando
    <fs=' -4>16
    r16
    a,= 8 -2
    <b,=, g'= ^0 d'=' ^4>
    g''=' -4

    | %25
    e=' 16 -0
    r16
    g,= 8
    <f= ^4 c'=' ^1>
    f'=' -1
    <ds -4>16
    \once \override Fingering.padding = #1.0
    <a'=' -4> \glissando
    <g -4>
    fs -2
    <ds ^4 fs^1> 8
    r16
    e 16 -0

    | %26
    e=' 16
    e 32
    fs -2
    g 16 -4
    e
    a,= -1
    e'=' -0
    c'='' 8  -4

    <fs,=' \fingeringShift #DOWN ^2 c ^1> 16
    d=' 32 -3
    e -0
    fs 16
    d
    g,= -0
    d'=' -2
    b'=' 8 -4

    | %27
    <b,= ^0 e=' ^0> 16
    c=' 32 \2 -1
    d -4
    e 16
    c
    f,= -3
    c'=' -1
    a'=' 8 -4

    ds,=' 16 -4
    ds
    e -0
    fs -2
    ds 8. -4
    e 16

    | %28
    << {
        e=' 8
        s8
    } \\ {
        \voiceThree
        e,= 16 -2
        e 32
        fs -4
        g 16 -0
        e

    }

    >>
    a -3
    e
    b' -0
    e,=
    c'=' -1
    a 32 -2
    b -0
    c 16
    a
    d -4
    a
    e' -0
    a,

    | %29
    <c=' ^1 fs ^3>
    d 32 -4
    e -0
    fs -2
    (e)
    d 16 -3
    <g -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    d
    \once \set glissandoMap = #'((0 . 1))
    \once \override Fingering.padding = #2.0
    <a'=' -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    d, -1

    <fs ^3 b=' ^4>
    g,= 32 -0
    a -1
    b -4
    (a)
    g 16
    c -1
    g
    d'=' -4
    g,

    | %30
    <b ^0 e ^0>
    c=' 32 -1
    d -4
    e -0
    c -1
    b -0
    c

    fs -3
    c
    b
    c

    g'=' -4
    c,='
    b
    c
    <e=' ^3 a=' ^4> 16
    d=' 32 \fingeringShift #DOWN -3
    e -0
    fs -2
    d -3
    cs -1
    d

    g -4
    d -3
    cs -2
    d
    a'=' -4
    d, -2
    cs -1
    d

    | %31
    b'=' 32 -4
    a -2
    g \fingeringShift #DOWN -4
    fs -2
    g 16
    e -0
    fs 8. \trill -42
    g 16
    << {
        g=' 8
    } \\ {
        \voiceThree
        g,= 16
        d'=' 32 -4
        c -1
        b 16 -0
        d -2
        a -1
        d
        g, -0
        d'

    }
    >>

    | %32
    fs,= -1
    a'=' 32 -4
    g -2
    fs=' 16 -1
    a -4
    e -3
    a
    d,=' -2
    a'='

    c,=' -1
    e 32 -0
    d -4
    c
    d
    e 16
    b -0
    e
    a, -1
    e'='

    | %33
    g,= -0
    b'=' 32 \fingeringShift #UP -3
    a -1
    g -4
    a
    b 16
    fs -2
    b
    e,=' \fingeringShift #DOWN -2
    b'=' -4
    d,=' -3
    fs 32 -2
    e -0
    d -2
    fs -1
    g -3
    fs
    \barreBracket #3 #-2
    cs
    fs
    g -2
    fs
    b,= -0
    fs'=' -1
    g -2
    fs

    | %34
    as,= 16 -2
    <fs'=' -1>32
    e -0
    d -2
    fs -1
    g -3
    fs
    \barreBracket #3 #-2
    cs
    fs
    g
    fs
    b,= -0
    fs'=' -3
    g? -4
    fs

    <as,= -1>16
    r 16
    \once \set glissandoMap = #'((1 . 1))
    <d=' ^3 b'=' ^4> 8 \glissando
    \once \set glissandoMap = #'((1 . 1))
    <cs=' ^3 as'=' ^4> \glissando
    <b= ^3 gs'=' ^4>

    | %35
    fs'=' 32 -1
    e -0
    d \3 \fingeringShift #UP -4
    <cs -2>
    <d=' ^4> 16
    fs,= -1
    <cs'=' ^4>
    fs,= -1
    <b= ^4>
    es,= -2

    <fs= ^3 as ^2> 16
    fs 32 -2
    gs -4
    <as ^2 >16
    fs -3
    \once \override Fingering.padding = #2.0
    <b -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    fs -3
    \once \override Fingering.padding = #2.0
    <cs'=' -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    fs,= -1

    | %36
    <d'=' -4>16
    b 32 \fingeringShift #DOWN -0
    cs \2 -2
    d 16 -3
    b
    e? -0
    b
    fs'=' -1
    b,=
    <d ^2 g? ^3>
    e,= 32 -1
    fs -3
    g -4
    (fs)
    e 16
    a -3
    e -2
    b'= -0
    e,=

    | %37
    <g ^0 cs ^3> 16
    a 32 -2
    b -0
    cs -3
    (b)
    a 16
    d -4
    a -2
    e'=' -0
    a,= -1
    \barreBracket #0 #0
    <cs=' fs=' >
    d=' 32 -2
    e -0
    \barreBracket #0 #-3
    fs
    d
    cs
    d
    g -4
    d -3
    cs -2
    d
    a'=' -4
    d,=' -2
    cs -1
    d

    | %38
    <fs=' ^3 b=' ^4> 16
    g,= 32 -0
    a -1
    b -0
    g -0
    fs -3
    g
    cs -1
    g
    fs
    g
    d'=' -2
    g,=
    fs
    g
    <a= ^1 e'=' ^0> 16
    g= -0
    fs -3
    d'=' -2
    e,= -1
    <d'=' -3> \glissando
    <cs -3>
    e,= -2

    | %39
    cs'='
    e,=
    d -0
    b'= -0
    cs,= -4
    b'=
    a -2
    c,= -4
    a'=
    c,=
    b=, -1
    g'= -0
    c,= -2
    g'=
    fs= -2
    a,=, -3

    | %40
    \once \fingeringChord
    \once \override Fingering.extra-offset = #'(-0.5 . 0)
    <b=, -1>
    a -0
    cs= -3
    e= -1
    e -3
    fs 32 -4
    g -0
    \barreBracket #-1 #-4
    fs
    e
    <d= ^0 b'= ^0> 16
    as'= 16 -2
    fs -4
    fs
    fs
    b= 8 -0
    e=' -0

    | %41
    \barreBracket #0 #0
    <e,= cs'='> 8
    <e a>
    <fs ^3 a ^1>
    <a ^1 d=' ^2>
    <d,= b'= -0>
    <d= ^0 g= ^0>
    <e= ^2 g= ^0>
    <g= ^0 c=' ^1>

    | %42
    as= 16 -1
    \once \set glissandoMap = #'((0 . 1))
    <g'=' -2> \glissando
    <b,= fs'=' ^2>
    \once \set glissandoMap = #'((0 . 1))
    <cs=' ^2 e ^0> \glissando
    <as= ^1 d ^2> 8
    \barreBracket #0 #-9
    <as ^2 cs ^1> 16
    b -4

    b -0
    b 32
    <cs -2> \glissando
    \once \override Fingering.padding = #1.0
    <d -2> 16
    b -4
    \once \fingeringChord
    \once \override Fingering.extra-offset = #'(-0.5 . 0)
    <e,= -1>
    b'= -3
    g'=' 8 -1

    | %43
    r 16
    a,=32
    b -3
    cs16
    a
    \once \fingeringChord
    \once \override Fingering.extra-offset = #'(-0.5 . 0)
    <d,= -0>
    a'=
    fs'='8 -3

    r 16
    g,=32 -0
    a -1
    b16
    g
    \once \fingeringChord
    \once \set fingeringOrientations = #'(right)
    <c,= -2>
    g'=
    e'='8 ~ -0

    | %44
    e 16
    e
    \once \set glissandoMap = #'((1 . 0))
    <b= ^3 d ^2> \glissando
    \once \override Fingering.padding = #2.0
    <cs -2>
    cs8 \trill -21
    r16
    b16 -4

    << {
        b 4 \fermata
    } \\ {
        \voiceThree
        \fingeringChord
        <fs= -3>8
        es= _1 \fermata
    } >>

    r8
    \barreBracket #0 #-5
    cs'=' 16
    d 32 -3
    e -4

    | %45
    \barreBracket #-3 #-9
    as,= 8 -3
    <d,= ^0 b'= ^0> 16
    \barreBracket #0 #0
    <e= cs'=' >
    \once \override Arpeggio.positions = #'(-4 . 0)
    \revert Arpeggio.stencil
    <fs= ^4 as= ^2> 8. \arpeggio
    b= 16 -0

    b 2 \fermata


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
    b=,8 -1
    r8
    g -2
    r8
    a -0
    r8
    fs -1
    r8

    | % 2
    g -3
    r8
    e
    r8
    fs
    b=,
    fs'= -3
    fs,=,

    | % 3
    b=,8 -1
    fs'= -3
    [
        \once \fingeringChord
        <g,=, -2 b' -0>
        e''=' -4
        ]
    \barreBracket #0 #4
    <a,,=, -0 cs'=' >
    e'=
    \once \fingeringChord
    <fs,=, -1 a'= -2>
    d''=' -4


    | %4
    <g,,=, -2 b'=>
    d'= -0
    <e,=, g'=>
    c''=' -4
    <fs,,=, _1 as'= _2>
    b=,
    fs'= -3
    fs,=,

    | %5
    b -1
    b'= -3
    gs,=, -3
    e=,
    a=,
    a'=
    fs,=, -1
    d'=

    | %6
    gs,=,
    gs'= -1 \4
    es -3 \5
    cs \fingeringShift #DOWN -1
    fs -1
    b, -3
    <cs -1 gs'= -3>
    cs' -3

    | %7
    fs,=16 -1
    fs32
    gs -3
    a16 -4
    fs
    d=8 -2
    d'='~ -3
    d16
    e,=32 \fingeringShift #DOWN -2
    fs -4
    gs16 -1
    e
    cs8 -3
    cs'=' ~ -1

    | %8
    cs16
    d,= 32 -0
    e -2
    fs 16 -4
    d
    b=, 8 -1
    b'= 8 -0
    <cs,= b'=>
    fs8
    cs'=' -3
    cs,=

    | %9
    fs= 8
    r8
    d -0
    r
    e \4 -2
    r
    cs \5 -3
    r

    | %10
    d -3
    r
    b \5 -1
    r
    cs -2
    fs
    cs=
    cs' -3

    | %11
    fs,= 16 -1
    fs 32
    gs -3
    <fs,=, \fingeringShift #DOWN -1 as'> 8
    <gs=, -3 b'>
    <as -1 cs'>
    <b -1> 16
    r16
    <b d'>8
    <cs -3 e'>
    <d -0 fs'>

    | %12
    <e,=,>16
    r16
    <e=,>8
    <fs -1 a'>
    <g -3 b'>
    <a=,>16
    r16
    a=, 8
    <b=, -1 d'='>
    <cs -3 e'>

    | %13
    <d= -0>16
    r16
    <d= fs'='>8
    <e -1 g'='>
    <fs -3 a'='>
    <g= -1>16
    r16
    <g,=, -3 b'=>8
    <a cs'>
    <b -1 d'>

    | %14
    cs= -3
    d -4
    e=
    a,=,
    <d= >16
    r16
    <d -4 fs>8
    <cs -3 e>
    <b -1 d>

    | %15
    <a -4 cs> 16
    r16
    <a'= -1 cs='> 8
    <g -0 b>
    <fs -3 a>
    <e -1 g> 16
    r16
    e8
    <d -4 fs>
    <cs -3 e>

    | %16
    <b=, -1 d> 16
    r16
    b'= 8 -3
    <a -1 cs>
    <gs -1 b>
    <fs -3 a>16
    r16
    <fs a>8
    <e -2 gs>
    <d? \fingeringShift #UP -2 fs>

    | %17
    <cs -2 es>16
    r16
    <fs= -3 a>8
    <es -2 gs>
    <ds \fingeringShift #UP -3 fs>
    <cs -2 es>16
    r16
    \once \set glissandoMap = #'((0 . 0))
    <fs= -2 a'='>8 \glissando
    <es= -2 gs'>
    <ds= -1 fs'>

    | %18
    <cs \fingeringShift #UP -1 es'='>16
    r16
    \once \set glissandoMap = #'((0 . 0))
    <fs= -2 a'='>8 \glissando
    <es= -2 gs'>
    <ds= -1 fs'>
    <cs \fingeringShift #UP -1 es'='> 16
    r16
    <cs= -1 es'>8
    <ds \4 \fingeringShift #DOWN -1 fs'='>
    \once \set glissandoMap = #'((0 . 0))
    <es -2 gs'='> \glissando

    | %19
    <fs= -2 a'='> 16
    r16
    <fs,=, \fingeringShift #DOWN -1 a'=>8
    <gs -3 b'=>
    <a -0 cs'>
    <b -1> 16
    r16
    b=, 8
    <cs -3 e'>
    <d -0 fs'>

    | %20
    <e,=,> 16
    r16
    e=, 8
    <fs -1 a'=>
    <gs -3 b'=>
    <a -0> 16
    r16
    <a cs'='>8
    <b -2 d'='>
    <cs -3 e'='>

    | %21
    <d= -0>16
    r16
    <d fs'>8
    <e -1 gs'>
    <fs -3 a'>
    gs,=, \fingeringShift #UP -1
    a -0
    e'= -2
    e,=,

    | %22
    a=,
    g -3
    fs -2
    \once \fingeringChord
    <e'= -1>
    \once \fingeringChord
    <ds \fingeringShift #DOWN -1>
    b=, -1
    cs -3
    <ds _1 c'=' _2>

    | %23
    <e _2 g _0>
    d= 8 -0
    c= -3
    b -2
    a -0
    fs -1
    b -1
    b

    | %24
    e= 16 -2
    e=32
    fs -4
    g 16 -0
    e
    c= -3
    e -1
    c'=' 8 -3

    <d,= _0 c'=' _1> 16
    d= 32
    e -2
    fs 16 -4
    d
    b=, -1
    d
    b'= 8 -0

    | %25
    <c,= _3 b'= _0> 16
    c= 32
    d
    e 16 -2
    c
    a=,
    c
    a'= 8 -2

    <b,=, _1 a'= _2>16
    r16
    <e= _1 b'= _0>8
    b'=  -3
    b,=, -1

    | %26
    e= 16 -1
    r16
    b=, 8 -1
    c -2
    <a'= \fingeringShift #UP _3 e'=' _1>
    d,= 16 -0
    r16
    a=, 8 -0
    b -1
    <g'= \fingeringShift #UP _1 d'=' _3>

    | %27
    c,= 16 \fingeringShift #DOWN -3
    r16
    g=, 8  -3
    a
    <f'= \fingeringShift #UP _1 c'=' _3>
    <b,=, _1 a'= _2>16
    r16
    <e= _1 g= _0>8
    b'= -3
    b,=, -1


    | %28
    e,=, 16
    r16
    <e g'=> 8
    <fs=, -1 a'=>
    <g=, -3 b'=>
    <a -0 c'>16
    r16
    <a c'>8
    <b -1 d'>
    <c -3 e'>

    | %29
    d16 -0
    r16
    d8
    <e -1 g'>
    <fs= -2 a'>
    g= 16 \4 -1
    r16
    g,=, 8 -2
    <a c'>
    <b -2 d'>

    | %30
    c= 16 -3
    r16
    <b=, -2 e'='>8
    <a=, -0 fs''='>
    <g'= -0 g'='>
    <fs= \fingeringShift #UP -1>16
    r16
    <d= -0 fs'='> 8
    <e= -1 g'='>
    <fs= -3 a'='>

    | % 31
    g= 16 -0
    d= 32 -0
    a'= -1
    b -0
    g
    c='16 -1
    << {
        \voiceFour
        b= 8
        a 16 -1
        g -0

    } \\ {
        d= 4
    }
    >>

    g,=, 16 -3
    r16
    g'= 8 -0
    fs -3
    e -1

    | %32
    d16 -2
    r16
    d8 -0
    c -1
    b -1
    a16 -0
    r16
    a'= 8 -2
    g -0
    fs -3

    | %33
    e= 16 -1
    r16
    e 8 \5 -2
    d -0
    <cs? -1> \glissando
    <b=, -1>16
    r16
    <b'= -4>8
    a
    g -0

    | %34
    <fs -4>16
    r16
    <b= -4> 8
    as -2
    gs \fingeringShift #DOWN -1

    <fs \fingeringShift #UP _2 as> 16
    <b= _1>32
    <cs _3>
    d=' 16
    fs,= -1

    cs'='
    fs,=
    b=
    es,= -1

    | %35
    <fs _3 as _2> 16
    r16
    \set glissandoMap = #'((0 . 0))
    <b,=, _3 d'=' > 8 \glissando
    <as=, _3 cs'=' > \glissando
    <gs=, _3 b'= >
    \unset glissandoMap
    r8
    <fs=, _1 as'= >
    <gs=, _2 b'= >
    <as=, _3 cs'=' >

    | %36
    <b=, -3>16
    \unset glissandoMap
    r16
    <b=, -1 d'='>8
    <cs= -3 e'='>
    <d= -0 fs'='>
    e,=, 16
    r16
    e8
    <fs=, -1 a'=>
    <g=, -3 b'=>

    | %37
    a16 -0
    r16
    a8
    <b=, -1 d'='>
    <cs= -3 e'='>
    d= 16 -0
    r16
    <d= fs'='> 8
    <e= -1 g'='>
    <fs= -3 a'='>

    | %38
    <g= \fingeringShift #UP -1>16
    r16
    <g,=, -2 b'=>8
    <a -0 cs'='>
    <b -1 d'='>
    cs -3
    d -4
    a -0
    <as _1 g'= _0>

    | %39
    b=, -1
    fs=, -1
    e=,
    fs
    g -3
    g -2
    <a -4 c>
    <ds -4 fs>

    | %40
    \once \fingeringChord
    <e,=, fs'= -3>
    <g=, -2 cs=>
    <fs=, _2 as=, _1>
    b=, 16 -1
    b
    <fs=, _1 cs'= _3 as'=> 8
    <e=, cs'= fs=> 8
    d'= 16 -0
    b=, -1
    g'= 8 -0

    | %41
    e= 16
    a,=, -0
    cs -3
    a
    d -4
    a
    fs'= 8 -3
    d= 16 -0
    g,=, -3
    b=, -2
    g=,
    c= -4
    g=,
    e'= 8 -2

    | %42
    <cs= _3 as'=> 8
    d= -0
    fs= -3
    fs,=,
    b -1
    fs'= -3
    [
        \once \fingeringChord
        <g,=, -2 b'= -0>
        e''=' -4
        ]

    | %43
    \barreBracket #0 #4
    <a,,=, -0 cs'='>
    e'=
    \once \fingeringChord
    <fs,=, -1 a'= -2>
    d''=' -4
    <g,,=, -2 b'=>
    d'= -0
    <e,=, g'=>
    c''=' -4

    | %44
    <fs,,=, _1 as'= _2>
    <b=, _1 >
    fs'= -3
    fs,=,
    \once \fingeringChord
    \once \set fingeringOrientations = #'(right)
    <gs=, -2>4  \fermata

    r8
    \once \fingeringChord
    <g=, -2 e'=> 8

    | %45
    <fs=, e'=>
    <b=, -1>16
    r16
    <cs= -3>8
    fs,=, -1
    \once \fingeringChord
    <b=, -1> 2 \fermata


    \bar "|."

}