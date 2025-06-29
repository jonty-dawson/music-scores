\version "2.22.2"

closeTies = {
    \override Tie.details.note-head-gap = #'-0.1
    \override Tie.details.stem-gap = #'0.1
}

upper =  \relative e' {

    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up left right down)
    \override Fingering.direction = #UP

    \override TupletBracket.bracket-visibility = ##t

    % \once \override TextScript.padding = #7

    \override TupletBracket.bracket-visibility = ##t
    \override Rest #'staff-position = #4

    % shorten by in staff units for 1, 2, 3 beams
    \override Beam.beamed-stem-shorten = #'(0.0 0.0 0.0)
    % shorten by in staff units for 0, 1, 2 flags
    \override Stem.details.stem-shorten = #'(0.0 0.0 0.0)

    \override Stem.details.beamed-lengths = #'(3.5 3.5 3.5)

    \repeat volta 2 {
        | % 1
        e=' 8.
        \shape #'(
            (-0.1 . 0.1) (0.1 . 0.2) (0.5 . 0.2) (0.5 . -0.2)
        ) Tie
        e 16~
        e 8
        cs

        e=' 4.
        a 8

        | % 2
        gs 8
        fs 16
        \shape #'(
            (-0.1 . 0.1) (0.1 . 0.2) (0.5 . 0.2) (0.5 . -0.2)
        ) Tie
        e ~
        \shape #'(
            (-0.1 . 0.3) (0.0 . 0.3) (0.4 . 0.3) (0.5 . 0.3)
        ) Tie
        e 4 ~
        e 4.
        cs 16 (
        d )

        | % 3
        e=' 8.
        \shape #'(
            (-0.1 . 0.1) (0.1 . 0.2) (0.5 . 0.2) (0.5 . -0.2)
        ) Tie
        e 16~
        e 8
        cs

        e 4.
        fs 8

        | % 4
        b,= 8
        cs 16
        \shape #'(
            (-0.1 . 0.6) (0.1 . 0.7) (0.5 . 0.7) (0.5 . 0.3)
        ) Tie
        d ~
        \shape #'(
            (-0.1 . 1.0) (0.0 . 1.1) (0.8 . 1.1) (0.9 . 1.0)
        ) Tie
        d 4 ~
        d2

        | % 5
        \once \override TextSpanner.outside-staff-priority = #'()
        \once \barreSpannerText "II" #6
        r4 \< \startTextSpan
        fs=' 8
        <a -4> \glissando \stopTextSpan
        <b -4> 4 \!
        %\once \fingeringAboveLeftHead
        %\once \glissToBelowNotes
        %\override Glissando.bound-details.right.attach-dir = #LEFT
        \override Glissando.bound-details.right.padding = #0.65
        \once \override Glissando.to-fingerings = ##f
        \once \override Glissando.thickness = #2
        \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
        \override Glissando.minimum-length = #3.2
        \slashedGrace b 8 \glissando % ^\markup { \italic "gliss." }
        cs 8   -.
        %\once \fingeringAboveLeftHead

        \shape #'(
            ((0 . 0.0) (0 . 0.3) (1.0 . 0.3) (1.0 . 0.0))
            ((1 . 0.0) (1 . -0.2) (0 . -0.2) (0 . 0.0))
        ) Tie
        \once \override Fingering.self-alignment-X = 1
        \once \override Fingering.add-stem-support = ##f
        a~ -1

        | % 6
        a=' 4
        \once \fingeringChord
        \once \override Fingering.padding = #0.2
        <g -4 a  > 8 -> \>
        \once \fingeringChord
        \once \override Fingering.padding = #0.2

        <fs -4> ~
        fs 2 \!

        | % 7
        \once \barreSpannerText "III" #0
        r4 \startTextSpan
        d=' 4 \stopTextSpan
        g 8
        fs
        d 4 -3 ~

        | % 8
        d=' 4
        <d e > 8 ->
        \shape #'(
            (-0.1 . 0.2) (-0.1 . 0.3) (0.3 . 0.3) (0.3 . 0.2)
        ) Tie
        d~
        \once \override NoteHead.extra-spacing-width = #'(0 . 1.0)
        d 4
        s4
    }

    | % 9
    e=' 4 _\markup { \italic "tenderly" }
    e
    e
    fs 8
    d~ -3

    | % 10
    d=' 4
    s2
    b 8 -0
    d -3

    | % 11
    e=' 4
    e
    e
    fs 8
    g ~ --

    | % 12
    g=' 8
    fs
    e
    \shape #'(
        (-0.1 . 0.3) (-0.1 . 0.3) (0.3 . 0.3) (0.3 . 0.3)
    ) Tie
    d~ -4
    d 4
    fs=' 8
    \shape #'(
        (0.0 . 0.3) (0.0 . 0.3) (0.4 . 0.3) (0.4 . 0.3)
    ) Tie
    e ~

    | % 13
    e 4
    \shape #'(
        (0.0 . 0.3) (0.0 . 0.2) (0.4 . 0.2) (0.4 . 0.3)
    ) Tie
    e 4~ ->
    e
    r4

    | % 14
    e=' 4
    e
    e 4
    fs 8 -2
    d~ -4

    | % 15
    d2
    r4
    c8
    d

    | % 16
    e=' 4 -0
    e
    \once \override DynamicLineSpanner.staff-padding = #5.5
    e \<
    f8 -1
    g~ -4 -> \!

    | % 17
    \once \barreSpannerText #"I" #0
    \once \override Staff.Arpeggio.padding = #-0.4
    \once \barreBracket #-1 #-15
    g=' 8 \startTextSpan
    f \stopTextSpan
    e -0
    \shape #'(
        (0.1 . 0.0) (0.1 . 0.0) (0.0 . 0.0) (0.0 . 0.0)
    ) Tie
    \once \override DynamicLineSpanner.staff-padding = #5.5
    d~ -4 \>
    \once \barreSpannerText #"I" #0
    \once \barreBracket #2 #-9
    d 4 \startTextSpan
    f 8 \stopTextSpan
    \shape #'(
        (-0.1 . 0.3) (-0.1 . 0.3) (0.3 . 0.3) (0.3 . 0.3)
    ) Tie
    e~

    | % 18
    e=' 4 \!
    c
    \once \barreSpannerText #"III" #0
    \once \barreBracket #2 #-9
    bf 4 \startTextSpan
    d 8
    f \stopTextSpan

    | % 19
    e=' 4
    \once \override Score.MetronomeMark.padding = #3.5
    \tempo "poco rit."
    b= 8
    c
    d 2

    \bar "||" % 20
    \once \override Score.MetronomeMark.padding = #3.5
    \tempo "a tempo"
    e=' 8. _\markup { \italic "bouyant" }
    \shape #'(
        (-0.1 . 0.1) (0.1 . 0.2) (0.5 . 0.2) (0.5 . -0.2)
    ) Tie
    e 16~
    e 8
    cs

    e 4.
    a 8

    | % 21
    gs 8
    fs 16
    \shape #'(
        (-0.1 . 0.1) (0.1 . 0.2) (0.5 . 0.2) (0.5 . -0.2)
    ) Tie
    e ~
    e 4
    b= 4.
    cs 16 (
    d )

    | % 22
    e=' 8.
    \shape #'(
        (-0.1 . 0.1) (0.1 . 0.2) (0.5 . 0.2) (0.5 . -0.2)
    ) Tie
    e 16~
    e 8
    \once \override Fingering.padding = 0
    \once \override Fingering.extra-offset = #'(-0.7 . -0.4)
    \once \override Glissando.Y-offset = -0.0
    \once \override Glissando.bound-details.left.attach-dir = #CENTER
    \once \override Glissando.bound-details.left.padding = #0.0
    \once \override Glissando.bound-details.right.attach-dir = #CENTER
    \once \override Glissando.bound-details.right.padding = #0.7
    \override Glissando.minimum-length = #2.0
    \once \override Fingering.staff-padding = #'()
    <cs _2> \glissando

    \once \fingeringChord
    \once \override Fingering.padding = 0.2
    <d -2 e> 4.
    fs 8

    | % 23
    b,= 8
    cs 16
    \shape #'(
        (-0.1 . 0.6) (0.1 . 0.7) (0.5 . 0.7) (0.5 . 0.3)
    ) Tie
    d ~
    d 4
    g,=  2

    | % 24
    a'=' 8 \rest \<
    a,= -2
    e'=' 8
    a=' \fingeringShift #UP -3
    <b -4> 4 \glissando  \!
    %\once \glissToBelowNotes
    %\slashedGrace c 8 \glissando
    %\once \override NoteHead.extra-spacing-width = #'(-1 . 0)
    <cs -4>  8  ->
    a~ -1

    | % 25
    a=' 4
    <g=' a> 8
    \shape #'(
        (-0.2 . 0.0) (-0.2 . 0.0) (0.0 . 0.0) (0.0 . 0.0)
    ) Tie
    fs~ -4
    fs 2

    | % 26
    \once \barreSpannerText #"III" #0
    r4 \startTextSpan
    <b,= d='> 4 \stopTextSpan
    g'=' 8 -4 ->
    fs -2
    d 4 -3 ~

    | % 27
    d=' 4
    <d e > 8
    \shape #'(
        (-0.1 . 0.6) (0.1 . 0.7) (0.3 . 0.7) (0.3 . 0.3)
    ) Tie
    d~
    \once \override Score.MetronomeMark.padding = #3.5
    \tempo "rall."
    d4
    s8
    \once \override Score.MetronomeMark.padding = #3.2
    \tempo "a tempo"
    s8

    | % 28
    \once \barreSpannerText #"II" #0
    r4 \< \startTextSpan
    fs=' 8
    a \stopTextSpan
    \once \barreBracket #0 #-3
    b 4 \! \fingeringShift #UP -1
    cs 8 -3
    d=''~ -4 ->

    | % 29
    \once \barreBracket #-1 #-4
    d='' 4
    \slashedGrace c 8 (
    cs 8 -. ) \>
    a~
    \tempo "rit."
    \once \override TextSpanner.outside-staff-priority = #'()
    \once \barreSpannerText #"VII" #4.5
    a 4 \startTextSpan
    cs='' 8 \rest

    \once \override NoteHead.style = #'harmonic-mixed
    <> ^\markup { \medium \fontsize #-1 \center-align \concat { "ar. 8" \super "va" } }
    b=' \stopTextSpan \fermata \!

    | % 30
    \once \override Score.MetronomeMark.padding = #4.6
    \tempo "freely"
    r4
    \once \fingeringAboveHead
    d,=' 8 -4
    \shape #'(
        (0.0 . 0.3) (-0.1 . 0.3) (0.3 . 0.4) (0.3 . 0.5)
    ) LaissezVibrerTie
    e=' -> \laissezVibrer
    b= 16 \rest \<
    e,= 32 -2
    a= -3
    d=' -4
    e=' -0
    \shape #'(
        (-0.1 . -0.2) (-0.1 . -0.2) (0.0 . -0.2) (0.0 . -0.2)
    ) Tie
    g=' 16~ -4 -> \>

    g16
    f 32 -1
    %\once \override NoteHead.extra-spacing-width = #'(0 . 1.5)
    d
    a (
    g )
    fs= (
    d= ) \!

    | % 31
    r4
    \once \override Score.MetronomeMark.padding = #4.5
    \tempo "rall."
    b'= 8
    \shape #'(
        (-0.1 . 0.6) (0.1 . 0.7) (0.3 . 0.7) (0.3 . 0.3)
    ) Tie
    d~ \> ^\markup { \italic "vib." }
    d 4
    s4 \!

    \once \override BreathingSign.text = \markup {
        \translate #'(0.155 . 0)
        \musicglyph #"scripts.caesura.straight"
    }

    \once \override BreathingSign.extra-spacing-width = #'(-1.5 . 0)

    %\once \override BreathingSign.space-alist.staff-bar = #'(minimum-space . 4.0)
    \breathe
    \revert BreathingSign.text

    | % 32
    \once \override Score.MetronomeMark.padding = #4.6
    \tempo "a tempo"
    r4
    d=' 4
    g=' -.
    fs 8
    d -.


    | % 33
    c=' 4 --
    e 8 -.
    \shape #'(
        (-0.1 . 0.6) (0.1 . 0.7) (0.3 . 0.7) (0.3 . 0.3)
    ) Tie
    d~
    d 8
    e=' 16 ^(
    fs~ )
    fs 4  ^\fermata

    \bar "|."

}


