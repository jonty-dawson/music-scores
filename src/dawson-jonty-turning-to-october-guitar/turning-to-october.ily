\version "2.22.2"


upper =  \relative cs' {

    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up left right down)
    \override Fingering.direction = #UP

    \override TupletBracket.bracket-visibility = ##t
    \override Rest #'staff-position = #6



    | % 1
    \newSpacingSection
    \override Score.SpacingSpanner.spacing-increment = #2.1
    r4
    fs=' 4
    g


    | % 2
    a=' 2.

    | % 3

    \once \barreSpannerText #"III" #0
    r4 \startTextSpan
    d,='
    b'=' \stopTextSpan

    | % 4
    a=' 2
    g 4

    | % 5
    \once \barreSpannerText #"II" #0
    a=' 2. \startTextSpan

    | % 6
    << {
    d,=' 2.
    } {
        s4
        s4
        s4 \stopTextSpan
    } >>
    \newSpacingSection
    \revert Score.SpacingSpanner.spacing-increment

    | % 7
    fs=' 8 (
    e )
    d 2

    | % 8
    r4
    d='
    e ~
\noBreak

    | % 9
    e 4
    fs=' 2

    | % 10
    a=' 2
    b,= 4 ~

    | % 11
    b 2
    <d=' g='> 4 ~

    | % 12
    <d=' g='> 4
    fs!
    e

    | % 13
    fs=' 2.

    | % 14
    s2.

    | % 15
    s2.

    | % 16
    r 4
    e=' 2

    | % 17
    fs=' 2
    d=' 4 ~
\noBreak

    | % 18
    d=' 4
    a'='
    f

    | % 19
    cs=' 2
    b 4 ~
\noBreak
    | % 20
    b= 4
    a= 8
    b
    cs (
    d )

    | % 21
    ds=' 2
    e 4 ~

    | % 22
    e=' 4
    g 4
    fs

    | % 23
    e=' 4.
    d 4. ~

    | % 24
    d=' 4
    <cs=' -2> \glissando
    <d -2>

    | % 25
    fs=' 2  -1
    e 4 ~

    | % 26
    e=' 4
    d 4.
    cs 8

    | % 27
    e=' 2
    d 4 ~
\noBreak

    | % 28
    d 4
    a= 8
    b
    d
    e

    | % 29
    fs=' 2
    fs 4~
\noBreak
    | % 30
    fs 4
    a='
    b,=

    | % 31
    cs=' 8 ->
    e
    d 2~

    |  % 32
    d4
    b= 8 \rest
    d='
    e
    fs

    \bar "||" % 33
    g=' 8 -3
    fs -1
    a 4 -4
    g

    | % 34
    d=' 2
    r8
    d 8 ~
\noBreak

    | % 35
    d=' 8
    cs
    e 4
    d

    | % 36
    c=' 4
    b
    a -1

    | % 37
    b= 4
    cs
    d

    | % 38
    e=' 4
    fs
    e

    | % 39
    a,= 4
    b
    c

    | % 40
    d=' 4
    e
    d

    | % 41
    g=' 8 -4
    fs -1
    a 4 -4
    g -2

    | % 42
    fs=' 4
    e
    d ~ -4
\noBreak

    | % 43
    d=' 8
    c
    e 4
    d

    | % 44
    <g,= c='> 4
    b
    a -1

    | % 45
    b= 4
    cs
    ds

    | % 46
    e=' 4
    fs
    gs

    | % 47
    a,= 4
    b
    c
