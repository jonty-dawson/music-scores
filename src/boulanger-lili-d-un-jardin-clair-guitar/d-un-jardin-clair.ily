\version "2.22.2"



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

startAcciaccaturaMusic = {
<>(
\override Flag.stroke-style = #"grace"
\override Fingering.font-size = #-3
\override StringNumber.font-size = #-3
}
stopAcciaccaturaMusic = {
    \revert Flag.stroke-style
    \revert Fingering.font-size
    \revert StringNumber.font-size
<>)
}


upper =  \relative cs' {
    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up left right down)
    \override Fingering.direction = #UP


    | % 1
    r4  \p _\markup { \italic "léger" }
    <cs=' -4> 4 \<
    <e -0>

    | % 2
    <fs -4> 4 \>
    <b,= > 2 -0 \!

    | % 3
    r4
    cs=' \<
    <e > 8
    <gs -4> \glissando

    | % 4
    <fs=' -4> 4 \>
    b,=
    <gs'=' -4> \glissando \<

    | % 5
    <a=' -4> 4
    d,=' -2
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.X-offset = #-0.5
    \once \override Glissando.bound-details.left.padding = #1.5
    <b'=' \fingeringShift #UP -4> \glissando

    | % 6

    << {
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #-0.5
        <c='' -4> 4
        e,=' -0
        \once \override DynamicLineSpanner.staff-padding = #5
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #-0.5
        \once \override Glissando.bound-details.left.padding = #1.5
        <d'='' -4> \> \glissando
    } {
        s8
        s8 \!
        s2
    } >>

    | % 7
    \once \barreBracket #0 #-16
    \once \barreSpannerText #"IX" #0
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.X-offset = #-0.5
    <e='' -4> 4 \startTextSpan
    \restoreTextSpanner
    \once \override Staff.TextSpanner.outside-staff-priority = #2000
    \once \override Score.MetronomeMark.padding = #9
    \once \override TextSpanner.bound-details.left.text = \markup {\upright \bold \normalsize "rall. " }
    \once \override TextSpanner.after-line-breaking = #ly:spanner::kill-zero-spanned-time
    \once \override TextSpanner.to-barline = ##t
    a,=' -2 \stopTextSpan \startTextSpan
    \once \set glissandoMap = #'((0 . 3))
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.X-offset = #-0.5
    \once \override Glissando.bound-details.left.padding = #1.5
    <fs'='' -4 > \glissando

    | % 8
    \once \override Arpeggio.positions = #'(1 . 6)
    \once \override Arpeggio.padding = #-1.5
    \once \hide Slur
    \once \hide Stem
    \once \override NoteColumn.glissando-skip = ##t
    \grace \hide ds,=' 8 \arpeggio
    \once \barreBracket #-7 #0
    \once \override Arpeggio.padding = #0.2
    \once \override Fingering.add-stem-support = ##f
    <ds=' gs cs -2 gs'='' \tweak Fingering.X-offset #-0.5 -4> 4 \barreText #"XIII"
    << {
        s4
        \ottava #1
        <fs=' -1 b'='' -3> 4
        \ottava #0
    } \\ {
        \voiceThree
        \once \override NoteHead.style = #'harmonic-mixed
        \once \override TextScript.parent-alignment-X = #CENTER
        b=' 2 -1 ^\markup { \center-align \fontsize #-3 "XII" }

    } >>

    | % 9
    \once \override Score.MetronomeMark.padding = #9
    \tempo \markup { \upright \bold \normalsize "a tempo" }
    r4 \! \p  \stopTextSpan
    \barreBracket #0 #-8
    cs,=' 4 \barreText #"II"
    e 8 -0
    <gs -4> \glissando


    | % 10
    <fs=' -4> 4
    b,= 2 -0

    | % 11
    r4
    \barreBracket #0 #-8
    cs=' \barreText #"II" \<
    e 8
    <gs -4> \glissando


    | % 12
    \once \override Hairpin.shorten-pair = #'(2 . 0)
    <b=' -4> 2 \>
    fs 4 \2-4 \!



    | % 13

    \once \barreSpannerText #"VI" #0
    \once \override TextSpanner.extra-offset = #'(0 . -1)
    \once \override TextSpanner.style = #'dashed-line
    \once \override DynamicLineSpanner.staff-padding = #6
    \once \fingeringAboveHead
    <e=' ^0> 4 \mf \startTextSpan
    <cs='>
    <e>

    | % 14
    << {
        \once \fingeringAboveHead
        \once \override Staff.Fingering.script-priority = #-100
        \once \override Fingering.staff-padding = 0
        <b= ^0> 2. ->
    } {
        s4
        s8 \stopTextSpan
        s8
        s4
    } >>

    | % 15
    \tempo \markup { \upright \bold \normalsize "rit." }
    \once \barreSpannerText #"I" #0
    \once \override TextSpanner.extra-offset = #'(0 . -1)

    \once \override TextSpanner.style = #'dashed-line
    \once \override TextScript.outside-staff-priority = #0
    \once \override DynamicLineSpanner.staff-padding = #7

    <e > 4 \pp \startTextSpan _\markup { \italic "pont." }
    <cs>
    <e>

    | % 16
    << {
        \once \fingeringAboveHead
        \once \override Staff.Fingering.script-priority = #-100
        \once \override Fingering.staff-padding = 0
        \once \override Hairpin.shorten-pair = #'(2 . 0)
        \once \override DynamicLineSpanner.staff-padding = #7
        <b= ^0> 2. -> \>
    } {
        s4
        s8 \stopTextSpan
        s8
        s4 \!
    } >>

    | % 17
    \once \override Score.MetronomeMark.padding = #6.5
    \tempo \markup { \upright \bold \normalsize "a tempo" }
    \once \override DynamicLineSpanner.staff-padding = #3
    b'=' 4 \barreText #"VII" \mf
    a \barreText #" V "
    g~ \> \barreText #"III"

    | % 18
    g 4
    ef 2 \barreText #"IV"
