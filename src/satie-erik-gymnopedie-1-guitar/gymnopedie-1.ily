\version "2.22.2"



upper =  \relative e' {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up left right down)
    \override Fingering.direction = #UP
    \override Rest #'staff-position = #2
    \override TupletBracket.bracket-visibility = ##t

    % \once \override TextScript.padding = #7

    | % 1
    s2.

    | % 2
    s2.

    | % 3
    s2.

    | % 4
    s2.

    | % 5
    r4
    e=' 4
    g

    | % 6
    f
    e
    b=

    | % 7
    a=
    b
    c

    | % 8
    g= 2.

    | % 9
    e'=' 2. ~

    | % 10
    e=' 2. ~

    | % 11
    e=' 2. ~

    | % 12
    e=' 2.

    | % 13
    \once \override TextScript.staff-padding = #5.0
    r4 _\markup { \italic \normalsize "tasto" }
    e='
    g

    | % 14
    f
    e
    b

    | % 15
    a=
    b
    c

    | % 16
    g= 2.

    | % 17
    b 2. _\markup { \italic \normalsize "ord." }


    | % 18
    e=' 2.

    | % 19
    d=' 2. ~

    | % 20
    d 4
    s2

    | % 21
    s2.

    | % 22
    g,= 4 -0
    a
    bf


    | % 23
    d -4
    c -1
    a

    | % 24
    c
    bf
    a

    | % 25
    c=' 2. ~

    | % 26
    c 2
    c 4

    | % 27
    \once \barreBracket #3 #-8
    \once \barreSpannerText  #"III" #0
    d \startTextSpan
    ef
    f

    | % 28
    g='
    bf,=
    c \stopTextSpan

    | % 29
    d \fingeringShift #DOWN -4
    c
    a

    | % 30
    c=' 2.~

    | % 31
    c2

    \override TextScript.staff-padding = #3.0

    \afterGrace
    c4
    <> -\tweak TextScript.X-offset #2.0 ^\markup  { \right-align \line { \vcenter \normalsize \bold "To Coda" \small \musicglyph #"scripts.coda"} }

    | % 32
    \break
    f=' 2.

    | % 33
    e 2.

    | % 34
    a,= 4
    g
    a

    | % 35
    b
    c
    d

    | % 36
    b
    c
    d

    | % 37
    e,= 2
    r4

    | % 38

    \once \barreBracket #0 #-8
    bf'= 2. \barreText #"III"

    | % 39

    \once \override TextScript.parent-alignment-X = #CENTER
    \override TextScript.staff-padding = #3.0
    \afterGrace
    c 2.

    <> _\markup { \right-align \right-column \bold {"D.C. al Coda" }}


    \break
    \pseudoIndent \markuplist {  \vcenter \fontsize #3 \musicglyph #"scripts.coda" } 3
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.outside-staff-padding = #2
    \mark \markup { \smallCaps "Coda" }
    \bar "||" % 40

    f=' 2.


    | % 41
    ef=' 2.

    | % 42
    <a,= -1> 4  \glissando
    <bf -1>
    ef -2

    | % 43
    d=' 4
    c
    bf

    | % 44
    d
    c
    bf

    | % 45
    ef,= 2
    r4

    | % 46
    bf'= 2.

    | % 47
    c=' 2.

    \bar "|."
}

lowerInner =  \relative a {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    \override Rest #'staff-position = #2
    \voiceFour

    | % 1
    r4
    <a= c e> 2

    | % 2
    r4
    <g= b e> 2

    | % 3
    r4
    <a= c e> 2

    | % 4
    r4
    <g= b e> 2

    | % 5
    s4
    <a= c > 2

    | % 6
    s4
    <g= b > 2

    | % 7
    s4
    <a= > 2

    | % 8
    s4
    <b= e> 2

    | % 9
    s4

    \set crescendoText = \markup { \italic \normalsize "accents ponticello" }
    \set crescendoSpanner = #'text
    \once \override DynamicTextSpanner.to-barline = ##t
    \once \override DynamicTextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . 0.6) }
    <a= c e> 2 -> \<
    \noBreak

    | % 10
    s4
    <g= b e> 2 ->

    | % 11
    s4
    <a= c e> 2 ->

    | % 12
    s4
    <g= b e> 2 ->

    | % 13
    s4 \!
    <a= c > 2

    | % 14
    s4
    <g= b > 2

    | % 15
    s4
    <a= > 2

    | % 16
    s4
    <b= e> 2

    | % 17
    s4
    <g= e'='> 2

    | % 18
    s4
    <a= c> 2

    | % 19
    s4
    <f= a> 2

    | % 20
    s4
    \once \barreBracket #0 #2
    <a= c f> 2

    | % 21
    b= 4 \rest
    \once \override Fingering.add-stem-support = ##f
    \override Fingering.extra-offset = #'(0.5 . 0)
    <ef,= _1 g _0 c _2 > 2

    | % 22
    s4
    <d=> 2

    | % 23
    s4
    <f= _4> 2

    | % 24
    s4
    d= 2

    | % 25
    s4
    <d= g=> 2

    | % 26
    s4
    <e= bf'= c> 2

    | % 27
    s4
    <g= bf=> 2


    | % 28
    s4
    <g=> 2

    | % 29
    s4
    <f= _4> 2

    | % 30
    s4
    <d= g=> 2

    | % 31
    s4
    <e= bf'= c> 2

    | % 32
    s4
    <f= a> 2

    | % 33
    s4
    <g= b> 2

    | % 34
    s4
    <e= > 2

    | % 35
    s4
    <b=, d= g> 2

    | % 36
    s4
    <b=, e= g> 2

    | % 37
    s4
    <c _4> 4 \glissando
    \once \override Fingering.add-stem-support = ##f
    <d= _4 f _1> 4

    | % 38
    s2.

    | % 39
    s2.

    | % 40
    s4
    <f= a> 2

    | % 41
    s4
    <c= g'=> 2

    | % 42
    s4
    <ef= _4 g _3> 2

    | % 43
    s4
    <d= g> 2

    | % 44
    s4
    <ef= g> 2

    | % 45
    s4
    c 4
    <d= f> 4

    | % 46
    s2.

    | % 47
    s2.

    \bar "|."

}

lower =  \relative f {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    | % 1
    f= 2.

    | % 2
    c

    | % 3
    f

    | % 4
    c

    | % 5
    f

    | % 6
    c

    | % 7
    f

    | % 8
    c

    | % 9
    f

    | % 10
    c

    | % 11
    f

    | % 12
    c

    | % 13
    f

    | % 14
    c

    | % 15
    f

    | % 16
    c

    | % 17
    e,=,

    | % 18
    a=,

    | % 19
    d,=,

    | % 20
    d'=

    | % 21
    c= -4

    | % 22
    g=, -4

    | % 23
    c= -3

    | % 24
    c

    | % 25
    c

    | % 26
    c

    | % 27
    c

    | % 28
    c

    | % 29
    c

    | % 30
    c

    | % 31
    c

    | % 32
    d,=,

    | % 33
    e=,

    | % 34
    a=,

    | % 35
    d,=,

    | % 36
    d=,

    | % 37
    d=,

    | % 38
    <g=, -3 d'= -4 f>

    | % 39
    <c= e g>

    | % 40
    d,=,

    | % 41
    d=,

    | % 42
    d=,

    | % 43
    d=,

    | % 44
    d=,

    | % 45
    d=,

    | % 46
    \once \barreBracket #3 #0
    <g=, d'= f>

    | % 47
    <c= ef g>

    \bar "|."

}