\version "2.22.2"


section_A_main = {


    | % 1
    << {
        f=' 8 -1
        e -0
        f=' 8 _\laissezVibrer
        a,=
        bf -4 _\laissezVibrer
        d,= -0
    } \\ {
        \once \override Arpeggio.positions = #'(-3 . 1.5)
        \smallNoteHead
        <d= _0 a'= -2 > 4 \arpeggio
        s2
    } >>

    | % 2
    c= 4 -3
    e'=' -0
    a,= -2

    | % 3
    << {
        d=' 8 -4
        cs -3
        d=' _\laissezVibrer
        f,= -3
        g -0 _\laissezVibrer
        b,=,  % Source A
    } \\ {
        \smallNoteHead
        <b?=, _1 a'= -2 > 4
        g'=8 -0
        s4.
    } >>


    | % 4
    a,=, 8 _0
    e'= -1
    a -2
    d -4
    cs -3
    e -0



    | % 5
    << {
        f=' 8
        e
        f=' 8 _\laissezVibrer
        a,=
        bf _\laissezVibrer
        d,=
    } \\ {
        \smallNoteHead
        \once \override Arpeggio.positions = #'(-3 . 1.5)
        <d= a'= > 4 \arpeggio
        s2
    } >>

    | % 6
    c= 4
    e'='
    <\tweak NoteHead.font-size #-2 f,= _3 a= ^2>

    | % 7
    << {
        d'=' 8 -4
        cs -2
        d=' _\laissezVibrer
        f,=
        g _\laissezVibrer
        b,=, _2 % b natural is Source A
    } \\ {
        \smallNoteHead
        <bf=, _1 f'= -3 > 4
        s2
    } >>

    | % 8
    << {
        a=, 8
        [d'=' -4]
        <\tweak NoteHead.font-size #-2 e,= -1 cs'=' ^2> 2
    } \\ {
        \smallNoteHead
        a,=, 4 ~
        a=,2
    } >>

}


section_Bi_main = {

    | % 9
    << {
        a'= 8 -1
        cs -2
        e -0
        g \fingeringShift #UP -1
        bf -4
        a -3

        | % 10
        g -1
        f -4
        e -3
        f
        d 4 -1

        | % 11
        g,= 8 -0
        b -0
        d -1
        f -4
        a -3
        <g ^1> \glissando

        | % 12
        <f ^1>
        e -0
        d -4
        e
        c -1
        bf -4
    }
    \\ {
        \smallNoteHead
        a= 4
        s s
        |
        d,=
        s s
        |
        g=
        s s
        |
        c,= -3
        s s
    } >>

    | % 13
    << {
        a'= 8 -2
        \barreBracket #3 #0
        c -1
        f='
        e -0
        f -1
        a,=

        | % 14
        \barreBracket #3 #0
        bf \fingeringShift #UP -1
        d
        f -4
        e -3
        f
        a -3

        | % 15
        g -1
        bf -4
        a -3
        f -4
        c=' -2
        e -0

        | % 16
        \barreBracket #0 #-3
        f \fingeringShift #DOWN -1 _\laissezVibrer
        c
        a -2
        c
        f,= 4 -3
    }
    \\ {
        a= 4
        s2
        |
        bf= 4
        s2
        |
        r4
        c,= -1
        c'='
        |
        s2.
    } >>
}

section_Bii_main = {
    | % 17
    << {
        fs,= 8
        a -1
        c -4
        ef -3
        d -2
        c

        | % 18
        \barreBracket #5 #0
        bf -1
        d
        g
        a -3
        bf 4 -4

        | % 19
        e,,= 8
        g -0
        bf -3
        d -4
        c -1
        bf -4

        | % 20
        a -2
        \barreBracket #3 #0
        c -1
        f
        g -3
        a 4 -4
        }
    \\ {
        \smallNoteHead
        fs,= 4 \fingeringShift #UP -3
        s
        s
        |
        g= -3
        s
        s
        |
        e= \fingeringShift #DOWN -2
        s
        s
        |
        f= -3
        s
        s
    } >>

    | % 21
    << {
        cs= 8
        e -1
        g -0
        bf -2
        a -1
        g


        | % 22
        f -2
        a -1
        d -3
        e -0
        f -1
        d

        | % 23
        g,= -0
        f'='
        e
        d -3
        a -1
        cs -2

        | % 24
        \smallNoteHead
        d=' 2. _\markup { \small \bold "Menuet I da capo" }
        |
    }
    \\ {
        \smallNoteHead
        cs,= 4 -3
        s
        s

        |
        d= -4
        s
        s
        |
        r 4
        a=,
        a'=
        |
        d,= 2.
    } >>
}




main =  \relative d' {

    \time 3/4
    \key a \minor % for D dorian mode (no sharps/flats)

    \set fingeringOrientations = #'(up left)
    \set Staff.fingeringOrientations = #'(right)
    \set stringNumberOrientations = #'(up)
    \set strokeFingerOrientations = #'(up)
    \override Fingering.direction = #UP
    \override Score.GraceSpacing.spacing-increment = #1.5

    \stemNeutral
    \slurUp

    \repeat volta 2 {
        \section_A_main
    }

    \repeat volta 2 {
        \section_Bi_main
        \section_Bii_main
    }

}

