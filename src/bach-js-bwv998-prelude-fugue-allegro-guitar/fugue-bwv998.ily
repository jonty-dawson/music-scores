\version "2.22.2"


upper =  \relative e' {
    \clef "treble_8" \key e \major \time 4/4
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \override Fingering.add-stem-support = ##t
        \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    %\override Score.Fingering.extra-spacing-width = #'(-0.3 . 0.0)

    r4
    e4 -2
    ds4 -1
    e4

\set Score.skipTypesetting = #mSkipTypesetting
    | % 2
    fs4 -4
    b,4 -1
    cs -3
    ds -1

    | % 3
    e4 -2
    r8
    ds8
    e -2
    gs -1
    fs -4
    e -1


    | % 4
    \break
    \once \override Score.RehearsalMark #'break-visibility = #'#(#f #t #t)
    \mark \markup { \musicglyph #"scripts.segno" }
    \barreBracket #0 #-2
    ds8
    a' -2
    gs -4
    <fs -2> \glissando
    <e -2>
    \once \override Fingering.padding = #'1.0
    <ds -1> \glissando
    <cs -1>
    e -4

    | % 5
    \barreBracket #0 #-2
    \once \barreBracketOffset #-0.8
    ds4
    fs -4
    b -4
    <es, -4> \glissando

    | % 6
    <fs -4>8
    cs -2
    fs
    gs -1
    a4 -2
    \barreBracket #0 #-2
    \once \barreBracketOffset #-0.8
    ds,


    | % 7
    e8 -2
    <fs -4> \glissando
    <gs -4>
    as -1
    b -3
    \fingeringChord
    \set fingeringOrientations = #'(left up)
    <ds, -4 fs -2>
    <cs -1 e -0>
    <b -0 ds -3>

    | % 8
    \barreBracket #0 #-3
    \once \barreBracketOffset #-3.5
    cs4
    ds8 \rest
    ds -3
    \stringNumberTextSpanner 1 #UP ##t
    e -0 \startTextSpan
    <cs' -4> \glissando
    <b -4>
    a -2

    | % 9
    gs='8 -4
    fs -2
    e -0
    a -1 \stopTextSpan
    \once \barreBracketOffset #-2.0
    \barreBracket #0 #-2
    ds,16 -1
    fs -4
    e -2
    ds
    b'8 -4
    d, -3

    | % 10
    \barreBracket #0 #-5
    \once \barreBracketOffset #-0.8
    cs='4
    \barreSpannerText #"IV" #7
    e'16 \rest \startTextSpan
    a,='16 -2
    gs -1
    fs -4 \stopTextSpan
    b4 -4
    r8
    cs8 -4

    | % 11
    cs=''8
    b -2
    r8
    a -1
    <a -2> \glissando
    <gs -2>
    r8
    <gs, -4 e' -0>

    | % 12
    <gs= e' >8
    <fs -3 ds' -4>
    gs'='4 -1
    a4 -4
    b4 -4

    | % 13
    <d,=' -3 b' -4>8
    <cs -3 a' -2>
    \barreSpannerText #"IV" #6
    r8 \startTextSpan
    \once \set fingeringOrientations = #'(left)
    <gs -3 b >8 \stopTextSpan
    \set glissandoMap = #'((0 . -1) (1 . 1))
    <gs b -1> \glissando
    <fs -3 a -1>
    \barreSpannerText #"II" #6
    r8 \startTextSpan
    <a fs'>

    | % 14
    \once \hide Fingering
    \once \override Glissando #'(bound-details left padding) = #1.0
    <a fs' -1> \stopTextSpan \glissando
    \barreBracket #0 #0
    \once \barreBracketOffset #-2.0

    <gs es' -1>
    \set glissandoMap = #'()
    \barreSpannerText #"II" #6
    r \startTextSpan
    fs' \stopTextSpan
    e -0
    ds -4
    cs
    fs -4

    | % 15
    <cs -1 e -0>
    <b -0 ds -4>
    <a -3 fs' -4>
    <gs -1 e' -0>
    r8
    <b' -4> \glissando
    <a -4>
    <e -4 gs -3>

    | % 16
    <ds -3 fs -1>
    <e -0 cs -4>
    <ds -3 cs >
    <b -0 gs' -3>
    e='4 -0
    <fs -4>4 \glissando

    | % 17
    <fs=' -4 a, -3>8
    <e -0 gs, -1>
    r
    <d -2 b -4>
    <d b>
    \barreBracket #0 #0
    <cs -1 a >
    r
    <es -4 b -2>

    | % 18
    \barreSpannerText #"II" #0
    \barreBracket #1 #-10
    \once \barreBracketOffset #-2.0
    <es=' b>^\markup { \tiny "hinge" } \startTextSpan
    \once \set fingeringOrientations = #'(up right)
    <fs -1 as, -2> \stopTextSpan
    r
    <e -0 cs -2>
    <e cs>
    <ds -4 b -3>
    r
    <fss ^\2-4 cs ^\3-2>

    | % 19
    \barreSpannerText #"IV" #0
    \barreBracket #1 #-10
    <fss=' cs>^\markup { \tiny "hinge" } \startTextSpan
    \once \set fingeringOrientations = #'(up right)
    <gs -1 bs, -2> \stopTextSpan
    r
    \once \set fingeringOrientations = #'(up right)
    <fs -1 ds -\tweak Fingering.extra-offset #'(-0.5 . -0.5) -4>
    <fs ds>
    <e -0 cs -1>
    r
    <gs -4 d -2>

    | % 20
    \once \hide Fingering
    \set glissandoMap = #'((0 . 0) (1 . -1))
    <gs=' -4 d > \glissando
    <a -4 cs, -1>
    r
    <gs -4 b, -3>
    <gs b,>
    <fs -2 a, -1>
    r
    <e -0 gs, -1>

    | % 21
    <e=' gs, >
    <ds -4 fs, -3>
    b'4 -4
    \barreBracket #0 #-11
    gs -1
    a -4

    | % 22
    b='4 -4
    e, -2
    \barreBracket #0 #0
    <a, fs' -1>
    <b -3 gs' -4>


    | % 23
    <cs=' -1 a'=' -4 >4
    r8
    <a' -2 >8
    <gs -1>
    <cs -4>
    \barreBracket #0 #-8
    \barreSpannerText #"VII" #0
    <b -1> \startTextSpan
    <a -4> \stopTextSpan

    | % 24
    \stringNumberTextSpanner 2 #UP ##t
    \once \hide Fingering
    <a=' -4>8 \glissando \startTextSpan
    <gs -4>16
    fs -2
    gs4 \stopTextSpan
    a -4
    b -4

    | % 25
    e,='4 -1
    \override TextScript.staff-padding = #8
    r8
    <\single \smallNoteHead \parenthesize fs a -4 >8
    \barreBracket #-1 #-4
    <\single \smallNoteHead \parenthesize fs a -2 >
    <\single \smallNoteHead \parenthesize e gs -1 >
    r
    <e -0 gs -4 >

    | % 26
    <e gs=' >8
    <ds -2 fs -1 >
    r
    < \single \smallNoteHead \parenthesize gs b -4>
    \once \set glissandoMap = #'((0 . -1) (1 . 1))
    \once \hide Fingering
    < \single \smallNoteHead \parenthesize gs b -4> \glissando
    < \single \smallNoteHead \parenthesize fs a -4>
    \set fingeringOrientations = #'(up)
    r
    < \single \smallNoteHead \parenthesize fs a -2>

    | % 27
    \once \set glissandoMap = #'((0 . -1) (1 . 1))
    <\single \smallNoteHead \parenthesize fs a=' -1>8 \glissando
    <\single \smallNoteHead \parenthesize e gs -1>
    \set fingeringOrientations = #'(left up)
    \barreSpannerText #"II" #6
    fs \rest \startTextSpan
    \once \set fingeringOrientations = #'(left)
    <ds -4 fs > \stopTextSpan
    <ds fs -1 >
    e -0
    r16
    fs -4
    gs -1
    a -2


    | % 28
    \break
    e16 -0
    ds -2
    cs -4
    b -0
    \barreBracket #0 #-9
    <b e~ -2 b' -4>8
    \once \set glissandoMap = #'((0 . -1) (1 . -1) (2 . 2))
    <cs -4 e a -3> \glissando
    <b -2 e -4 gs -3>4
    \barreBracket #0 #-6
    \once \set fingeringOrientations = #'(right)
    <a ds -3 fs >

    | % 29
    \once \override Fingering.add-stem-support = ##f
    \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
    \once \override Script.padding = #2
    \once \set fingeringOrientations = #'(left)
    <gs -1 b e> ^\fermata
    \override BreathingSign.text = \markup {
        \musicglyph #"scripts.caesura.straight"
    }
     \breathe
     \once \override Score.RehearsalMark.self-alignment-X = #LEFT
     \once \override Score.RehearsalMark.extra-spacing-width = #'(-2.5 . 2.5)
     \mark \markup {\small \italic "Fine"}

    r16
    b= -0
    gs -1
    b
    cs -3
    a -2
    e -1
    a
    r16
    cs
    a
    cs

    | % 30
    \break
    b -0
    gs -1
    e -2
    gs
    r

    b -0-\rightHandFinger #3
    b -4-\rightHandFinger #2
    b -0-\rightHandFinger #3
    b -4
    cs -1
    b
    cs
    a -2
    ds -4
    a
    ds

    | % 31
    gs,= -1
    e' -0
    gs,
    e'
    r
    ds -4
    b -0
    ds
    r
    e -0
    b
    e
    r
    fs -4
    b,
    fs'

    | % 32
    r
    gs=' -4
    e -0
    gs
    \barreSpannerText #"IV" #8
    \barreBracket #0 #-16
    b -4 \startTextSpan
    a -3
    gs -1
    fs -4
    e -2
    ds -1
    e
    gs  \stopTextSpan
    \barreSpannerText #"II" #8
    \barreBracket #0 #-14
    fs -1 \startTextSpan
    e -4
    ds -3
    cs -1 \stopTextSpan


    | % 33
    \barreSpannerText #"IV" #6
    \barreBracket #0 #-9
    ds=' 4 \startTextSpan
    \grace
    { \once \hideNotes ds \stopTextSpan }
    \barreSpannerText #"II" #6
    r16 \startTextSpan
    fs -1
    ds -3
    fs \stopTextSpan
    gs -3
    e -4
    b -2
    e
    r
    gs
    e
    gs

    | % 34
    fs -1
    ds -3
    b -2
    ds
    r
    fs -4
    fs
    fs
    fs
    gs -1
    fs
    gs
    e -2
    as-4
    e
    as

    | % 35
    \barreSpannerText #"VII" #8
    \barreBracket #5 #-8
    ds,=' -2 \startTextSpan
    b'
    ds,
    b' \stopTextSpan
    r
    as -1
    fs -2
    as
    \barreSpannerText #"VII" #8
    r \startTextSpan
    b
    fs
    b \stopTextSpan
    \barreSpannerText #"IX" #8
    r \startTextSpan
    cs
    as -4
    cs \stopTextSpan

    | % 36
    \pageBreak
    \barreSpannerText #"VII" #9
    r \startTextSpan
    ds='' -4
    b
    \once \hide Fingering
    <ds -4> \glissando \stopTextSpan
    <e -4>
    ds -3
    cs -1
    b -4
    \barreSpannerText #"IX" #9
    \barreBracket #2 #-9
    a -2 \startTextSpan
    gs
    a
    cs \stopTextSpan
    \barreSpannerText #"VII" #9
    \barreBracket #0 #-13
    b \startTextSpan
    a -4
    gs -3
    fs \stopTextSpan

    | % 37
    \barreSpannerText #"IV" #0
    \barreBracket #0 #-5
    gs=' 4 -1 \startTextSpan
    \grace
    { \once \hideNotes gs \stopTextSpan }
    r16
    gs
    e
    gs
    \barreBracket #3 #0
    e -4
    a
    e
    a
    d, -3
    b' -4
    d,
    b'

    | % 38
    cs,=' -3
    e -2
    fs -4
    gs -1
    \barreSpannerText #"II" #8
    \barreBracket #0 #-16
    a -4 \startTextSpan
    gs -3
    fs
    a \stopTextSpan
    \barreBracket #3 #8
    fs -4
    b
    fs
    b
    e, -3
    cs' -4
    e,
    cs'

    | % 39
    \barreSpannerText #"VII" #8
    \barreBracket #2 #-9
    ds,=' -2 \startTextSpan
    fs
    gs -3
    <a -4> \glissando \stopTextSpan
    <gs -4>
    fs -1
    e -4
    ds -2
    e -0
    b' -2
    <cs -4> \glissando
    <d -4>
    \barreSpannerText #"VII" #8
    \barreBracket #-1 #-9
    cs -3 \startTextSpan
    b
    a -3
    gs -2 \stopTextSpan

    | % 40
    fs=' -3
    ds' -4
    a -2
    ds
    \barreSpannerText #"VII" #10
    \barreBracket #2 #-9
    gs, -2 \startTextSpan
    e' -4
    b
    e \stopTextSpan
    \barreSpannerText #"IX" #10
    \barreBracket #2 #-9
    a, -2 \startTextSpan
    e' -4
    cs
    e \stopTextSpan
    b -3
    e -4
    d -1
    e

    | % 41
    \barreSpannerText #"VII" #8
    r \startTextSpan
    cs='' -3
    b
    cs \stopTextSpan
    a -4
    cs
    gs -2
    cs
    \barreBracket #0 #-2
    fs,
    cs' -3
    es, -4
    cs'
    fs,
    cs'
    a -4
    cs

    | % 42
    \barreSpannerText #"VI" #8
    r \startTextSpan
    b=' -2
    a -4
    b \stopTextSpan
    gs -4
    b
    fs -3
    b
    \barreBracket #0 #-2
    es,
    b'
    ds, -3
    b'
    es,
    b'
    gs -4
    <b -2> \glissando

    | % 43
    <a=' -2> \glissando
    <gs -2>
    fs -4
    e -0
    ds -1
    e -0
    ds
    e
    ds
    e
    ds
    e
    ds
    e
    ds
    e

    | % 44
    \stringNumberTextSpanner 2 #UP ##t
    fs=' -1 \startTextSpan
    \once \override Fingering.padding = #'1.0
    <a -4> \glissando
    <gs -4>
    fs \stopTextSpan
    \barreSpannerText #"IV" #6
    \barreBracket #-1 #-9
    e -2 \startTextSpan
    ds
    cs -4
    b  \stopTextSpan
    as 4 -2
    bs 4 -2

    | % 45
    \barreBracket #0 #-5
    cs=' 8. -1
    r16
    r16
    e -0
    cs -1
    e
    cs -3
    fs -4
    \once \override Glissando #'(bound-details right padding) = #2.5
    cs \glissando
    \once \override NoteColumn.glissando-skip = ##t
    fs
    \once \set fingeringOrientations = #'(right)
    <b, -3>
    gs' -4
    b,
    gs'

    | % 46
    as,= -2
    cs -1
    ds -4
    e -0
    \barreSpannerText #"II" #7
    \barreBracket #0 #-8
    fs \startTextSpan
    cs
    as -2
    cs \stopTextSpan
    \barreSpannerText #"IV" #7
    \barreBracket #5 #0
    b \startTextSpan
    ds
    fs -4
    gs \stopTextSpan
    as -4
    e -2
    cs -3
    e

    | % 47
    \barreSpannerText #"VII" #9
    \barreBracket #5 #-9
    ds=' -2 \startTextSpan
    fs
    b
    <cs -3> \stopTextSpan \glissando
    \barreSpannerText #"IX" #9
    \barreBracket #-4 #-9
    <ds -3> \startTextSpan
    b -4
    gs
    fs -4 \stopTextSpan
    es -2
    gs -1
    b -4
    <ds -4> \glissando
    <cs -4>
    as -1
    fs -2
    e -0

    | % 48
    \barreBracket #2 #0
    \barreSpannerText #"VIII" #8
    ds -1 \startTextSpan
    fss
    as -4
    cs -3 \stopTextSpan
    \barreSpannerText #"IV" #8
    b -4 \startTextSpan
    gs -1
    e -2
    ds -1 \stopTextSpan
    \barreSpannerText #"VI" #8
    css -2 \startTextSpan
    es -1
    gs -4
    b -2 \stopTextSpan
    \barreSpannerText #"III" #8
    as -4 \startTextSpan
    fss -1
    ds -2
    cs -4 \stopTextSpan % M.S. doesn't have accidental - css

    | % 49
    \barreSpannerText #"V" #8
    bs -1 \startTextSpan
    ds -4
    fss -4
    as -3 \stopTextSpan
    \barreSpannerText #"II" #8
    gs -4 \startTextSpan
    e -0
    cs -2
    b -0 \stopTextSpan % M.S. doesn't have accidental - bs
    as -2
    gs' -4
    as,
    gs'
    b, -0
    gs'
    b,
    gs'

    | % 50
    cs,=' -2
    gs' -4
    cs,
    gs'
    ds -3
    gs
    fss -2
    gs
    \barreSpannerText #"IV" #8
    \barreBracket #2 #-9
    e -2 \startTextSpan
    gs
    cs, -3
    gs' \stopTextSpan
    as, -3
    fss' -4
    as,
    fss'

    | % 51
    r
    b -4
    a -2
    b
    \barreSpannerText #"VII" #8
    \barreBracket #2 #-12
    gs -3 \startTextSpan
    b
    fs
    b  \stopTextSpan
    es, -3
    b' -4
    fs -3
    b
    gs -4
    b -2
    cs, -1
    b'

    | % 52
    \barreSpannerText #"IV" #6
    r \startTextSpan
    b=' -4
    a -2
    gs \stopTextSpan
    fs -4
    e -1
    d -3
    cs -1
    d -3
    es -1
    fs -4
    <a, -3> \glissando
    <gs -3>
    b -0
    \once \override Fingering.padding = #'1.5
    <fs' -4> \glissando
    <es -4>

    | % 53
    \barreSpannerText #"IV" #6
    r \startTextSpan
    a -2
    gs
    a \stopTextSpan
    fs -4
    a
    e -1
    a
    ds, -2
    a' -4
    e -3
    \once \override Fingering.padding = #'1.0
    \once \hide Fingering
    <a -4> \glissando
    <fs -4>
    a -2
    b, -1
    a'

    | % 54
    r
    a=' -4
    gs -3
    fs
    e -0
    d -2
    cs -1
    b -0
    cs -2
    ds -4
    e -0
    gs, -4
    fs -2
    e' -4
    ds -3
    <a' -4> \glissando

    | % 55
    <gs -4>
    e -0
    b -0
    gs -1
    e
    gs
    b
    cs -3
    d \fingeringShift #UP -1
    b -2
    gs -4
    \once \override Fingering.padding = #'1.0
    <fs -2> \glissando
    <e -2>
    gs -1
    b -0
    <cs -2> \glissando

    | % 56
    \once \override Fingering.padding = #'1.0
    <d=' -2>
    b -3
    gs -4
    fs -3
    es -1
    gs -4
    b -3
    cs -4
    d -3
    b -4
    gs -2
    fs -4
    es -1
    d' -2
    cs -1
    b -4

    | % 57
    \barreSpannerText #"II" #6
    \barreBracket #5 #0
    a \startTextSpan
    fs'
    cs
    a
    fs
    a
    cs
    ds -4 \stopTextSpan
    e -0
    cs -4
    as -1
    gs -4
    fs -3
    as -2
    cs -4
    ds -3

    | % 58
    e -0
    cs -4
    as -1
    gs -4
    fss -0
    as -3
    cs -2
    ds -4
    e -0
    cs -1
    as -2
    gs -1
    fss
    e'
    ds -4
    cs -2

    | % 59
    b= -0
    \barreBracket #0 #-3
    gs' -4
    ds
    b
    gs -1
    b
    d
    e
    f -1
    d -4
    b -0
    a -3
    gs
    b
    d
    e

    | % 60
    f=' -1
    d -4
    b -0
    a -3
    gs -1
    b
    d
    e -0
    f -3
    d -4
    b -0
    a -4
    gs -3
    fs' -4
    e -2
    d -4

    | % 61
    s4
    e=' 4 -0
    ds -1
    e -2

    | % 62
    fs -4
    r16
    b, -0
    cs -3
    d -4
    \barreBracket #0 #-2
    cs 4 -1
    r16
    ds -4
    cs
    ds

    | % 63
    e=' -0
    b -0
    gs -1
    b -0
    r
    b -1
    gs -3
    b
    cs -2
    a -4
    e -3
    a
    r
    cs
    a
    cs

    | % 64
    b -1
    gs -3
    e -4
    gs
    r
    b' -4
    b, -0
    b'
    cs, -3
    b'
    cs,
    b'
    ds, -2
    a' -4
    ds,
    \once \override Glissando #'(bound-details left padding) = #2.0
    \once \hide Fingering
    <a' -4> \glissando

    | % 65
    <gs -4>
    e -0
    b -0
    gs \4-1
    r8
    <e' -0 gs -4>
    <e gs>
    <ds -2 fs -1>
    r
    <a -2 ds -4>

    | % 66
    \break
    <a ds>
    <gs -1 e' -0>
    r
    <ds' -4 b' -3>
    \once \set glissandoMap = #'((0 . -1) (1 . 1))
    \once \override Glissando #'(bound-details left padding) = #3.0
    \once \hide Fingering
    <ds b' -3> \glissando
    <cs -2 as' -3>
    r
    <as -2 e' -0>

    | % 67
    <as e' >
    <b -3 ds -4>
    r16
    fs' -1
    ds -4
    fs
    gs -3
    e -4
    b -2
    e
    r
    gs
    e
    gs

    | % 68
    \break
    fs -1
    ds -3
    b -2
    ds
    r
    fs -4
    fs, -1
    fs'
    gs, -3
    fs'
    gs,
    fs'
    as, -2
    e' -0
    as,
    e'

    | % 69
    %\set fingeringOrientations = #'(up)
    \barreSpannerText #"IV" #6
    \barreBracket #0 #-5
    ds=' \startTextSpan
    b
    fs
    ds -3
    r8
    <b' ds > \stopTextSpan
    \set glissandoMap = #'((0 . 0) (1 . -1))
    \once \override Glissando #'(bound-details left padding) = #2.5
    \once \override Glissando #'(bound-details right padding) = #3.5

    <b -2 ds -4> \glissando
    \once \set fingeringOrientations = #'(up right)
    <as -2 cs -1>
    \set fingeringOrientations = #'(up left)
    r
    <e' -3 as -4>


    | % 70
    \break
    \barreSpannerText #"VII" #6
    \barreBracket #1 #-10
    \set fingeringOrientations = #'(up right)
    \set glissandoMap = #'((0 . 0) (1 . -1))
    \once \override Glissando #'(bound-details right padding) = #2.5
    <e=' -2 as -4>^\markup { \tiny "hinge" } \startTextSpan \glissando
    <ds -2 b' -1> \stopTextSpan
    r

    <fs -\tweak Fingering.extra-offset #'(-0.5 . -0.5) -4 a -3>
    \set glissandoMap = #'((0 . -1) (1 . 1))
    \once \hide Fingering
    \once \override Glissando #'(bound-details left padding) = #2.5
    <fs -4 a -3> \glissando
    <es -4 gs -3>
    \set fingeringOrientations = #'(up left)
    r
    <b -2 es -4>

    | % 71
    \barreSpannerText #"II" #6
    \barreBracket #1 #-10
    <b es>^\markup { \tiny "hinge" } \startTextSpan
    \once \set fingeringOrientations = #'(up right)
    <a -2 fs' -1> \stopTextSpan
    fs'16 -4
    a -2
    e -1
    a
    ds, -1
    a'
    cs, -3
    a'
    e -2
    \barreBracket #0 #-3
    gs -1
    ds
    gs

    | % 72
    cs,=' -3
    gs' -1
    a, -4
    gs'
    fs -3
    a -1
    fs
    a
    fs -4
    gs -1
    fs
    gs
    e -2
    gs -1
    \barreBracket #2 #-3
    e -2
    gs

    | % 73
    e -4
    fs -1
    e
    fs
    ds -4
    fs -1
    gs -3
    <a -4> \glissando
    <b -4>
    d, -3
    b'
    d,
    cs -2
    e -1
    fs -4
    gs -1


    | % 74
    \set fingeringOrientations = #'(up left)
    a=' 8 -2
    r
    <cs, -2 fs -4 a -1>
    r
    <b fs' -4 a -2> 4.
    gs' 16 -4
    fs -3

    | % 75
    \barreSpannerText #"VI" #7
    \barreBracket #1 #-10
    gs=' -4 \startTextSpan
    as -1
    gs
    as \stopTextSpan
    <as -4>8. \glissando
    <b -4>16
    b 8
    r8
    e,16 -0
    b
    as
    b

    | % 76
    fs'=' -3
    b, -0
    a? -2
    b
    gs -1
    b
    cs -3
    d -4
    \barreBracket #0 #-2
    cs -1
    b -3
    a
    gs -4
    \barreSpannerText #"II" #6
    \barreBracket #2 #-4
    fs -3 \startTextSpan
    a
    b -3
    ds -4 \stopTextSpan

    | % 77
    e=' -0
    b -0
    gs \4-3
    e -4
    r8
    ds'
    e -2
    gs -1
    fs -4
    e -1

    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1.0 )
    \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
    \mark \markup { \small "D.S. al Fine" }

    \bar "|."
}

