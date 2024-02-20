\version "2.22.2"



upper =  \relative cs'' {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up left right down)
    \override Fingering.direction = #UP
    \override Rest #'staff-position = #8
    \override TupletBracket.bracket-visibility = ##t


    | % 1
    \once \override TextScript.padding = #7
    <> _\markup { \italic "calm and clear" }
    cs 16
    b
    cs 8 ~
    cs 4 ~
    cs 8
    b
    a
    gs

    | % 2
    \once \barreSpannerText #"II" #0
    \once \barreBracket #0 #-15
    gs 8 \startTextSpan
    a
    fs 4 \stopTextSpan
    r4
    g 8
    a

    | % 3
    b 16  \fingeringShift #UP -4
    a -2
    b 8 ~
    b 4
    r8
    b 4
    <e,=' -0> 8

    | % 4
    <cs'='' -4> 2
    r8
    <a -2> \glissando
    <b -2>
    cs

    | % 5
    \once \override Fingering.padding = #1.5
    cs 16 -4 (
    a -1 )
    cs 8 ~
    cs 4
    d 8 \rest
    b 4 -4
    b 8


    | % 6
    \once \barreSpannerText #"VII" #0
    \once \barreBracket #0 #-6
    <g=' _~ cs='' \fingeringShift #UP -4> 8  \startTextSpan
    <g=' b=' > 4 \stopTextSpan
    <a \fingeringShift #DOWN -1> 8
    <fs=' -3> 4
    \once \barreSpannerText #"III" #0
    \once \barreBracket #0 #-11
    g 8 \startTextSpan
    a \stopTextSpan

    | % 7
    \once \barreSpannerText #"IV" #0
    \once \barreBracket #0 #-13
    <b -4> 16 ( \startTextSpan
    gs! )
    b 8 ~
    b 4 \stopTextSpan
    r4
    <as -4> 8
    gs -2

    | % 8
    << {
        \once \override Fingering.padding  = #2
        <fs=' \fingeringShift #DOWN -2> 2
        <cs=' e> 4
        \once \barreBracket #0 #-9
        <ds fs> \barreText #"II"
    }
    \new Voice = "v3" {
        \voiceThree
        <d ^3> 16 (
        b )
        d8 ~
        d4
        s2
    } >>

    \repeat volta 2 {
        | % 9
        \once \override Fingering.padding = #1.5
        <g=' -3> 16 (
        e -0 )
        g 8 ~
        g 4
        r 8
        e 8
        g 4

        | % 10
        << {
            \tuplet 3/2 {
                g 8
                e
                g ~
            }
            g 4
            r8
            e 8
            g 4
        }
        \new Voice = "v3" {
            \voiceThree
            s2
            cs,=' 2
        } >>

        | % 11
        r4
        <d=' fs > 4
        <cs es  ~> 4
        es

        | % 12
        r4
        \once \set glissandoMap = #'((1 . 1))
        <a,= d=' ^2> 4 \glissando
        \once \override Arpeggio.positions = #'(-2 . 1)
        <a= cs=' ^2> 2 \arpeggio

        | % 13
        g'=' 16 (
        e )
        g 8 ~
        g 4
        r 8
        e ~
        \tuplet 3/2 {
            e 8
            g
            e
        }
        \override Score.VoltaBracketSpanner.padding = #5
    }
    \alternative {
        {
            | % 14
            \once \override TupletBracket.padding  = #2.0
            \tuplet 3/2 {
                g 8 (
                e )
                g ~
            }
            g 4
            r 8
            cs,=' 8
            fs
            e

            | % 15
            <d='> 4
            <g,= b> ->
            <fs  as~ > 4 ->
            as 4

            | % 16
            s2.
            fs'=' 4
        }

        {
            | % 17
            \set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
            \once \override TupletBracket.padding  = #2.0
            \tuplet 3/2 {
                g 8 (
                e )
                g ~
            }
            g 4
            r 8
            e=' 8
            a=' 4 -4

            | % 18
            r4
            \once \override Glissando.to-fingerings = ##f
            \once \override Glissando.thickness = #2
            \once \override Glissando.Y-offset = #0.25
            <d,=' -2> 4 \glissando
            cs
            \once \override Glissando.to-fingerings = ##f
            \once \override Glissando.thickness = #2
            \once \override Glissando.Y-offset = #0.25
            <es,= -3> \glissando

            | % 19
            \once \override Flag.stroke-style = #"grace"
            \grace <fs> 8
            <d= fs> 4 \( \<
            <fs a>
            <a b>
            <d e='>
        }
    }

    | % 20
    \unset Score.voltaSpannerDuration
    \once \override Arpeggio.positions = #'(-1 . 2)
    fs=' 4 -1 \arpeggio
    \once \override Hairpin.shorten-pair = #'(2 . 0)
    a ~ -4 \) \>
    a
    b \! \fingeringShift #UP -2


    | % 21
    << {
        \once \barreBracket #0 #-16
        <d='' -4> 2 ~
        d 8
        d
        cs \fingeringShift #DOWN -4
        b
    } \\ {
        \once \barreSpannerText #"VII" #0
        s4 \startTextSpan
        s4 \stopTextSpan
        s2
    }
    >>


    | % 22
    a=' 8 -1

    \once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
    \once \override Glissando.minimum-length = #3.0
    \afterGrace a \glissando
    \tweak Flag.stroke-style #"grace" fs
    fs 2
    r4

    | % 23
    d'='' 2 ~ -4
    d 8
    <cs \fingeringShift #DOWN -4> \glissando
    \barreSpannerText #"V" #0
    \barreBracket #0 #-4
    <b -4> \startTextSpan
    a \stopTextSpan

    | % 24
    \once \override Fingering.padding = #1.5
    a=' 16 \fingeringShift #DOWN -4 (
    fs=' -1 )
    a 8
    <fs> 2
    fs 4

    | % 25
    a=' 8 -4
    g
    fs
    e
    d 4. -3
    b 8 -0

    | % 26
    \override Rest #'staff-position = #5
    r4
    <g= b> 4
    cs=' 4 \rest
    <a= cs e> 4


    | % 27
    <fs'=' -1 > 8
    a
    fs
    e
    b 4
    d

    | % 28
    fs 16 (
    e )
    fs 8 ~
    fs 4
    b,= \>
    d

    | % 29
    \once \barreBracket #0 #-5
    \once \override TextScript.padding = #4.0
    fs 2. \barreText #"II"
    r4

    | % 30
    \once \override Fingering.padding = #1.5
    fs 16 -3 ( \p
    e -0 )
    fs 8 ~
    fs 4
    r8
    e -0
    g -3
    e

    | % 31
    <fs -3> 8
    g -4
    fs 4
    r 8
    e 8
    g -4
    e


    | % 32
    \once \barreBracket #0 #-3
    \barreSpannerText #"II" #0
    fs 8 \startTextSpan \<
    g
    fs 4 \stopTextSpan
    g 8
    a
    g 4

    | % 33
    r8
    g 8
    e
    g
    \barreSpannerText #"III" #0
    r 8 \startTextSpan
    g 8
    a
    g \stopTextSpan
