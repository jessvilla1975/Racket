;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ejemplo3) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
#|
Una tienda maneja productos de acuerdo a la siguiente clasificacion:
-verduras: nombre(simbolo), precio por kilo (numero)
-confiteria: nombre(simbolo),marca(simbolo),precio(numero)
-carne: nombre(simbolo), tipo-corte,precio por kilo(numero)

Tipo de corte: nombre(simbolo), nombre-animal(simbolo)

Se desea crear una funcion llamada calcular-venta  la cual recibe
una estructura tipo producto (verdura o confiteria o carne) y una
cantidad a comprar que puede ser kilo o unidad(numero) y retorna el valor de la compra.
|#

(define-struct verduras(nombre precioXkilo))
(define-struct confiteria(nombre marca precio))
(define-struct carne(nombre tipoCorte precioXkilo))

(define-struct tipoCorte(nombre nombreAnimal))

(define tomate(make-verduras 'tomate 5000))
(define torta(make-confiteria 'torta 'colombina 3000))
(define costilla(make-carne 'costilla (make-tipoCorte 'costiilla 'cerdo) 6000))


;Ejemplos:
;producto=tomate   cantidad=10 RETORNA: 50000
;producto=torta    cantidad=8  RETORNA: 24000
;producto=costilla cantidad=5  RETORRA: 30000

(define (calcularVenta producto cantidad)
  (cond
    [(verduras? producto) (* (verduras-precioXkilo producto) cantidad)]
    [(confiteria? producto)(* (confiteria-precio producto) cantidad)]
    [(carne? producto)(* (carne-precioXkilo producto) cantidad)]
    [else (error "Los datos son incorrectos")]
    )
  )
;Pruebas
(check-expect(calcularVenta tomate 10) 50000)
(check-expect(calcularVenta torta  8) 24000)
(check-expect(calcularVenta costilla 5) 30000)
