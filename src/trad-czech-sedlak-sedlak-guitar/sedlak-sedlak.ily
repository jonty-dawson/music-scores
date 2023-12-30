\version "2.22.2"

startAcciaccaturaMusic = {
<>(
\override Flag.stroke-style = #"grace"
\override Fingering.font-size = #-3
\override StringNumber.font-size = #-3
\once \hide Slur
}
stopAcciaccaturaMusic = {
    \revert Flag.stroke-style
    \revert Fingering.font-size
    \revert StringNumber.font-size
<>)
}

upper =  \relative c' {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \restoreTextSpanner

    | % 1
    cs8 ( \3-1 _\markup { \italic "simplice"}
    d ) -3
    <cs ^1 e ^0> 4
    cs8 (
    d )

    | % 2
    << {
        e4
    }
    \new Voice = "UpperInner" {
        \voiceThree
        \stemUp
        cs8 [(
        d )]

    } >>
    \stemUp
    cs8 [(
    d )]
    <b ^0 e ^0> 4

    | % 3
    cs8 (
    d )
    <b e> 4
    cs8 (
    d )

    | % 4
    <b e> 2.

    \break

    \repeat volta 2 {
        | % 5
        \barreSpannerText #"II" #0
        \barreBracket #2 #-3
        a8 -> \startTextSpan
        \once \override Fingering.staff-padding = #3.0
        b -3
        a4
        cs8 ->
        \once \override Fingering.staff-padding = #3.5
        d -2

        | % 6
        cs4 \stopTextSpan
        e8 -> -0
        \once \override Fingering.staff-padding = #4.5
        fs -3
        <cs=' ^2 e=' ^0>4

        | % 7
        <d ^4 fs ^3>4 \(
        gs,= -. \) -1
        gs

        | % 8
        b8 -0
        a -2
        gs -1
        fs -4
        e4 -2

        | % 9
        \barreSpannerText #"II" #0
        \barreBracket #2 #-3
        a8 -> \startTextSpan
        b
        a4
        cs8 ->
        d

        | % 10
        cs4 \stopTextSpan
        e8 ->
        fs
        <cs=' e='>4

        | % 11
        <d ^4 fs ^3>4 \(
        gs,= -. \) -1
        gs

        | % 12
        \barreBracket #0 #-3
        a2
        r4

    }
    \repeat volta 2 {
        | % 13
        fs'='8 -1
        gs -3
        <a -4>4 \glissando
        <gs -4>8
        fs -2

        | % 14
        fs4 \(
        e -. \) -0
        <a,= ^1 e'=' ^0>

        | % 15
        d8 -3
        e -0
        <d=' ^3 fs=' ^2>4
        e8
        d -4

        | % 16
        d4 \(
        <a= ^2 cs -. ^3> \)
        <g ^0 cs ^3>

        | % 17
        b8 -0
        cs -1
        b4
        cs8 -2
        b

        | % 18
        a4 -1
        \once \barreBracket #2 #0
        a8
        cs
        e4 -0

        | % 19
        <d ^4 fs ^3>4 \(
        gs,= -. -1 \)
        <gs=>

        | % 20
        \once \barreBracket #0 #0
        <e a>2.

        \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
        \once \override Score.RehearsalMark.X-offset = #1.0
        \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
        \mark \markup { \right-align \line { \vcenter \normalsize "To Coda" \musicglyph #"scripts.coda"} }


    }

    | % 21
    fs'='8 -1
    gs -3
    a -4
    gs \dim
    fs
    e -0

    | % 22
    d -4
    e -0
    fs -3
    e
    d
    cs -3

    | % 23
    b -0
    cs16 (b)
    a4 -3
    \override BreathingSign.text = \markup { \musicglyph "scripts.caesura.straight" }
    gs -1 \! \breathe
    %todo available 2.23
    %\caesura

    \break

    \repeat volta 2 {
        | % 24
        \once \dashedTextSpanner #"laissez vibrer " #UP ##t
        a=8 -> \4 \fingeringShift #UP -2 \startTextSpan
        \once \override Fingering.staff-padding = #3.0
        b -0
        a4
        <a ^2 cs ^1>8 ->
        \once \override Fingering.staff-padding = #3.5
        <b ^0 d ^3>

        | % 25
        <a cs>4
        <cs ^1 e ^0>8 ->
        \once \override Fingering.staff-padding = #4.5
        <d ^3 fs ^4>
        <cs e>4 \stopTextSpan

        | % 26
        \once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
        \once \override Glissando.minimum-length = #2.5
        \once \override Glissando.to-fingerings = ##f
        \once \override Glissando.bound-details.right.attach-dir = #RIGHT
        \once \override Glissando.bound-details.right.padding = #-0.5
        \once \override Glissando.thickness = #2

        \afterGrace
        <d ^3 fs ^4>4 -> \glissando {
            \hideNotes
            <a= cs> 16
        }
        \unHideNotes
        gs=4 -1
        gs

        | % 27

        %\mergeDifferentlyDottedOn
        %\mergeDifferentlyHeadedOn
        b8 -0
        a -2
        gs -1
        fs -4
        e4 -2


        | % 28
        \once \dashedTextSpanner #"l.v. " #UP ##t
        a=8 -> \4 \fingeringShift #UP -2 \startTextSpan
        \once \override Fingering.staff-padding = #3.0
        b -0
        a4
        <a cs>8 ->
        <b d>

        | % 29
        <a cs>4
        <cs e>8 ->
        <d fs>
        <cs e>4 \stopTextSpan

        | % 30
        \revert Arpeggio.stencil
        \once \override Arpeggio.positions = #'(-4 . 2)
        <a= ^2 d=' ^3 fs=' ^4> 4 -> \arpeggio
        <gs= ^1>
        <gs= ^1 b ^0 d=' ^3>
    }
    \alternative {
        {
            | % 31
            <b ^0 d ^3>4
            <a ^2 cs ^1>2
        }
        {
            | % 32
            <b ^0 d ^3>4
            <a ^2 cs ^1>2
        }
    }

    \repeat volta 2 {
        | % 33
        \once \barreBracket #0 #0
        \once \override Glissando.to-fingerings = ##f
        %\once \fingeringAboveHead
        \once \set glissandoMap = #'((0 . 0))
        \once \glissToBelowNotes
        <d=' ^\3 fs ^\2>8 \glissando
        <e gs>
        <fs ^3 a ^2>4
        \once \barreBracket #0 #0
        <e gs>8
        \once \barreBracket #0 #0
        <d fs>

        | % 34
        <d fs>4 \(
        <cs ^1 e ^0> -. \)
        <cs ^2 e ^1> \glissando

        | % 35
        \once \override Glissando.to-fingerings = ##f
        \once \set glissandoMap = #'((0 . 0))
        \once \glissToBelowNotes
        <b ^2 d ^1>8 \glissando
        <cs e>
        <d ^3 fs ^4>4
        <cs ^3 e ^2>8 \glissando
        <b ^3 d ^2>

        | % 36
        \once \barreBracket -1 #-10
        \once \barreSpannerText #"II" #0
        <b d>4 \( \startTextSpan
        <as ^2 cs=' ^1> -. \)
        <as= cs='> \stopTextSpan

        | % 37
        \restoreTextSpanner
        \override TextSpanner.bound-details.left.text = \markup {\upright \bold \normalsize  "allarg. " }
        b= 8 -0 \startTextSpan
        \once \override Fingering.staff-padding = #3.0
        cs -4
        b4
        cs8 -4
        \once \override Fingering.staff-padding = #3.0
        b -0

        | % 38
        a4 -3
        \barreSpannerText #"II" #0
        \barreBracket #2 #-8
        a8
        cs
        e4 -0 \stopTextSpan

    }
    \alternative {
        {

            \override Score.VoltaBracketSpanner.outside-staff-padding = #1.5
            | % 39
            \once \barreBracket #0 #0
            <a,= cs=' fs='>4 \(
            \once \set fingeringOrientations = #'(up left)
            <gs= -1 d'=' -4> -. \)
            gs= 4

            | % 40
            \once \barreBracket #0 #-3
            a2
            r4

        }
        {
            | % 41
            \once \set fingeringOrientations = #'(up right)
            <a= -2 d=' -4 fs=' -3> 4 \(
            <gs= ^1 > -. \)
            <d= gs=>

            | % 42
            \once \barreBracket #0 #0
            <e= a=> 2
            a4 _\markup { \italic "con grazia" }

            \revert Score.VoltaBracketSpanner.outside-staff-padding
        }
    }
    | % 43
    fs'=' 2 -- -1
    cs8 -1
    d -2

    | % 44
    e2 -- -0
    b8 -0
    cs -3

    | % 45
    d2 -- -4
    d8 \fingeringShift #UP -2
    e -4

    | % 46
    <d >4 \(
    <cs -2> -. \)
    \once \barreSpannerText  #"II" #0
    \once \barreBracket #5 #0
    a \startTextSpan

    | % 47
    fs'='8
    gs -4
    fs 4 \stopTextSpan
    gs8
    fs -1

    | % 48
    e4 -0
    cs8 -2
    d -4
    e 4

    | % 49
    <a,= ^2 d ^4 fs ^3>4 \(
    <gs ^1> -. \)
    <gs ^1 cs ^3> -.

    | % 50
    \once \barreBracket #0 #-3
    a2

    \afterGrace r4
    <> ^\markup { \right-align \right-column {"D.C. al Coda" "senza ripetizione" }}
    \bar "||" % 51


    % https://lsr.di.unimi.it/LSR/Snippet?id=1098

    \pseudoIndent \markuplist {  \vcenter \fontsize #3 \musicglyph #"scripts.coda" } #3.5
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.outside-staff-padding = #2
    \mark \markup { \smallCaps  "Coda" }

    cs8 ( \3 \fingeringShift #UP -1 _\markup { \italic "simplice"}
    d ) -3
    <cs ^1 e ^0> 4
    cs8 (
    d )

    | % 52
    \restoreTextSpanner
    \once \override TextSpanner.bound-details.left.text = \markup {\upright \bold \normalsize "rit. " }
    << {
        e4 \startTextSpan
    }
    \new Voice = "UpperInner" {
        \voiceThree
        \stemUp
        cs8 [(
        d )]

    } >>
    \stemUp
    cs8 [(
    d )]
    <b ^0 e ^0> 4

    | % 53
    cs8 (
    d )
    <b e> 4
    cs8 (
    d )

    | % 54
    <b e> 2
    r4 \stopTextSpan

    | % 55
    <cs=' ^3 e=' ^2>2
    r4

    | % 56
    \once \override Script.outside-staff-padding = #1.0   %fermata
    \once \override Script.outside-staff-priority = #440 % for fermata
    <cs=' -1>2. \fermata
    \bar "|."

}

lower =  \relative a, {

    \override Rest.staff-position = #-8
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(down)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5

    | % 1
    a 4 -0
    e'= \5-2
    a,=,

    | % 2
    e'=
    a,=,
    a'= \4-2

    | % 3
    a,=,
    e'= -2
    a= -2

    | % 4
    e,=,
    b'=, \6-2
    e= \5-2

    \repeat volta 2 {
        | % 5
        a,=,4 -0
        e'=
        <a,=, a'=>

        | % 6
        <e'=  a= >
        <a,=, _0 cs'=' _2>
        <a'= _1 >

        | % 7
        b,=, -1
        e= -2
        e=

        | % 8
        e,=, 2
        e'= 4

        | % 9
        a,=,4
        e'=
        <a,=, a'=>

        | % 10
        <e'= a=>
        <a,=, cs'='>
        <a'= >

        | % 11
        <b,=, _1 >
        \once \override Fingering.staff-padding = #6
        e= -2
        e,=,
        | % 12
        a=, -0
        cs -3
        e=
    }
    \repeat volta 2 {
        | % 13
        d=4 -0
        fs -2
        a -1

        | % 14
        a,=, -0
        cs2 -3

        | % 15
        b=, 4 -1
        e= _1
        gs= -1

        | % 16
        a,=,
        e'=2 -1

        | % 17
        <fs= -4>4
        <es= -3>
        <es= _3 gs= _1> 4 \glissando

        | % 18
        <fs= -3>
        cs= -3
        <a=, _0 g'= _0 >

        | % 19
        d= 4 -0
        e -2
        b=, -2

        | % 20
        cs= -3
        a=, 2 -0
    }
    | % 21
    <d= _0 b'= _0>2.

    | % 22
    <b=, _2 gs'= _1>2.

    | % 23
    <e,=, e'=>2.

    \repeat volta 2 {
        | % 24
        \override DynamicLineSpanner.staff-padding = #7
        r2 \p
        a=,4~ -0 \<
        \revert DynamicLineSpanner.staff-padding

        | % 25
        a
        a'=2 \4-2

        | % 26
        d,= 4-0 \! \fp
        e= \4-2
        b=, -2

        | % 27
        <e,=, b''=> 2.

        | % 28
        r2
        a=, 4~ \<

        | % 29
        a 4
        a'= 2

        | % 30
        b,=, 4 \6-1 \! \fp
        e= 2 \5-2
    }
    \alternative {
        {
            | % 31
            a= 4 \4-2
            a= 2
        }
        {
            | % 32
            a= 4 \4-2
            r
            e,=, 4
        }
    }
    \repeat volta 2 {
        | % 33
        a=,4 -0 _\markup {\italic "dolce"}
        d= -0
        e,=,

        | % 34
        a=,
        a'= \4_2
        e,=,

        | % 35
        a=,
        d=
        e,=,

        | % 36
        fs=, 4
        fs'= -3
        e=


        | % 37
        <fs,=, _2 d'= _0 a'= _3> 4
        <es=, _1 d'= _0 a'= _3>
        \once \set glissandoMap = #'((0 . 0))
        <es=,  _1 d'=  _0 gs= _2> \glissando

        | % 38
        \once \override Fingering.staff-padding = #8
        <fs _1 e'= _2>
        <g=, -2 e'= >
        <a=, _0 g'= _0 b= _0>
    }
    \alternative {
        {
            | % 39
            d= 4 -0
            e= -2
            <e,=, e'>

            | % 40
            <a=, _0 fs'= _3>
            <cs= _3 e= _1>
            e,=,
        }
        {
            | % 41
            <d'= -0 > 4
            e= _2
            e,=,

            | % 42
            cs'= -3
            a -0
            g -2
        }
    }
    | % 43
    d'=4 -0
    <gs,?=, _3 b'= _0>
    r

    | % 44
    cs= -3
    <fs,=, _1 a'= _2>
    r

    | % 45
    b=, -1
    <e,=, _0 gs'= _1>
    r

    | % 46
    a=,
    e'= -1
    r

    | % 47
    <d= cs'='>2
    %<gs,=, _3 b'= _0>4
    <cs= ~ _3 b' ~ _0>4

    | % 48
    <cs= b'>
    <fs,=, _1 as'= _3>2

    | % 49
    b=, 4 -1
    e= -2
    e,=, -.

    | % 50
    a=,
    cs -3
    e \5 \fingeringShift #UP -2

    | % 51
    a,=, 4 -0
    e'= \5-2
    a,=,

    | % 52
    e'=
    a,=,
    a'= \4-2

    | % 53
    a,=,
    e'= -2
    a= -2

    | % 54
    e,=,
    b'=, \6 -2
    e= \5 -2

    | % 55
    a,=, -0
    \once \glissToAboveNotes
    \override Flag.stroke-style = #"grace"

    \afterGrace cs -1
    \glissando e8 -\tweak Fingering.font-size #-3 -2
    \revert Flag.stroke-style
    <e>4 \5 -2

    | % 56
    a= -3
    \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    a'=' 2 \4 ^\markup { \center-align \fontsize #-3 "VII" } ^\fermata

    \bar "|."
}