lowerInner =  \relative g {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0

    \override Rest #'staff-position = #-2

    \override Beam.beamed-stem-shorten = #'(1.0 1.0 0.0)
    \override Stem.details.stem-shorten = #'(0.25 0.25 0.0)
    \override Stem.details.beamed-lengths = #'(3.5 3.5 3.5)

    \voiceFour

    \repeat volta 2 {
        | % 1
        s2
        s2

        | % 2
        s2
        s2

        | % 3
        s2
        s2

        | % 4
        s2
        s2

        | % 5
        g= 8 \rest
        \once \override NoteHead.extra-spacing-width = #'(0.0 . 1.0)
        \shape #'(
            (0.0 . 0.0) (0.0 . -0.1) (0.1 . -0.1) (0.1 . 0.0)
        ) Tie
        a= ~
        <a cs='> 4

        <d,= b'=> 2

        | % 6
        <g= b=> 4
        d'=' -3
        r 8
        \once \fingeringChord
        \once \override Fingering.padding = 0.2
        \once \override Fingering.extra-offset = #'(0.0 . -0.5)
        <a= -2>
        s4

        | % 7
        g= 8 \rest
        \once \override NoteHead.extra-spacing-width = #'(0.0 . 1.0)
        \shape #'(
            (0.0 . 0.2) (0.0 . 0.2) (0.1 . 0.2) (0.1 . 0.2)
        ) Tie
        fs= ~
        <fs b=> 4
        b= 4
        \shape #'(
            (0.0 . 0.0) (-0.1 . 0.0) (0.0 . -0.2) (0.2 . -0.2)
        ) LaissezVibrerTie
        g= \laissezVibrer

        | % 8
        d= 8 (
        \once \override NoteHead.extra-spacing-width = #'(-0.5 . 0.0)
        e= )
        g= 4 ~ \>
        g
        \once \barreBracket #0 #0
        \once \override Arpeggio.padding = -0.5
        <a= cs fs='> \!

    }

    | % 9
    s2
    s2

    | % 10
    g= 8 \rest
    \shape #'(
        (0.1 . 0.5) (0.1 . 0.5) (0.2 . 0.5) (0.2 . 0.5)
    ) Tie
    fs= ~

    % see https://lilypond.org/doc/v2.25/Documentation/snippets/staff-notation-_002d-shape-individual-ties-in-chords
    <
        fs -\shape #'((-0.1 . -0.5) (-0.1 . -0.5) (0.7 . -0.5) (0.7 . -0.5)) _~
        g= ^~
        d'=' ^~
        > 4
    \once \override TieColumn.positioning-done = ##t
    <fs g= d'='>
    s4

    | % 11
    s2
    s2


    | % 12
    s2
    g= 8 \rest
    \shape #'(
        (0.0 . 0.0) (0.0 . 0.0) (0.2 . 0.0) (0.2 . 0.0)
    ) Tie
    a~
    <a= d=' ~> 4

    | % 13
    d=' 4
    cs 16 ( ->
    b )
    a 8 ~
    a4
    s4

    | % 14
    s2
    s2

    | % 15
    r8
    \shape #'(
        (0.0 . 0.2) (0.0 . 0.2) (0.2 . 0.2) (0.2 . 0.2)
    ) Tie
    f= ~
    <f a d> 4
    r8
    e= ~
    <e g > 4


    | % 16
    s2
    s2

    | % 17
    c'=' 4
    s4
    r8
    \shape #'(
        (-0.05 . 0.05) (-0.1 . -0.0) (0.0 . -0.2) (0.2 . -0.2)
    ) Tie
    a=~
    a4

    | % 18
    r8
    e=~
    <e g> 4
    e= 8 \rest
    \shape #'(
        (0.0 . 0.2) (0.0 . 0.1) (0.2 . 0.1) (0.2 . 0.2)
    ) Tie
    f=~
    <f bf> 4

    | % 19
    e= 8 \rest
    e=~
    <e g=> 4
    a
    g

    | % 20
    s2
    s2

    | % 21
    s2
    a= 4
    \once \override NoteHead.extra-spacing-width = #'(-0.5 . 5.0)
    gs=

    | % 22
    <g= b=> 2
    \once \override Fingering.padding = 0.2
    %\once \override NoteColumn.force-hshift = 1
    \once \override NoteHead.extra-spacing-width = #'(0.0 . 4)
    <fs= a=> 4.
    r8


    | % 23
    \once \override Fingering.Y-offset = -0.5
    \once \override Fingering.padding = 0.4
    <fs= -4> 4.
    g 8
    fs= 4
    \once \override NoteHead.extra-spacing-width = #'(-1.5 . 1.0)
    e=

    | % 24
    s2
    <g= b=> 2


    | % 25
    <b= cs='> 4
    d=' \>
    r8
    \once \override NoteHead.extra-spacing-width = #'(0.0 . 1.0)
    a= -2 ~
    <a= d=' e=' fs='> 4 \!


    | % 26
    g= 8 \rest
    \slashedGrace <f= bf=> 8 (
    <fs= -\shape #'(
        (0.0 . 0.3) (0.0 . 0.1) (0.1 . 0.0) (0.2 . 0.1)
    ) _~
    b=> 8  )
    fs 4
    <a= d='> 4
    g= 8 -0
    \once \override Tie.details.stem-gap = 1.2
    \shape #'(
        (-0.2 . -0.2) (-0.3 . -0.2) (-0.1 . -0.4) (0.0 . -0.4)
    ) Tie
    fs= -4 ~

    | % 27
    \once \override NoteHead.extra-spacing-width = #'(-1.5 . 0)
    fs= 8
    e= ~
    <e g=> 4

    %\tweak font-size -2
    \once \override Rest.extra-offset = #'(0.0 . 0.2)
    r8
    a= -. _\markup { \dynamic p\italic "sub." }
    \once \barreBracket #0 #0
    \once \override Arpeggio.padding = -0.3
    \once \override NoteHead.extra-spacing-width = #'(0.0 . 2.0)
    <as= d=' g='> 8
    r8 \mf

    | % 28
    r8.
    e= 16 ~
    <e= as= cs='> 4
    s2

    | % 29
    <e'=' g='> 4.
    b= 8 \rest
    s2
    %b= 8 \rest
    %a= 8~
    %<a ds=' fs='> 4

    | % 30
    g= 8 \rest
    \once \override Fingering.add-stem-support = ##f
    fs= -2
    s4
    s2

    | % 31
    r8
    \shape #'(
        (0.0 . 0.1) (0.0 . 0.1) (0.1 . 0.1) (0.1 . 0.1)
    ) Tie
    e= ~
    <e g> 4
    s4
    \revert Arpeggio.stencil
    \once \override Staff.Arpeggio.padding = #0.3
    <a= cs=' fs> 4 \arpeggio


    | % 32
    r8
    \shape #'(
        (0.1 . 0.5) (0.1 . 0.5) (0.0 . 0.5) (0.0 . 0.5)
    ) Tie
    fs= ~
    <fs g=> 4
    s2

    | % 33
    %\once \override NoteColumn.X-offset = 1
    %\tweak font-size -3
    %e= 8 \rest
    s8
    \once \override NoteColumn.X-offset = 0.5
    \shape #'(
        (-0.1 . 0.3) (-0.1 . 0.1) (0.1 . 0.0) (0.2 . 0.1)
    ) Tie
    e= 8 ~
    e 4
    s2

    \bar "|."
}




