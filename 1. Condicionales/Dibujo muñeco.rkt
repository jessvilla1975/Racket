;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Dibujo muñeco|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(start 500 500)
(draw-circle(make-posn 250 100) 50 'black)
(draw-solid-line(make-posn 250 150)(make-posn 250 350));cabeza
(draw-solid-line(make-posn 250 350)(make-posn 350 450));cuerpo
(draw-solid-line(make-posn 250 350)(make-posn 150 450));pierna izq
(draw-solid-line(make-posn 250 350)(make-posn 150 450));pierna der

(draw-solid-line(make-posn 250 200)(make-posn 350 100));brazo izq
(draw-solid-line(make-posn 250 200)(make-posn 150 100));brazo der

(draw-solid-line(make-posn 260 85)(make-posn 275 100))
(draw-solid-line(make-posn 260 100)(make-posn 275 85))

(draw-solid-line(make-posn 235 85)(make-posn 220 100))
(draw-solid-line(make-posn 220 85)(make-posn 235 100))