inner =  \relative b {
    \clef "treble_8" \key e \major \time 4/4
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \fingeringAllowInsideStaff
    \fingeringChord
    \set fingeringOrientations = #'(down)
    \voiceFour
    \override Rest.staff-position = #-8

    | % 1
    s1

    | % 2
    s1

    | % 3
    r4
    \barreBracket #2 #0
    b4 -1
    <gs -3> \glissando
    <a -3>

    | % 4
    b4 -1
    e, _\5 \fingeringShift #UP -1
    gs -3
    as -2

    | % 5
    b=8 -1
    cs8 -3
    b
    a -3
    gs -2
    <d' -3> \glissando
    \once \override Fingering.padding = #'1.0
    <cs -3>
    b -1

    | % 6
    a=4 -3
    r8
    gs8 -3
    fs -1
    cs' -3
    b -1
    a -4

    | % 7
    \stemUp
    \set fingeringOrientations = #'(left)
    <gs= -3>4
    \revert Rest.staff-position
    b \rest
    b8 \rest
    s8
    s4

    | % 8
    \voiceFour
    \barreSpannerText #"VI" #4
    <as= -3>8 \startTextSpan
    <gs -1> \stopTextSpan
    <fs -4>
    <b -0>
    s4
    s4

    | % 9
    s4
    s4
    s4
    ds8 \rest
    <b -0>

    | % 10
    \voiceThree
    <a= >4
    ds \rest
    \voiceFour
    e='16 \rest
    <fs=' -3>
    \fingeringAboveHead
    <e -1> \glissando
    <ds -1>
    \set fingeringOrientations = #'(left)
    %\override Stem.length-fraction = 0.4
    %\stemUp
    <cs -1>8
    <e -3>
    %\revert Stem.length-fraction

    | % 11
    \stemDown
    \once \hide Fingering
    <e=' _3> \glissando
    <ds _3>16
    <cs _1>

    <ds -4>8
    <fs -3>
    <fs -4>
    <e -3>
    gs, \rest
    s8

    | % 12
    \override Stem.length-fraction = 0.8
    s4
    b=8 \rest
    <e=' -2>8
    <d -2>
    <cs -1>
    <b -0>
    <e -2>
    \revert Stem.length-fraction

    | % 13
    s1

    | % 14
    s1

    | % 15
    s1

    | % 16
    s2
    \stemUp
    %\override Stem.length-fraction = 0.3
    %\fingeringChord
    <a,= -4>8
    [<gs -3>]
    \barreBracket #3 #0
    \once \barreBracketOffset #-1.2
    <fs -1>
    <b >
    %\revert Stem.length-fraction
    | % 17
    s1

    | % 18
    s1

    | % 19
    s1

    | % 20
    s1

    | % 21
    \voiceThree
    s4
    b=4 \rest
    b8 \rest
    <e -2>
    <d -2>
    [<cs -1>]


    | % 22
    %\override NoteColumn.ignore-collision = ##t
    \set fingeringOrientations = #'(left)
    <b= -0> 8
    [<d -3>]
    <cs -3>
    [<b -1>]
    s4
    s
    %\revert NoteColumn.ignore-collision

    | % 23
    \voiceFour
    s8
    s8
    s8
    <b= -0>
    b
    \once \fingeringAboveLeftHead
    cs -1
    e \rest
    <ds -2 >


    | % 24
    <ds=' >8
    <e -0>
    b8 \rest
    <e -0>
    <e -3>
    <d -2>
    b \rest
    <d -3>

    | % 25
    \voiceFour
    <d=' -3>8
    <cs -2>
    s4
    s4
    s4

    | % 26
    s1

    | % 27
    s1

    | % 28
    s1

    | % 29
    s1

    | % 30
    s1
    | % 31
    s1
    | % 32
    s1
    | % 33
    a 16 \rest
    b= -1
    fs -1
    ds -3
    s4
    s4
    s4
    | % 34
    s1
    | % 35
    s1
    | % 36
    s1
    | % 37
    cs'=' 16 \rest
    <e=' -2>
    <b >
    <gs -3>
    s4
    s4
    s4
    | % 38
    s1
    | % 39
    s1

    | % 40
    s1
    | % 41
    s1
    | % 42
    s1
    | % 43
    s1
    | % 44
    s4
    s4
    \once \shiftOff
    \once \override NoteColumn.ignore-collision = ##t
    \barreSpannerText #"II" #6
    \barreBracket #-3 #-9
    <as= >16 \startTextSpan
    <gs -4>
    <fs -3>
    <e > \stopTextSpan
    \voiceFour
    \barreSpannerText #"IV" #6
    \barreBracket #2 #-4
    \set fingeringOrientations = #'(down)
    <ds -3> \startTextSpan
    <a' -4> \glissando % M.S. has flat above notehead?
    <gs -4>
    <fs -1> \stopTextSpan


    | % 45
    \barreSpannerText #"II" #6
    gs \rest \startTextSpan
    <fs -4>
    \once \hide Fingering
    <e -1> \stopTextSpan \glissando
    <ds -1>

    \stemUp
    cs 4
    s4
    s4

    | % 46
    s1
    | % 47
    s1
    | % 48
    s1
    | % 49
    s1

    | % 50
    s1
    | % 51
    s1
    | % 52
    s1
    | % 53
    s1
    | % 54
    s1
    | % 55
    s1
    | % 56
    s1
    | % 57
    s1
    | % 58
    s1
    | % 59
    s1

    | % 60
    s1


    | % 61
    \override Fingering.add-stem-support = ##t
    \revert Fingering.staff-padding
    \set fingeringOrientations = #'(up)
    <cs'=' -3>16
    <b -1>
    <a -4>
    <gs -3>
    \fingeringAllowInsideStaff
    \override Fingering.add-stem-support = ##f
    \set fingeringOrientations = #'(left)
    <fs -1>
    <gs -3>
    fs
    gs
    \barreSpannerText #"IV" #6
    \barreBracket #5 #0
    fs \startTextSpan
    gs
    fs
    gs
    fs
    gs
    fs
    gs

    | % 62
    <a= -3>
    <b -1>
    a
    b \stopTextSpan
    <gs  -1>4
    fs 16 \rest
    <b -3>
    <a >
    <gs -4>
    \barreBracket #4 #-4
    <fs -3>4


    | % 63
    s1

    | % 64
    s1
    | % 65
    s1
    | % 66
    s1
    | % 67
    s1
    | % 68
    s1
    | % 69
    s1

    | % 70
    s1
    | % 71
    s1
    | % 72
    s1
    | % 73
    s1
    | % 74
    s1
    | % 75
    \set fingeringOrientations = #'(left)
    s4
    e'=' -3
    ds16 -2
    b -0
    as -2
    b
    s4

    | % 76
    s1
    | % 77
    s1
    \bar "|."
}