lower =  \relative a, {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0

    \override Rest #'staff-position = #-6

    \override Beam.beamed-stem-shorten = #'(0.5 0.5 0.0)
    \override Stem.details.stem-shorten = #'(0.5 0.25 0.0)
    \override Stem.details.beamed-lengths = #'(3.5 3.5 3.5)


    \repeat volta 2 {
        | % 1
        a=, 2
        fs=, 2

        | % 2
        e=, 2.
        a=, 4 \rest

        | % 3
        a=, 2
        fs=,

        | % 4
        <b=, a'=> 2
        <e,=, gs'=> 2

        | % 5
        \once \barreBracket #14 #0
        fs=, 2
        \once \fingeringChord
        \once \override Beam.beamed-stem-shorten = #'(0.0 0.0 0.0)
        \shape #'(
            (-0.2 . 0.0) (-0.3 . 0.0) (-0.2 . -0.2) (-0.1 . -0.2)
        ) LaissezVibrerTie
        <g=, -1> 8 \laissezVibrer
        g'= 8~
        g 4


        | % 6
        <e,=, d'=> 2
        \once \override Fingering.add-stem-support = ##f
        b'=, 4 _1
        \once \override Fingering.padding = #'()
        <e,=, gs'= -1 d'='> 4

        | % 7
        \once \barreBracket #11 #0
        g=, 2
        <e d'=>

        | % 8
        \once \override Fingering.add-stem-support = ##f
        c'= 2 -2
        d 2

    }

    | % 9
    \once \fingeringChord
    \once \override Fingering.padding = 0.2
    <c= -2 g'= b> 2.
    r4

    | % 10
    b=, 2.
    r4

    | % 11
    <c= g'= b> 2
    <b'= d='> 4
    r4

    | % 12
    <e,,=, g'= b> 2
    b'=, 2

    | % 13
    a=, 2.
    r4

    | % 14
    <b=, fs'= d'='> 2.
    r4

    | % 15
    bf=, 2
    a 2

    | % 16
    \once \override Fingering.padding = 0.3
    <gs=, -2 fs'= -\tweak Fingering.extra-offset #'(0.0 . -0.5) -3 b= -0> 4.
    e=, 8
    \once \set fingeringOrientations = #'(right)
    \once \override Fingering.padding = 0.3
    <c'= -2 bf'= -3> 4.
    r8

    | % 17
    <f,=, a'=> 2
    bf=, 2

    | % 18
    a=, 2
    g

    | % 19
    a=, 2
    bf

    | % 20
    <a=, gs'= cs='> 2
    <fs=, a'= cs='> 4.
    r8

    | % 21
    \shape #'(
        (-0.2 . -0.2) (-0.3 . -0.2) (0.1 . -0.4) (0.3 . -0.4)
    ) LaissezVibrerTie
    <e=, \laissezVibrer b''=> 2
    e'=

    | % 22
    a,=, 2.
    a=, 4

    | % 23
    \once \override Fingering.add-stem-support = ##f
    g=, 2 -2
    c=  2

    | % 24
    <b=,  d= > 4
    b'=
    <c,= -1>  8
    \shape #'(
        (-0.1 . 0.2) (-0.1 . 0.2) (0.1 . 0.2) (0.1 . 0.2)
    ) Tie
    d= ~
    d4

    | % 25
    <e,=, d'= > 2
    \once \override Fingering.add-stem-support = ##f
    b'=, 2 -1

    | % 26
    \once \barreBracket #11 #0
    g=, 2
    \revert Arpeggio.stencil
    \once \override Staff.Arpeggio.padding = #0.3
    \once \override Arpeggio.positions = #'(-5.5 . 2.5)
    e \arpeggio

    | % 27
    \once \override Fingering.add-stem-support = ##f

    %\once \override Accidental.font-size = #-2
    %\once \override Accidental.Y-offset = #-0.75
    c'= 2 -2
    d= 4.
    a=, 8


    | % 28
    \once \barreBracket #14 #0
    fs=, 2
