\version "2.22.2"


upper =  \relative e' {
    \clef "treble_8" \key e \major \time 3/8
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    % \fingeringAboveHead
    \override Fingering.add-stem-support = ##t

    \repeat volta 2 {
    r16
    e -2
    ds -1
    cs -3
    b -1
    a -4

    | % 2
    gs -1
    cs -2
    b -0
    <a -4> \glissando
    <gs -4>
    fs -1

\set Score.skipTypesetting = #mSkipTypesetting
    | % 3
    \once \override Fingering.padding = #'1.0
    <e -1> \glissando
    <ds -1> \glissando
    \once \override Fingering.padding = #'1.0
    <e -1>
    fs -4
    gs -1
    e -3

    | % 4
    fs -4
    gs -1
    a -3
    <e -1> \glissando
    <ds -1>
    a' -3


    | % 5
    gs= -1
    b -0
    e -0
    ds -4
    e
    b

    | % 6
    cs=' -1
    e -0
    ds -4
    cs -2
    b -0
    a -3

    | % 7
    \override Fingering.padding = #'1.5
    \slurDashed
    \once \override NoteColumn.ignore-collision = ##t
    gs= 16 -1
    ( a -3 )
    \revert Fingering.padding
    b -0
    gs
    \once \override NoteColumn.ignore-collision = ##t
    \once \override Glissando.bound-details.left.Y = #-1.3
    \once \override Glissando.bound-details.right.Y = #-1.7
    <fs -2> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    b

    | % 8

    <e,= -2>16
    gs -1
    cs -3
    ds -4
    e -0
    b -0

    | % 9
    \override Fingering.padding = #'1.5
    as -2
    ( b -4 )
    \revert Fingering.padding
    cs -1
    as

    \afterGrace
    <gs -1> {\once  \override Glissando.to-fingerings = ##f \once \hideNotes ds \glissando}
    \once \override NoteColumn.glissando-skip = ##t
    cs' -3

    | % 10
    <fs,= -2>
    as -1
    ds -3
    <e -4> \glissando
    <fs -4>
    cs -3

    | % 11
    \override Fingering.padding = #'1.5
    b= -1
    ( cs -4 )
    \once \barreBracketOffset #-0.9
    \barreBracket #0 #-2
    <ds -1> \glissando
    \revert Fingering.padding
    \once \override NoteColumn.glissando-skip = ##t
    b
    <a -1>
    ds -4

    | % 12
    gs,= -1
    b -0
    e -0
    fs -3
    gs -4
    e

    | % 13
    \override Fingering.padding = #'1.5
    cs=' -2
    ( ds -4 )
    \revert Fingering.padding
    e -0
    fs -2
    gs -4
    b, -0

    | % 14
    as= -2
    cs -1
    e -0
    fs -1
    gs -4
    as,

    | % 15
    \override Fingering.padding = #'1.5
    b= -0
    ( cs -2 )
    \revert Fingering.padding
    ds -4
    e -0
    fs -4
    a, -3

    | % 16
    gs -1
    b -0
    ds -4
    e -0
    fs -3
    <gs, -1> \glissando

    | % 17
    \override Fingering.padding = #'1.5
    <as= -1>
    ( b -3 )
    \revert Fingering.padding
    cs -4
    ds -3
    e -0
    <gs, -4> \glissando

    | % 18
    <fs= -4>
    as -3
    cs -2
    ds -4
    e -0
    cs -2

    | % 19
    ds=' -2
    \once \override Fingering.padding = #'1.0
    <b' -4> \glissando
    <as -4>
    \once \override Fingering.padding = #'1.0
    <gs -1> \glissando
    <fs -1>
    e -0

    | % 20
    ds -3
    gs -4
    fs -1
    e -0
    ds \3-4
    cs -1

    | % 21
    \once \override Fingering.padding = #'1.0
    <b= -1> \glissando
    <as -1> \glissando
    \once \override Fingering.padding = #'1.0
    <b -1>
    cs -4
    \barreBracket #0 #-5
    ds
    b

    | % 22
    cs -2
    ds -4
    e -0
    b -0
    as -2
    e'

    | % 23
    ds -4
    b -0
    cs -2
    ds
    e -0
    fs -2

    | % 24
    gs -4
    e -0
    fs -2
    gs
    as \fingeringShift #UP -1
    b -2

    | % 25
    \barreSpannerText #"VI" #0
    \override Fingering.padding = #'1.5
    \slurSolid
    \once \barreBracketOffset #-1.8
    \barreBracket #-2 #-16
    cs -4 \startTextSpan
    ( b -2 )
    \revert Fingering.padding
    as -1
    gs -4 \stopTextSpan
    fs -2
    e -0

    | % 26
    ds8 -4
    <cs -2 e -0>
    \once \barreBracketOffset #-1.8
    \barreBracket #0 #-8
    \once \set fingeringOrientations = #'(right)
    <as -2 cs >

    | % 27
    r16
    b -0
    as -3
    b
    cs -2
    b

    | % 28
    ds -4
    b -3
    as -2
    b -4
    e -0
    b

    | % 29
    fs'=' -2
    b, -0
    as -3
    b
    gs' -4
    b,

    | % 30
    a'=' -4
    fs -2
    e -0
    ds -4
    cs -3
    b -0

    | % 31
    gs'=' -3
    as -4
    % http://lists.gnu.org/archive/html/lilypond-user/2017-04/msg00475.html
    % Re: how to get markup formatting to survive a font-name change
    % http://lilypond.1069038.n5.nabble.com/override-font-series-medium-doesn-t-work-anymore-td166556.html


    \set fingeringOrientations = #'(left up)
    %\once \override Script.script-priority = #100
    %\override TextScript.color = #magenta
    %\override Fingering.color = #red
    %\override Script.color = #green
    %\barreSpannerText #"IV" #0

    as 8.-\parenthesize \prall -43
    %^\markup{ \roman \upright \fontsize #-1 #"IV" }
%        \override #'(baseline-skip . 1.5)
%        \center-column {
%            \line { \roman \upright \fontsize #-1 #"IV" }
            %\line { \bold \sans \fontsize #-3 #"43" }
            %\line { \bracket { \right-align  { \musicglyph #"scripts.prall" } } }
%        }
%    }

    \set fingeringOrientations = #'(up)

    b 16 -4

    | % 32
    \once \set fingeringOrientations = #'(right)
    \barreBracket #0 #-9
    <ds, -2 fs b > 4.

    | % 33
    }
    \break
    \repeat volta 2 {
    \slurDashed
    r16
    fs=' -2
    e -0
    fs
    gs -4
    e

    | % 34
    fs -2
    ds -4
    b -0
    ds
    fs
    <gs -4> \glissando


    | % 35
    <a -4>
    <e -3> \glissando
    \once \override Fingering.padding = #'1.0
    <fs -3>
    a -1
    ds, -4
    a'

    | % 36
    \override Fingering.padding = #'1.5
    gs=' \fingeringShift #DOWN -1
    (a -2)

    b -4
    \revert Fingering.padding
    gs
    e 8 -0

    | % 37
    r 16
    b= -0
    a -1
    b
    cs -3
    a -2

    | % 38
    b= -0
    gs -1
    e -2
    gs
    b
    cs -3

    | % 39
    d=' -4
    <a -3> \glissando
    \once \override Fingering.padding = #'1.0
    <b -3>
    d -1
    gs, -4
    d'

    | % 40
    \override Fingering.padding = #'1.5
    cs=' -1
    (d -2)
    \revert Fingering.padding
    e -0
    cs \4 \fingeringShift #UP -1
    a -2
    gs -1

    | % 41
    r 16
    cs'='' -3
    d -4
    cs
    b -1
    a -4

    | % 42
    gs=' -2
    cs -3
    d -4
    cs
    a -4
    gs

    | % 43
    fs=' -1
    cs' -3
    d -4
    cs
    gs -2
    fs -1

    | % 44
    \barreSpannerText #"IV" #7
    \override Fingering.padding = #'1.5
    \slurDashed
    es=' -3 \startTextSpan
    (fs -4)
    \revert Fingering.padding
    gs 8 -1 \stopTextSpan
    r

    | % 45
    \barreSpannerText #"II" #7
    r16 \startTextSpan
    cs,='
    d -2
    cs \stopTextSpan
    b -4
    a -1

    | % 46
    gs= -1
    cs -3
    d -4
    cs
    a -3
    gs

    | % 47
    fs= -1
    cs' -3
    d -4
    cs
    gs -3
    fs -1

    | % 48
    \override Fingering.padding = #'1.5
    es= -1
    (fs -3)
    \revert Fingering.padding
    gs 8 -4
    r

    | % 49
    r16
    <a'=' -4> \glissando
    \once \override Fingering.padding = #'1.5
    <b -4>
    a -2
    d, -4
    cs -3

    | % 50
    b -1
    gs' -2
    a -4
    gs -3
    cs, -2
    b -0

    | % 51
    \barreBracket #5 #0
    a= -1
    <fs' -1> \glissando
    \once \override Fingering.padding = #'1.0
    <gs -1>
    fs -4
    b, -0
    a -3

    | % 52
    gs= -1
    \once \override Fingering.padding = #'2.5
    <fs' -3> \glissando
    \once \override Fingering.padding = #'2.0
    <es -3> \glissando
    \once \override NoteColumn.glissando-skip = ##t

    cs -2
    \once \override Fingering.padding = #'1.5
    <ds -3>
    <es -4> \glissando

    | % 53
    <fs=' -4>
    \once \override Fingering.padding = #'1.0
    <cs -3> \glissando
    <b -3>
    cs -1
    \barreBracket #5 #-9
    a
    fs'

    | % 54
    \barreSpannerText #"IV" #7
    \once \barreBracketOffset #-1.8
    \barreBracket #0 #-11
    gs=' -1 \startTextSpan
    fs -4
    es -3
    <fs -4> \stopTextSpan \glissando
    <gs -4>
    \once \override Fingering.padding = #'2.5
    <b -2> \glissando

    | % 55
    \barreBracket #-1 #-12
    \override Fingering.padding = #'2.0
    <a=' -2>32
    (gs -1)
    <fs -4> 16
    \revert Fingering.padding
    <b, -3 gs' -4> 8
    \set fingeringOrientations = #'(up)
    <b -2 es -4>

    | % 56
    \barreBracket #-0 #-9
    <a fs'> 4
    r8

    | % 57
    r16
    fs= -3
    es -2
    fs
    gs -4
    as -1

    | % 58
    b= -0
    fs -4
    es -2
    fs
    as -2
    b -4

    | % 59
    cs=' -2
    fs, -4
    es -3
    fs -4
    b -0
    cs -2


    | % 60
    \override Fingering.padding = #'1.5
    ds -3
    (<e -4>) \glissando
    \once \override Fingering.padding = #'2.0
    <fs -4>
    \revert Fingering.padding
    \once \override Fingering.padding = #'1.0
    <b, -1> \glissando
    <as -1>
    <e' -4> \glissando

    | % 61
    <ds=' -4>
    b -3
    as -2
    b -3
    cs -1
    ds -3

    | % 62
    e -0
    b -3
    as -1
    b
    ds -4
    e

    | % 63
    fs=' -2
    b, -4
    as -3
    b
    e -0
    fs

    | % 64
    \override Fingering.padding = #'1.5
    gs=' -3
    (a -4 )
    \revert Fingering.padding
    b -2
    e, -4
    ds -1
    a' -4

    | % 65
    \barreSpannerText #"VII" #0
    \barreBracket #0 #-9
    gs=' -3 \startTextSpan
    b -1
    cs -4
    b \stopTextSpan
    a -4
    gs -3

    | % 66
    fs=' -2
    b -3
    cs -4
    b -3
    gs -4
    \once \override Fingering.padding = #'1.0
    <fs -2> \glissando

    | % 67
    <e=' -2>
    <b' -4> \glissando
    \once \override Fingering.padding = #'1.0
    <cs -4>
    b -3
    fs -2
    e -0

    | % 68
    \override Fingering.padding = #'1.5
    ds=' \fingeringShift #DOWN -3
    (e -4)
    fs 8 -2
    \revert Fingering.padding
    r

    | % 69
    r16
    b,= -0
    \once \override Fingering.padding = #'1.0
    cs \3 \fingeringShift #UP -2
    b -0
    a -4
    gs -2

    | % 70
    fs= -1
    b -0
    cs -4
    b -0
    gs -4
    fs -1


    | % 71
    e -1
    b' -0
    cs -4
    b -0
    fs -4
    <e -1> \glissando

    | % 72
    \override Fingering.padding = #'1.5
    <ds= -1>
    (e -3)
    fs 8 -4
    \revert Fingering.padding
    r

    | % 73
    r16
    fs'=' -1
    e -0
    fs
    d -2
    gs -4

    | % 74
    cs,=' -2
    es -1
    fs -3
    cs
    gs' -4
    b, -0

    | % 75
    \barreSpannerText #"II" #0
    \barreBracket #5 #-9
    a= \startTextSpan
    gs' -3
    fs -1 \stopTextSpan
    a -4
    e -3
    a -4

    | % 76
    ds,=' -3
    fs -1
    gs -4
    ds
    a' -4
    cs, -1

    | % 77
    b= -0
    a' -2
    gs -1
    b -4
    fs -3
    b

    | % 78
    e,=' -2
    gs -3
    \once \override Fingering.padding = #'1.5
    <a -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    e -0
    \once \override Fingering.padding = #'2.0
    <b' -4>
    e,

    | % 79
    \barreBracket #0 #-9
    cs'='' -3
    b -1
    \once \override Fingering.padding = #'1.0
    <a -2> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    \once \override Fingering.padding = #'2.0
    ds -3
    <gs, -2>
    \once \override Fingering.padding = #'2.0
    e' -4

    | % 80
    fs,-3
    \once \override Fingering.padding = #'1.0
    <e' -4> \glissando
    <ds -4>
    \once \override Fingering.padding = #'1.0
    <cs -1> \glissando
    <b -1>
    <a -4> \glissando

    | % 81
    <gs -4>
    b -1
    cs -4
    b
    a \2 \fingeringShift #UP -2
    \once \override Fingering.padding = #'1.0
    <gs -1> \glissando

    | % 82
    <fs -1>
    b -2
    cs -4
    b -2
    gs -4
    \once \override Fingering.padding = #'1.0
    <fs -1> \glissando

    | % 83
    <e=' -1>
    <b' -4> \glissando
    \once \override Fingering.padding = #'1.0
    <cs -4>
    b -1
    fs -4
    e -1

    | % 84
    ds=' -2
    b' -1
    cs -4
    b -2
    e, -0
    d -3

    | % 85
    cs=' -1
    gs' -4
    fs -2
    <gs -4> \glissando
    \once \override Fingering.padding = #'1.0
    <a -4> \glissando
    <gs -4>

    | % 86
    fs=' -2
    cs' -4
    e, -0
    ds -4
    e -0
    cs -1

    | % 87
    ds -4
    b -0
    as -3
    b -0
    cs -1
    b

    | % 88
    a= -3
    fs' -4
    a,
    gs -2
    a
    fs'

    | % 89
    gs,= -1
    e' -0
    ds \fingeringShift #DOWN -4
    cs -1
    b -0
    a -3

    | % 90
    gs=8 -1
    a -3
    fs -4

    | % 91
    r 16
    e= -2
    ds -1
    e
    fs -4
    e

    | % 92
    gs= -1
    e -3
    ds -2
    e
    <a -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    e

    | % 93
    <b'= -4>
    \once \override Fingering.padding = #'1.0
    <e, -1> \glissando
    <ds -1> \glissando
    \once \override Fingering.padding = #'1.0
    <e -1>
    <cs' \3 -4> \glissando
    \once \override NoteColumn.glissando-skip = ##t
    e,

\set Score.skipTypesetting = ##f
    | % 94
    <d'=' -4>
    b -1
    a \4-4
    <gs -3> \glissando
    <fs -3>
    e -1

    | % 95
    cs'=' 8 -1
    \barreBracket #0 #-9
    <a fs'>
    \set fingeringOrientations = #'(up left)
    <fs -3 ds' -4>

    | % 96
    <gs -1 e' -0> 4
    r8
    |
    }
}

lower =  \relative e, {
    \clef "treble_8" \key e \major \time 3/8
    \override Rest.staff-position = #-8
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \override TextSpanner.staff-padding = #7
    \fingeringBelowHead

    e4
    r8

    | % 2
    <e' \5-3>4 \glissando
    <ds -3>8 \glissando

    | % 3
    <cs -3>4
    b8 -2

    | % 4
    a8 -0
    fs -2
    b -2

    | % 5
    e,
    fs -1
    gs -3

    | % 6
    <a -0>
    b4 -1

    | % 7
    << {
        \fingeringAllowInsideStaff
        \hideNotes
        \fingeringBelowHead
        <e -2>4 \glissando
        \fingeringChord
        <fs> 8
    }
    \\
    {
        e 4
        ds 8 -4
    } >>

    | % 8
    cs= -4
    e -2
    cs -3

    | % 9

    fs4 -3
    \once \fingeringAllowInsideStaff
    \once \fingeringBelowRightHead
    e8 -2

    | % 10
    ds -4
    fs -2
    ds -2

    | % 11
    gs= 4 -3
    fs8 -3

    | % 12
    e4 -2
    r8

    | % 13
    e -1
    e
    e

    | % 14
    cs -3
    cs
    cs

    | % 15
    ds -1
    ds
    ds

    | % 16
    b -2
    b
    b

    | % 17
    cs -2
    cs
    cs

    | % 18
    as -1
    as
    <as -1> \glissando

    | % 19
    <b -1>
    ds -3
    fs -3

    | % 20
    b= 4 -2
    <as \4 \fingeringShift #UP  -3>8 \glissando

    | % 21
    <gs -3>4
    <fs -1>8 \glissando

    | % 22
    <e -1>
    cs -3
    fs -3

    | % 23
    b,=, 4 -1
    r8

    | % 24
    e4 -1
    r8

    | % 25
    as, 4 -1
    r8

    | % 26
    b \fingeringShift #DOWN -1
    e,
    fs -1

    | % 27
    b=, 4 -1
    r8

    | % 28
    r8
    b -1
    cs -3

    | % 29
    ds4 -1
    r8

    | % 30
    r8
    b -1
    ds -1

    | % 31
    e -1
    \barreBracket #3 #0
    cs -1
    fs -1

    | % 32
    b, 4. -1

    | % 33
    b=, 4 -1
    r8

    | % 34
    r8
    ds -1
    b -1

    | % 35
    \once \override Fingering.padding = #'1.0
    <cs -2> \glissando
    <ds -2>
    b \6-2

    | % 36
    e,=, 4
    r16
    fs -2

    | % 37
    gs 4 -4
    a 8 -0

    | % 38
    e=,
    gs -4
    e

    | % 39
    \once \override Fingering.padding = #'1.0
    <fs -2> \glissando
    <gs -2>
    e

    | % 40
    a4 -0
    r8

    | % 41
    fs'= 4 \5-2
    r8

    | % 42
    e= 4 -1
    r8

    | % 43
    d= 4 -0
    r8

    | % 44
    \once \barreBracketOffset #-1.8
    \barreBracket #11 #0
    cs 8. -1
    b 16 -4
    a -2
    gs -1

    | % 45
    \barreBracket #11 #0
    fs 8\p \fingeringShift #DOWN  -1
    fs' -3
    fs -3

    | % 46
    e -2
    e,
    e'

    | % 47
    d \fingeringShift #UP -2
    r
    d

    | % 48
    cs 8. -2
    b 16 -1
    a -0
    gs -2

    | % 49
    fs=, 8\f -1
    r8
    fs' -1

    | % 40
    d -0
    r8
    e -1

    | % 51
    cs -3
    r8
    d \5 -1

    | % 52
    b \6-2
    <cs \5-1> \glissando
    \once \override Fingering.padding = #'1.0
    <b -1>

    | % 53
    a -0
    gs -2
    fs -1

    | % 54
    d'= -2
    cs -1
    b \6-1

    | % 55
    <cs -1> \glissando
    \once \override Fingering.padding = #'1.0
    <b -1> \glissando
    <cs -1>

    | % 56
    fs,=, -1
    a -4
    cs -3

    | % 57
    fs,=, 4 -1
    r8

    | % 58
    gs 4 -3
    r8

    | % 59
    as 4 -1
    r8

    | % 60
    b -1
    ds -3
    fs -2

    | % 61
    b,=, 4 -1
    r 8

    | % 62
    cs 4 -2
    r 8

    | % 63
    \stringNumberTextSpanner 4 #DOWN ##t
    ds 4 -1 \startTextSpan
    r 8

    | % 64
    <e -1> \glissando
    <gs -1>
    \afterGrace
    b -3 {\once \hideNotes b \stopTextSpan}

    | % 65
    e,= 4 -1
    r8

    | % 66
    ds= 4 -1
    r8

    | % 67
    cs= 4 -1
    r8

    | % 68
    b 8. -1
    a 16 -0
    gs -3
    fs -1

    | % 69
    e=, 8\p -0
    r
    <e' \5-3> \glissando

    | % 70
    <ds -3>
    r
    <ds -3> \glissando

    | % 71
    <cs -3>
    r
    cs

    | % 72
    b 8. -2
    cs 16 -3
    b -1
    a -0

    | % 73
    gs 8\f -3
    r
    e

    | % 74
    a=, -0
    r
    cs -3

    | % 75
    fs,=, -1
    r
    fs' -1

    | % 76
    b= -2
    r
    fs -2

    | % 77
    gs= \fingeringShift #UP -3
    r
    <b, \6-1> \glissando

    | % 78
    <cs -1>
    e \5-1
    gs -3

    | % 79
    a -1
    <fs \5-1> \glissando
    <e -1>

    | % 80
    b'= -1
    cs -3
    ds -2

    | % 81
    e=' -3
    ds -2
    cs -3

    | % 82
    ds -3
    cs -1
    b -3

    | % 83
    cs -2
    \stringNumberTextSpanner 4 #DOWN ##t
    <b -3> \startTextSpan \glissando
    \once \override Fingering.padding = #'1.0
    <a -3> \glissando


    | % 84
    <b -3>
    <a -1> \glissando
    <gs -1>

    | % 85
    a -2
    a -1
    a

    | % 86
    as -3
    as
    \afterGrace
    as {\once \hideNotes as \stopTextSpan}

    | % 87
    b,=,  \6 -2
    b
    b

    | % 88
    ds \5 -1
    ds
    ds

    | % 89
    e -2
    gs, -3
    a -0

    | % 90
    b -2
    a -0
    b -1

    | % 91
    e,=, 4
    r 8

    | % 92
    r
    e
    fs -2

    | % 93
    gs 4 -3
    r8

    | % 94
    r8
    e=,
    gs -2

    | % 95
    a -0
    fs -1
    b -1

    | % 96
    e,=, 4 r8

    |
}
