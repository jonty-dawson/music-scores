\version "2.22.2"

\include "fingering-slide-engraver.ily"


fingeringAllowInsideStaff = {
    \override Fingering.staff-padding = #'()
}

stringAllowInsideStaff = {
    \override StringNumber.staff-padding = #'()
}

fingeringAboveLeftHead = #(define-music-function  () ()
    #{
        \override Fingering.add-stem-support = ##f
        \override Fingering.extra-offset = #'(-0.4 . -0.5)
        \override Fingering.self-alignment-X = #RIGHT
        \override Fingering.direction = #UP
    #}
)

fingeringAboveHead = #(define-music-function  () ()
    #{
        \override Fingering.add-stem-support = ##f
        \override Fingering.extra-offset = #'(0 . -0.2)
        \override Fingering.self-alignment-X = #RIGHT
        \override Fingering.direction = #UP
    #}
)

fingeringBelowRightHead = #(define-music-function  () ()
    #{
        \override Fingering.add-stem-support = ##f
        \override Fingering.extra-offset = #'(1.5 . -2.5)
        \override Fingering.direction = #RIGHT
    #}
)

fingeringBelowHead = #(define-music-function () ()
    #{
        \override Fingering.add-stem-support = ##t
        \override Fingering.extra-offset = #'(0 . 0)
        \override Fingering.self-alignment-X = #CENTER
        \override Fingering.direction = #DOWN
        \set fingeringOrientations = #'(down left)
    #}
)

fingeringChord = #(define-music-function () ()
    #{
        \override Fingering.add-stem-support = ##t
        \override Fingering.extra-offset = #'(0 . 0)
        \override Fingering.self-alignment-X = #CENTER
        \set fingeringOrientations = #'(left)
    #}
)


#(define (fingering-event? m) (and (ly:music? m)
                                   (music-is-of-type? m 'fingering-event)))

fingeringShift =
#(define-event-function ( direction fingering)
   (ly:dir? fingering-event?)
   (let* ((fingerDigit (ly:music-property fingering 'digit))
          (fingerDigitText (number->string fingerDigit)))
     #{
       -\tweak Fingering.self-alignment-X #'0.75
       -\tweak text

       %%\put-adjacent #'(x-axis) #LEFT

       \markup \concat {
            %%\general-align #X #RIGHT

            %\box
            {
                %%\pad-to-box #'(-0.5 . 0.1) #'(0 . 0)
                \pad-x #0.2
                \rotate #(* 20.0 direction)
                \bold
                \fontsize #0
                \raise #(- 0.25 (* 0.25 direction))
                \text #"—"
            }

            %\box
            {
                #fingerDigitText
            }
       }

       #fingering
     #}
   )
)

%usage eg
%<a cs fs>^\markup {\fretBox #"II"}
#(define-markup-command (fretBox layout props fretText) (markup?)
    (interpret-markup layout props
#{
    \markup {
            \pad-to-box #'(0 . 0) #'(-1.5 . 0.0)
            \upright
            \fontsize #-1
            #fretText
    }
#}
))

barreText = #(define-music-function (fretBox) (string?)
#{
    -\markup
    {
        \pad-to-box #'(0 . 0) #'(-1.5 . 0.0)
        \upright
        \fontsize #-1
        #fretBox
    }
#}
)


barreSpannerText = #(define-music-function ( fretBox staffPadding) (string? number?)
#{
    \textSpannerUp
    \override TextSpanner.staff-padding = #staffPadding
    \override TextSpanner.bound-details.left.text = \markup {
     %\box
        \pad-to-box #'(0 . 0) #'(-0.5 . 0.0)

        \upright
        \fontsize #-1
        %\center-align
        %\general-align #Y #CENTER
        #fretBox
        \hspace #0.5
    }
    \override TextSpanner.style = #'line
    \override TextSpanner.bound-details.left.attach-dir = #LEFT
    \override TextSpanner.bound-details.right.attach-dir = #RIGHT
    \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -0.6) }
    \override TextSpanner.bound-details.right.padding = #-0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
    \override TextSpanner.bound-details.right-broken.text = ##f
    \override TextSpanner.bound-details.left.padding = #0
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #0.0
    \override TextSpanner.bound-details.left.Y = #0.75
    \override TextSpanner.bound-details.right.Y = #0.75

%        \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
#}
)




barreBracketOffset = #(define-music-function ( xOffset) (number?)
#{
\override Arpeggio.X-offset = #xOffset
#})

barreBracket = #(define-music-function (extraAbove extraBelow) (number? number?)
#{
  %\override Arpeggio.padding = 0
  %\override Arpeggio.X-offset = #ly:self-alignment-interface::x-aligned-on-self
  \override Arpeggio.side-axis = 0
  \override Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  %\override Arpeggio.protrusion = 0.2
  \override Arpeggio.script-priority = 200
  \once \override Arpeggio.positions  = #(lambda (grob)
    (let ((iv (ly:arpeggio::calc-positions grob))
          (grow-hi (/ extraAbove 2))
          (grow-lo (min 0 (/ extraBelow 2))))
      (cons (+ (car iv) grow-lo) (+ (cdr iv) grow-hi))))
  $(make-music 'EventChord 'elements (list (make-music 'ArpeggioEvent)))
#})


#(define (spannerEndLine direction)
    (markup #:draw-line (cons 0 (* direction -0.6)))
    )

#(define (spannerEndNone)
    (markup #:null)
    )


stringStaffPadding = #(define-music-function ( padding) (number?)
define
#{
    \override StringNumber.staff-padding = #padding
    %\override TextSpanner.staff-padding = #(+ #'padding 0.5)
    \override TextSpanner.staff-padding = #padding
#}
)


stringNumberTextSpanner = #(define-music-function ( stringNumber direction hasEnd) (number? ly:dir? boolean?)
define
#{
    \override TextSpanner.direction = #direction

    \override TextSpanner.bound-details.left.text = \markup {
     %\box
        %\pad-to-box #'(0 . 0) #'(-1.5 . 0.0)
        %\center-align
        %\general-align #Y #CENTER
        %\override #'(thickness . 0.1)
        \override #'(circle-padding . 0.35)
        \circle
        \upright
         {
            \bold
            \override #'(font-name . "Fira Sans")
            \fontsize #-3 #(number->string stringNumber)
         }
        \hspace #0.5
    }
    \override TextSpanner.style = #'dashed-line
    \override TextSpanner.dash-period = #1.0
    \override TextSpanner.dash-fraction = #0.4
    \override TextSpanner.bound-details.left.attach-dir = #CENTER
    %\override TextSpanner.bound-details.right.attach-dir = #RIGHT
    \override TextSpanner.bound-details.right.text = #(if (eq? #'hasEnd #t) (spannerEndLine #'direction) (spannerEndNone))
    \override TextSpanner.bound-details.left.padding = #0
    \override TextSpanner.bound-details.right.padding = #-0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
    \override TextSpanner.bound-details.right-broken.text = ##f
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #-0.5
    \override TextSpanner.bound-details.left.Y = #0.5
    \override TextSpanner.bound-details.right.Y = #0.5
#}
)