\noBreak

    | % 19
    \once \override Score.MetronomeMark.padding = #6.5
    \tempo \markup {\upright \bold \normalsize "rit. " }

    \set tieWaitForNote = ##t
    \override TieColumn.tie-configuration = #'((-7 . 1) (-10 . -1))
    \override StrokeFinger.avoid-slur = #'outside
    \once \override StringNumber.X-offset = #-2.0
    \once \override StringNumber.padding = #'0.5
    \once \override StringNumber.staff-padding = #0
    \grace {
    <b,=, _\6 -3 ^\rightHandFinger 1> 8 ~ \! \p
    <a -0  ^\rightHandFinger 1> ~
    <gs'= -1 ^\rightHandFinger 2> ~
    <cs=' -2 ^\rightHandFinger 3> ~
    <b= -0  ^\rightHandFinger 4 > ~
    }

    \once \stemDown
    <b,=, a gs' cs=' b=> 2.


    \revert TieColumn.tie-configuration
    \unset tieWaitForNote

    | % 20
    r4
    <ds= _3 fs _1 b ^0> 2

    | % 21
    \once \override Score.MetronomeMark.padding = #6.5
    \tempo \markup { \upright \bold \normalsize "a tempo" }
    r4 \mf
    \once \set fingeringOrientations = #'(left)
    \once \barreBracket #0 #0
    \once \override Fingering.add-stem-support = ##f
    \once \override Arpeggio.padding = #-0.3
    <g= cs \tweak Fingering.padding #0.2 -2 e  b'='  -4> 4 \barreText #" V "
    \once \override Fingering.add-stem-support = ##f
    <e= \fingeringShift #DOWN _1 g \tweak Fingering.padding #0.3 -0 cs \tweak Fingering.padding #0 -2 g'=' \tweak Fingering.X-offset #-0.5  ^4> \> \barreText #"II"

    | % 22
    <g= b e> 2
    \once \fingeringChord
    \barreBracket #0 #0
    \once \override Arpeggio.padding = #'()
    <e b'= -4 cs> 4 \barreText #"II"

    | % 23
    <a= -3> 8 \! \pp
    b -0
    <cs -4> 4
    e -0

    | % 24
    a,= 8 \<
    b
    <cs > 4
    e

    | % 25
    <cs -3> 8
    <ds -4>
    <e -0> 4
    \once \set glissandoMap = #'((1 . 1) (2 . 2))
    <as,= ^2 ds=' ^3 gs ^4>~ \! \f \glissando

    | % 26
    \once \override NoteColumn.glissando-skip = ##t
    <as= ds=' gs> 4
    <cs=' fs=' ^3 b ^4> ->
    <as= ds=' gs > ~


    | % 27
    <as= ds=' gs> 4
    <fs= _3 as= _2 e'=' >
    <cs= _3 e= _1 as=> \>