\noBreak

    | % 48
    d=' 4
    e
    f

    \bar "||" % 49
    <> \tempo \markup {
        \override #'(box-padding . 0.5)
        \box { swing }
        }
    \once \fingeringAboveHead
    g=' 4. -4
    fs 8 (
    g4 )

    | % 50
    c,=' 4.
    d 4
    e 8

    | % 51
    f=' 8
    e 4
    g 4 -.
    f 8 (

    | % 52
    e=' 4. )
    d 8 \rest
    d 4

    | % 53
    b= 4
    c
    d

    | % 54
    e=' 4
    f
    g

    | % 55
    c,=' 4
    d
    e

    | % 56
    f=' 4
    fs -4
    af \fingeringShift #UP -2

    | % 57
    \once \barreSpannerText #"III" #0
    \once \fingeringAboveHead
    bf=' 4. -4 ~ \startTextSpan
    bf 4
    bf 8 ~ \stopTextSpan

    | % 58
    bf=' 4.
    bf 4
    af 16 ( -2
    g )-1

    | % 59
    \once \barreSpannerText #"I" #0
    \once \fingeringAboveHead
    af=' 4. \startTextSpan -4
    c,=' 4. \stopTextSpan

    | % 60
    \slashedGrace cs=' 8 (
        d=' 4
    )
    ef
    f 8
    g ~


    | % 61
    g 2.

    | % 62
    r4
    e='
    f

    \bar "||" % 63
    \tuplet 4/3 {
        g=' 4
        fs
        a
        g
    }

    | % 64
    d=' 2
    r8
    e 8

    | % 65
    f=' 8
    e 4
    g -.
    f 8

    | % 66
    e=' 4 -.
    d
    cs -.

    | % 67
    <gs= b=> 4
    fs 8
    <gs= b=> 4
    fs 8
    | % 68
    <gs= ^1 b= ^0> 4
    <a ^2 cs ^3> \glissando
    <b ^2 ds ^3>


    | % 69
    <g= b e='> 4
    <gs cs fs>
    <as ds gs='>


    | % 70
    \once \stringNumberTwoTextSpanner #2 #3 #UP ##t
    <a= c='> 4 \startTextSpan
    <b d>
    <cs e>

    | % 71
    \time 4/4
    <d=' f='> 4
    <e g> 4 \stopTextSpan
    <> \tempo \markup {
        \override #'(box-padding . 0.5)
        \box { straight }
    }
    c=' 8
    e=' 8
    b= 4

    | % 72
    \time 3/4
    \once \override TextSpanner.bound-details.left-broken.text = ##f
    \once \override TextSpanner.bound-details.left.text = \markup { \upright \bold "rit. " }
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.text = \markup { \upright \bold " a tempo" }
    \once \override TextSpanner.staff-padding = #4
    <> \startTextSpan
    \once \fingeringAboveHead
    c=' 2. \fingeringShift #DOWN -2

    | % 73
    <d=' e> 2
    cs 4

    | % 74
    %<> \tempo \markup { a tempo }
    <> \stopTextSpan
    <gs= b ~> 2.
\noBreak
    | % 75
    b 4
    d=' 4
    c

    | % 76
    b= 2. ~
\noBreak

    | % 77
    b 4
    b= 2 ~
\noBreak

    | % 78
    b 4
    cs=' 2

    | % 79
    r 4
    d=' 4
    c

    | % 80
    b= 4
    e=' 2


    | % 81
    b= 8 \rest
    \once \barreBracket #8 #5
    \once \barreSpannerText #"III" #0
    fs= -2 \startTextSpan
    b -3
    d
    g=' 4 \stopTextSpan

    | % 82
    r4
    <bs,= ds gs='> \barreText #"IV"
    e ~
\noBreak

    | % 83
    e 4
    d=' 4
    c

    \bar "||"  % 84
    b= 4
    fs'=' 2

    | % 85
    a=' 2.

    | % 86
    r4
    d,='
    b'='

    | % 87
    a=' 2
    g=' 4

    | % 88
    \once \barreSpannerText #"II" #0
    a=' 4. \startTextSpan
    cs,=' 8 (
    d )
    a' ~ \stopTextSpan
