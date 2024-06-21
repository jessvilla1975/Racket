;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |lista de numeros ordenada|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;Proposito: Esta funcion recibe un numero y una lista ordenada, retorna una lista de numeros ordenada
;Contrato: insert: numero,lista_de_numeros -> lista de numeros

;aux
(define (insert num lista)
  (cond
    [(empty? lista) (cons num empty)]
    [(> (first lista) num) (cons num lista)]
    [else
     (cons (first lista) (insert num (rest lista)))]))

;(insert 4 (cons 1 (cons 2 (cons 8 (cons 0 empty)))))
;(insert 1 (insert 4 (insert 0 (insert 6 (insert 9 (insert 3 empty))))))  ;ordenar


(define (ordenar lista)
  (cond
    [(empty? lista) empty]
    [else
     (insert (first lista) (ordenar (rest lista)))]))

(ordenar (cons 1 (cons 4 (cons 0 (cons 6 (cons 9 (cons 3 empty)))))))