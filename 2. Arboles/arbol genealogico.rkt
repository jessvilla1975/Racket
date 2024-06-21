;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |arbol genealogico|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;arbol genealogico
(define-struct persona (nombre fechaNacimiento madre padre))

(define clara (make-persona 'clara 1853 empty empty))
(define juan (make-persona 'juan 1850 empty empty))

(define pedro (make-persona 'pedro 1875 empty empty))
(define sandra (make-persona 'sandra 1876 clara juan))

(define raul (make-persona 'raul 1880 clara juan))
(define liliana (make-persona 'liliana 1883 empty empty))

(define patricia (make-persona 'patricia 1909 sandra pedro))
(define carlos (make-persona 'carlos 1970 sandra pedro))

(define berta (make-persona 'berta 1911 liliana raul))

;listar la ascendencia de una persona
;entra una estructura persona ->sale una lista de simbolos

;contrato: listar_ascendentes: persona->lista de simbolos
;Ejemplos
;clara-> '()
;patricia-> ('clara 'sandra 'juan 'pedro)
(define (listar_ascendente per) 
  (cond
    [(empty? per) empty]
    [else
     (append
      (if (empty? (persona-madre per)) '() (cons (persona-nombre(persona-madre per)) empty))
      (if (empty? (persona-padre per)) '() (cons (persona-nombre(persona-padre per)) empty))
      (listar_ascendente (persona-madre per))
      (listar_ascendente (persona-padre per))
      )]))

(listar_ascendente patricia)


 



     