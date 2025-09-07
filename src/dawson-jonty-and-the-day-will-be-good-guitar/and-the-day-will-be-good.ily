\version "2.22.2"


upper =  \relative g {

    \set fingeringOrientations = #'(up left)
    \set strokeFingerOrientations = #'(up left right down)
    \override Fingering.direction = #UP

    \override TupletBracket.bracket-visibility = ##t
    \override Rest #'staff-position = #2


    | % 1
    r8
    g= _\laissezVibrer
    b _\laissezVibrer
    \shape #'(
        (0.0 . 0.3) (0.0 . 0.4) (0.7 . 0.4) (0.7 . 0.3)
    ) Tie
    e~
    e 4
    r4

    | % 2
    r8 _\markup { \italic "l.v. simile"}
    gs,=
    b
    \shape #'(
        (0.0 . 0.3) (0.0 . 0.4) (0.7 . 0.4) (0.7 . 0.3)
    ) Tie
    e~
    e2

    | % 3
    r8
    \once \fingeringChord
    \once \override Staff.TextScript.X-offset = #'0.5
    <gs,= b cs e='> 4. _\markup { \tiny \center-align "(VI)" }
    \once \override NoteHead.extra-spacing-width = #'(-3 . 5)
    <g= c d='> 4.
    b= 8

    | % 4

    \once \barreBracketOffset #-1.8
    \once \barreBracket #0 #-2
    <e,= a cs> 4. \barreText "II"
    \once \barreBracketOffset #-2.6
    \once \barreBracket #0 #-6
    <fs= b ds> 8~ \barreText "VI"
    <fs= b ds> 4.
    r8

    \break

    | % 5
    r8
    <e=  g=>
    <g=  b=>
    %\shape #'((0 . 0.5) (0 . 3.5) (0 . 3.5) (0 . 0.5)) Tie
    \once \override Tie.details.note-head-gap = #'-0.1
    \once \override Tie.details.stem-gap = #'0.2
    <b= e=' >~
    \once \override TieColumn.tie-configuration = #'(() (4.5 . 1))
    <b  e> 4
    g'='

    | % 6
    gs=' 8 -4
    b,= -0
    e=' -0
    a,=~ -1
    a 4
    r4

    | % 7
    r8
    <gs= b cs e='> 4.
    \once \override NoteHead.extra-spacing-width = #'(-3 . 5)
    <g= b d='> 4.
    b= 8

    | % 8
    \set tieWaitForNote = ##t
    \once \barreSpannerText "II" #0
    \once \barreBracketOffset #-1.8
    \once \barreBracket #3 #-8
    cs=' 4. \startTextSpan
    ds 8 _~
    ds 8 ~
    fs ~
    fs 4 ~

    | % 9
    <ds=' fs='> 2 \stopTextSpan
    r4
    \unset tieWaitForNote

    b= 4

    \override Rest #'staff-position = #6
    \bar "||" % 10
    %\break
    \once \override Score.RehearsalMark #'break-visibility = #'#(#f #t #t)
    \mark \markup { \musicglyph #"scripts.segno" }

    \once \override TextScript.staff-padding = #5.0
    e=' 2
    e 4
    fs 8
    g~

    | % 11
    % _\markup { \italic "laissez vibrer simile"}
    g=' 2
    fs 4
    d 8
    b ~

    | % 12
    b= 2
    c 8
    d 4
    \shape #'((0 . 0.5) (0 . 1.0) (1 . 1.0) (1 . 0.5)) Tie
    e 8~

    | % 13
    e=' 1

    | % 14
    r4
    d=' 4 -4
    c -2
    a 8 -3
    d~

    | % 15
    d=' 1

    | % 16
    r4
    c='
    d
    a= 8
    b~

    | % 17
    b= 2
    r4 \!
    g 4

    | % 18
    e'=' 2
    e 4
    fs 8
    g ~

    | % 19
    g=' 4.
    fs 8
    d 4
    a8
    b~

    | % 20
    b= 4
    d 8
    f~
    f 4
    g 8
    \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie
    e~


    | % 21
    e=' 2.
    r4

    | % 22
    r4
    fs=' 8
    fs
    e 4
    \once \barreBracketOffset #-1.8
    \once \barreBracket #3 #-12
    \once \barreSpannerText "II" #4
    \once \override TextSpanner.outside-staff-priority = #'()
    cs 8 \startTextSpan
    fs~

    | % 23
    fs=' 2.
    \afterGrace r4
    <>  \stopTextSpan

    | % 24
    \once \fingeringAboveHead
    g=' 4 -3
    fs
    d
    b 8
    \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie
    e=' ~


    | % 25
    e=' 2.
    d=' 8 \rest
    g,=

    | % 26
    <c=' e> 4
    <c=' e> 8
    <d fs> 8 ~
    <d fs> 4
    <g -4> \glissando


    | % 27
    \once \barreBracketOffset #-2.2
    \once \barreBracket #0 -12
    \once \barreSpannerText "III" #0
    <a=' -4> 4 \startTextSpan
    g 8 \stopTextSpan
    d ~ \fingeringShift #DOWN -2
    d 4
    d

    | % 28
    c=' 4
    c 8
    g'=' ~
    g 4
    fs 8
    e ~


    | % 29
    e=' 2
    s2

    | % 30
    \once \override Hairpin.to-barline = ##f
    <c=' e> 4 \<
    \once \set glissandoMap = #'((1 . 0))
    \once \fingeringAboveHead
    <d ^4 fs ^3> \glissando
    %\once \barreBracketOffset #-2.8
    \once \barreBracket #-2 -11
    \once \barreSpannerText "III" #6
    <gs=' -3> \startTextSpan
    \once \set glissandoMap = #'((0 . 2))
    \once \override Glissando.bound-details.left.padding = #1.0
%    \once \override Glissando.bound-details.right.attach-dir = #1
    <a -4> \stopTextSpan  \glissando

    \bar "||" % 31
    \key e \major
    \once \override TextScript.staff-padding = #5.0
    <> _\markup { \italic soaring }
    <cs,=' e=' b'=' -4> 4. \!
    b'=' 8
    b=' 4
    gs 8 -1
    a -2

    | % 32
    \once \barreBracketOffset #-1
    \once \barreBracket #0 -9
    \once \barreSpannerText "IV" #0
    <b,= ds=' b'='> 4. \startTextSpan
    b'=' 8_~
    b
    a (
    gs )
    fs ~ -4 \stopTextSpan


    | % 33
    fs=' 4.
    e 8~ -0
    e2

    | % 34
    s2
    s4
    gs=' 8
    a

    | % 35
    \once \barreBracketOffset #-1
    \once \barreBracket #0 #-16
    \once \override TextSpanner.outside-staff-priority = #'()
    \once \barreSpannerText "IV" #5
    b=' 4. \startTextSpan
    b 8
    b 4
    gs 8
    a

    | % 36
    b=' 4.
    b 8
    a 4
    gs 8
    cs,=' ~  \stopTextSpan


    | % 37
    \shape #'(
        (0.0 . 0.0) (0.0 . 0.7) (0.0 . 0.7) (0.0 . 0.0)
    ) Tie
    cs=' 2~
    cs 4
    r8
    cs 8

    | % 38
    s2.
    a'=' 8
    b

    | % 39
    cs 4 -4
    cs 8
    cs~
    cs
    b 4 -3
    ds 8~ \fingeringShift #UP -4


    | % 40
    \once \barreSpannerText "VII" #0
    \once \barreBracket #-2 #-5
    ds='' 8 \startTextSpan
    b 4.
    b 4 \rest
    gs 8 -3
    a -4

    | % 41
    \once \barreBracket #0 #0
    <fs=' b='> 4
    b=' 8 \stopTextSpan
    a~ \fingeringShift #DOWN -1
    a
    gs=' 4  \fingeringShift #DOWN ^1
    e=' 8~ -0


    | % 42
    e=' 2
    b'='4 \rest
    fs=' 8
    gs

    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.X-offset = #1.5
    \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
    \mark \markup { \right-align \line { \vcenter \normalsize \bold "To Coda" \musicglyph #"scripts.coda"} }

    \bar "||" % 43
    a=' 4 \barreText "II"
    a 8
    gs
    r8
    fs 4. \barreText "II"

    | % 44
    s2
    s4
    \once \override BreathingSign.text = \markup {
        \musicglyph #"scripts.caesura.straight"
    }
    \breathe
    \tempo "slower" % 4 = 72
    gs=' 8 (
    a )

    | % 45
    \once \override TextSpanner.outside-staff-priority = #'()
    \once \barreSpannerText "IV" #5
    b=' 4 \startTextSpan _\markup { \italic "evening sun" }
    b 8
    b ~
    b 4
    gs 8
    a

    | % 46
    b 4.
    b 8~
    b
    a (
    gs ) \stopTextSpan
    fs ~ -4

    | % 47
    fs=' 4.
    e 8~
    e2

    | % 48
    s2.
    gs=' 8
    a

    | % 49
    b=' 4.
    b 8 ~
    b 4
    gs 8
    a

    | % 50
    b=' 8
    b 4
    b 8
    <a -2> 4   \glissando
    <gs -2> 8
    \shape #'(
        (0.0 . 0.3) (0.0 . 0.3) (0.0 . 0.3) (0.0 . 0.3)
    ) Tie
    e ~ -0

    | % 51
    e=' 4
    s2.

    | % 52
    s2.
    a=' 8 -1
    b -3

    | % 53
    cs='' 4 -4
    cs 8
    cs ~
    cs
    b -2
    <cs -4> \glissando
    \once \override NoteHead.extra-spacing-width = #'(-1 . 0)
    <ds -4> ~

    | % 54
    ds='' 8
    b=' 8~ -1
    b 4
    r8
    gs 8 -4
    \once \barreSpannerText "IV" #0
    \once \override Arpeggio.extra-spacing-width = #'(-0.5 . 0)
    \once \barreBracket #0 #-3
    gs \startTextSpan \fingeringShift #DOWN -1
    a \stopTextSpan -3

    | % 55
    b=' 4. -4
    b  8
    a 4 \fingeringShift #DOWN -4
    gs 8 -2
    \shape #'(
        (0.0 . 0.3) (0.0 . 0.3) (0.0 . 0.3) (0.0 . 0.3)
    ) Tie

    e~ -0

    | % 56
    e=' 2
    r4
    fs 8
    gs

    | % 57
    a=' 4 \barreText "II"
    a 8
    gs
    r8
    fs 4. ~ \barreText "II"

    | % 58
    fs 4
    s4
    s2

    | % 59
    \once \override Fingering.padding = #1.5
    gs=' 16 ( -4
    fs ) -1
    e 8~
    e 4
    r4
    <cs=' >

    | % 60
    <ds=' -4> 4.
    \once \barreSpannerText "II" #0
    ds 8 ~ \startTextSpan
    ds
    fs
    ds
    \shape #'(
        (0.0 . 1.0) (0.0 . 1.0) (0.0 . 1.0) (0.0 . 1.0)
    ) Tie

    ds~ \stopTextSpan

    | % 61
    ds=' 4.
    e 8~
    e 4.
    b 8 -0

    | % 62
    cs=' 4. -3
    cs 8~
    cs 4
    e8
    ds~

    | % 63
    ds 4
    r4
    r4
    r8
    cs \fingeringShift #UP -4

    | % 64
    \once \barreBracket #0 #-11
    \once \barreSpannerText "IV" #0
    ds=' 4.  \startTextSpan
    ds 8~
    ds 8
    fs
    ds 4

    | % 65
    <fs,= b ds> 8 (
    <gs= e'='> )
    r8
    <gs= b= e='> 8~
    <gs= b= e='> 4 \stopTextSpan
    b=

    | % 66
    c=' 4. \fingeringShift #DOWN -1
    c8
    e4
    g=' 4~

    | % 67
    g=' 4.
    fs 8~
    fs4
    gs 8
    a

    | % 68
    \once \barreBracket #0 #-16
    \once \barreSpannerText "IV" #0
    b=' 2~  \startTextSpan
    b 8
    a
    gs
    fs~ \stopTextSpan

    | % 69
    fs 4.
    e 8~
    e 4
    e
