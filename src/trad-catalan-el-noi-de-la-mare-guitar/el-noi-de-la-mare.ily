\version "2.22.2"



upper =  \relative fs' {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up left right down)
    \override Fingering.direction = #UP
    \override Rest #'staff-position = #6
    \override TupletBracket.bracket-visibility = ##t

    % \once \override TextScript.padding = #7
    <> _\markup { \italic "light and soothing" }
    \partial 8 fs=' 16 (g)

    | % 1
    a 16
    a
    a 8.
    fs 16
    a 4
    a 16
    fs

    | % 2
    e=' 16
    e
    e 8.
    d 16 -4
    <b= e> 4
    d 8

    | % 3
    r8
    cs 8 -1
    b'=' ~ -4 ->
    b
    <a -2> \glissando
    <g~ -2>

    | % 4
    g8
    fs
    e
    \restoreTextSpanner
    \once \override TextSpanner.staff-padding = #6
    \once \override TextSpanner.bound-details.left.text = \markup {\upright \bold \normalsize "rit. " }
    \once \override TextSpanner.bound-details.right.padding = #2.0
    d \startTextSpan
    cs
    b

    | % 5

    \tempo "a tempo"
    s8 \stopTextSpan
    << {
        \once \barreBracket #0 #-2
        <cs=' fs='> 4
    } \\ {
        \once \barreSpannerText #"II" #0.0
        s8 \startTextSpan
        s8 \stopTextSpan
    } >>

    s8
    <b= e='> 4

    | % 6
    s8
    <cs=' fs='> 4
    s8
    <d=' e> 4

    | % 7
    fs=' 8. \2-1
    g 16 -2
    a 8 -4
    \once \fingeringChord
    <e=' -3 a='> 8.
    b'=' 16  -1
    cs 8 -3

    | % 8
    <d='' > 8. -4
    cs 16
    b 8
    \once \set glissandoMap = #'((1 . 0))
    <fs=' b=' \fingeringShift #DOWN ^4> 4 \glissando
    <a ^4> 8

