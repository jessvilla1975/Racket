;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ejemplo) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
#|
1.Construya una estructura llamada avion que provea la
informacion de un avion de combate, los datos requeridos
son: aceleracion (numerico), velocidad maxima (numerico)
y rango (estructura rango).
2.Construya una estructura para el rango del avion llamada
rango-avion, este tiene tres campos: alcance minimo,
alcance maximo y precision.
3.Construya 3 aviones y consulte sus datos.
|#

(define-struct avion(aceleracion velocidadMaxima rango))
(define-struct rangoAvion(alcanceMinimo alcanceMax precision))

(define avionA(make-avion 100 2000 (make-rangoAvion 10 100 50)))
(define avionB(make-avion 200 2000(make-rangoAvion 20 200 10)))
(define avionC(make-avion 100 4000(make-rangoAvion 10 150 30)))

;Extraer datos
(avion-aceleracion avionA)
(avion-aceleracion avionB)
(avion-aceleracion avionC)

(avion-velocidadMaxima avionA)
(avion-velocidadMaxima avionB)
(avion-velocidadMaxima avionC)

(avion-rango avionA)
(avion-rango avionB)
(avion-rango avionC)

(rangoAvion-alcanceMinimo (avion-rango avionA))
(rangoAvion-alcanceMinimo(avion-rango avionB))
(rangoAvion-alcanceMinimo(avion-rango avionC))

(rangoAvion-alcanceMax (avion-rango avionA))
(rangoAvion-alcanceMax (avion-rango avionB))
(rangoAvion-alcanceMax(avion-rango avionC))

(rangoAvion-precision (avion-rango avionA))
(rangoAvion-precision (avion-rango avionB))
(rangoAvion-precision(avion-rango avionC))


#|Desarrollar una funcion que reciba dos aviones y nos retorne
el que tenga mayor precision|#
;EJ:
;(define avionA(make-avion 100 2000 (make-rangoAvion 10 100 50)))
;(define avionB(make-avion 200 2000(make-rangoAvion 20 200 10)))
;(define avionC(make-avion 100 4000(make-rangoAvion 10 150 30)))
;si comparo avionA y avionB ¿cual es el mas preciso? avionA
;si comparo avionA y avionC->avionA
;si comparo avionB y avionC->avionC



;Codigo:
(define (avionMasPreciso avion1 avion2)
  (cond
    [(and (avion? avion1)(avion? avion2))
     (if
       (> (rangoAvion-precision (avion-rango avion1))(rangoAvion-precision(avion-rango avion2))) 
       avion1
       avion2
       )
     ]
     [else (error "Las dos entradas tienen que ser estructuras tipo avion")]
     
    )
  )
;Pruebas
(check-expect(avionMasPreciso avionA avionB) avionA)
(check-expect(avionMasPreciso avionA avionC) avionA)
(check-expect(avionMasPreciso avionB avionC) avionC)
(check-error(avionMasPreciso "hola" "c"))