%\pageBreak
    | % 28

    \set fingeringOrientations = #'(up left)
    \once \set glissandoMap = #'((3 . 3))
    <as'= _1 e'=' _2 gs _3 cs \fingeringShift #UP -4> ^( \glissando
    \once \set glissandoMap = #'((3 . 3))
    <gs _2 cs _3 e _1 as -4> \glissando
    \once \barreBracket #0 #0
    \once \override Arpeggio.padding = #'()
    \once \set fingeringOrientations = #'(up right)
    <e as -2 cs gs'=' -4> ) ^\barreText #"II"

    | % 29
    \once \barreSpannerText #"II" #0
    \once \barreBracket #3 #-8
    \once \override Arpeggio.padding = #'()
    cs'=' 8 \p \< \startTextSpan
    ds -3
    e 4 -4
    fs

    | % 30
    cs=' 8 \! \mf \<
    ds \stopTextSpan
    <e -0 > 4
    g!~ -4 \f

    | % 31
    g
    c! 2~ \pp

    | % 32
    \once \override Script.padding = #1.0
    \newSpacingSection
    \override Score.SpacingSpanner.shortest-duration-space = #2.5
    c 8 \fermata
    r8
    \newSpacingSection
    \revert Score.SpacingSpanner.shortest-duration-space
    \once \override Score.MetronomeMark.padding = #7.5
    \tempo \markup { \upright \bold \normalsize \column { "moins vite" "qu'au début" } }
    << {
        b=' 2
    } \\ {
        \voiceThree
        \mergeDifferentlyHeadedOn
        \once \barreSpannerText #"VII" #0
        \once \barreBracket #2 #-12
        \once \override Arpeggio.padding = #-0.3
        \once \override Fingering.padding = #0.5
        \once \override Fingering.Y-offset = #0.5
        \once \set fingeringOrientations = #'(right)
        <gs=' -3> 4 \startTextSpan
        fs \stopTextSpan
    } >>