\break
    \repeat volta 2 {
        | % 34
        \barreSpannerText #"V" #0
        \barreBracket #0 #-7
        c='' 4 \startTextSpan \! _\markup {
            \concat { \dynamic f \normal-text { " - " } \dynamic p }
        }
        a \stopTextSpan
        r4
        <b -4> \glissando

        | % 35
        <g -4> 8
        g
        e 4
        r4
        e


        | % 36
        \barreSpannerText #"V" #0
        \barreBracket #0 #-5
        c'='' 8 \startTextSpan
        a
        c 4 ~ \stopTextSpan
        c 8
        b
        a
        g \fingeringShift #DOWN -4

        | % 37
        g 16 (
        e )
        g 8
        e 4
        r4
        <b= e>

        | % 38
        <g'=' -4> 8
        <f -1>
        e
        d
        c=' 2

        | % 39
        g'=' 8
        f
        e
        d
        c=' 2
        \override Score.VoltaBracketSpanner.padding = #4
    }
    \alternative {
        {
            | % 40
            e 8
            g
            e
            c
            a
            b
            c
            e

            | % 41
            g 8
            g \>
            e 4 ~
            e
            \once \fingeringAboveLeftHead
            <g=' -3> 4 \!

        }

        {

            | % 42
            \override DynamicLineSpanner.staff-padding = #7
            e=' 8 \<
            g
            e
            c
            a
            b
            c
            e

            | % 43
            <g=' -3> 8 \!
            g \>
            e 4~
            \tempo \markup { \upright \bold \normalsize "slowing" }
            e
            g=' \!
        }
    }

    | % 44
    c,=' 16 (
    b )
    c 8 ~
    c 4
    cs 8
    b
    cs 4

    | % 45
    \once \override Score.MetronomeMark.padding = #4
    \tempo \markup { \upright \bold \normalsize "in time" }
    \once \fingeringAboveLeftHead
    <d=' fs=' -3> 2 \p
    r8
    e16 -0 (
    fs -1 )
    g 8 -3
    fs 16
    e

    | % 46
    <d=' fs='> 2
    r8
    e16 (
    fs )
    g 8
    fs 16
    e

    | % 47
    d=' 4.
    r8
    <c -4> 4.
    r8

    | % 48
    r8
    a=
    b
    e
    r8 \<
    a,=
    b
    fs'='

    | % 49
    r8
    g,=
    b
    g'='
    r8
    g,=
    b
    <a'=' -3> \glissando

    | % 50
    <b=' -3> 2. \>
    \override Rest #'staff-position = #8
    r4

    | % 51
    cs 16 \mf
    b
    cs 8 ~
    cs 4 ~
    cs 8
    b
    a
    gs


    | % 52
    \once \barreSpannerText #"II" #0
    \once \barreBracket #0 #-15
    gs=' 8 \startTextSpan
    a
    fs 4 \stopTextSpan
    r4
    g 8
    a

    | % 53
    b16
    a
    b 8 ~
    b 4
    r8
    b=' 4
    e,=' 8


    | % 54
    cs'='' 2 ~
    cs 8
    a
    b
    cs

    | % 55
    cs='' 16 (
    a )
    cs 8 ~
    cs 4
    r8
    b=' 4
    b=' 8


    | % 56
    <cs \fingeringShift #UP -4> 8 \glissando
    \once \override Fingering.padding = #1
    <d -4> 4 \glissando
    <cs -4> 8
    <fs,=' -2> 4
    \once \barreSpannerText #"III" #0
    \once \barreBracket #0 #-11
    g 8 \startTextSpan
    a \stopTextSpan

    | % 57
    \once \barreSpannerText #"IV" #0
    \once \barreBracket #0 #-13
    <b -4> 16 ( \startTextSpan
    gs )
    b 8 ~
    b 4 \stopTextSpan
    r8
    <gs -3> 8 \glissando \<
    <as -3>
    \once \set glissandoMap = #'((0 . 1))
    <b -4> \glissando

    | % 58
    <b,= cs'='' ^4> 2~ -> \>
    cs'='' 8
    <a -1> \glissando
    \once \override Fingering.padding = #1.0
    <b -1>
    cs -4

    | % 59
    \once \override Fingering.padding = #1.5
    <cs -4> 16 ( \!
    <a -1> )
    cs 8 ~
    cs 4
    <b -1> 4
    \once \stringNumberTextSpanner #2 #UP ##t
    <a -4> 8 \startTextSpan
    <g -3> \stopTextSpan

    | % 60
    <a -1> 16
    <f -3>
    a 8 ~
    a 4
    <g -1> 4
    <ef > 8
    <f \fingeringShift #DOWN -1>

    | % 61
    << {
        \once \override Fingering.padding = #2
        <g -4> 2
        r4
        <cs,=' e> 4
    }
    \new Voice = "v3" {
        \voiceThree
        \once \override Fingering.parent-alignment-X = #RIGHT
        <d=' -3> 16 (
        <b -0> )
        d 8 ~
        d 4
        s2
    } >>

    | % 62
    <fs=' -2> 2 ~
    fs 8
    r8
    \once \override Hairpin.to-barline = ##f
    <b=' \fingeringShift #UP -1> 8 \<
    <cs -3>

    | % 63
    \once \barreSpannerText #"VII" #0
    \once \barreBracket #-1 #-14
    <cs -3> 8 \startTextSpan \!
    b
    <d -4> 4 ~ \stopTextSpan
    d
    <cs -3> 8
    <d >


    | % 64
    <d -4> 8
    <cs -2>
    <e='' -4> 4 ~
    e
    <b \fingeringShift #DOWN -1> 8
    <cs -3>

    | % 65
    <cs -3> 8
    <d -4>
    <b -2> 4~
    b
    e,=' -0

    | % 66
    \once \override Fingering.padding = #1.5
    <cs'='' -4> 16 (
    <b -2> )
    cs 8 ~
    cs 4 ~
    cs 8
    <b -3>
    <a -1>
    <b >


    | % 67
    \tuplet 3/2 {
    <cs='' -4> 8
    <b -3>
    cs  ~
    }
    cs 4 ~
    cs 8
    b
    a
    b

    | % 68
    cs 1

    \bar "|."
}