\break
    | % 9
    \once \barreSpannerText #"II" #0.0
    \once \barreBracket #0 #-5
    fs=' 8. \startTextSpan
    g 16
    a  8 \stopTextSpan
    \once \barreBracket #0 #-12
    a 8. \once \barreText #"IV"
    b 16 \fingeringShift #UP -1
    <cs -3> 8

    | % 10
    <d='' -4> 8.
    <cs -3> 16  \glissando
    <b -3> 8
    a 4 \fingeringShift #DOWN -1
    r8

    | % 11
    \once \barreSpannerText #"II" #0.0
    \once \barreBracket #0 #-11
    fs=' 8. \startTextSpan
    g 16
    a 8 \stopTextSpan
    a 8.
    g 16
    fs 8

    | % 12
    e=' 8.
    d 16
    e 8
    \once \barreSpannerText #"II" #0.0
    \once \barreBracket #0 #-2
    <cs=' fs='> 4 \startTextSpan
    d 8 \stopTextSpan

    | % 13
    <d=' fs=' -2> 8.
    <g -4> 16 \glissando
    <a -4> 8
    a 8.
    g 16
    fs 8

    | % 14
    e=' 8.
    fs 16 -4
    e 8
    d 4 -3
    r 8

    | % 15
    <d=' fs='> 8.
    g 16
    a 8
    a 8.
    g 16
    fs 8

    | % 16
    e=' 8.
    d 16
    e 8
    << {
        \once \override Arpeggio.padding = #-0.3
        \once \barreBracket #0 #-14
        fs 4
    } \\ {
        \once \barreSpannerText #"II" #0.0
        \once \override TextSpanner.bound-details.right.padding = #-2
        s8 \startTextSpan
        s8 \stopTextSpan
    } >>
    d 8

    | % 17
    fs=' 8.
    g 16
    a 8
    a 8.
    g 16
    fs 8

    | % 18
    e=' 8.
    fs 16
    e 8
    d 4
    d'='' 8 \rest

    | % 19
    s8
    <cs,=' fs='> 4
    s8
    <b= e='> 4

    | % 20
    s8
    <cs=' fs='> 4
    s8
    <d=' e='> 4

    | % 21
    fs=' 8. \2 \fingeringShift #UP -2
    g 16 -3
    a=' 8 -4
    a 8.
    b=' 16 -1 (
    cs 8  -3 )

    | % 22
    \once \barreSpannerText #"VII" #0.0
    \once \barreBracket #0 #-5
    d='' 8. \startTextSpan
    cs 16
    b 8 \stopTextSpan
    b 4 \fingeringShift #DOWN -4
    a 8 -1

    | % 23
    fs=' 8.
    g 16
    a 8
    a=' 8.
    b 16 (
    cs 8 )

    | % 24
    d='' 8.
    cs 16
    b 8
    a 4 \fingeringShift #DOWN -4
    r8

    | % 25
    <fs=' -1> 8. \glissando
    <g -1> 16
    a 8 -4
    <a > 8.
    <g -3> 16
    <fs -1> 8

    | % 26
    <cs=' e=' > 8.
    d 16 -4
    e 8
    fs 4 -4
    d 8 -4

    | % 27

    fs=' 8. -1
    g 16
    a 8
    \once \override Arpeggio.positions = #'(-1 . 3)
    \once \override Arpeggio.padding = #-1.5
    \once \hide Slur
    \once \hide Stem
    \grace \hide fs=' 8 \arpeggio
    <g,= b d=' a'='> 8.
    \once \glissToBelowNotes
    g'=' 16 -1 \glissando
    fs 8

    | % 28
    e=' 8.
    fs 16
    e 8
    d 8 -4
    d 4

    | % 29
    <d=' fs='> 8.
    g=' 16
    a 8
    a 8.
    g 16
    fs 8

    | % 30
    <b,= e='> 8.
    d 16
    e 8
    fs 4
    <c=' d> 8

    | % 31
    fs=' 8. -1
    g  16
    a 8
    a 8.
    g  16
    fs='  8

    | % 32
    e=' 8.
    fs=' 16
    e 8
    d=' 4
    b 16 -0
    (<cs -2>) \glissando

    | % 33
    \once \override Fingering.staff-padding = #4
    <d=' -2> 4. --
    d 4 --
    r8

    | % 34
    fs=' 4. ->
    <bf,= d=' e='> 4
    d 8

    | % 35
    <a= ^3 d=' ^4> 4.
    <af= ^2 d=' ^4> 4
    <af= e'='> 8

    | % 36
    <g= d'='> 4.
    <g= cs='> 4
    cs 16 (
    c 16 )

    | % 37
    <b= e> 4
    fs'=' 16 (
    g )
    <c,=' e> 4
    d 8

    | % 38
    \bar "||" \key g \major
    <> _\markup { \italic "warmly" }
    <g,=  b=> 8.
    c 16
    d 8
    <a= d='> 8.
    e'=' 16
    fs 8

    | % 39
    <b,= g'='> 8.
    fs'=' 16
    e 8
    <d=' e> 4
    <c d> 8

    | % 40
    <g=  b=> 8.
    c 16
    d 8
    <a= d='> 8.
    e'=' 16
    fs 8

    | % 41
    <b,= g'='> 8.
    fs'=' 16
    <b,= e='> 8
    d 4 -4
    r 8

    | % 42
    b= 8.
    c 16
    d 8
    d 8.
    c 16
    b 8

    | % 43
    a= 8.
    g 16
    a 8
    b 4
    g 8

    | % 44
    b= 8.
    c 16
    d 8
    d 8.
    c 16
    b 8

    | % 45
    a= 8.
    b 16
    a 8
    g 4
    b= 8 \rest

    | % 46
    b= 8.
    c 16
    d 8
    d 8.
    c 16
    b 8

    | % 47
    a= 8.
    g 16
    a 8
    b 4
    g 8

    | % 48
    b= 8.
    c 16
    d 8
    <gs,= d'='> 8.
    c 16
    <g= b> 8

    | % 49
    \restoreTextSpanner
    \once \override TextSpanner.staff-padding = #3
    \once \override TextSpanner.bound-details.left.text = \markup {\upright \bold \normalsize "rit. " }
    \once \override TextSpanner.bound-details.right.padding = #2.0
    a= 8. \startTextSpan
    b 16
    a 8
    <d,= g> 4.

    | % 50
    <> _\markup { \italic "sleepily" }
    \once \override Score.MetronomeMark.padding = #3
    \tempo "meno mosso"
    \once \fingeringAboveHead
    <d'=' -2> 4. \stopTextSpan
    <b=> 4.

    | % 51
    d=' 4
    e 8
    b= 4.

    | % 52
    b= 8.
    c 16
    d 8
    d 8.
    e 16
    fs 8

    | % 53
    g=' 8.
    fs 16
    e 8
    e 4
    d 8

    | % 54
    b= 8.
    c 16
    d 8
    d 8.
    e 16
    fs 8

    | % 55
    g=' 8.
    fs 16
    e 8
    d 4
    r 8

    | % 56
    <e,= > 4.
    <g= b> 4.

    | % 57
    <a= b> 4. ~
    <a= b>

    | % 58
    b= 8.
    c 16
    d 8
    d 8.
    c 16
    b 8

    | % 59
    a= 8.
    g 16
    a 8
    b 4
    g 8

    | % 60
    b= 8.
    c 16
    d 8
    d 8.
    c 16
    b 8

    | % 61
    a= 8.
    b 16
    a 8
    g 4.

    | % 62
    <e= g b> 2.


    | % 63
    <d= g b> 4. ~
    <d= g b> 4
    <> ^\markup { \bold "riten." }
    b'= 16
    (c)

    | % 64
    d=' 16
    d
    d 8.
    b 16
    d 4
    e 16 -0
    fs -3


    | % 65
    g=' 16 -4
    g
    g 8
    b,= 16 -0 (
    c -1 )
    <fs,= d'=' > 4.


    | % 66
    <d= g b> 2.

    \bar "|."
}

