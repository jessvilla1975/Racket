;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname PagoTotalTienda) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct celulares(marca costo))
(define-struct computador(marca costo peso))
(define-struct accesorio(marca tipo costo))

(define celular1(make-celulares 'samsung 2000000))
(define celular2(make-celulares 'xiaomi 1980000))

(define computador1(make-computador 'huawei 1200000 50))
(define computador2(make-computador 'dell 900000 60))

(define accesorio1(make-accesorio 'lg 4 20000))
(define accesorio2(make-accesorio 'dell 6 30000))



;Codigo:
(define (pagoTotal componente)
  (cond
    [(and (not(celulares? componente)) (not(computador? componente)) (not(accesorio? componente))) (error "Estructura incorrecta")] 
    [(and (celulares? componente) (> (celulares-costo componente) 1900000)) (* (celulares-costo componente) 1.19)]
    [(and (computador? componente) (> (computador-peso componente) 20)) (* (computador-costo componente) 1.10)]
    [(and (accesorio? componente) (or (not(= (accesorio-tipo componente) 1))
                                      (not(= (accesorio-tipo componente) 2))
                                      (not(=(accesorio-tipo componente) 3)))) (* (accesorio-costo componente) 1.12)]
    )
  )
;Pruebas:
(check-expect(pagoTotal celular1) 2380000)
(check-expect(pagoTotal computador1) 1320000)
(check-expect(pagoTotal accesorio1) 22400)
(check-error(pagoTotal 4))
    
     
  











                                                                            