lowerInner =  \relative a {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    \override Rest #'staff-position = #0
    \voiceFour

    | % 1
    s1

    | % 2
    s2
    r8
    \once \barreBracket #0 #0
    <a= cs='> 8 ~
    <a= cs='> 4

    | % 3
    s1

    | % 4
    <b= > 4
    a
    g
    <e _1 g'=' _3>

    | % 5
    s1

    | % 6
    s2
    s2

    | % 7
    s 2
    r 8
    b'= 8 ~
    b 4

    | % 8
    s2
    g= 8 \rest
    a= 8
    s 4

    | % 9
    s1

    | % 10
    s2
    g= 4
    e=

    | % 11
    r8
    <a= _1> 8 ~ \glissando
    \once \override NoteColumn.glissando-skip = ##t
    a 4
    <gs! _1> 2

    | % 12
    e,=, 8 \rest
    d'= 8
    <fs _3> 4 \glissando
    <es _3> 4.
    <e _1> 8

    | % 13
    s2
    s8
    <g= ~ cs ~> 8
    <e= g=  cs> 4

    | % 14
    s1

    | % 15
    s2.
    fs= 8 ( \>
    e )


    | % 16
    \once \stemUp
    d= 4
    r4
    r4
    s4 \!

    | % 17
    s4
    <e= ~ b'=>4
    <e= cs'='>4
    g=


    | % 18
    r8
    <a= _1> 8
    s4
    s2

    | % 19
    s8
    \stemUp
    a,=, 4
    d=
    fs=
    a= 8
    \stemDown

    | % 20
    b= 8
    d=' 8
    a'=' 4
    <g,= b> 2

    | % 21
    r4
    <a= d fs> 4
    r4
    <d,= g= b> 4

    | % 22
    r4
    <g= b=> 2
    <b _0 cs e > 4 ^\barreText #"VI"

    | % 23
    r4
    <e=' g> 4
    r4
    \once \override Fingering.Y-offset = #-0.5
    <cs e> 4

    | % 24
    r4
    <g= d'='> 2
    <e=  g  cs > 4

    | % 25
    r4
    <g= b> 4
    fs= 4 \rest
    \once \override Fingering.parent-alignment-X = #RIGHT
    \once \override Fingering.add-stem-support = ##f
    <fs= _4 a= -1>

    | % 26

    a= 8
    g
    fs
    e
    d= 2

    | % 27
    g= 4 \rest
    <d= b'=> 4
    s2

    | % 28
    s1

    | % 29
    s1

    | % 30
    s2
    s8
    <g= > 4.

    | % 31
    s2
    s8
    <g= b> 4.

    | % 32
    s1

    | % 33
    s8
    b= 4.
    s8
    b= 4.

    | % 34
    s1

    | % 35
    s2.
    <g= b> 4

    | % 36
    s1

    | % 37
    s2
    r8
    g= 4.

    | % 38
    s2
    g= 8
    f
    e
    d

    | % 39
    s2
    g= 8
    a
    g
    f


    | % 40
    \once \mergeDifferentlyDottedOn
    \once \mergeDifferentlyHeadedOn
    \once \shiftOff
    \once \dotsUp
    b= 4.
    s8
    s2

    | % 41
    s1

    | % 42
    s1

    | % 43
    s1

    | % 44
    s1

    | % 45
    s2
    s8
    b= 4.

    | % 46
    s2
    s8
    b= 4.

    | % 47
    a= 4
    <g > 8
    r8
    <g > 4
    <f= > 8
    r8

    | % 48
    s1

    | % 49
    s1

    | % 50
    s1

    | % 51
    s1

    | % 52
    s2
    r8
    \once \barreBracket #0 #0
    <a= cs='> 4.

    | % 53
    s1

    | % 54
    <b= cs> 4
    a
    g
    <g'='>

    | % 55
    s1

    | % 56
    s1

    | % 57
    s1

    | % 58
    s2.
    <g='> 4


    | % 59
    s1

    | % 60
    s4
    <d=' _4> 4
    s2

    | % 61
    e,= 4 \rest
    e= 4
    g= 8 \rest
    g= 4.



    | % 62
    s1

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

    \bar "|."

}