\noBreak

    | % 89
    a 4
    d,=' 4
    e 8
    fs

    | % 90
    g=' 2
    b,= 4

    | % 91
    r 4
    f'=' 8 (
    e=' 8 )
    d
    bf

    | % 92
    r4
    fs'=' 4
    g

    | % 93
    a=' 2.

    | % 94
    r4
    <d,=' g='> 2~
\noBreak

    | % 95
    <d=' g='> 4
    fs!
    e

    | % 96
    fs=' 2.

    | % 97
    s2.

    | % 98
    s2.

    | % 99
    r4
    e=' 2

    | % 100
    fs=' 2
    <d=' -4> 4 \glissando
\noBreak
    | % 101
    <f=' -4> 2
    gs 4

    | % 102
    e=' 2.

    | % 103
    cs=' 4
    d
    e=' 4

    | % 104
    fs=' 2.

    | % 105
    f=' 2
    e 4

    | % 106
    a=' 2.

    | % 107
    d,=' 2
    e 4

    | % 108
    g=' 4 -4
    g
    g

    | % 109
    \once \barreSpannerText #"III" #0
    r4 \startTextSpan
    a
    g \stopTextSpan

    | % 110
    d=' 2.

    | % 111
    r4
    <as= b fs'='> 4
    e'='

    | % 112
    d=' 2
    d 4 ~
\noBreak
    | % 113
    d 4
    d=' 4
    cs

    | % 114
    b= 2.
\noBreak

    | % 115
    e=' 4
    d
    c

    | % 116
    b= 2.

    | % 117
    a= 2.

    | % 118
    as= 2.~
\noBreak
    | % 119
    as= 2.

    \bar "||" % 120
    r4
    <cs=' fs='> 2

    | % 121
    a'=' 2.

    | % 122
    \once \barreSpannerText #"III" #0
    r4 \startTextSpan
    d,=' 4
    b'=' \stopTextSpan

    | % 123
    a=' 2 \fingeringShift #UP -1
    g 4 -4

    | % 124
    \once \barreSpannerText #"VI" #0
    r4 \startTextSpan
    f=' 4
    \once \fingeringAboveHead
    \once \override Glissando.bound-details.left.padding = #1.5
    <d'='' -4> \glissando
\noBreak

    | % 125
    \once \fingeringAboveHead
    <c='' -4> 2
    bf 4 \stopTextSpan

    \override BreathingSign.text = \markup {
        \musicglyph #"scripts.caesura.straight"
    }
    \breathe

    | % 126
    a=' 8 (
    e )
    b= 2

    | % 127
    \once \barreSpannerText #"II" #0
    b= 8 \rest \startTextSpan
    e,=
    a
    d
    fs=' 4 \stopTextSpan

    | % 128
    e=' 8
    b
    g= 2

    | % 129
    b= 8 \rest
    d,=
    g
    c
    e=' 4~
\noBreak
    | % 130
    e=' 4
    d 2~
\noBreak

    | % 131
    d 4
    d 4
    c

    | % 132
    b= 2. ~
\noBreak
    | % 133
    b 4
    b 2~
\noBreak
    | % 134
    b= 4
    cs 2

    | % 135
    b= 4 \rest
    d='
    c

    | % 136
    b= 2.

    | % 137
    cs=' 2. -1

    | % 138
    d=' 2
    e 4

    % F#(add9)/A#, or Bbm7(b13)
    | % 139
    fs=' 2.

    | % 140
    g=' 2.

    | % 141
    \once \barreSpannerText "IV" #0
    bf=' 2 \startTextSpan
    \once \fingeringAboveHead
    \once \override Glissando.bound-details.left.padding = #1.5
    <c -4> 4  \glissando \stopTextSpan

    | % 142
    \once \fingeringAboveHead
    <d='' -4> 2.

    | % 143
    e='' 2.

    | % 144
    \time 4/4
    r2
    gs,=' 4
    b=' 4

    | % 145
    fs'='' 1 \fermata

    \bar "|."

}


