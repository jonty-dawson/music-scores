\version "2.22.2"

% see:
%http://lilypond.1069038.n5.nabble.com/Glissando-between-single-notes-in-chord-td134231.html
%{
Oct 08, 2012; 12:20am Re: Glissando between single notes in chord
Hi again,

On Sun, Oct 7, 2012 at 6:00 PM, David Nalesnik <[hidden email]> wrote:
> Hi Nick,
>

[...]

> if you're interested simply in
> drawing lines, then there will be greater flexibility with a line
> stencil, rather than em- and en-dashes and such.  I've adapted the
> function to do just that (see attached).  It allows customization of
> slope and the length of the guide-line.
>

Just remembered that I wrote an engraver a while back which can draw
lines between fingering numbers.  I can't find the file in the
archives, so I'll attach it again here.  With this override (which
uses a property defined in the file), glissando lines get moved from
between their notes to the numbers:

\override Glissando #to-fingerings = ##t

You can control which fingerings the line goes between by setting glissandoMap.

It's meant to connect fingering numbers, but you can hide the first
number to mimic the effect of the function earlier in the thread.
(I'm sure something could be done to this so you wouldn't need to do
that!)

-David

%}

%https://lists.gnu.org/archive/html/lilypond-user/2014-02/txt3tFIgdpIld.txt
%https://www.mail-archive.com/lilypond-user@gnu.org/msg74764.html
%https://www.mail-archive.com/lilypond-user@gnu.org/msg74764/fingering-slide-engraver.ly


#(define (define-grob-custom-property symbol type? description)
  (if (not (equal? (object-property symbol 'backend-doc) #f))
      (ly:error (_ "symbol ~S redefined") symbol))

    (set-object-property! symbol 'backend-type? type?)
    (set-object-property! symbol 'backend-doc description)
    symbol)

#(define all-user-grob-custom-properties
   (map
     (lambda (x)
       (apply define-grob-custom-property x))

     `(
       (to-fingerings ,boolean? "boolean for moving glissandi to fingerings")
     )))

% https://github.com/lilypond/lilypond/blob/master/lily/glissando-engraver.cc

fingeringSlideEngraver =
#(lambda (context)
   (let ((glissandi '())
         (fingerings '()))

     `((acknowledgers
         (glissando-interface
           . ,(lambda (engraver grob source-engraver)
                (if (eq? #t (ly:grob-property grob 'to-fingerings))
                    (set! glissandi (append glissandi (list grob))))))

         (finger-interface
           . ,(lambda (engraver grob source-engraver)
                (set! fingerings (append fingerings (list grob))))))

       (stop-translation-timestep
         . ,(lambda (trans)
              (map (lambda (gliss)
                     (map (lambda (finger)
                            (if (eq? (ly:spanner-bound gliss LEFT)
                                     (ly:grob-parent finger X))
                                (ly:spanner-set-bound! gliss LEFT finger))
                            (if (eq? (ly:spanner-bound gliss RIGHT)
                                     (ly:grob-parent finger X))
                                (begin
                                  (ly:spanner-set-bound! gliss RIGHT finger)
                                  (set! glissandi (remove (lambda (x) (eq? x gliss)) glissandi)))))
                          fingerings))
                   glissandi)

              (set! fingerings '()))))))

%{
\layout {
  \context {
    \Voice
    \consists \fingeringSlideEngraver
  }
}

\relative c {
  \override Fingering #'staff-padding = #'()
  \override Glissando #'to-fingerings = ##t
  \set glissandoMap = #'((0 . 0))
  \set fingeringOrientations = #'(down)
  <fis-\tweak #'transparent ##t -1 d'>4\glissando
  <g-1 d'>
}

\relative c'' {
  \key f \major
  \time 3/4
  \override Glissando #'to-fingerings = ##t
  <d-3 f-1>8[\glissando
  \set glissandoMap = #'((1 . 1))
  <e-3 g-1>\glissando <f-2 a-1>\glissando
  \unset glissandoMap
  <e-3 g-1>\glissando <d-3 f-1>8. <c-1 e-0>16]
}
%}