lowerInner =  \relative cs' {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    \override Rest #'staff-position = #0
    \voiceFour

    \partial 8 s8

    | % 1
    s 4.
    s 4.

    | % 2
    s 4.
    s 4.

    | % 3
    s 4.
    s 4.

    | % 4
    s 4.
    s 4.

    | % 5
    r8
    s8
    a 8
    r8
    g 4

    | % 6
    r8
    s8
    a 8
    r8
    b= 4

    | % 7
    s4.
    s4.

    | % 8
    d=' 8 \rest
    <d,= b'=> 4
    s8
    <g= cs='> 8
    r8

    | % 9
    s8
    a= 4
    s 4.

    | % 10
    <b= -2 g'=' -1> 4
    <d='> 8
    s4.

    | % 11
    s8
    a= 4
    d=' 8 \rest
    b=  4

    | % 12
    g= 8 \rest
    g= 4
    s8
    a= 4

    | % 13
    g= 8 \rest
    g= 4
    s8
    d= 4

    | % 14
    s8
    e= 4
    s8
    d= 4

    | % 15
    g= 8 \rest
    g= 4
    s8
    fs= 4

    | % 16
    s8
    e= 4
    s 4.

    | % 17
    s 4.
    s 4.

    | % 18
    s4.
    << {
    fs= 16 \rest
    d= 8
    d 16~
    d 8
    }
    \new Voice {
        \voiceThree
        b'= 8
        a
        g
    } >>

    | % 19
    r8
    s8
    a= 8
    r8
    g= 4

    | % 20
    r8
    s8
    a= 8
    r8
    bf= 4

    | % 21
    s4.
    s4.

    | % 22
    r8
    <g= fs'=' > 4
    r8
    <g= f'='> 4

    | % 23
    r8
    cs=' 4
    s4.

    | % 24
    r8
    <g= a'='> 4
    r8
    <g= b d> 4

    | % 25
    s4.
    s8
    d= 4

    | % 26
    s 8
    d= 4
    s 8
    d= 4

    | % 27
    s 8
    <d= b'=> 4
    s 4.

    | % 28
    g= 8 \rest
    <d= bf'=> 4
    s 4.

    | % 29
    g= 8 \rest
    g= 4
    s8
    d= 4

    | % 30
    s 8
    g= 4
    s 4.

    | % 31
    r8
    <d= b'=> 4
    s 8
    d= 4

    | % 32
    s4.
    s4.

    | % 33
    g= 8 \rest
    fs=
    b=
    g= 8 \rest
    fs= 16
    b=
    cs -1 (
    d -3 )

    | % 34
    r8
    g,= 8
    b
    e,= 8 \rest
    f 4


    | % 35
    s8
    e= 4
    s4.

    | % 36
    s8
    e= 4
    s4.

    | % 37
    s8
    g= 4
    s8
    a,=, 4

    | % 38
    s8
    d= 4
    s8
    d= 4

    | % 39
    s8
    e= 4
    g= 8 \rest
    g= 4

    | % 40
    s8
    d= 4
    s8
    d= 4

    | % 41
    e= 8
    d
    c= -3
    a'=
    g
    fs

    | % 42
    s 8
    g= 4
    a= 8
    g
    f -4

    | % 43
    s 4.
    a= 8
    g
    fs?

    | % 44
    s 8
    e= 4
    s 8
    e= 4

    | % 45
    s 8
    d= 4
    s8
    d
    cs

    | % 46
    s 8
    e= 4
    a= 8
    g
    f

    | % 47
    s 4.
    a= 8
    g
    f

    | % 48
    s 8
    e= 4
    s 8
    e= 4

    | % 49
    s 4.
    s 4.

    | % 50
    g= 8 \rest
    <fs= b= > 4
    s 8
    <e= g= > 4

    | % 51
    g= 8 \rest
    <fs= b> 4
    s 8
    <e= g> 4

    | % 52
    e= 8 \rest
    d= 4
    g= 8 \rest
    g 4

    | % 53
    g= 8 \rest
    b 4
    g= 8 \rest
    a 4

    | % 54
    e= 8 \rest
    d= 4
    g= 8 \rest
    g 4

    | % 55
    g= 8 \rest
    b 4
    g= 8 \rest
    a 4

    | % 56
    s 4.
    s 4.

    | % 57
    s 4.
    s 4.

    | % 58
    s 4.
    s 4.

    | % 59
    s 4.
    s 4.

    | % 60
    s 4.
    s 4.

    | % 61
    s 4.
    s 4.

    | % 62
    s 4.
    s 4.

    | % 63
    s 4.
    s 4.

    | % 64
    s8
    e= 8 \rest
    e= 8
    s8
    d= 4

    | % 65
    s 4.
    s 4.

    | % 66
    s 4.
    s 4.

    \bar "|."

}

