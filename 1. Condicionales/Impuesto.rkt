;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Impuesto) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct impuesto(ingreso cuota_impuesto patrimonio))
(define impuesto1(make-impuesto 34000 0 14000))



;Codigo:
(define (calcularImpuesto imp)
  (cond
    [(<= (impuesto-ingreso imp) 35000) (cond
                                         [(> (impuesto-patrimonio imp) 15000)
                                          (make-impuesto (* (impuesto-ingreso imp) 1.024) (* (* (impuesto-ingreso imp) 1.024) 1.15 ) (impuesto-patrimonio imp))] 
                                         [else (make-impuesto (impuesto-ingreso imp) (* (impuesto-ingreso imp) 1.15) (impuesto-patrimonio imp))])]
    [(and (> (impuesto-ingreso imp) 35000) (<= (impuesto-ingreso imp) 100000)) (cond
                                                                                 [(> (impuesto-patrimonio imp) 15000)
                                                                                  (make-impuesto (* (impuesto-ingreso imp) 1.024) (* (* (impuesto-ingreso imp) 1.024) 1.25 ) (impuesto-patrimonio imp))]
                                                                                 [else  (make-impuesto (impuesto-ingreso imp) (* (impuesto-ingreso imp) 1.25) (impuesto-patrimonio imp))])]
                                                                     
    [(> (impuesto-ingreso imp) 100000)  (cond
                                          [(> (impuesto-patrimonio imp) 15000)
                                           (make-impuesto (* (impuesto-ingreso imp) 1.024) (* (* (impuesto-ingreso imp) 1.024) 1.35 ) (impuesto-patrimonio imp))]
                                          [else  (make-impuesto (impuesto-ingreso imp) (* (impuesto-ingreso imp) 1.35) (impuesto-patrimonio imp))])]
    [else (error "error")]))

;Pruebas:
(check-expect(calcularImpuestos impuesto1) (make-impuesto 34000 39100 14000))