lower =  \relative d {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    \override Rest #'staff-position = #-6

    | % 1
    d= 4
    cs'=' 2

    | % 2
    <c,= b'=> 2.

    | % 3
    g=, 4
    fs'= 2

    | % 4
    e,=, 4
    <d'= b'=> 2

    | % 5
    r8
    fs,=, 8
    e'= 4
    cs'=' 4

    | % 6
    b,=, 4.
    a'= 4.

    | % 7
    e,=, 4
    b''= 4.
    g= 8

    | % 8
    a,=, 4
    bf'= 2

    | % 9
    d,= 4
    gs
    cs='

    | % 10
    c,= 4
    g'= 2

    | % 11
    f,=, 4
    a'= 2

    | % 12
    bf,=, 4
    af'= 2

    | % 13
    a,=, 4
    g'= 8
    b= 4.

    | % 14
    gs,=, 4
    <es'= cs'='> 2

    | % 15
    \once \override Fingering.add-stem-support = ##f
    g,=, 4 -2
    fs'= 8
    <a= d='> 4.

    | % 16
    <fs,=, -2> 4
    <gs'= cs='> 2

    | % 17
    e,=, 4
    <g'= b=> 2

    | % 18
    <a,=, bf'=> 2
    r4

    | % 19
    d= 4
    gs 2

    | % 20
    <g,=, fs'=> 2
    r4

    | % 21
    a=, 4
    g'= 2

    | % 22
    cs,= 4
    b'= 2

    | % 23
    b,=, 4
    a'= 2

    | % 24
    as,=, 8
    g'= ~
    g 2

    | % 25
    gs,=, 8 -3
    <as'= b> ~
    <as= b> 2

    | % 26
    g,=, 4
    bf'= 2

    | % 27
    r4
    <fs,=, e'= a> 4
    r4

    | % 28
    f=, 8
    ef'= ~
    ef 2

    | % 29
    e,=, 8
    g'=
    b (
    d )
    fs=' 4

    | % 30
    a,,=, 4
    \slashedGrace \tweak Accidental.font-size 0 bf'=  8 (
    bf= 2 )

    | % 31
    d,= 2.

    | % 32
    <fs= a=> 4
    s2

    | % 33
    <c= b'=> 4
    s2

    | % 34
    <b=, a'=> 4
    g'=
    f=

    | % 35
    <c= bf'=> 2
    r4

    | % 36
    f,=, 8
    e'= 8 ~
    e 4
    r4

    | % 37
    <g,=, fs'!=> 2
    r4

    | % 38
    \slashedGrace c= 8 ~
    <c= g'= d'='> 2
    r4

    | % 39
    a'= 4
    g
    f

    | % 40
    <ef= bf'=> 2
    <c= bf'=> 4

    | % 41
    <f= d'='> 4
    r8
    b= 4.

    | % 42
    e,,=, 8
    g'= ~
    g 4
    r4

    | % 43
    <c,= bf'=> 2
    r4

    | % 44
    f,=, 8
    e'= ~
    e 4
    r4

    | % 45
    <gs,=, -2 fs'!= -3> 2
    r4

    | % 46
    \slashedGrace cs= 8 ~
    <cs b'= ds> 2
    r4

    | % 47
    r8
    f,=, 4
    d'=
    g= 8 ~

    | % 48
    g 8
    bf,=, 8~
    bf 2


    \bar "||" % 49
    r8
    <c= a'= d> 4
    s4.

    | % 50
    r8
    <a=, f'= g=> 4
    s4.


    | % 51
    <d= bf'= c> 4.
    s4.

    | % 52
    r8
    <fs,=, e'= a= b=> 4
    ds'= 4.

    | % 53
    <e,=, d'= g> 2
    r8
    a=, 8 ~