lower =  \relative g {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams


    \partial 8 r8

    | % 1
    r 4
    <g= b> 8~
    <g= b>
    <g= cs='> 8
    r8

    | % 2
    <fs= b > 4
    <a= > 8
    <f= ~ _3 > 8
    <f= gs > 4

    | % 3
    <e,=, g'=> 4.
    <g'= _1 cs=' -3> 4
    <b= ~> 8

    | % 4
    <e,= b'=> 4
    <g= ~> 8
    <a,=, g'=> 4
    <f'= > 8

    | % 5
    d= 4.
    c 4.

    | % 6
    \once \fingeringBelowHead
    \once \override Fingering.add-stem-support = ##f

    d= 4. \5-1
    \once \fingeringBelowHead
    \once \override Fingering.add-stem-support = ##f
    c  4. \6-3

    | % 7
    r8
    <d=  > 4
    <cs= -2> 8.
    r16
    r8

    | % 8
    <e,=, g'=> 4.
    <a=,> 4
    a 8 \rest

    | % 9
    <d= cs'='> 4.
    <cs= b'= e='> 8.
    r 16
    r 8

    | % 10
    r8
    e,=,  4
    <a=, cs'='> 4
    r8

    | % 11
    <b=, d'='> 4.
    <e,=, g'=> 4.

    | % 12
    <a=,> 4.
    <d= > 4.

    | % 13
    <b=, > 4.
    <g=, -2 b'=> 4.

    | % 14
    <a=, cs'=' -3> 4.
    <g=,  a'= > 4
    r8

    | % 15
    <b=,> 4
    r8
    <a=, cs'='> 4
    r8

    | % 16
    <g=, b'=> 4
    r8
    <fs=, as'=> 4
    r8

    | % 17
    r8
    <g=, d'= b'=> 4
    \revert Arpeggio.stencil
    \once \override Arpeggio.positions = #'(-6 . 3)
    <e=, g'= d'='> 4. \arpeggio

    | % 18
    r8
    <a=, g'= b=> 4
    <g=, -2> 4.

    | % 19
    <d'=> 4.
    <c=> 4.

    | % 20
    <d=> 4.
    <c=> 4.

    | % 21
    r8
    <d= cs'='> 4
    <c= \6-2 d'='> 8.
    r16
    r8

    | % 22
    <e,=,> 4.
    <a=,> 4.

    | % 23
    d=  4.
    <c= \6-2 d'='> 8.
    r16
    r8

    | % 24
    <e,=,> 4.
    <a=,> 4.

    | % 25
    r8
    <d= c'=' -3> 4
    <g,=, -2 b'=> 4
    \once \set glissandoMap = #'((0 . 0))
    <g=, _2 bf'= -3> 8 \glissando

    | % 26
    <fs=, _2 a'= > 4.
    <f=, -1 af'= c='> 4
    a=, 8 \rest

    | % 27
    <e=, g'=> 4.
    \acciaccatura a=, 8 (
    <a=, > 4. )

    | % 28
    <g=, -2> 4.
    <g=, -1 f'= bf= > 8
    <fs=, e'= a=> 4

    | % 29
    <b=,> 4
    r8
    <g=, b'=> 4
    <e=, g'= b> 8

    | % 30
    <a=, > 4.
    <d= a'= cs='> 4
    r8

    | % 31
    <g,=, -2> 4.
        \once \override Arpeggio.positions = #'(-5.5 . 3)
    <e=, g'= d'=' -2> 4. \arpeggio

    | % 32
    r8
    <a=, g'= d'='> 4
    <fs'= a=> 4
    r8

    | % 33
    <b,=, > 4.
    <a=,> 4.

    | % 34
    <g=, _2> 4.
    <g=, _1> 4.


    | % 35
    <fs=, > 4.
    <f=, > 4.


    | % 36
    <e=, > 4.
    <a=, > 4
    r8

    | % 37
    <cs= > 4.
    <d= > 4
    <fs= > 8

    | % 38
    <g,=,> 4.
    <fs=,> 4.

    | % 39
    <e=,> 4.
    <c'=> 4
    <d= fs> 8

    | % 40
    <g,=,> 4.
    <fs=,> 4.

    | % 41
    <e=, > 4.
    \once \fingeringBelowHead
    \once \override Fingering.add-stem-support = ##f
    \once \fingeringAllowInsideStaff
    b'=, 4. -1

    | % 42
    \override Rest #'staff-position = #-8
    <c= e=> 4
    r8
    \once \fingeringBelowRightHead
    \once \fingeringAllowInsideStaff
    b=, 4 -2
    \once \override Rest.X-offset = #1
    r8

    | % 43
    c= 8 ~  -3
    <c= ef> 4
    <g=, d'=> 4
    r8

    | % 44
    <c= > 4.
    <a=, g'=> 4.

    | % 45
    <fs=,> 4.
    <g=,> 4.

    | % 46
    <c= g'=> 4.
    <b=,> 4
    \once \override Rest.X-offset = #1
    r8

    | % 47
    <c= ~ > 8
    <c= ef> 4
    <g=, d'=> 4
    r8

    | % 48
    <c=> 4.
    <e,=,> 4
    <cs'=> 8 ~

    | % 49
    <cs= > 8
    <d= > 4
    <c=> 8
    <b=,>
    <a=,>

    | % 50
    \once \fingeringChord
    <g=, -1> 4.
    <c= -3> 4.

    | % 51
    <g=,> 4.
    <c=> 4.

    | % 52
    <g=,> 4.
    <fs=,> 4.

    | % 53
    <e=,> 4.
    <fs=,> 4.

    | % 54
    <g=,> 4.
    <fs=,> 4.

    | % 55
    <e=,> 4.
    <fs=,> 4.

    | % 56
    <g=,> 8
    a
    b
    c
    d
    e

    | % 57
    <d=> 8
    c
    b
    a
    g
    fs

    | % 58
    <e=,> 8
    fs
    g
    a
    b
    c

    | % 59
    <d=> 8
    c
    b
    a
    g
    fs

    | % 60
    <e=,> 8
    fs
    g
    a
    b
    c

    | % 61
    <d=> 8
    c
    b
    a
    g
    fs

    | % 62
    <e=,> 8
    fs
    g
    a
    b
    c

    | % 63
    <d=> 8
    c
    b
    a
    g
    fs

    | % 64
    <e=, g'=> 4.
    <fs=, a'=> 4
    r8

    | % 65
    \once \fingeringChord
    <e'= ~ -2 b'=> 4
    <e= g=> 8
    <a= \fingeringShift #UP _1> 8
    <e,=,> 8
    <fs>

    | % 66
    <g=,> 2.

    \bar "|."

}