\break
    | % 70
    b'=' 2~ -> -4
    b8
    \once \glissToBelowNotes
    a -1 \glissando
    gs
    fs~ -4

    | % 71
    fs=' 8
    \once \glissToBelowNotes
    fs \glissando
    gs
    e~ -0
    e 4
    fs 8 (
    gs )


    | % 72
    a 4
    a8
    gs~
    gs 4
    fs=' 4

    | % 73
    d=' 4 \rest
    <a= cs=' e='> 4~
    <a= cs=' e='> 8
    b= (
    cs )
    e

    | % 74
    % extra spacing to prevent text collisions
    \newSpacingSection
    \override Score.SpacingSpanner.spacing-increment = 1.8

    gs=' 8 (
    fs )
    e 4
    \bar "!"
    \tempo \markup { \column {"tempo" "primo"} }
    d=' 4 \rest
    b=

    \set Staff.printKeyCancellation = ##t



    \key c \major
    % todo upgrade to >= 2.23 and use \textEndMark
    \once \override TextScript.parent-alignment-X = #CENTER
    %\once \override TextScript.outside-staff-priority = #'()
    \grace s8  ^\markup { \right-align  \bold { \right-column {"D.S. al" "Coda" }}}
    \revert TextScript.staff-padding
    \newSpacingSection
    \revert Score.SpacingSpanner.spacing-increment

    \bar "||" % 75
    \break
    \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
   % \once \set Staff.explicitKeySignatureVisibility = #all-invisible
   % \once \override Staff.KeySignature.break-visibility = #all-invisible
    \key e \major

    %\unset Staff.explicitKeySignatureVisibility

    % https://lsr.di.unimi.it/LSR/Snippet?id=1098

    \pseudoIndent \markuplist {  \vcenter \fontsize #3 \musicglyph #"scripts.coda" } 3
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.outside-staff-padding = #2
    \mark \markup { \smallCaps "Coda" }

    a'=' 4
    a 8
    gs ~
    gs 4
    fs~

    | % 76
    fs='
    r4
    e=' 4 -> -4
    c=' 4

    | % 77
    ds=' 4 ->
    r8
    cs 8~ ->
    cs
    d
    \tuplet 3/2 { e fs gs }

    | % 78
    a=' 2. ->
    a 4

    | % 79
    gs=' 4
    e 4
    fs 2~ \>

    | % 80
    \tempo slower
    fs=' 8 \!
    r8
    e
    d~ -4
    d 4.
    c 8

    | % 81
    b= 4. -0
    \shape #'((0 . 1.0) (0 . 1.0) (0.5 . 1.0) (0.5 . 1.0)) Tie
    b 8~
    \once \override Hairpin.to-barline = ##f
    b \<
    b
    e='
    g='~ -4


    | % 82
    g=' 8 \!
    b,=
    e
    fs~
    fs
    \tempo "rit."
    b,=
    e
    <fs -4> \glissando

    | % 83
    \tuplet 3/2 {
        <gs=' -4>
        fs
        \shape #'((0 . 0) (0 . 0) (0.2 . 0) (0.2 . 0)) Tie
        e 8~
    }
    \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie
    e4 ~
    e2

    \bar "|."

}


