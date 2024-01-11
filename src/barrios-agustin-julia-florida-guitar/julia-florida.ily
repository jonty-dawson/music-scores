\version "2.22.2"


% miz = "mano izquierda", i.e. left hand.
% aiz = armónico izquierda?
% arm = armónico

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

startGraceMusic = {
<>(
\override Fingering.font-size = #-3
\override StringNumber.font-size = #-3
}
stopGraceMusic = {
    \revert Fingering.font-size
    \revert StringNumber.font-size
<>)
}



upper =  \relative a {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP


    | % 1
    b 4. \rest
    a 4. \5-3

    | % 2
    b 4. \rest

    \once \set glissandoMap = #'((1 . 0))
    <cs=' ^1 a'=' ^4> 8 \glissando
    \override Fingering.padding = #3.0
    <b'=' -4>
    a -2
    \revert Fingering.padding

    | % 3

    \once \glissToBelowNotes
    \acciaccatura  fs,= 8  \glissando
    a= 4. \4-1
    a8
    b -3
    a

    | % 4
    a4.
    a8
    b -0
    cs \fingeringShift #DOWN -1

    | % 5
    d4. -2
    \barreBracket #0 #-3
    d8 -1
    e -4
    d

    | % 6
    d 4.
    d 8
    e
    d


    | % 7
    g=' 4. -4
    fs 8 -2
    e -0
    g

    | % 8
    \barreBracket #0 #-11
    fs 4. -1
    \mergeDifferentlyDottedOn
    b,= 8 -4
    cs -1
    d -2

    | % 9
    e 4. -0
    e 8
    fs -2
    \once \glissToBelowNotes
    \override Flag.stroke-style = #"grace"
    \afterGrace  d -4
    \glissando e
    \revert Flag.stroke-style


    | % 10
    e 8 -4
    \once \glissToBelowNotes
    b -3 \glissando
    d -3
    cs \2 \fingeringShift #DOWN -1
    b -0
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    a _\5-4 ^\markup { \center-align \fontsize #-3 "XII" }

    | % 11
    \once \glissToBelowNotes
    \acciaccatura  fs= 8  \glissando
    a= 4. \4-1
    a8
    b -3
    a

    | % 12
    a4.
    a8
    b -0
    cs \fingeringShift #DOWN -1

    | % 13
    d 4. -2
    d 8 -1
    e -4
    d

    | % 14
    b'=' 4. -4
    e,=' 8 -1
    fs -3
    g -4

    | % 15
    a=' 4. -2
    \barreSpannerText #"VII" #0
    \once \barreBracketOffset #-2.0
    \barreBracket #0 #-11
    b 8 \startTextSpan
    cs -3
    d -4 \stopTextSpan

    | % 16
    << {
        a=' 4. -2
    } \\ {
        \voiceThree
        \once \override Fingering.parent-alignment-X = #RIGHT
        cs,=' 8 ^3
        d ^4
        cs
    } >>
    b'=' 8 -1
    cs -3
    \once \override Glissando.bound-details.left.attach-dir = #CENTER
    \once \override Glissando.bound-details.left.padding = #1.25
    \once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
    \once \override Glissando.minimum-length = #3.0
    \override Flag.stroke-style = #"grace"
    \afterGrace d -4
    \glissando a='
    \revert Flag.stroke-style

    | % 17
    << {
        \once \override Dots.staff-position = #-1
        a=' 4. -4
        a
    }
    \new Voice = "UpperInner" {
        \voiceThree
        \stemUp
        \once \override Fingering.parent-alignment-X = #RIGHT
        e=' 8 -3
        d -1
        b -0
        \once \override Slur.height-limit = #0.5
        \once \shape #'((0.0 . 0.0) (0.0 . 0.0) (-1.0 . 0.0) (-0.8 . 0.5)) Slur
        \grace {  cs 16 -1 _(d -2 }
        cs 8)
        b
        cs
    } >>

    | % 18
    << {
        <d=' ^2 a'=' ^4> 4.
    } | {
        <fs,= ^3> 4
        s8
    } >>

    a'=' 8 -2
    b -4
    a
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.X-offset = #1.5
    \mark \markup { \right-align \line { \vcenter \normalsize \bold "To Coda" \musicglyph #"scripts.coda"} }

    \bar "||" % 19
    << {
        <d,=' a'='> 4.
    } | {
        <fs,= > 4
        s8
    } >>
    << {
        \barreBracket #0 #-2
        cs'=' 4. -1
    }
    \new Voice = "UpperInner" {
        \voiceThree
        \stemUp
        a= 8
        b -3
        a
    } >>
    | % 20
    << {
        d=' 4. -2
    }
    \new Voice = "UpperInner" {
        \voiceThree
        \stemUp
        a= 8
        b -4
        a
    } >>
    <as ^2 cs ^1 > 4.

    \break
    \repeat volta 2 {
        | % 21
        \once \override TextScript.staff-padding = #3
        fs 4 -3 ^\markup { \upright \bold \normalsize rítmico }
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.extra-offset = #'(-0.4 . 0)
        b 8 -0 ^\laissezVibrer
        g 4 -0
        b 8 ^\laissezVibrer

        | % 22
        fs 4
        b 8 ^\laissezVibrer
        g 4

        b 8 ^\laissezVibrer

        | % 23
        fs 4
        b 8 ^\laissezVibrer
        \barreBracket #3 #0
        e,= -1
        a
        g -4

        | % 24
        fs -2
        g -4 _(
        e -1)
        fs -4
        as -2 _\markup { \italic "dolce" }
        \once \glissToBelowNotes
        \override Flag.stroke-style = #"grace"
        \afterGrace cs -1 \glissando fs 8
        \revert Flag.stroke-style

        | % 25
        fs 4 \2-1
        fs 8
        d \4 \fingeringShift #UP -3
        fs -2
        d

        | % 26
        e 4 -0
        e 8
        cs -2
        e
        cs

        | % 27
        d 4 -2
        d 8
        b -0
        \barreBracket #0 #-2
        \override NoteHead.style = #'harmonic-mixed
        \once \override TextScript.parent-alignment-X = #CENTER
        b'=' -4 ^\markup { \center-align \fontsize #-3 "XII" }
        g='
        \revert NoteHead.style

        | % 28
        e 4. -0
        g=' 8 \rest
        \once \glissToBelowNotes
        \once \override TextScript.staff-padding = 7.5
        e -4 \glissando _\markup { \italic espressivo }
        g

        | % 29
        \barreSpannerText #"V" #0.0
        \barreBracket #-2 #-14
        g 4. -4 \startTextSpan
        fs 8 -2
        e
        <g -4> \stopTextSpan \glissando
\pageBreak
        | % 30
        <fs=' -4> 4.
        b,= 8 -0
        cs -1
        d -2
        \override Score.VoltaBracketSpanner.padding = #3
    }
    \alternative {

        {
            | % 31
            \override Fingering.add-stem-support = ##f
            \override Fingering.extra-offset = #'(-0.4 . 0)
            e=' 4. -4
            cs -2
            \revert Fingering.add-stem-support
            \revert Fingering.extra-offset


            | % 32
            cs 8 \fingeringShift #DOWN -1
            as -2
            fs -4
            fs 4.
        }

        {
            | % 33
            \override Fingering.add-stem-support = ##f
            \override Fingering.extra-offset = #'(-0.4 . 0)
            e'=' 4. -0
            fs 4. -3
            \revert Fingering.add-stem-support
            \revert Fingering.extra-offset
            \break
            | % 34
            <fs,= ^3 d'=' ^2> 4.
            r4.
        }
    }


    | % 35
    r8
    e'=' -0
    a=' -2

    r4
    <e'='' -4> 8  \glissando

    | % 36
    <d -4> 8
    \barreSpannerText #"VII" #0
    \once \barreBracketOffset #-0.6
    \barreBracket #0 #-9
    cs -3 \startTextSpan
    b \stopTextSpan
    \barreSpannerText #"V" #0
    \once \barreBracketOffset #-1.75
    \barreBracket #0 #-5
    a \startTextSpan
    g -4
    fs -3 \stopTextSpan


    | % 37
    g 16 -4
    _(fs) -3
    e 8 -0
    b -0
    \once \override Slur.height-limit = #0.5
    \once \shape #'((0.0 . 0.0) (0.0 . 0.0) (-1.0 . 0.0) (-0.8 . 0.5)) Slur
    \grace {  cs 16 -1 _(d -2 }
    cs 8)
    b
    a -1

    | % 38
    b= 4. -3
    b 8 -0
    \barreBracket #0 #-2
    cs -1
    a

    | % 39
    b 4. -3
    b 8
    \once \glissToBelowNotes
    \once \override Glissando.bound-details.left.attach-dir = #CENTER
    \once \override Glissando.bound-details.right.attach-dir = #LEFT
    cs -4 \glissando
    a -4

    | % 40

    << {
        s 2.
        | % 41
        s 2.
        \noBreak
        | % 42
        fs'=' 4.-- ~ -4
        fs=' 4.
    }
    \new Voice = "UpperInner" {
        \voiceThree
        \stemUp
        fs,= 4. -4
        es 8 -1
        fs -2
        <gs -4> \glissando

        | % 41
        <fs= -4> 4.
        es 8
        \glissToBelowNotes
        \once \override Glissando.Y-offset = #-1.5
        fs -2 \glissando
        gs -2 ~
        |
        gs 8
        s 4
        s 4.
    } >>



    | % 43
    fs'=' 4.-- ~
    fs 8
    <fs -4> \glissando
    <gs -4> \glissando

    | % 44
    <fs -4> 4. \glissando
    <es -4> 4.

    | % 45
    r4.
    e=' 8 \fingeringShift #UP -1
    fs -3
    \once \override Glissando.bound-details.left.attach-dir = #CENTER
    \once \override Glissando.bound-details.left.padding = #1.25
    \once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
    \once \override Glissando.minimum-length = #3.0
    \override Flag.stroke-style = #"grace"
    \afterGrace g -2 \glissando
    d=' 8

    | % 46
    d 4. -2
    r4.
    | % 47
    r4.
    e=' 8 -1
    \once \glissToBelowNotes
    \once \override Glissando.bound-details.left.attach-dir = #CENTER
    \once \override Glissando.bound-details.right.attach-dir = #LEFT
    f -3 \glissando
    d

    | % 48
    c=' 4. -1
    c 8
    e -0
    a \fingeringShift #UP -2 ~

    | % 49
    a 8
    a
    b -4
    \grace {
        a 16 (b
    }
    a 8)
    f -3
    b,= -1

    | % 50
    r 4.
    c 8
    e
    a ~

    | % 51
    a 8
    a
    b
    \grace { a 16 ( b}
    a 8)
    f
    b,=

    \break
    | % 52
    s4.
    c=' 8 -1
    e -0
    a -2

    | % 53
    g,,=, 8

    \restoreTextSpanner
    \once \override TextSpanner.staff-padding = #8
    \once \override TextSpanner.bound-details.left.text = \markup {\upright \bold \normalsize "rall. " }

    e'= -3 \startTextSpan
    a= -4
    cs! -2
    e=' -1
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    a=' _\4-4 ^\markup { \center-align \fontsize #-3 "VII" }

    | % 54
    fs,,=, 8 -1
    ef'= -3
    a= -4
    c=' -2
    ef=' -1
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    a=' -4 ^\markup { \center-align \fontsize #-3 "VII" }

    | % 55
    f,,=, 8 -2 \stopTextSpan
    %\set decrescendoText = \markup { "rall. assai " }
    \once \override TextSpanner.staff-padding = #8
    \once \override TextSpanner.bound-details.left.text = \markup {\upright \bold \normalsize "rall. assai " }
    d'= -0 \startTextSpan
    a'= -1
    b -0
    \once \textLengthOn
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    d _\4-4 ^\markup { \center-align \fontsize #-3 "XII" }
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    a'=' -1 ^\markup { \center-align \fontsize #-3 "VII" }

    | % 56
    e,,=, 8 -1
    cs'= -2
    g'= -4
    \once \glissToBelowNotes
    \override Flag.stroke-style = #"grace"
    \afterGrace b -3
    \glissando cs 8
    \revert Flag.stroke-style
    cs -3 \stopTextSpan %\!
    % todo upgrade to >= 2.23 and use \textEndMark
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    \override TextScript.staff-padding = #3.0
    \once \override Script.padding = #1.0   %fermata
    %\once \override Script.outside-staff-priority = #440 % for fermata
    \afterGrace
    a'=' -4 ^\fermata ^\markup { \center-align \fontsize #-3 "VII" }
    <> _\markup { \right-align \right-column \bold {"D.C. al Coda" }}
    \revert TextScript.staff-padding


    \bar "||" % 57
    \break

    % https://lsr.di.unimi.it/LSR/Snippet?id=1098

    \pseudoIndent \markuplist {  \vcenter \fontsize #3 \musicglyph #"scripts.coda" } 3
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.outside-staff-padding = #2
    \mark \markup { \smallCaps "Coda" }
    << {
        <d,=' ^2 a'=' ^4> 4.
    } | {
        <fs,= ^3> 4
        s8
    } >>
    a'=' 8 -2
    b -4
    a -2


    | % 58
    << {
        <d,=' a'=' > 4.
    } | {
        <fs,= > 4
        s8
    } >>
    a'=' 8
    b
    a

    | % 59
    a=' 4. -2 ~
    a 4
    fs='8 \rest

    | % 60
    s4.
    s4.
    | % 61
    s4.
    s4.
    | % 62
    s4.
    s4.
    \bar "|."

}

lower =  \relative d, {

    \override Rest.staff-position = #-8
    \set fingeringOrientations = #'(down left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(down)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5

    | % 1
    \override Script.padding = #0.5 % give staccato marks more space under beams
    d 8 -.
    a' -. -0
    fs' -. \5-1
    g 4. -0

    | % 2
    d,=, 8 -.
    a' -. -0
    fs' -. \4-2
    g 4. -0
    \revert Script.padding

    | % 3
    d,=, 8
    a' -0
    fs' -3
    g 4. -4

    | % 4
    d,=, 8
    a'
    fs'
    g 4. -0

    | % 5
    fs,=, 8 -3
    d'= -0
    a'= -1
    as 4.

    | % 6
    g,=, 8 -3
    d'=
    b'= -2
    c 4. -3

    | % 7
    b,=, 8 -1
    g'= -0
    d'=' -3
    d 4.

    | % 8
    b,=, 8
    fs'= -3
    d'=' -2
    b 4.

    | % 9
    b,=, 8 -1
    fs'= -3
    d'=' -2
    gs,= 4. -1

    | % 10
    a,=, 4.
    g'= 4. -0

    | % 11
    d,=, 8
    a' -0
    fs' -3
    g 4. -4

    | % 12
    d,=, 8
    a'
    fs'
    g 4. -0

    | % 13
    fs,=, 8 -3
    d'= -0
    a'= -1
    c 4. -3

    | % 14
    g,=, 8 -2
    d'= -0
    b'= -0
    cs 4. -2

    | % 15
    \once \barreSpannerText #"IX" #0.0
    \barreBracket #6 #0
    fs,= 8 -1 \startTextSpan
    cs'=' -3
    e \stopTextSpan
    \once \fingeringChord
    <e,= d'=' g='-2> 4.


    | % 16
    fs= 4. \4-1
    <g _0 b _0> 4.

    | % 17
    << {
        fs= 4. -2
        g= 4. -0
    } | {
        a,=, 2. -0
    } >>

    | % 18
    d,=, 8
    a'=, -0
    fs'= -3
    <g _1 cs _3> 4.

    | % 19
    d,=, 8
    a'=, -0
    fs'= -3
    g 4. -4

    | % 20
    fs= 4. -3
    fs 8
    g
    \once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
    \once \override Glissando.minimum-length = #3.0
    \once \override Fingering.padding = #1.5
    \acciaccatura cs,= -3 \glissando fs^\fermata \5


    \repeat volta 2 {
        | % 21
      %  \override NoteHead.extra-spacing-width = #'(0 . 2.5)

        \override Slur.height-limit = #1.5
        \shape #'((0.6 . -0.3) (0.6 . -0.3) (0.0 . 0.0) (0.0 . 0.0)) Slur
        d= 8 \5-4 ^(
        b 4 -1)
        \shape #'((0.6 . -0.6) (0.6 . -0.6) (0.0 . -0.3) (0.0 . -0.3)) Slur
        e 8 -1^(
        cs 4 -3)

        | % 22
        \shape #'((0.6 . -0.3) (0.6 . -0.3) (0.0 . 0.0) (0.0 . 0.0)) Slur
        d= 8^(
        b 4)

        \shape #'((0.6 . -0.6) (0.6 . -0.6) (0.0 . -0.3) (0.0 . -0.3)) Slur
        e 8^(
        cs 4)

        | % 23
        \shape #'((0.6 . -0.3) (0.6 . -0.3) (0.0 . 0.0) (0.0 . 0.0)) Slur
        d= 8^(
        b 4)
        \revert NoteHead.extra-spacing-width
        \revert Slur.height-limit
        cs 4. -3

        | % 24
        d 4. -3
        cs -3

        \break
        | % 25
        << {
            \voiceFour
            g'= 8 \rest
            fs= 4 -3
            b= 4. -0
        } \\ {
            d,,=, 2.
        } >>

        | % 26
        << {
            \voiceFour
            g'= 8 \rest
            g= 4 -0
            b= 4. -4
        } \\ {
            %\once \override Staff.Dots.extra-spacing-width = #'(2.0 . 0.2)
            e,,=, 2. \fingeringShift #DOWN -1
        } >>

        | % 27
        fs=, 8 -3
        fs'= 8 -4 ~
        fs
        b= 8
        r4

        | % 28
        cs,= 8 \5 \fingeringShift #DOWN -3
        e -1
        g -0
        b 4 -3
        g 8 \rest

        | % 29
        << {
            \voiceFour
            %\once \hide NoteHead
            g= 8 \rest
            \once \set stemLeftBeamCount = 1
            d=
            bf'= -3 ~
            bf 4.
        } \\ {
            %\mergeDifferentlyDottedOn
            %\stemUp
            %\once \override Stem.length = #6.0
            %\once \override NoteColumn.force-hshift = #0.0

            g,=, 2.
        } >>

        | % 30
        << {
            \voiceFour
            \stemDown
            a=, 8 -0
            d= -0
            e= _\4 \fingeringShift #DOWN -1
            fs 4. -3
        } \\ {
            \mergeDifferentlyDottedOn
            \stemUp
            \once \override NoteColumn.force-hshift = #0.0
            a,=, 4.
        } >>
    }
    \alternative {
        {
            | % 31
            e=, 8 -1
            g'= -0
            \once \glissToBelowNotes
            \afterGrace
            b -2 \glissando
             \tweak Stem.direction #UP
            cs 8
            g,=, \fingeringShift #UP -1
            e'= -3
            b'= -0

            | % 32
            fs,=, 4. -3
            <as -1> 8  \glissando
            <b -1>
            cs -3
        }
        {
            | % 33

            << {
                \voiceFour

                e,=, 8 -2
                gs'= -1
                d'=' -4
                a,=, -0
                g'= -0
                cs -2
            } \\ {
                \mergeDifferentlyDottedOn
                \stemUp
                \once \override Stem.length = #6.0
                \once \override NoteColumn.force-hshift = #0.0
                e,,=, 4.
                \once \override Stem.length = #6.0
                \once \override NoteColumn.force-hshift = #0.0
                a=, 4.
            } >>

            | % 34
            d,=, 8
            \override Script.padding = #0.5 % give staccato marks more space under beams
            \once \dashedTextSpanner #"pizz." #DOWN ##t
            a'=, -. -0 \startTextSpan
            b -. -1
            fs=, -. -3
            a -.
            d -. -0 \stopTextSpan
            \revert Script.padding

        }
    }
    | % 35
    \once \override TextScript.staff-padding = #9
    \once \override Staff.StringNumber.outside-staff-priority = #100
    fs= 8 \5 \fingeringShift #UP -1 _\markup { \italic "con grazia" }
    cs'=' \4-3
    \once \override Fingering.parent-alignment-X = #LEFT
    \once \override Fingering.self-alignment-X = #RIGHT
    g'=' -4
    cs,,= \6-1
    a'= -2
    g'=' -3

    | % 36
    \override NoteHead.extra-spacing-width = #'(0 . 0.5)
    d,= 8 -0
    a'= -1
    fs'='
    <ds,= -2 c'='> 4.
    \revert NoteHead.extra-spacing-width

    | % 37
    <e= \fingeringShift #DOWN _2 b'= _0> 4.
    \mergeDifferentlyDottedOn
    << {
        \stemDown
        \once \override Fingering.padding = #2.0
        a,=, 4. _0
    } \\ {
        \once \override Stem.length = #10.0
        g'= 4 _0
        s8
    } >>


    | % 38
    d,=, 8
    a'=,
    fs'= -2
    g 4. -4

    | % 39
    d,=, 8
    a'=,
    fs'= -2
    es 4 -1
    r8

    | % 40
    fs,=, 8 -3
    a=, -0
    <cs= -3> \glissando
    <d -3> 4
    r8


    | % 41
    fs,=, 8 -3
    a=,
    cs=
    d 4
    r8

    | % 42
    \barreBracket #4 #0
    fs,=, 8 -1
    cs'=
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.parent-alignment-X = #RIGHT
    \once \set glissandoMap = #'((0 . 0))
    <a'= _3 cs _2 > \glissando
    \once \override Fingering.parent-alignment-X = #RIGHT
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.padding = #1.0
    \once \override Score.FootnoteItem.annotation-line = ##f
    <gs= _3
    %\footnote "*" #'(0.0 . -6) \markup { \small \concat { "* B" \char ##x266F " or B" \char ##x266E ", manuscript is ambiguous." } }
    \footnote "*" #'(0.0 . -6) \markup { \small \concat { "* B" \super \sharp " or B" \super \natural ", manuscript is ambiguous." } }
      bs  _2
      > 4.

    | % 43
    \barreBracket #4 #0
    fs,=, 8
    cs'=
    <a'= cs>
    \once \override Score.FootnoteItem.annotation-line = ##f
    <gs=
    \footnote "*" #'(0.0 . -4) ""
    bs> 4
    r8

    | % 44
    <d= _1> 8 \glissando
    \once \override NoteColumn.glissando-skip = ##t
    gs -3
    \once \override NoteColumn.glissando-skip = ##t
    bs -2
    <cs,= _1>
    gs'= -2
    cs -3

    | % 45
    as,=, 8 \5 \fingeringShift #DOWN -1
    g'= -0
    \once \stringNumberTextSpanner #2 #UP ##t
    cs=' -2 \startTextSpan
    r4.

    | % 46
    b,=, 8 -1
    fs'= -3
    b -4 \stopTextSpan
    a,=, -0
    f'= -3
    b

    | % 47
    \once \glissToBelowNotes
    \once \override Glissando.bound-details.right.attach-dir = #LEFT
    \override Glissando.bound-details.right.padding = #0.25
    \override Glissando.Y-offset = #-1.4
%    \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
%    \override Glissando.minimum-length = #5.0
    \acciaccatura f,=, 8 -2 \glissando
    gs 8 -2
    e'= \5-3
    b'= -0
    r4.

    | % 48
    << {
        \voiceFour
        e,= 8 \rest
        \once\set stemLeftBeamCount = 1
        e= -2
        [a -3]
        c4
        g8 \rest
    } \\ {
        \once \override Dots.staff-position = #1
        a,=, 2.
    } >>

    | % 49
    << {
        \voiceFour
        g'= 4. \rest
        <b= _1 f'=' _3> 4
        s8
    } \\ {
        d,,=, 2.
    } >>

    | % 50
    << {
        \voiceFour
        g'= 8 \rest
        \once \set stemLeftBeamCount = 1
        e=
        [a]
        c4
        g8 \rest
    } \\ {
        \once \override Dots.staff-position = #1
        a,=, 2.
    } >>

    | % 51
    << {
        \voiceFour
        g'= 4. \rest
        <b= f'='> 4
        s8
    } \\ {
        d,,=, 2.
    } >>

    | % 52
    << {
        \voiceFour
        g'= 8 \rest
        \once \set stemLeftBeamCount = 1
        e=
        [a]
        c4
        g8 \rest
    } \\ {
        \once \override Dots.staff-position = #1
        a,=, 2.
    } >>

    | % 53
    g=, 4. -1
    r4.

    | % 54
    fs=, 4.
    r4.

    | % 55
    f=, 4.
    r4.

    | % 56
    e=, 4.
    s4.

    \bar "||" % 57
    \override DynamicLineSpanner.staff-padding = #10.0
    \override DynamicTextSpanner.font-size = #0
    \override DynamicText.font-size = #-1

    \set decrescendoSpanner = #'text
    \set decrescendoText = \markup { "ritardando" }
    d=, 8 \>
    a'=, -0
    fs'= -3
    <g _1 cs _3> 4.

    | % 58
    d,=, 8
    a'=,
    fs'=
    <g cs > 4.

    | % 59
    d,=, 8
    fs -1
    a -0
    \set decrescendoText = \markup { "e morendo" }
    d  -0 \>
    fs -1
    \override NoteHead.style = #'harmonic-mixed
    \once \barreSpannerText #"XII" #0
    \override TextSpanner.style = #'dashed-line
    \override TextSpanner.dash-fraction = #0.3
    \override TextSpanner.dash-period = #1.0
    \override TextSpanner.font-size = #-2   % combines with \fontSize #-1 in \barreSpannerText to give #-3
    \override TextScript.parent-alignment-X = #CENTER
    a= \5 \startTextSpan

    | % 60
    \override NoteSpacing.same-direction-correction = #0
    \once \override StringNumber.padding = #0.35
    d=' \4 \stopTextSpan
    \once \override TextScript.staff-padding = #3.0
    fs \6 ^\markup { \center-align \fontsize #-3 "IX" }
    \once \barreSpannerText #"VII" #0
    \override TextSpanner.style = #'dashed-line
    a \4 \startTextSpan
    d \3
    fs \2 \stopTextSpan

    %\textLengthOn
    \ottava #1
    \once \override Staff.OttavaBracket.staff-padding = #8.0
    \set Staff.ottavation = \markup { \medium \fontsize #-1 \concat { "ar. 8" \super "va" } }
    %\once \override Staff.OttavaBracket.outside-staff-priority = #1300
    a \2^2

    | % 61
    d=''' 4. \1^3
    \ottava #0
    %\override Script.outside-staff-priority = #440 % for fermata
    \barreBracket #0 #2
    \set fingeringOrientations = #'(right)
    \once \override StringNumber.staff-padding = #2.5

    <fs,,=' \6-1 a \4 d \3-4> 4. ^\fermata ^\markup { \center-align \fontsize #-3 \center-column { "VII" "IV" } }  \! _\pp

    | % 62
    \override NoteHead.style = #'harmonic
    \barreBracket #0 #0
    <d,= \6 d'=' \4> 2. ^\fermata ^\markup { \center-align \fontsize #-3 \center-column { "XII" } } _\ppp

    \bar "|."

}