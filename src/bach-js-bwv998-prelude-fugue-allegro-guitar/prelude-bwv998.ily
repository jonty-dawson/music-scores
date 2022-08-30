\version "2.22.2"

upper =  \relative e'' {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP

    %\fingeringAboveLeftHead

    %\stringStaffPadding #6

    r8
    e8 -4
    ds -3
    e
    b -3
    d -1
    cs \fingeringShift #DOWN -2
    gs -1
    a -3
    e -1
    a
    cs

    | % 2

    r8
    b='8 \fingeringShift #DOWN -4
    a -2
    b
    e, -2
    gs -1
    fs -4
    a -1
    cs, -2
    ds -4
    fs -3
    a -1

\set Score.skipTypesetting = #mSkipTypesetting
    | % 3
    r8
    gs8 \fingeringShift #DOWN -3
    fs -1
    gs -4
    b, -2
    ds -3
    cs -1
    e -0
    gs -4
    b, -3
    as -2
    gs -1

    | % 4
    as8 -4
    fs' -3
    e -0
    fs
    as,
    cs -2
    b -0
    ds -4
    fs -2
    \once \override Fingering.padding = #2.0
    <b \fingeringShift #UP -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    fs -3
    \once \override Fingering.padding = #2.0
    <gs -4>

    | % 5
    e8 -0
    cs -1
    b -0
    cs -2
    gs -1
    b -4
    as -2
    cs -1
    e -4
    gs -3
    fs -1
    e

    | % 6
    \once \set fingeringOrientations = #'(right)
    <b -2 ds -3>8
    b' -4
    as -3
    b -4
    fs -3
    a -1
    gs \fingeringShift #DOWN -2
    ds -1
    e -3
    b -1
    e
    gs

    | % 7
    r8
    fs='8 -2
    e -0
    fs
    b, -0
    ds -4
    cs -2
    e
    gs, -1
    as -3
    cs
    e

    | % 8
    r8
    ds -4
    cs -2
    ds
    fs, -3
    <a -1> \glissando
    <gs -1>
    b -0
    d -4
    a -2
    gs -1
    fs -4

    | % 9
    es8 -3
    gs -1
    b -0
    \override Fingering.padding = #'1.5
    d -4
    ( cs -2 )
    \revert Fingering.padding
    es -1
    fs -3
    cs -2
    a -1
    fs -4
    <gs -1> \glissando
    <a -1>

    | \barNumberCheck #10
    b8 -4
    d -2
    \once \hide StringNumber
    fs \1-1
    \override Fingering.padding = #'1.5
    a \fingeringShift #UP -2
    (gs -1)
    \revert Fingering.padding
    b -4
    \barreBracket #2 #-9
    \once \barreBracketOffset #-1.8
    \barreSpannerText #"IV" #6
    es, -3 \startTextSpan
    gs
    b, \stopTextSpan
    d -4
    cs -3
    b -1

    \once \override Staff.BarLine #'extra-spacing-width = #'(0.0 . 1.5)
    | % 11
    \barreSpannerText #"II" #6
    \barreBracket #5 #-2
    a=8 \startTextSpan
    fs' \stopTextSpan
    <es -4> \glissando
    \once \override Fingering.padding = #1.0
    <fs -4>
    cs -3
    e -2
    ds \fingeringShift #DOWN -4
    b -3
    ds
    fs -2
    <gs -4> \glissando
    <a -4>

    | % 12
    gs8 -3
    e -4
    ds -2
    e
    bs -3
    <ds -2> \glissando
    <cs -2>
    a -1
    cs
    e -0
    fs -1
    gs -4

    | % 13
    fs='8 -2
    ds -4
    cs -2
    \barreSpannerText #"II" #6
    \barreBracket #0 #-12
    ds \startTextSpan
    as -2
    cs \stopTextSpan
    bs -2
    gs -3
    bs
    ds \3-2
    e -3
    fs -4

    | % 14
    e8 -2
    \once \override Fingering.padding = #1.0
    <cs' -3> \glissando
    <bs -3>
    cs -4
    gs -3
    b -1
    a \fingeringShift #DOWN -2
    es -3
    fs -4
    cs -3
    fs -4
    a -2

    | % 15
    r8
    <gs -2> \glissando
    <fs -2>
    gs -4
    cs, -1
    e -0
    ds -3
    \once \barreBracketOffset #-0.8
    \barreBracket #0 #-3
    fs -1
    cs
    bs -4
    ds -3
    fs -1

    | % 16
    r8
    e=' -4
    ds -3
    e
    gs, -1
    b -0
    a -2
    cs -3
    e -0
    b -4
    a -2
    gs -1

    | % 17
    fss8 -0
    ds' -4
    cs -1
    ds
    fss, -0
    as -3
    \override Stem.length-fraction = 1.3
    gs -1
    b -0
    \barreBracket #3 #0
    \once \barreBracketOffset #-0.8
    ds -4
    gs
    ds
    e -0

    | % 18
    cs -3
    gs -2
    fss -0
    gs
    cs -3
    as -4
    fss -0
    as -3
    cs -2
    e -4
    ds -3
    cs -1

    | % 19
    \stringStaffPadding #8
    b=8 -0
    gs -1

    \stringNumberTextSpanner 2 #UP ##t
    b \startTextSpan
    ds -1
    gs -4
    fss -3
    gs \stopTextSpan
    b -2
    gs
    ds -1
    es -3
    fs -4


    | \barNumberCheck #20
    es
    cs -2
    \once \hide Fingering
    <es -3> \glissando
    <gs -3>
    b -1
    a -4
    b -1
    d -4
    cs -3
    b -1
    a \fingeringShift #DOWN -4
    gs -3

    | % 21
    \barreSpannerText #"II" #8
    \barreBracket #-2 #-16
    a8 -4  \startTextSpan
    fs, -3
    a
    cs
    fs \stopTextSpan
    <es -4> \glissando
    <fs -4>
    a -2
    cs, -3
    e  -2
    ds -1
    cs \fingeringShift #DOWN -2

    | % 22
    \stringStaffPadding #8
    ds='8 -4
    b -3
    <ds -4> \glissando
    <fs -4>
    a -2
    <gs -1> \glissando
    <a -1>
    cs -4
    b -3
    a -1
    \stringNumberTextSpanner 2 #UP ##t
    gs -4 \startTextSpan
    fs -2

    | % 23
    gs8 -4 \stopTextSpan
    \stringNumberTextSpanner 3 #UP ##t
    e -3 \startTextSpan
    ds -2
    <e -3>  \stopTextSpan \glissando
    \once \override Fingering.padding = #2.0
    \once \override NoteColumn.glissando-skip = ##t

    b -0
    <gs -1>
    r
    <gs -1> \glissando
    \once \override Fingering.padding = #2.0
    \once \override NoteColumn.glissando-skip = ##t

    b -0
    <e \3 -3>
    fs -1
    gs -3

    | % 24
    a8 -4
    e -3
    ds -1
    e
    a
    cs -3
    d -4
    e, -3
    ds -2
    e -3
    gs -4
    b -1

    \stringStaffPadding #0
    %\stringAllowInsideStaff


    | % 25
    cs8 -3
    a \2-4
    gs -2
    a
    e -2
    g -1
    fs \fingeringShift #DOWN -3
    cs \3-1
    d -2
    a \4-1
    d
    fs

    | % 26
    r8
    e \2 \fingeringShift #DOWN -4
    d -2
    e
    \barreBracket #2 #0
    \once \barreBracketOffset #-0.8
    a, -1
    cs
    b -3
    d -2
    a -1
    gs -4
    b -2
    d -1

    | % 27
    r8
    cs -3
    b -0
    cs
    a -2
    <gs -1> \glissando
    <a -1>
    fs -3
    es -2
    fs
    cs' -1
    e -0

    | % 28
    \stringStaffPadding #9
    ds8 -4
    b -3
    as -2
    b
    cs -1
    ds -3
    e -0
    b -3
    <as -1> \glissando
    \barreBracket #2 #0
    \once \barreBracketOffset #-0.8
    <b -1>
    ds
    e -2


    | % 29
    fs8 -4
    <b, -1> \glissando
    <as -1> \glissando
    \barreBracket #2 #0
    \once \barreBracketOffset #-0.8
    <b -1>
    ds
    <fs -4> \glissando
    <a -4>
    cs -3
    b -1
    \once \override Fingering.padding = #1.0
    <a \2 -4> \glissando
    <gs -4>
    fs -2

    \stringStaffPadding #0

    | \barNumberCheck #30
    gs8 -4
    e -0
    ds \fingeringShift #DOWN -3
    e -4
    gs -3
    d -2
    cs -1
    gs' -4
    b, -0
    a -1
    e' -0
    gs

    | % 31

    fs8 -2
    ds -4
    cs -2
    \barreSpannerText #"II" #6
    \barreBracket #2 #-12
    \once \barreBracketOffset #-1.0
    ds -4 \startTextSpan
    fs
    cs \stopTextSpan
    b -4
    \barreBracket #0 #-5
    \once \barreBracketOffset #-0.8
    fs' -1
    \once \hide Fingering
    <a, -1> \glissando
    \once \override Fingering.padding = #1.5
    <gs -1>
    ds' -4
    fs -3

    | % 32
    e8 -0
    cs -2
    b -0
    cs
    e
    b
    a -3
    e'
    gs, -1
    fs -4
    cs' -1
    e

    | % 33
    ds8 -4
    a -3
    gs -1
    a -2
    ds -4
    fs -3
    b -4
    a, -2
    gs -1
    a
    ds -4
    fs -3

    | % 34
    \override Fingering.padding = #1.0
    b8 -4
    gs, -3
    fs -1
    gs
    b -1
    e -2
    b'
    gs,
    fs
    gs
    b
    e

    | % 35
    b'8 -4
    fs, -1
    e -3
    \barreSpannerText #"IV" #0
    \barreBracket #5 #0
    \once \barreBracketOffset #-1.0
    fs \startTextSpan
    b
    ds
    a' -2
    fs,
    e -4
    fs
    b
    ds \stopTextSpan
    \revert Fingering.padding

    | % 36
    << {
    \fingeringChord
    gs8 -3
    b \rest
    <gs -3>
    gs4
    gs8
    b \rest
    b \rest
    gs
    gs4
    gs8
    } \\ {
    \fingeringChord
    \stemDown \override Stem.length-fraction = 0.7 b,8 \rest
    <b _2>
    <e -4>
    e
    <b>
    e
    b \rest
    b
    e
    e
    b
    e
    } >>

    | % 37
    << {
    b'8 \rest
    b \rest
    \barreBracket #0 #-3
    \once \barreBracketOffset #-1.0
    a -4
    a4
    a8
    b \rest
    b \rest
    b -4
    b4
    b8
    } \\ {
    b,8 \rest
    a -1
    e'
    e
    a,
    e'
    b \rest
    gs -1
    d' -3
    d
    gs,
    d'
    } >>

    | % 38
    << {
    c'8 -4
    a -2
    gs -1
    a -4
    e -3
    d -1
    e -3
    c -2
    b -0
    \barreBracket #0 #-2
    c -1
    a -2
    gs
    } \\ {
    \revert Stem.length-fraction \once \shiftOn
    \once \set fingeringOrientations = #'(left)
    <e' -1>8
    s8*11
    } >>

    | % 39
    a,8 -2
    f -3
    e -1
    \override Stem.length-fraction = 1.3
    f
    a
    c -1
    \revert Stem.length-fraction
    f -2
    c
    b -0
    c \3 \fingeringShift #UP -1
    f -3
    a -2

    | \barNumberCheck #40
    <cs, -1 fs -3 b -4>4

    (
%    \once \fingeringAllowInsideStaff
%    \once \set fingeringOrientations = #'(down)
    \once \override Script.padding = #2
    <as' -2>8 ) ^\fermata
    r16
    gs16-4
    \once \override Stem.length-fraction = 1.3
    b16-2
    as16-1
    gs16-4
    fs16-2
    b8-3
    fs-2
    ds-4
    b -0
    fs' \fingeringShift #DOWN -1
    a -4

    | % 41
    gs8 -3
    fs -1
    e -0
    fs -3
    cs -2
    e
    \barreSpannerText #"II" #6
    \barreBracket #2 #-4
    \once \barreBracketOffset #-1.0
    fs, -3 \startTextSpan
    a -1
    gs -4
    a
    e' -4 \stopTextSpan
    ds -3

    | % 42
    e8 -0
    e' -4
    ds -3
    e
    b -3
    d -1
    cs \fingeringShift #DOWN -2
    gs -1
    a -3
    e -1
    a
    cs

    | % 43
    r8
    b \fingeringShift #DOWN -4
    a -2
    b
    e, -2
    gs -1
    fs -4
    a -1
    cs, -2
    ds -4
    fs -3
    a -1

    | % 44
    r8
    gs \fingeringShift #DOWN -3
    fs -1
    gs
    b, -0
    d -2
    cs -1
    e -0
    a -4
    cs, -1
    b -3
    a -1

    | % 45
    b8 -2
    e -4
    gs -3
    <b, -2> \glissando
    <a -2>
    <gs -1> \glissando
    <a -1>
    ds -4
    fs -2
    <a, -1> \glissando
    <gs -1>
    fs -4

    | % 46
    gs8 -1
    b -0
    e -0
    gs \2 \fingeringShift #UP -4
    b -3
    <d -4> \glissando
    \once \barreBracketOffset #-1.8
    \barreBracket #-2 #-16
    <cs -4>
    a -1
    fs -3
    \barreSpannerText  #"II" #6
    \once \barreBracketOffset #-1.8
    \barreBracket #2 #-9
    ds -3 \startTextSpan
    fs -1 \stopTextSpan
    <a -4> \glissando

\set Score.skipTypesetting = ##f
    | % 47
    <gs -4>8
    e -0
    b -0
    gs -1
    b
    d -2
    \barreBracket #0 #-2
    \once \barreBracketOffset #-0.8
    cs -1
    a
    fs -3
    ds -1
    fs -4
    a -3

    | % 48
    <b, -2 e -3 a -4>4
    (
    \once \override Script.padding = #2
    <gs' -1>8 ) ^\fermata
    b4. \rest
    b2. \rest

    \bar "|."
    }

lower =  \relative e, {

    \override Rest.staff-position = #-8
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(down)
    %\fingeringAllowInsideStaff
    %\fingeringDownStemLeft
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5

    | % 1
    e4
    r8
    r4.
    r2.

    | % 2
    e4
    s8*10

    | % 3
    e4
    s8*10

    | % 4
    e'4 -2
    r8
    r4.
    ds4 -1
    r8
    r4.

    | % 5
    cs4 -3
    r8
    r4.
    fs4 -3
    r8
    r4.

    | % 6
    b,=,4 -1
    s8*10

    | % 7
    b=,4 -1
    s8*10

    | % 8
    b4 -1
    s8*10
    | % 9

    b4 -2
    r8
    r4.
    a4 -0
    r8
    r4.

    | \barNumberCheck #10
    gs=,4 -3
    r8
    r4.
    cs4 -1
    r8
    r4.

    | % 11
    fs4 -3
    r8
    a,4 -0
    r8
    b4 -1
    r8
    ds4 -1
    r8

    | % 12
    e4 -1
    r8
    gs,4 -1
    r8
    a4 -0
    r8
    cs4 -3
    r8

    | % 13
    ds4 -1
    r8
    fs,4 -1
    r8
    gs4 \fingeringShift #UP -1
    r8
    bs4 \fingeringShift #UP -1
    r8

    | % 14
    cs4 \fingeringShift #UP -1
    s8*10

    | % 15
    cs4 \5-1
    s8*10

    | % 16
    cs4 -2
    s8*10

    | % 17
    cs4 -3
    r8
    r4.
    b4 -2
    r8
    r4.

    | % 18
    as4 -1
    r8
    r4.
    ds4 -1
    r8
    r4.

    | % 19
    gs,4 -4
    r8
    r4.
    b4 -1
    r8
    r4.

    | \barNumberCheck #20
    cs4 -1
    r8
    r4.
    es4 -2
    r8
    r4.

    | % 21
    fs,4 -1
    r8
    r4.
    a4 -0
    r8
    r4.

    | % 22
    b4 -1
    r8
    r4.
    ds4 -2
    r8
    r4.

    | % 23
    e,4
    r8
    r4.
    d'4 -0
    r8
    r4.

    | % 24
    cs4 \6-2
    r8
    r4.
    b4 -1
    r8
    r4.


    | % 25
    %\pageBreak
    a4 -0
    s8*10

    | % 26
    a4
    s8*10

    | % 27
    a4
    s8*10


    | % 28
    a4
    r8
    r4.
    gs4 -2
    r8
    r4.

    | % 29
    ds'4 -3
    r8
    r4.
    b4 -1
    r8
    r4.

    | \barNumberCheck #30
    e4 -1
    r8
    gs,4 -1
    r8
    a4 -0
    r8
    cs4 -3
    r8

    | % 31
    ds4 -1
    r8
    fs,4 -1
    r8
    gs4 -3
    r8
    b4 -2
    r8

    | % 32
    cs4 -4
    r8
    e,4
    r8
    fs4 -2
    r8
    a4 -0
    r8

    | % 33
    b4 \6 \fingeringShift #UP -2
    s8*10

    | % 34
    cs4 -1
    s8*10

    | % 35
    ds4 -2
    s8*10

    | % 36
    e4 -1
    a,8 \rest
    a4. \rest
    d4 -0
    a8 \rest
    a4. \rest

    | % 37
    c4 -2
    f,8 \rest
    f4. \rest
    b4 \6 \fingeringShift #UP -2
    f8 \rest
    f4. \rest

    | % 38
    a4 -0
    s8*10

    | % 39
    a4
    s8*10

    | \barNumberCheck #40
    \once \override Script.padding = #2
    e4 _\fermata
    r8
    r4.
    ds'4 -1
    r8
    r4.

    | % 41
    e,=,4
    r8
    a4 -0
    r8
    b4 -1
    r8
    b4
    r8

    | % 42
    e,4
    s8*10

    | % 43
    e4
    s8*10

    | % 44
    e4
    r8
    r4.
    e4
    r8
    r4.

    | % 45
    e4
    r8
    r4.
    e4
    r8
    r4.

    | % 46
    e4
    r8
    r4
    <gs -1 e' -2>8 \glissando
    <a -1 e' >4
    r8
    <b -1 fs' -2>4
    r8

    | % 47
    \fingeringChord
    <cs -2 e -1>4
    r8
    r4
    gs8 -3
    a4 -0
    r8
    b4 -2
    r8

    | % 48
    \once \override Script.padding = #2
    e,4. _\fermata
    r4.
    r2.
    \bar "|."
}