lowerInner =  \relative d {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams



    \override Rest #'staff-position = #0
    \voiceFour

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
    s2
    s2

    | % 6
    s2
    s2

    | % 7
    s2
    s2

    | % 8
    \set tieWaitForNote = ##t
    fs= 8 \rest
    \once \override NoteHead.extra-spacing-width = #'(-1.8 . 0)
    fs= ~
    as= ~
    ds
    s2

    | % 9
    %\once \override NoteColumn.force-hshift = #0.0
    <fs,= as= > 2
    \unset tieWaitForNote
    s2

    | % 10
    g= 4 \rest
    \once \override NoteHead.extra-spacing-width = #'(-1.8 . 0)
    g= 8
    c
    e 4
    s4

    | % 11
    r4
    a,= 8
    c
    fs=' 4
    s4

    | % 12
    e,= 4 \rest
    f!= 8
    a
    c
    s8
    s4

    | % 13
    g= 4 \rest
    \once \override NoteHead.extra-spacing-width = #'(-1.8 . 0)
    g= 8
    b -.
    r8
    c (
        b
    )
    g


    | % 14
    g= 8 \rest
    \once \override NoteHead.extra-spacing-width = #'(-1.8 . 0)
    e= 8~ -3
    e 4
    s2

    | % 15
    g= 4 \rest
    f= 8 \(
    a
    e'='
    d
    a
    f \)

    | % 16
    g= 8 \rest
    e= 8
    g 4
    s2

    | % 17
    e= 4 \rest
    f= 8
    a
    c (
        b
    )
    s4

    | % 18
    g= 4 \rest
    b= 8
    g
    s2

    | % 19
    r8
    c=' 8
    e,=  4
    s2


    | % 20
    e= 8 \rest
    \once \override NoteHead.extra-spacing-width = #'(-0.7 . 0)
    g= 4.
    g 8 \rest
    \once \override NoteHead.extra-spacing-width = #'(-1 . 0)
    g= 4.

    | % 21
    g= 8 \rest
    g 8
    d'='
    b ~
    b
    g
    s4

    | % 22
    r8
    g= 8
    b 4
    s2

    | % 23
    r8
    \once \override NoteHead.extra-spacing-width = #'(-1.8 . 0)
    e,= 8
    <as ^2 cs ^1> (
        <b ^3 ds ^4>
    )
    r8
    <b ds> (
        <as cs> 8
    )
    e


    | % 24
    r8
    \once \override NoteHead.extra-spacing-width = #'(-1.5 . 0)
    g= 8
    d'=' 4
    b=
    <f g >

    | % 25
    g= 8 \rest
    d'=' 8 (
        b
    )
    g ~
    g
    e
    s4

    | % 26
    e= 8 \rest
    g 4.
    g= 8 \rest
    g 4.

    | % 27
    s2
    g= 8 \rest
    a= 4
    g 8 _0

    | % 28
    e= 8 \rest
    e= 8
    g 4
    g= 8 \rest
    g= 8
    \shape #'((1.1 . -0.3) (1.5 . -0.3) (0 . 0.0) (0 . 0.0)) Tie
    d'=' 4 ~

    | % 29
    d=' 8
    g,=
    c='
    \shape #'((0 . 0.7) (0 . 0.6) (0.2 . 0.6) (0.2 . 0.7)) Tie
    b= ~
    b a
    b
    g=


    | % 30
    g= 8 \rest
    g= 4.
    % not sure how to spell chord - Cm7(b13)/E, Emaj7(#5,#11)? Instead could be with d# as C+#9 / E
    % went with Cm7(b13)/E as we has Cm13 in bar 27
    <c,= bf'= ef> 2

    | % 31
    e= 8 \rest
    fs= \laissezVibrer
    cs'=' \laissezVibrer
    e \laissezVibrer
    s4
    s4

    | % 32
    \once \override TextScript.staff-padding = #6.0
    e,= 8 \rest _\markup { \italic "l.v. sim."}
    fs= 8
    b=
    ds='
    s2

    | % 33
    r8
    gs,= 8 \4_2
    cs _3
    b= _0
    s2

    | % 34
    r8
    gs= 8
    c
    b=
    e4
    r4

    | % 35
    r8
    fs,=
    ds'='
    b'='
    s2


    | % 36
    \once \override NoteColumn.force-hshift = #0.0
    ds,=' 8 ^(
    e )
    b 4
    s2

    | % 37
    e,= 8 \rest
    gs= \4
    cs='
    <b= e='>
    s2

    | % 38
    r8
    g= -2
    c=' -3
    d -1
    e 4 -0
    r4

    | % 39
    r8
    <fs=' _3> 4.
    s2

    | % 40
    s2
    s2

    | % 41
    g,= 2
    r8
    \once \override Fingering.add-stem-support = ##f
    <b= c=' > 4. _2_0

    | % 42
    g= 8 \rest
    fs= _2
    b=  4 _3
    s2

    | % 43
    s2
    s2

    | % 44
    r8
    \once \override Staff.TextScript.X-offset = #'0.5
    gs= \laissezVibrer  _\markup { \tiny \center-align "(VI)" }
    cs=' \laissezVibrer
    fs=' \laissezVibrer
    e='  4 ^\fermata
    s4


    | % 45
    s2
    s2

    | % 46
    d=' 8 \rest
    cs=' 8
    e
    b'='
    s2

    | % 47
    r8
    gs,=
    cs
    b=
    s2

    | % 48
    r8
    g=
    c
    d
    e=' 4
    r4

    | % 49
    r8
    gs,=
    fs'='
    b='
    s2

    | % 50
    s2
    s2

    | % 51
    g,= 8 \rest
    gs= 8 \4
    <b  cs  e='> 8 (
    gs'=') -1
    e 2

    | % 52
    g,= 8 \rest
    g= 8 \4
    <b=  c  e='> 8 (
    g'=' )
    e 4
    r4


    | % 53
    d=' 8 \rest
    fs=' 4. -2
    f 4.
    fs=' 8 \rest

    | % 54
    s2
    s2

    | % 55
    s2
    c=' 2

    | % 56
    g= 8 \rest
    \once \override Fingering.add-stem-support = ##f
    fs= -3
    \once \override Fingering.add-stem-support = ##f
    b= 4 -0
    s2

    | % 57
    s2
    s2

    | % 58
    s2
    s2

    | % 59
    s2
    s2

    | % 60
    g= 8 \rest
    f=
    bf
    ds
    s4
    a= 4

    | % 61
    g= 8 \rest
    fs=
    a
    e'='
    g,= 8 \rest
    fs -4
    as
    s8

    | % 62
    e= 8 \rest
    e= 8
    gs
    cs='
    s2

    | % 63
    g= 8 \rest
    d= 8
    a'=
    b ~
    b 4
    s4

    | % 64
    g= 8 \rest
    fs=
    b
    ds
    s2

    | % 65
    s2
    s2

    | % 66
    e,= 8 \rest
    e= 8
    g
    c
    s2

    | % 67
    r8
    a=
    c
    fs='
    s2

    | % 68
    r8
    fs,=
    b
    ds='
    s2

    | % 69
    r8
    gs,=
    cs='
    b=
    s2

    | % 70
    \once \override NoteColumn.force-hshift = #0.0
    <gs= fs'='> 2
    <d= cs'=' fs='>

    | % 71
    <gs= cs> 4
    g \rest
    s2

    | % 72
    s2
    s2

    | % 73
    s2
    s2

    | % 74
    s2
    s2

    | % 75
    s2
    s2

    | % 76
    s2
    s2

    | % 77
    s2
    s2

    | % 78
    s2
    s2

    | % 79
    s2
    s2

    | % 80
    r8
    g=
    e'='
    d
    s8
    d,=
    g=
    c='

    | % 81
    s2
    s8
    <e,= g> 8
    <g b> 4


    | % 82
    s8
    <e= a=> 8
    <a= b=> 4
    r8
    <e= a=> 8
    <a cs> 4

    | % 83
    s2
    s2

    \bar "|."
}




