;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname AreaPoligono) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))

;Contrato: areaPoligono: numero,numero->numero
;Proposito: calcular el area de un poligono dada la longitud de un lado y el numero de lados
;Ejemplos:
;n=6 s=2 retorna: 10.3923
;n=8 s=3 retorna: 43.4558
;n=9 s=5 retorna: 154.5456

;Codigo:
(define (areaPoligono n s)
  (* (/ 1 4) n (sqr s) (/ 1 (tan(/ pi n)))))

;Pruebas:
(check-within(areaPoligono 6 2) 10.3923 0.1)
(check-within(areaPoligono 8 3) 43.4558 0.1)
(check-within(areaPoligono 9 5) 154.5456 0.1)
  