%    \revert Arpeggio.stencil
%    \once \override Staff.Arpeggio.padding = #0.3
%    \once \override Arpeggio.positions = #'(-5.5 . 3.5)
    <e=, g'= fs'='> 2

    | % 29
    a=, 2
    \set tieWaitForNote = ##t
    b=, 8 ~
    % \shiftOn
    \once \override NoteHead.extra-spacing-width = #'(0.0 . -0.5)
    a'= ~
    \once \override NoteHead.extra-spacing-width = #'(0.0 . 1.0)
    <
    ds=' -\shape #'(
        (-0.2 . 0.0) (-0.2 . 0.0) (0.1 . 0.0) (0.1 . 0.0)
    )
    _~
    fs=' -\shape #'(
        (-0.2 . 0.0) (-0.2 . 0.0) (0.1 . 0.0) (0.1 . 0.0)
    )
    _~
    >
    \once \override TieColumn.positioning-done = ##t

    <b,=, a'= ds=' fs='> \fermata

    \unset tieWaitForNote

    | % 30
    \once \override Fingering.add-stem-support = ##f
    g=, 4 -1
    <g f'=  bf=>
    \once \override Fingering.add-stem-support = ##f
    fs=, 4 -1
    <e=, d'= g= b>

    | % 31
    a=, 2
    d 2

    | % 32
    b=, 2
    <c= b'=> 4 -.
    <b=, a'=> -.

    | % 33
    <a=, g'=> 2
    d= 16 \( _\markup  { \italic "l.v."}
    a'=
    d=' 8~
    d 4   \)





    \bar "|."
}