%\break

    | % 33
    r4 \p
    \once \set glissandoMap = #'((2 . 0) (3 . 1))
    <e,= _2 a _3 cs ^1 cs'='' ^4> 4 \glissando ^\barreText #"VI"
    \once \set glissandoMap = #'((0 . 1) (1 . 2))
    <e'=' ^1 e'='' ^4> \glissando

    | % 34
    \revert Arpeggio.stencil
    \once \override Arpeggio.padding = #0.6
    \once \override Arpeggio.positions = #'(-2 . 6)
    \once \set fingeringOrientations = #'(right)
    <b= -0 fs'=' ^1 fs'='' ^4> \arpeggio
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    b'=' 2 -3 ^\markup { \center-align \fontsize #-3 "XII" }


    | % 35
    r4
    <
        \tweak NoteHead.style #'harmonic-mixed
        \tweak TextScript.parent-alignment-X #CENTER
        a,= -1
        cs'='' \2-3
        > 4 _\markup { \center-align \fontsize #-3 "XII" }
    <e''='' -1> 8
    \once \set glissandoMap = #'((0 . 1))
    <gs='' -4> \glissando

    | % 36
    \once \override DynamicLineSpanner.staff-padding = #8
    \revert Arpeggio.stencil
    \once \override Arpeggio.padding = #0.6
    \once \override Arpeggio.positions = #'(-2 . 6)
    \once \set fingeringOrientations = #'(right)
    <b,,= -0 fs''='' ^4> 4 \arpeggio \<
    << {
        \once \override NoteHead.style = #'harmonic-mixed
        \once \override TextScript.parent-alignment-X = #CENTER
        b'=' 2 -3 ^\markup { \center-align \fontsize #-3 "XII" }
    } \\ {
        \voiceThree
        b,= 4 \rest
        gs= 4 \3 \fingeringShift #DOWN -1
    } >>

    | % 37
    a= 4 -2
    d,=
    b'= -0

    | % 38
    \once \override Hairpin.shorten-pair = #'(2 . 0)
    \once \override DynamicLineSpanner.staff-padding = #8
    c=' 4 -1 \! \>
    f,=
    d'=' -4

    | % 39
    \once \override Score.MetronomeMark.padding = #5
    \tempo \markup {\upright \bold \normalsize "rall. " }
    e=' -0
    a,=
    \once \set glissandoMap = #'((0 . 3))
    <fs'=' -4> \glissando


    | % 40
    << {
        \once \override Arpeggio.positions = #'(-2 . 3)
        \once \override Arpeggio.padding = #-1.5
        \once \hide Slur
        \once \hide Stem
        \once \override NoteColumn.glissando-skip = ##t
        \grace \hide fs,= 8 \arpeggio
        \once \barreBracket #-4 #2
        \once \override Arpeggio.padding = #0.2
        \once \set glissandoMap = #'((3 . 0))
        <fs= ~ -\tweak Fingering.X-offset #-1 -\tweak Fingering.Y-offset #-1.2 -3 a cs gs'=' ~ -4> 4  \barreText #"II" \glissando
        \once \override NoteColumn.glissando-skip = ##t
        <fs= gs'=' >
        <b'=' ^4 fs=' ^3 >
    }
    \new Voice = "v3" {
        \voiceThree
        s4
        \once \override Fingering.parent-alignment-X = #RIGHT
        <b,= -0> 2
    } >>

    | % 41
    \once \override Score.MetronomeMark.padding = #5
    \tempo \markup { \upright \bold \normalsize "plus lent" }
    r4 \! \p
    \once \override DynamicLineSpanner.staff-padding = #8
    cs=' 4 \<
    e -0

    | % 42
    fs=' 4 -1
    b,= -0 -> \!
    \once \set glissandoMap = #'((0 . 1))
    <cs'='' -4> \pp \glissando

    | % 43
    \once \set glissandoMap = #'((1 . 3))
    \once \override Fingering.padding = #0.3
    <e,=' -1 b'=' -4> 4 \glissando
    \once \barreBracket #0 #0
    \once \override Arpeggio.padding = #'()
    \once \override Fingering.padding = #0.3
    <e,= b'= \tweak Fingering.Y-offset #-0.5 -3 cs gs'=' ^4> \barreText #"II"
    <gs _1 b _0 e ^0>

    | % 44
    <e= _2 gs _1 cs ^3> 4
    <cs _4 e _2 b'= ^0>
    <b _2 gs'= ^1>

    | % 45
    \once \override DynamicText.staff-padding = #8
    \once \override DynamicLineSpanner.staff-padding = #8
    r4
    \once \barreSpannerText #"V" #0
    \once \override TextSpanner.extra-offset = #'(0 . -1)
    \once \barreBracket #2 #-3
    \once \override DynamicText.staff-padding = #8
    \once \override DynamicText.parent-alignment-X = #RIGHT
    \once \override DynamicLineSpanner.staff-padding = #8
    \once \fingeringAboveHead
    f''=' -2 \startTextSpan \mp \<
    a

    | % 46
    \once \override Staff.Fingering.script-priority = #-100
    \once \fingeringAboveHead
    <b -4> -> \stopTextSpan
    e,=' -0 \!
    \once \set glissandoMap = #'((0 . 1))
    <d'='' -4> \pp \glissando

    | % 47
    \once \set glissandoMap = #'((1 . 3))
    <f,=' -1 c'='' -4> 4 \glissando
    \once \barreBracket #0 #0
    \once \override Arpeggio.padding = #-0.5
    \once \set fingeringOrientations = #'(up left)
    <f,= c'=' \tweak Fingering.padding #0 -3 d a'=' -4> \barreText #"III"
    \once \barreBracket #0 #7
    \once \override Arpeggio.padding = #'()
    <d= _0 a'= _2 c f> \barreText #" I "


    | % 48
    <c= _3 a'= _2 d ^4> 4
    <a=, _0 f'= _3 c'=' ^1>
    <f=, _1 d'= _0 a'= ^2>
%\break
    | % 49
    r4
    \once \barreSpannerText #"VIII" #0
    \once \override TextSpanner.style = #'dashed-line
    \once \override DynamicText.parent-alignment-X = #RIGHT % nudge to avoid laissez vibrer collision
    \once \override Staff.DynamicLineSpanner.padding = #4.5
    <a''=' -4> 4 \mf \< \startTextSpan
    <c -1>

    | % 50
    \once \override Staff.Fingering.script-priority = #-100
    \once \fingeringAboveHead
    <d='' -4> -> \stopTextSpan
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    g,=' \fingeringShift #UP -1 \! ^\markup { \center-align \fontsize #-3 "XII" }

    \set tieWaitForNote = ##t
    \grace {
        <f=' -2> 8 ~ \pp
        <a -1> ~
        <d -3> ~
        \once \override NoteHead.no-ledgers = ##t
        <a'='' -4> ~
    }

    \once \set glissandoMap = #'((3 . 2) (0 . 0) )
    \once \set fingeringOrientations = #'(up left down)
    <f,=' -2 a d a'='' -\tweak Fingering.transparent ##t -\tweak Fingering.X-offset #-1 -4> 4 \glissando
    \unset tieWaitForNote
\noBreak

    | % 51
    \once \set fingeringOrientations = #'(up left down)
    %\once \override Fingering.staff-padding = #2
    \once \set glissandoMap = #'((2 . 2))
    <e=' _2 c'='' _1 g'='' ^4> 4 \glissando
    <g=' \tweak Fingering.parent-alignment-X #RIGHT _3 a \tweak Fingering.parent-alignment-X #LEFT _1 e'='' ^4>
    \once \override StringNumber.staff-padding = #0
    \once \set glissandoMap = #'((2 . 2))
    <a,= _\5-2 g'=' c ^\2-4> \glissando

    | % 52
    \once \set glissandoMap = #'((2 . 2))
    <g _0 e'=' _0 a ^4 > 4 \glissando
    <e _1 a _2 g'=' ^4>
    <c= _\6-3 g'= a e'=' ^0>

    | % 53
    r4
    \once \override DynamicText.parent-alignment-X = #RIGHT
    cs'!=' \3-1 \p
    e -0

    | % 54
    <fs -4> 4 ->
    b,= -0
    \once \set glissandoMap = #'((3 . 2))
    \override Script.padding = #0.5 % staccato
    <cs=' _2 fs _3 a=' _1 e'='' ^4> 4 -. \glissando

    | % 55
    \tempo \markup { \upright \bold \normalsize "    rall. jusqu'à la fin" }
    \once \set glissandoMap = #'((2 . 2))
    <e=' \tweak Fingering.parent-alignment-X #RIGHT _3 fs \tweak Fingering.parent-alignment-X #LEFT _1 cs'='' ^4> -.  \glissando
    \once \set glissandoMap = #'((0 . 0) (2 . 2))
    <fs,= _1 e'=' _3 a ^4> -. \glissando
    <e _1 cs'=' _3 fs ^4> -.

    | % 56
    <cs= _3 a'= _1 e'=' ^0> 4 -.
    <a=, _0 fs'= _3 cs'=' ^1> -.
    <fs=, _1 e'= _2 a ^3> -.
    \revert Script.padding

    | % 57
    r4
    \override StrokeFinger.avoid-slur = #'outside
    \set strokeFingerOrientations = #'(down)
    \once \fingeringChord
    % default is
    %\override Score.MetronomeMark.outside-staff-priority = #1300
    \once \override Score.MetronomeMark.padding = #8.0
    \tempo \markup { \upright \bold \normalsize "très ralenti" }

    \once \barreSpannerText #"XI" #0
    % see https://lilypond.org/doc/v2.24/Documentation/notation/default-values-for-outside_002dstaff_002dpriority
    % \once \override Staff.TextSpanner.outside-staff-priority = #2000
    \once \override TextSpanner.style = #'dashed-line
    \once \override Fingering.extra-offset = #'(1.5 . -5.0)
    \once \override StrokeFinger.extra-offset = #'(1.0 . 0.0)

    \acciaccatura <
        b'= -0 -\tweak StrokeFinger.parent-alignment-X #RIGHT -\rightHandFinger 3
        cs=' -1 -\tweak StrokeFinger.parent-alignment-X #LEFT -\rightHandFinger 1
        e -0 -\tweak StrokeFinger.parent-alignment-X #RIGHT -\rightHandFinger 4
        > 8 \startTextSpan
    \once \fingeringAboveHead
    \override Fingering.script-priority = #-100 % keep below tenuto mark (Staff.Script)
    \once \override Script.avoid-slur = #'outside
    \once \override Script.padding = #2 % tenuto
    \once \override Fingering.avoid-slur = #'inside
    \once \override Script.padding = #1.5 % tenuto
    \once \override StrokeFinger.parent-alignment-X = #RIGHT
    <gs'=' -3 _\rightHandFinger 2  -- > 4  \pp
    \once \fingeringAboveLeftHead
    \override Script.padding = #0.5 % tenuto
    <b=' -2 -- > 4

    | % 58
    \once \fingeringAboveLeftHead
    <cs -4 --> 4 \!
    \revert Script.padding
    \once \fingeringAboveLeftHead
    fs,=' 2 -> -2 ~ _\markup { \italic "en dehors, mais doux" }

    | % 59
    fs 4
    \once \fingeringAboveLeftHead
    gs 2~ -> -3
    \revert Fingering.script-priority


    | % 60
    gs 4 \stopTextSpan
    \once \barreSpannerText #"II" #0
    \once \barreBracket #0 #0
    \once \override Arpeggio.padding = #-0.3
    \once \fingeringChord
    <e,= b'= -3 cs gs'=' -4> 2~ ->  \startTextSpan

    | % 61
    <e= b'= cs gs'='> 4 \ppp
    <e= b'= cs gs'='> 2~

    | % 62
    <e= b'= cs gs'='> 4
    <e= b'= cs gs'='> 2~

    | % 63
    <e= b'= cs gs'='> 2. \stopTextSpan

    \bar "|."
}

lower =  \relative b, {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    | % 1
    <b=, -2 e -1 a -3> 2.

    | % 2
    \once \override Fingering.Y-offset = #-0.3
    <b=, ds -1 a'= > 2.

    | % 3
    <b=, e a> 2.

    | % 4
    <b=, ds= a'=> 2.

    | % 5
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.X-offset = #0.5
    <b=, _1 d=  g= > 2
    r4

    | % 6
    <c= -2 a'= -1 b -0> 2
    r4

    | % 7
    <cs!= b'= e> 2
    r4

    | % 8
    \acciaccatura a=, 8
    <a=, > 2.

    | % 9
    << {
        \voiceFour
        \set fingeringOrientations = #'(left)
        s4
        <b=, e a> 4
        <cs= -3 a'= b> 4

        | % 10
        \once \override Fingering.padding = #0.5
        \once \override Fingering.Y-offset = #-0.3
        <ds= -1 a'= > 2.
    } {
        e,=, 2.~

        | % 10
        e 2
        <b'=, -2> 4
    } >>

    | % 11
    << {
        \voiceFour
        s4
        <b=, e a> 4
        <cs= a'= b>
    } {
        e,=, 2.
    } >>

    | % 12
    << \new Voice = "v4" {
        \voiceFour
        \set fingeringOrientations = #'(left)
        \once \override Fingering.padding = #0.5
        \once \override Fingering.Y-offset = #-0.3
        <ds'= -1 a'= > 2
        s4
    } {
        r4
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #0.5
        <b=, _2> 4
        e,=,
    } >>



    | % 13
    << {
        \voiceFour
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #0.5
        <gs'= _1 cs=' _2>4
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #0.5
        <e= _3 a= _4>
        <gs cs='>
    } {
        s2.
    } >>

    | % 14
    << {
        \voiceFour
        \set fingeringOrientations = #'(left)
        \once \override Fingering.padding = #0.5
        \once \override Fingering.Y-offset = #-0.3
        <ds= -1 a'= > 2
        \once \override StringNumber.staff-padding = #0
        \once \override Fingering.extra-offset = #'(0.2 . -1.5)
        <fs= ^\5 -4> 4
    } \\ {
        \once \override Rest.staff-position = #-12
        r4
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #0.5
        <b,=, _2> 4
        e,=,
    } >>

    | % 15
    << {
        \voiceFour
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #0.5
        <gs'= \fingeringShift #DOWN  _1 cs=' _4 > 4
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #0.5
        <e= _2 a= _3>
        <gs cs=' >
    } {
        s2.
    } >>

    | % 16
    << {
        \voiceFour
        r4
        \once \fingeringChord
        \once \glissToBelowNotes
        \once \override Glissando.bound-details.right.attach-dir = #LEFT
        \once \override Glissando.bound-details.right.padding = #0.4
        <b,=, -3> 4 \glissando _\markup { \italic "ord." }
        \once \override StringNumber.staff-padding = #0
        <fs'= ^\5> 4
    } \\ {
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.X-offset = #0.5
        \once \override Fingering.padding = #0.5
        <ds= _1 gs= _2> 2
        e,=, 4
    } >>

    | % 17
    \once \barreBracket #2 #2
    \override Fingering.padding = #0.3
    <b''= -3 d g -2> 4
    \once \barreBracket #2 #2
    <a -3 c f -2>
    \once \barreBracket #2 #2
    <g -3 bf ef -2>~
    \revert Fingering.padding

    | % 18
    <g bf ef> 4
    \once \barreBracket #3 #4
    \once \set fingeringOrientations = #'(right)
    \once \override Fingering.padding = #0.3
    <ef= -3 g -2 b> 2

    | % 19
    s2.

    | % 20
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    b'= 2. -3 _\markup { \center-align \fontsize #-3 "VII" }

    | % 21
    a,=, 2.

    | % 22
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.X-offset = #0.5
    cs= 2 -3
    a 4

    | % 23
    <fs=, -1 e'= \tweak Fingering.extra-offset #'(0 . -0.7) -2 a=> 2
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.X-offset = #0.5
    <gs=, _2 b'= _3> 4

    | % 24
    <fs=, e'= a=> 2
    \once \override Fingering.add-stem-support = ##f
    <a=, \tweak Fingering.X-offset #0.5 _0 gs'= -2 cs > 4

    | % 25
    \once \override Fingering.add-stem-support = ##f
    \once \override Fingering.X-offset = #0.5
    <as=, _1> 4
    r4
    \once \set glissandoMap = #'((0 . 0))
    <e'= _1 > 4~ \glissando

    | % 26
    \once \override NoteColumn.glissando-skip = ##t
    <e= > 4
    \once \set glissandoMap = #'((0 . 0))
    \barreBracket #3 #0
    \once \set glissandoMap = #'((0 . 0))
    <gs= _1 > \glissando
    <e= _1  > 4~

    | % 27
    <e=  > 4
    s2

    | % 28
    s2.

    | % 29
    <b=, e a!=> 2
    \once \set fingeringOrientations = #'(right)
    <b b'= -3 ds -4> 4

    | % 30
    <b=, e a!=> 4
    r4
    \once \override Fingering.add-stem-support = ##f
    <e= \tweak Fingering.X-offset #0.5 _2 g! -0 c! \tweak Fingering.padding #0.3 -1> 4~

    | % 31
    <e= g c> 4
    \once \barreSpannerText #"VIII" #0
    \once \override TextSpanner.extra-offset = #'(0 . -1)
    \once \barreBracket #3 #0
    \once \override Arpeggio.padding = #-0.3
    \once \override Fingering.padding = #0.0
    <bf'= e \tweak Fingering.Y-offset #-0.3 -2 g!> 2~ \startTextSpan

    | % 32
    \once \override Script.padding = #1.0
    <bf e g > 8 \fermata \stopTextSpan
    r8
    <b,=, a'=> 2

    | % 33
    e,=, 2.

    | % 34

    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    <e'= -2> 2 _\markup { \center-align \fontsize #-3 "XII" }
    <b=, \6-1 > 4

    | % 35
    e,=, 2.

    | % 36
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.parent-alignment-X = #CENTER
    e'= 2. -2 _\markup { \center-align \fontsize #-3 "XII" }

    | % 37
    \acciaccatura e,=, 8
    <e=, a d> 2.

    | % 38
    \acciaccatura e=, 8
    <e=, f'= a> 2.

    | % 39
    \acciaccatura e=, 8
    <e=, a'= -2 cs! > 2.

    | % 40
    \acciaccatura e=, 8
    <e=, > 2.


    | % 41
    << {
        \voiceTwo
        e=, 2.~

        | % 42
        e8 \laissezVibrer
        s8
        s4
        \once \set glissandoMap = #'((0 . 0) (1 . 1))
        <b''= _2 e=' _3> 4 \glissando
    }
    \new Voice = "v4" {
        \voiceFour
        s4
        <b= ^3 cs ^1> 2~

        | % 42
        <b cs> 4
        s2
    }
    >>


    | % 43
    <gs= _2 cs=' _3> 4
    s2

    | % 44
    s2.

    | % 45
    << {
        \voiceTwo
        e,=, 2.~

        | % 46
        e8 \laissezVibrer
        s8
        s4
        \once \set glissandoMap = #'((0 . 0) (1 . 1))
        <c''=' _2 f _3 > 4 \glissando

    }
    \new Voice = "v4" {
        \voiceFour
        s4
        <a= _3 c f> 2~

        | % 46
        <a c f> 4
        s2
    }
    >>

    | % 47
    <a= _2 d=' _3 > 4
    s2

    | % 48
    s2.

    | % 49
    << {
        \voiceTwo
        e,=, 2. ->  \laissezVibrer

        | % 50
        s2.

    } \\ {
        \voiceFour
        s4
        <c''=' _3 e _2 a> 2~
        | % 50
        <c e a> 4
        s2
    }
    >>

    | % 51
    s2.

    | % 52
    s2.

    | % 53
    << {
        \voiceTwo
        e,,=, 2. \laissezVibrer

        | % 54
        s2.

    }  {
        \voiceFour
        s4
        \once \override Fingering.Y-offset = #-0.7
        \once \override Fingering.padding = #0.5
        <e'= -2 a= cs> 2~
        | % 54
        <b e a cs> 4
        s2
    }
    >>


    | % 55
    s2.

    | % 56
    s2.

    | % 57
    e,=, 2.~

    | % 58
    << {
        e 2.

        | % 59
        e 2.

        | % 60
        \once \override NoteHead.style = #'harmonic-mixed
        \once \override TextScript.parent-alignment-X = #CENTER
        \once \override Fingering.add-stem-support = ##f
        \once \override Fingering.padding = #0.5
        \once \override Fingering.Y-offset = #-0.7
        <e'= -2> 2.  _\markup { \center-align \fontsize #-3 "XII" }

    }
    \new Voice = "LowerInner" {
        \voiceFour
        \override Script.padding = #1.0 % tenuto
        s4
        cs'=' 4 -> -1
        b 4~ -0 \<

        | % 59
        b 4
        cs -1 ->
        b -0 ~
        \revert Script.padding

        | % 60
        b 4
        s2 \!
    } >>

    | % 61
    e,,=, 2.

    | % 62
    e 2.

    | % 63
    e 2.

    \bar "|."

}