lower =  \relative c {

    \set fingeringOrientations = #'(left)
    \set stringNumberOrientations = #'(down)
    \set strokeFingerOrientations = #'(right)
    \stringStaffPadding #0
    \override StringNumber.padding = #0.5
    \override Script.padding = #0.5 % give staccato marks more space under beams

    \override Rest #'staff-position = #-6

    | % 1
    c= 2.
    r8
    c8

    | % 2
    cs= 2.
    b 4

    | % 3
    a=, 2.
    a 4

    | % 4
    b=, 4
    e,=, 8
    \once \override NoteHead.extra-spacing-width = #'(-2 . 0)
    gs=, 8 ~
    gs 4.
    r8

    | % 5
    c= 2~
    c 4.
    a=, 8

    | % 6
    cs= 2.
    b 4

    | % 7
    a=, 2.
    a 4

    | % 8
    b=, 1 ~

    | % 9
    b=,  8
    e,=,
    e 4
    e 8
    e 4
    e 8

    | % 10
    a=, 1

    | % 11
    d= 1

    | % 12
    g,=, 1

    | % 13
    c= 1

    | % 14
    f,=, 1

    | % 15
    bf=, 1

    | % 16
    a=, 2
    fs=,

    | % 17
    g=, 1

    | % 18
    c= 2
    r4
    <b=, d'='> 4

    | % 19
    a=, 2
    r8
    c 4.

    | % 20
    g=, 2
    b 2

    | % 21
    c= 2.
    c 8 (
    a )

    | % 22
    cs= 2.
    r4


    | % 23
    fs,=, 1


    | % 24
    e=, 1

    | % 25
    c'= 2.
    b 4

    | % 26
    a=, 2
    b 2

    | % 27
    <c= bf'= ef='> 4 .
    r8
    \once \barreBracketOffset #-2.6
    \once \barreBracket #6 #0
    \once \fingeringBelowHead
    b=, 2

    | % 28
    a=, 2
    \once \override Fingering.add-stem-support = ##f
    b -1

    | % 29
    \once \override Fingering.add-stem-support = ##f
    c= 2 -2
    \once \override Fingering.add-stem-support = ##f
    cs _3

    | % 30
    d= 2
    b,=,, 8 \rest
    e=, 8 ~
    e 4

    | % 31
    <a=, -0> 1

    | % 32
    gs=, 1

    | % 33
    a=, 1

    | % 34
    a=, 1

    | % 35
    gs=, 1

    | % 36
    cs= 1

    | % 37
    a=, 1

    | % 38
    a=, 1

    | % 39
    \once \override Fingering.add-stem-support = ##f
    gs=, 2 -1
    <cs= f'=' > 4.
    r8

    | % 40
    <e,=, g'= fs'=' > 2
    \once \barreBracketOffset #-1.8
    \once \barreBracket #0 #0
    <b'=, a'= d='> 2

    | % 41
    a=, 1


    | % 42
    \once \override Fingering.add-stem-support = ##f
    gs=,   2 -1
    <cs= b'= d=' > 4
    r4

    | % 43
    \once \barreBracket #5 #0
    <fs,=, cs''='> 4
    r8
    <e=, b''=> 8
    r8
    \once \barreBracket #5 #0
    <b'=, a'=> 4.

    | % 44
    a=, 2~
    a 4 \fermata
    r4


    | % 45
    \revert Arpeggio.stencil
    \once \override Staff.Arpeggio.padding = #0.3
    \once \override Arpeggio.positions = #'(-4.5 . 3.5)
    <gs=, b'= ds='>  4 \arpeggio
    r4
    <cs= b'= e='> 4
    r4

    | % 46
    fs= 2
    <c'=' ef> 4.
    b= 8 \rest

    | % 47
    a,=, 1

    | % 48
    a=, 1

    | % 49
    e=, 2
    \once \override Staff.Arpeggio.padding = #0.3
    <ds'= cs'=' fs> 4 \arpeggio
    r4

    | % 50
    r4
    <d= c'=' f='> 4~
    <d= c'=' f='>
    <cs= b'= > 4

    | % 51
    a=, 1

    | % 52
    a=, 1

    | % 53
    \once \override Fingering.add-stem-support = ##f
    ds=  2 -1
    <d= g=>

    | % 54
    \once \override Fingering.add-stem-support = ##f
    <fs= _2 e'=' _3> 2 \glissando
    \once \override Fingering.add-stem-support = ##f
    <f= _2 ef'=' _3> 4
    <d= c'=' ef='>

    | % 55
    g= 4 \rest
    <a,=,  cs'=' e> 4
    a=, 8 \rest
    fs'= 8~ -1
    fs= 4


    | % 56
    \once \override Fingering.add-stem-support = ##f
    gs,=, 2 -2
    <g=, f'= b= > 4
    r4

    | % 57
    \once \barreBracket #5 #0
    <fs=, e'= cs'='> 4
    r8
    <e=, b''=> 8
    r8
    \once \barreBracket #5 #0
    <b'=, a'=> 4. ~

    | % 58
    <b=, a'=> 4
    r4

    \once \barreBracket #0 #0
    \once \override Arpeggio.extra-spacing-width = #'(-1 . 0)

    <g=, f'= c'='> 8 ^\barreText "III"
    \once \override Arpeggio.extra-spacing-width = #'(-1 . 0)
    \once \barreBracket #2 #0
    \once \barreSpannerText "II" #0
    <fs e'= a=> \startTextSpan
    <b=,  a'=  cs> \stopTextSpan
    \once \override Fingering.add-stem-support = ##f
    <bf'= d=' e=' >


    | % 59
    <e,,=, b''= ds> 2
    r2

    | % 60
    \once \override Fingering.add-stem-support = ##f
    g=, 2 -1
    fs

    | % 61
    e=, 2
    gs 4. -3
    r8

    | % 62
    a=, 1

    | % 63
    g=, 2.
    r4

    | % 64
    gs=, 1

    | % 65
    cs= 4
    r8
    cs 8~
    cs 4
    r4

    | % 66
    a=, 1

    | % 67
    d= 2.
    r4

    | % 68
    gs,=, 1

    | % 69
    a=, 2~
    a 4
    r8
    e=, ~

    | % 70
    e=,  1

    | % 71
    a=, 2
    <gs=, fs'= b=> 4
    r4

    | % 72
    <d'= cs'='> 4
    r8
    <cs= b'=> ~
    <cs= b'=> 4
    <a=, g'= d'='> 4

    | % 73
    a=, 4 \rest
    <fs=, > 4~
    <fs=, > 2

    | % 74
    <e=, b''= ds='> 2
    e=, 8
    e 4
    e 8

    | % 75
    \once \barreBracket #5 #0
    <fs=, a'= cs='> 4. ^\barreText "II"
    \once \barreBracket #3 #0
    <gs=, b'= ds='> 8 ~ ^\barreText "IV"
    <gs=, b'= ds='> 4
    \once \barreBracket #3 #0
    <a=, g'= c='> 4~ ^\barreText "V"

    | % 76
    <a=, g'= c='> 4
    r8
    gs=,~ -1
    <gs=, fs'= c'='> 2

    | % 77
    \once \barreBracket #2 #0
    <cs= fs= b=> 4 ^\barreText "IV"
    e,=, 8
    \once \barreSpannerText "II" #0
    \once \barreBracket #2 #0
    <fs=, e'= a=> 8 ~ \startTextSpan
    <fs=, e'= a=> 2

    | % 78
    \afterGrace r2
    <> \stopTextSpan
    <g=, d'= b'=> 2


    | % 79
    <a=, e'= b'=> 2
    \once \barreBracket #3 #0
    <b=, a'= cs='> ^\barreText "II"

    | % 80
    \once \override Fingering.add-stem-support = ##f
    c= 2 -2
    \once \override Fingering.add-stem-support = ##f
    f,=, -1

    | % 81
    r8
    <gs=, -2 fs'= b= > 8
    \once \override Fingering.padding = #'0.3
    <g=, -2 f'= a= > 4
    \once \override Fingering.padding = #'0.3
    <c= -2 e g > 2


    | % 82
    \once \override Fingering.add-stem-support = ##f
    fs,=,  2 -1
    \once \override Fingering.add-stem-support = ##f
    b=, 2 -1

    | % 83
    <e,=, b''= ds='> 2~
    <e=, b''= ds='>

    \bar "|."
}