\noBreak
    | % 54
    <a=, g'=> 2.

    | % 55
    a'= 8
    bf,=, 8 ~
    bf 2

    | % 56
    <ef= df'='> 8
    g=~
    g 4
    s4

    | % 57
    g,=, 8
    f'= 4
    <bf= d> 4.

    | % 58
    c,= 8
    <g' ef'='> 4
    s 4.

    | % 59
    r8
    f,=, 8
    ef'= 8 ~
    ef 4.

    | % 60
    bf=, 8
    bf'= ~
    bf 2

    | % 61
    d,= 8
    <a'= c> 4.
    <a= c> 4

    | % 62
    <g,=, g'= b=> 4 -.
    s2

    \bar "||" % 63
    <c= b'=> 2.

    | % 64
    <b=, a'=> 4
    g'=
    f

    | % 65
    <a,=, g'= c='> 2.

    | % 66
    r4
    <fs=, a'=> 2

    | % 67
    e=, 2.

    | % 68
    s2
    r8
    cs'=

    | % 69
    r8
    a 4
    s4.

    | % 70
    r8
    g=, 4
    d'=
    r8

    | % 71
    \time 4/4
    r8
    c=4
    a=, 8 ~
    a2

    | % 72
    \time 3/4
    bf=, 8
    d
    a'= (
    g )
    f 4

    | % 73
    <e,=, g'=> 8
    e'=
    a=
    fs,=,~
    fs 4

    | % 74
    a=, 4
    e'= 2

    | % 75
    f,=, 8
    ef'=
    g= 2

    | % 76
    e,=, 4
    <cs'= fs=> 2


    | % 77
    e,=, 4
    <c'= f=> 2

    | % 78
    e,=, 4
    <d'= fs> 2

    | % 79
    e,=, 4
    <ds'= g=> 2

    | % 80
    e,=, 4
    <ds'= gs=> 2

    | % 81
    e,=, 4
    s2

    | % 82
    e=, 4
    gs'= 2

    | % 83
    b,=, 4
    a'= 2

    \bar "||"  % 84
    e= 4
    gs=
    cs='

    | % 85
    c,= 4
    <b'= d='> 2

    | % 86
    g,=, 4
    fs'= 2

    | % 87
    e,=, 4
    <d'= b'=> 2

    | % 88
    r8
    fs,=, 8
    e'= ~
    e 4.

    | % 89
    b=, 2
    r4

    | % 90
    r4
    e,=, 2

    | % 91
    a=, 8
    g'= 8~
    g 2

    | % 92
    d= 8
    \once \barreSpannerText #"II" #0
    \once \barreBracket #5 #0
    a'= \startTextSpan
    cs=' 2 \stopTextSpan

    | % 93
    c,= 4
    g'= 4
    b 4

    | % 94
    f,=, 8
    a'=
    d=' 2

    | % 95
    bf,=, 4
    <af'= df='> 2

    | % 96
    a,=, 4
    g'=
    b=

    | % 97
    gs,=, 8
    es'=
    cs'=' 2

    | % 98
    g,=, 4
    e'= 8
    <a= d='> 4.

    | % 99
    fs,=, 8
    gs'= 8
    cs=' 2

    | % 100
    e,,=, 8
    g'=
    b 2

    | % 101
    a,=, 8
    gs'=
    cs=' 2


    | % 102
    <d,= c'='> 4
    a'=
    b=

    | % 103
    <b,=, as' > 2
    r4

    | % 104
    e,=, 8
    g'=
    b 4
    d 4

    | % 105
    a,=, 8
    gs'=
    cs 2

    | % 106
    d,= 4
    b'= 4
    cs

    | % 107
    b,=, 8
    fs'=
    g 4
    r4

    | % 108
    c,= 4 -2
    <a'= d='> 2

    | % 109
    f= 8
    ef'=' ~
    ef 2

    | % 110
    b,=, 4
    a'=
    g

    | % 111
    <g,=, fs'=> 2.

    | % 112
    <bf=, a'=> 4
    g'=
    f=

    | % 113
    fs,=, 8
    e'=
    a= 2

    | % 114
    g,=, 4
    d'=
    a'=

    | % 115
    s2.

    | % 116
    f,=, 8
    c'=
    g'= 2

    | % 117
    s2.

    | % 118
    b,=, 2. ~

    | % 119
    b=, 2.


    | % 120
    d= 2
    a'= 4

    | % 121
    c,= 4
    <b'= e='> 2


    | % 122
    g,=, 8
    fs'= ~
    fs 2

    | % 123
    e,=, 4
    <d'= b'=> 2

    | % 124
    bf=, 8
    a'= ~
    a 2

    | % 125
    ef= 4
    <d'=' g='> 2

    | % 126
    cs,= 2
    fs= 4 -3

    | % 127
    g,=, 2. -2

    | % 128
    c= 2
    e,=, 4

    | % 129
    f=, 2.

    | % 130
    bf=, 8
    a'=
    d=' 2

    | % 131
    b,=, 8
    ef
    g= 2


    | % 132
    e,=, 4
    <cs'= fs> 2

    | % 133
    e,=, 4
    <c'= f> 2

    | % 134
    e,=, 4
    <d'= fs> 2

    | % 135
    e,=, 4
    <ds'= g=> 2

    | % 136
    a=, 4
    e'=
    gs

    | % 137
    g,=, 4 -2
    d'= 2

    | % 138
    c= 4
    g'= 2

    | % 139
    as,=, 4
    gs'= 2

    | % 140
    f,=, 4
    <a'= d> 2

    | % 141
    af,=, 4
    <c'=' ef> 4
    s4

    | % 142
    a,=, 4
    <e''=' g>  2

    | % 143
    s2.

    | % 144
    \time 4/4
    d,= 4 \laissezVibrer
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    a'= ^\markup { \center-align \fontsize #-3 "XII" } \5 \laissezVibrer
    s2

    | % 145
    s2
    s2

    \bar "|."
}