lower =  \relative e {
    \clef "treble_8" \key e \major \time 4/4
    \override Rest.staff-position = #-8
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(down)
    \fingeringBelowHead

    %\stringStaffPadding #0
    %\override StringNumber.padding = #0.5

    | % 1
    s1

    | % 2
    s1

    | % 3
    s1

    | % 4
    s1
    | % 5
    s1
    | % 6
    s1

    | % 7
    r4
    e=4 -2
    ds -1
    e

    | % 8
    \once \override Fingering.add-stem-support = ##f
    fs=4 -4
    \once \override Fingering.add-stem-support = ##f
    \once \override StringNumber.padding = #2.0
    b, \6-1
    <cs \fingeringShift #DOWN  -1 gs' -2>
    <ds -3 fs -1>

    | % 9
    <e= \fingeringShift #DOWN -1 b' -0>4
    <a~ \fingeringShift #UP -3 cs -2>
    <a b>
    gs -2

    | % 10
    \barreSpannerText #"II" #7
    r16 \startTextSpan
    <gs= -4>
    <fs -3>
    <e -1> \stopTextSpan \glissando
    \barreBracket #8 #0
    <fs -1>4
    gs -2
    \once \override Fingering.add-stem-support = ##f
    \once \override StringNumber.padding = #2.0
    \once \override Fingering.padding = #0.25
    as _\4 -2

    | % 11
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.padding = #0.25
    b= 4 -0
    \override NoteColumn.ignore-collision = ##t
    b, -2
    %\once \shiftOnn
    gs4 -1
    \revert NoteColumn.ignore-collision
    a-0

    | % 12
    b=,4 -1
    e,
    \barreBracket #11 #0
    <fs -1> \glissando
    <gs -1>

    | % 13
    a=,4 -0
    \barreBracket #6 #0
    cs -1
    a -0
    \barreBracket #11 #0
    b -1

    | % 14
    cs=4 -4
    \once \barreBracketOffset #-1.8
    \barreBracket #5 #0
    \set fingeringOrientations = #'(down right)
    <fs, -1 as' -2>
    \set fingeringOrientations = #'(down left)
    \set glissandoMap = #'((0 . 0) (1 . -1))
    <gs -2  b' -3> \glissando
    <as -2 cs' -3> \glissando

    | % 15
    <b -2>
    e \5 -2
    <ds -3 fs -1>
    <e -1 b' -2>


    | % 16
    fs= -2
    <b, -1> \glissando
    <cs -1>
    ds -3

    | % 17
    e= \5-2
    gs, -3
    a -0
    gs -1

    | % 18
    fs=, -1
    as -1
    b -1
    a -0

    | % 19
    gs=, -1
    bs -2
    cs -3
    b -1

    | % 20
    a=, -0
    a
    a
    a

    | % 21
    b=,8 -2
    <b -1> \glissando
    <cs -1>
    ds -3
    e -4
    <cs -1> \glissando
    <b -1>
    a -0

    | % 22
    gs=,4 -1
    a -0
    r8
    d -0
    cs -2
    b -1

    | % 23
    \barreBracket #4 #-1
    fs'=8 -3
    \set glissandoMap = #'((0 . 1) (1 . -1))
    \once \override Fingering.padding = #'1.0
    <e -1> \glissando
    \once \set fingeringOrientations = #'(down)
    <ds -3 fs -1>4
    \once \fingeringAllowInsideStaff
    \once \set fingeringOrientations = #'(right)
    <e -3 gs -2 >
    <fs -3 a  >


    | % 24
    \once \fingeringAllowInsideStaff
    \once \override Fingering.add-stem-support = ##f
    <gs -1>4
    e,=,
    <fs \fingeringShift #DOWN -1> \glissando
    <gs -1>

    | % 25
    a=,4 -0
    \set fingeringOrientations = #'(down)
    \set glissandoMap = #'((0 . -1) (1 . 1))
    <fs'= \4 -3 a \3 -1> \glissando
    <gs -3 b -1> \glissando
    \set glissandoMap = #'()
    <as -3 cs -1> \glissando


    | % 26
    \set fingeringOrientations = #'(down)
    <b -3>
    \set fingeringOrientations = #'(left)
    <b, \6 -2 ds \5 -1>
    <cs \5 -2 e \4 -1>
    \set fingeringOrientations = #'(down left)
    \set glissandoMap = #'((0 . 0) (1 . -1))
    <ds -3 fs  -1> \glissando

    | % 27
    <e -3 gs -2>
    \set glissandoMap = #'()
    \revert TextScript.staff-padding
    \barreBracket #5 #0
    <fs,=, a'= >
    <gs -2 b' -3>
    <a~ -0 cs' -3>


    | % 28
    \once \set fingeringOrientations = #'(left)
    <a fs' -1>
    gs8 -1
    a -0
    b4 -1
    b -1

    | % 29
    \once \override Script.padding = #2
    e,=, _\fermata
    e'= 4 -2
    r4
    e,

    | % 30
    r
    gs -3
    a -0
    b -1

    | % 31
    e,=,
    <fs' -3 a -1>
    \once \set fingeringOrientations = #'(left)
    <e, e' -2 gs -1>
    <ds' -1 a' -3>

    | % 32
    \once \set fingeringOrientations = #'(left)
    <e,=, e' -2 gs -1 b -0>
    \once \set fingeringOrientations = #'(down right)
    <gs=, -1 e''=' -2>
    \once \set fingeringOrientations = #'(down right)
    <cs -1 gs' -3>
    \once \set fingeringOrientations = #'(down right)
    <fs, -1 as' -2>

    | % 33
    b=, \6-4
    \barreBracket #11 #0
    b -1
    r
    b

    | % 34
    r
    ds \5-2
    e -3
    fs -1

    | % 35
    b,=, -1
    e' \3-4
    \barreBracket #5 #0
    <b, -1 ds' -2>
    \barreBracket #5 #0
    e' -1

    | % 36
    \barreBracket #5 #0
    <b, -1 fs'' >
    <gs' -2 b -0>
    \once \set fingeringOrientations = #'(down right)
    <fs -1 cs' -3>
    \once \set fingeringOrientations = #'(down right)
    <b, -1 ds' -2>

    | % 37
    e= -4
    e,
    fs -1
    gs -1

    | % 38
    a -0
    <fs -1> \glissando
    <gs -1> \glissando
    <as -1>

    | % 39
    b -1
    b' -3
    gs -1
    <a -1> \glissando

    | % 40
    <b= -1>
    e, -1
    fs -1
    gs -2

    | % 41
    \barreBracket #8 #0
    a= -1
    r
    d -1
    r

    | % 42
    gs,= 4 -1
    r
    cs -1
    r

    | % 43
    fs,= 4 \4 -1
    \once \set fingeringOrientations = #'(down right)
    <fss -2 cs' -3>
    <gs -3 bs -2>
    \once \set fingeringOrientations = #'(down right)
    <a -4 cs -3>

    | % 44
    \once \set fingeringOrientations = #'(down right)
    <bs,=, -2 ds' -3>
    \once \set fingeringOrientations = #'(down right)
    <cs  -1 gs' -3>
    fs, -1
    \once \override Fingering.add-stem-support = ##f
    gs -1

    | % 45
    cs -3
    cs -3
    ds \5 \fingeringShift #UP -2
    es -2

    | % 46
    fs= -3
    e -1
    ds -3
    cs -1

    | % 47
    b -1
    b' -1
    gs -3
    as -3

    | % 48
    b= -2
    gs -3
    es -3
    fss -3

    | % 49
    gs -2
    e -1
    cs -3
    ds -1


    | % 50
    e -1
    b -1
    cs -1
    ds \5 \fingeringShift #UP -1

    | % 51
    gs,=, -1
    b -1
    cs \5-1
    es -3

    | % 52
    \barreBracket  #12 #0
    fs= -1
    a, -0
    b \6 -2
    cs -1

    | % 53
    \barreBracket #8 #0
    fs -1
    a, -0
    b \6 \fingeringShift #UP -1
    ds -3

    | % 54
    \barreSpannerText #"II" #0
    \barreBracket #8 #0
    e -1 \startTextSpan
    gs, -3 \stopTextSpan
    a -0
    b -1

    | % 55
    e= -2
    e
    e,
    gs -4

    | % 56
    b -1
    gs -2
    es -1
    cs' -3

    | % 57
    fs= -3
    fs
    cs -2
    fs, -1

    | % 58
    cs'= -2
    as \fingeringShift #DOWN -1
    fss' -3
    ds -1

    | % 59
    gs -1
    e -2
    b -2
    e,

    | % 60
    d'= -0
    b -2
    gs \fingeringShift #UP -1
    e

    | % 61
    a=,8 -0
    r8
    as4 -2
    b -4
    cs -1

    | % 62
    ds -2
    e \4 \fingeringShift #DOWN -2
    a, -0
    b -1

    | % 63
    e,=,
    e' _\5 \fingeringShift #UP -4
    r4
    e,

    | % 64
    r4
    gs -1
    a -0
    b \6 \fingeringShift #UP -1

    | % 65
    e,=,
    e' \5-2
    b' -3
    b, \6-1

    | % 66
    e,=,
    e' \5-2
    fs -1
    fs, -1

    | % 67
    b -1
    b' -3
    r4
    b,

    | % 68
    r4
    ds \5 \fingeringShift #UP -2
    e,
    fs -1

    | % 69
    b=, -4
    b
    fs' \4-3
    <fs, -1> \glissando

    | % 70
    <b=, -1> \glissando
    <bs -1> \glissando
    <cs -1>
    cs \5 \fingeringShift #DOWN -1

    | % 71
    fs,=, -1
    r4
    r2

    | % 72
    r4
    ds''='8 -4
    <cs -2> \glissando
    <bs -2>
    gs -3
    cs -3
    b -1

    | % 73
    as \fingeringShift #DOWN -2
    fs -3
    b -3
    a -1
    gs -2
    e -2
    <a -3> \glissando
    <gs -3>

    | % 74
    fs= -1
    e -3
    \once \hide Fingering
    <e -3> \glissando
    <ds -3>
    \barreSpannerText #"IV" #7
    \barreBracket #5 #-1
    ds \startTextSpan
    cs -1
    ds \stopTextSpan
    b \fingeringShift #UP -1 \6

    | % 75
    e= -2
    <ds -1> \glissando
    <cs -1>
    fs, -1
    b4 -1
    gs4 -3

    | % 76
    ds'= -1
    e -2
    a, -0
    b -1

    | % 77
    e,=,
    \barreBracket #2 #0
    b''= -1
    <gs -3> \glissando
    <a -3>

    \bar "|."
}