lower =  \relative a, {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    \override Rest #'staff-position = #-10

    | % 1
    <a=, b'=> 2
    <e d'= g b> 2

    | % 2
    <fs e'= cs'='> 2
    <d'= > 2

    | % 3
    <g= b> 4
    fs _1
    <e \5_2> 4 ~
    <e d'='> 4

    | % 4
    a,=, 2.
    s4

    | % 5
    <d= _0 fs'=' _2> 4
    <a'= _1 fs'=' _2>
    <gs= _1 d'=' -\tweak Fingering.parent-alignment-X #RIGHT _3 e _0>
    <e= _2 d'=' _3>

    | % 6
    <a=  > 4
    <a,=, >
    <d cs'='>
    <c b'=>

    | % 7
    cs!= 4
    <fs= b ds> 4
    <cs _2 es _1> 4
    r4

    | % 8
    <e,=, g'=> 4
    e'=
    a,=,
    b

    | % 9
    <e,=, b''=> 4
    <b'=, d'='>
    a=,
    <e'= cs'='>

    | % 10
    <e,=, b''=> 4
    <b'=, g'= d'='>
    a=, 4.
    a=, 8 -.

    | % 11
    d= 2.
    cs'=' 8 (
    b )


    | % 12
    %\once \override Fingering.padding = #6.0
    \once \fingeringAllowInsideStaff
    <a= -1> 4

    s2
    a,=, 4

    | % 13
    <e=, ~ b''=> 4
    <e=, b'=, g'= b=> 4
    a=, 2

    | % 14
    <e=, ~ b''=> 4
    <e=, b'=, g'= ~ b=> 4
    <as=, g'=> 2

    | % 15
    e=, 8 \rest
    <b'=, _1> 8
    <d= _0> 4
    <cs _3> 2


    | % 16
    r8
    b=, 8
    <g=, b > 4 ->
    <fs as > 2 ->

    | % 17
    e=, 2
    a=, 4.
    a 8

    | % 18
    d= 4 -0
    \once \override Glissando.thickness = #2
    \once \override Glissando.Y-offset = #0.25
    \once \override Glissando.bound-details.right.padding = #2.0
    \once \override Glissando.bound-details.right.end-on-accidental = #f
    fs -3 \glissando
    es
    cs 8 -4
    a=, -0

    | % 19
    d= 8 -4
    a -0
    fs'=
    d
    a'=
    fs
    d'='
    a=



    | % 20
    <g= > 2
    <e > 4
    s4

    | % 21
    b=, 2
    e,=,

    | % 22
    a=, 2
    a

    | % 23
    e=, 2
    a

    | % 24
    e=, 2
    a

    | % 25
    e=, 2
    b'=, 4 _1
    c,=, 4 \rest

    | % 26
    e=, 2
    fs 4
    r4

    | % 27
    <g=, _2> 2
    <a g'=>

    | % 28
    <d= a'=> 2
    <a=, e'= g> 2

    | % 29
    <d= a'= cs> 2.
    a=, 4

    | % 30
    <b=, a'=> 2
    c= _1

    | % 31
    <b=, a'=> 2
    c= _3

    | % 32
    <cs!= -3 g'= cs!='> 2
    <d= g b>

    | % 33
    <e= _1> 2
    \once \barreBracket #8 #0
    <f= >

    | % 34
    <a,=, c'=' e> 2
    <e=, d'= b'=>

    | % 35
    <f=, e'= b'=> 2
    e=,

    | % 36
    <a=, g'= e'='> 2
    <e=, d'= g b=>

    | % 37
    <f=, e'= a> 2
    e=,

    | % 38
    <f'= a> 2
    a,=,

    | % 39
    <e'= b'=> 2
    f=

    | % 40
    <e= g> 2
    f= 4
    <e= g=>

    | % 41
    <d= b'=> 2
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.self-alignment-X = #RIGHT
    <f= _2 g=  b= > 2

    | % 42
    <e= g b>8
    r8
    <e,=, g'=> 4
    <f=, e'=>
    <fs=, d'= a'=>

    | % 43
    <g=, -2 b'=> 2
    <f'= g b=> 2

    | % 44
    <e= g> 2
    <a,=, e'=>

    | % 45
    \once \set glissandoMap = #'((0 . 0))
    <b=, _2> 4~ \glissando
    \once \override NoteColumn.glissando-skip = ##t
    <b=, g'= ~> 4
    <c= _2 g'=> 2

    | % 46
    <b=, _2> 4~
    <b=,  g'= ~> 4
    <c=  g'=> 2

    | % 47
    \override Rest #'staff-position = #-6
    <bf=,> 4.
    r8
    <af=, _2> 4.
    r8

    | % 48
    <fs=, e'=> 4.
    r8
    \set glissandoMap = #'((0 . 0))
    <b=, _2 ds > 4. \glissando
    \once \override NoteColumn.glissando-skip = ##t
    r8

    | % 49
    <c= _2 e > 4. \glissando
    \once \override NoteColumn.glissando-skip = ##t
    r8
    <d= _2 fs > 4. \glissando
    \once \override NoteColumn.glissando-skip = ##t
    r8

    | % 50
    <e= _2 ~ gs  ~> 2
    \unset glissandoMap
    <e,=, ~ e'= gs=> 4
    <e=, e''='> 4

    | % 51
    <a=, b'=> 2
    <e d'= g b> 2

    | % 52
    <fs e'= cs'='> 2
    <d'= > 2

    | % 53
    <g= b> 4
    fs
    e 4 ~
    <e gs d'='> 4

    | % 54
    a,=, 2.
    e'= 4

    | % 55
    <d= fs'='> 4
    <a'= fs'='>
    <gs= d'=' e>
    <e= d'='>

    | % 56
    <a= _1 g'=' ~ -2> 4
    <a,=, g''='>
    <d cs'=' >
    <c b'=>

    | % 57
    cs= 4
    <fs= b ds> 4
    <cs es> 4
    b'= _0

    | % 58
    <a= _1> 4
    <e _1>
    a,=, 2

    | % 59
    <d= fs'='> 4
    a=,
    \once \set glissandoMap = #'((0 . 0))
    <c= _2 g'=  b > 4 \glissando
    \once \override NoteColumn.glissando-skip = ##t
    r4

    | % 60
    <bf=, _2> 2 \glissando
    <af=, _2 c'='  ef=' > 4
    r4

    | % 61
    e=, 2
    a=,

    | % 62
    d= 4 ~
    <d= a'=> 4 ~
    <d a'= d> 8
    g= 8 \rest
    g 4 \rest

    | % 63
    <b,=, fs''='> 2
    <e,=, gs''!=' -2>

    | % 64
    <a=, g''=' -1> 2
    <d= fs'=' a=' >


    | % 65
    <e= _1> 2
    e,=, 2

    | % 66
    <a=, b'= > 2
    <e=, d'= g b> 2

    | % 67
    <a=, gs'!= b> 2
    <e=, d'= g b> 2

    | % 68
    \once \override Arpeggio.positions = #'(-4 . 4)
    \once \override Arpeggio.padding = #-1.5
    \once \hide Slur
    \once \hide Stem
    \grace \hide b''= 8 \arpeggio
    \once \barreBracket #3 #8
    \once \override TextScript.padding = #4
    <a,=, b'= e=' gs='> 1 ^\barreText #"IX"

    \bar "|."

}