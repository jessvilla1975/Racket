;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Estructuras dentro de estructuras|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct habitacion(cama estanteria lampara))
(define-struct cama(largo ancho))
(define-struct estanteria(nombre descripcion))
(define-struct lampara(marca alto ancho))

(define camaA (make−cama 10 20))
(define camaB (make−cama 30 50))

(define estanteriaA (make−estanteria "Armario" "Grande"))
(define estanteriaB (make−estanteria "Mueble" "Dorado"))

(define lamparaA (make−lampara "Sony" 10 20))
(define lamparaB (make−lampara "Toshiba" 20 30))

(define habitacionA (make−habitacion camaA estanteriaB lamparaB))
(define habitacionB (make−habitacion camaB estanteriaA lamparaA))

;EJEMPLO
#|
desarrollar una funcion llamada revisar-cama
que reciba una habitacion y nos indique si la cama es grande o
peque˜na. La cama es peque˜na si tiene 10 o menos de largo y es
grande en otro caso.
|#

;Contrato: revisar-cama : habitacion -> cadenaDeTexto
;Proposito: Indicar si una cama es pequeña o es grande
;Ejemplos: (revisarCama habitacionA ) -> "pequeña"
;(revisar-cama habitacionB ) -> "grande"
;(revisar-cama ’hola ) -> "error"

(define (revisarCama hab)
  (if (habitacion? hab)
      (cond
        [(<= (cama-largo(habitacion-cama hab)) 10) "pequeña"]
        [else "grande"])
      "error"
      ))
(check-expect(revisarCama habitacionA)"pequeña")
(check-expect(revisarCama habitacionB)"grande")   