;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ejemplo2) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
#|
Un profesor de una universidad dicta tres cursos, el profesor tiene numbre(simbolo)
edad(numero) y 3 cursos (curso1, curso2, curso3)
Cada curso tiene un nombre(simbolo), un semestre(numero) y tiene u numero de estudiantes

Realizar:
1. Una funcion que retorne el numero promedio de estudiantes que tiener un profesor
2. Una funcion que reciba dos profesores(estructuras) y retorne el profesor que tenga
   mas estudiantes (suma los estudiantes de los cursos de cada profesor)
|#


(define-struct profesores(name edad curso1 curso2 curso3))
(define-struct cursos(nombre semestre numEstudiantes))

(define profesorA(make-profesores "carlos" 28 (make-cursos "calculo" "2" 50)(make-cursos "FDP" "1" 55)(make-cursos "IPOO" "2" 40)))
(define profesorB(make-profesores "david" 25 (make-cursos "ingles" "2" 35)(make-cursos "calculo2" "2" 30)(make-cursos "informatica" "1" 38))) 
(define profesorC(make-profesores "juan" 30 (make-cursos "filosofia" "3" 60)(make-cursos "español" "1" 58)(make-cursos "informatica2" "2" 57))) 


;Ejemplos:
;profesorA: curso1 numEstudiantes=50, curso2 numEstudiantes=55, curso3 numEstudiantes= 40, retorna: promedio=48.3333
;profesorB: curso1 numEstudiantes=35, curso2 numEstudiantes=30, curso3 numEstudiantes= 38, retorna: promedio=34.3333
(define (promedio prof)
  (cond
    [(not (profesores? prof)) (error "Debe ingresar un profesor")]
    [else (/(+ (cursos-numEstudiantes(profesores-curso1 prof)) (cursos-numEstudiantes(profesores-curso2 prof))
         (cursos-numEstudiantes(profesores-curso3 prof))) 3)]
    )
  )

(check-within(promedio profesorA) 48.3333 0.1)
(check-within(promedio profesorB) 34.3333 0.1)

;--------------------------------------------------

;Ejemplos:
;profesorA: curso1 numEstudiantes=50, curso2 numEstudiantes=55, curso3 numEstudiantes= 40
;profesorB: curso1 numEstudiantes=35, curso2 numEstudiantes=30, curso3 numEstudiantes= 38
;RETORNA: profesorA
;profesorA: curso1 numEstudiantes=50, curso2 numEstudiantes=55, curso3 numEstudiantes= 40
;profesorC: curso1 numEstudiantes=60, curso2 numEstudiantes=58, curso3 numEstudiantes= 57

(define (suma p1 p2)
  (cond
    [(and (profesores? p1)(profesores? p2))
     (cond
       [(> (sumaEstudiantes p1) (sumaEstudiantes p2)) p1]
       [else p2]
       )]
     [else (error "datos incorrectos")]
    )
  )

;Contrato: sumaEstudiantes: profesor->numero
(define (sumaEstudiantes profe)
  (+ (cursos-numEstudiantes (profesores-curso1 profe))
     (cursos-numEstudiantes (profesores-curso2 profe))
     (cursos-numEstudiantes (profesores-curso3 profe))
     ))

(check-expect(suma profesorA profesorB) profesorA)
(check-expect(suma profesorA profesorC) profesorC)
(check-error (suma 4))
        












