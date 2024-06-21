;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Dibujo_Benson) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;Autor:David Steven Arce Franco 2067533

(start 500 500)
;Fondo
(draw-solid-rect(make-posn 0 0) 500 500 'beige)

;sombrero
(draw-solid-rect(make-posn 197 90) 100 50 'Crimson)
(draw-solid-line(make-posn 245 90)(make-posn 245 75) 'black)
(draw-solid-line(make-posn 246 90)(make-posn 246 75) 'black)
(draw-circle(make-posn 246 75) 6 'black)
(draw-solid-disk(make-posn 246 75) 5 'LightSlateGray)

;cuerpo
(draw-solid-rect(make-posn 197 350) 120 200 'Crimson)
(draw-circle(make-posn 250 425) 16 'black)
(draw-circle(make-posn 268 425) 16 'black)
(draw-circle(make-posn 256 432) 20 'black)
(draw-circle(make-posn 262 432) 20 'black)

(draw-solid-disk(make-posn 250 425) 15 'LightSlateGray)
(draw-solid-disk(make-posn 268 425) 15 'LightSlateGray)
(draw-solid-disk(make-posn 256 432) 19 'LightSlateGray)
(draw-solid-disk(make-posn 259 432) 19 'LightSlateGray)
(draw-solid-disk(make-posn 262 432) 19 'LightSlateGray)

(draw-solid-rect(make-posn 230 424) 61 12 'black)
(draw-solid-rect(make-posn 230 425) 60 10 'LightSlateGray)


;saca chicle
(draw-solid-line(make-posn 246 90)(make-posn 246 75) 'black)

;brazo der
(draw-solid-line(make-posn 205 380)(make-posn 130 500) 'black)
(draw-solid-line(make-posn 190 380)(make-posn 120 500) 'black)
;relleno
(draw-solid-line(make-posn 204 379)(make-posn 129 500) 'LightSlateGray)
(draw-solid-line(make-posn 203 378)(make-posn 128 500) 'LightSlateGray)
(draw-solid-line(make-posn 202 377)(make-posn 127 500) 'LightSlateGray)
(draw-solid-line(make-posn 201 376)(make-posn 126 500) 'LightSlateGray)
(draw-solid-line(make-posn 200 375)(make-posn 125 500) 'LightSlateGray)
(draw-solid-line(make-posn 199 374)(make-posn 124 500) 'LightSlateGray)
(draw-solid-line(make-posn 198 373)(make-posn 123 500) 'LightSlateGray)
(draw-solid-line(make-posn 197 372)(make-posn 122 500) 'LightSlateGray)
(draw-solid-line(make-posn 196 371)(make-posn 121 500) 'LightSlateGray)




;brazo izq
(draw-solid-line(make-posn 320 380)(make-posn 385 500) 'black)
(draw-solid-line(make-posn 310 380)(make-posn 375 500) 'black)
;relleno
(draw-solid-line(make-posn 319 379)(make-posn 384 500) 'LightSlateGray)
(draw-solid-line(make-posn 318 378)(make-posn 383 500) 'LightSlateGray)
(draw-solid-line(make-posn 317 377)(make-posn 382 500) 'LightSlateGray)
(draw-solid-line(make-posn 316 376)(make-posn 381 500) 'LightSlateGray)
(draw-solid-line(make-posn 315 375)(make-posn 380 500) 'LightSlateGray)
(draw-solid-line(make-posn 314 374)(make-posn 379 500) 'LightSlateGray)
(draw-solid-line(make-posn 313 373)(make-posn 378 500) 'LightSlateGray)
(draw-solid-line(make-posn 312 372)(make-posn 377 500) 'LightSlateGray)
(draw-solid-line(make-posn 311 371)(make-posn 376 500) 'LightSlateGray)

(draw-solid-line(make-posn 310 370)(make-posn 384 500) 'LightSlateGray)
(draw-solid-line(make-posn 309 369)(make-posn 383 500) 'LightSlateGray)
(draw-solid-line(make-posn 308 368)(make-posn 382 500) 'LightSlateGray)
(draw-solid-line(make-posn 307 367)(make-posn 381 500) 'LightSlateGray)
(draw-solid-line(make-posn 306 366)(make-posn 380 500) 'LightSlateGray)
(draw-solid-line(make-posn 305 365)(make-posn 379 500) 'LightSlateGray)
(draw-solid-line(make-posn 304 364)(make-posn 378 500) 'LightSlateGray)
(draw-solid-line(make-posn 303 363)(make-posn 377 500) 'LightSlateGray)
(draw-solid-line(make-posn 302 362)(make-posn 376 500) 'LightSlateGray)

(draw-solid-disk(make-posn 190 392) 6 'LightSlateGray)
(draw-solid-disk(make-posn 189 396) 6 'LightSlateGray)
(draw-solid-disk(make-posn 187 400) 6 'LightSlateGray)
(draw-solid-disk(make-posn 183 405) 6 'LightSlateGray)
(draw-solid-disk(make-posn 180 410) 6 'LightSlateGray)
(draw-solid-disk(make-posn 178 415) 6 'LightSlateGray)
(draw-solid-disk(make-posn 175 420) 6 'LightSlateGray)
(draw-solid-disk(make-posn 171 425) 6 'LightSlateGray)
(draw-solid-disk(make-posn 168 430) 6 'LightSlateGray)
(draw-solid-disk(make-posn 165 435) 6 'LightSlateGray)
(draw-solid-disk(make-posn 162 440) 6 'LightSlateGray)
(draw-solid-disk(make-posn 159 445) 6 'LightSlateGray)
(draw-solid-disk(make-posn 156 450) 6 'LightSlateGray)
(draw-solid-disk(make-posn 153 455) 6 'LightSlateGray)
(draw-solid-disk(make-posn 150 460) 6 'LightSlateGray)

(draw-solid-rect(make-posn 244 479) 32 52 'black)
(draw-solid-rect(make-posn 245 480) 30 50 'LightSlateGray)

;cabeza
(draw-solid-disk(make-posn 250 250) 152 'black)
(draw-solid-disk(make-posn 250 250) 150 'LightCyan)

;chicle
(draw-solid-disk(make-posn 120 240) 20 'VioletRed)
(draw-solid-disk(make-posn 112 239) 11 'VioletRed)
(draw-solid-disk(make-posn 150 260) 20 'VioletRed)
(draw-solid-disk(make-posn 180 270) 20 'VioletRed)
(draw-solid-disk(make-posn 210 280) 20 'VioletRed)
(draw-solid-disk(make-posn 240 280) 20 'VioletRed)
(draw-solid-disk(make-posn 270 275) 20 'VioletRed)
(draw-solid-disk(make-posn 335 280) 20 'VioletRed)
(draw-solid-disk(make-posn 360 276) 20 'VioletRed)
(draw-solid-disk(make-posn 380 270) 18 'VioletRed)

;relleno
;centro a derecha
(draw-solid-disk(make-posn 260 340) 60 'VioletRed)
(draw-solid-disk(make-posn 270 340) 58 'VioletRed)
(draw-solid-disk(make-posn 280 335) 60 'VioletRed)
(draw-solid-disk(make-posn 292 330) 60 'VioletRed)
(draw-solid-disk(make-posn 300 330) 56 'VioletRed)
(draw-solid-disk(make-posn 310 325) 55 'VioletRed)
(draw-solid-disk(make-posn 320 320) 52 'VioletRed)
(draw-solid-disk(make-posn 340 315) 40 'VioletRed)
(draw-solid-disk(make-posn 360 306) 28 'VioletRed)
(draw-solid-disk(make-posn 373 295) 20 'VioletRed)
(draw-solid-disk(make-posn 378 290) 18 'VioletRed)
(draw-solid-disk(make-posn 383 278) 15 'VioletRed)
(draw-solid-disk(make-posn 385 269) 15 'VioletRed)
(draw-solid-disk(make-posn 250 340) 60 'VioletRed);principal

;centro a izquierda
(draw-solid-disk(make-posn 240 340) 60 'VioletRed)
(draw-solid-disk(make-posn 230 338) 60 'VioletRed)
(draw-solid-disk(make-posn 221 335) 61 'VioletRed)
(draw-solid-disk(make-posn 205 330) 59 'VioletRed)
(draw-solid-disk(make-posn 191 320) 59 'VioletRed)
(draw-solid-disk(make-posn 182 312) 50 'VioletRed)
(draw-solid-disk(make-posn 173 313) 51 'VioletRed)
(draw-solid-disk(make-posn 160 300) 48 'VioletRed)
(draw-solid-disk(make-posn 150 290) 43 'VioletRed)
(draw-solid-disk(make-posn 137 280) 34 'VioletRed)
(draw-solid-disk(make-posn 126 269) 25 'VioletRed)
(draw-solid-disk(make-posn 119 255) 20 'VioletRed)
(draw-solid-disk(make-posn 118 251) 19 'VioletRed)


(draw-solid-line(make-posn 280 230)(make-posn 280 290) 'black);nariz lado izq
(draw-solid-line(make-posn 280 290)(make-posn 326 290) 'black);nariz lado inferior
;llenado nariz
(draw-solid-line(make-posn 281 289)(make-posn 281 220) 'LightSlateGray)
(draw-solid-line(make-posn 282 289)(make-posn 282 220) 'LightSlateGray)
(draw-solid-line(make-posn 283 289)(make-posn 283 220) 'LightSlateGray)
(draw-solid-line(make-posn 284 289)(make-posn 284 220) 'LightSlateGray)
(draw-solid-line(make-posn 285 289)(make-posn 285 225) 'LightSlateGray)
(draw-solid-line(make-posn 286 289)(make-posn 286 225) 'LightSlateGray)
(draw-solid-line(make-posn 287 289)(make-posn 287 228) 'LightSlateGray)
(draw-solid-line(make-posn 288 289)(make-posn 288 228) 'LightSlateGray)
(draw-solid-line(make-posn 289 289)(make-posn 289 228) 'LightSlateGray)
(draw-solid-line(make-posn 290 289)(make-posn 290 228) 'LightSlateGray)
(draw-solid-line(make-posn 291 289)(make-posn 291 228) 'LightSlateGray)
(draw-solid-line(make-posn 292 289)(make-posn 292 228) 'LightSlateGray)
(draw-solid-line(make-posn 293 289)(make-posn 293 228) 'LightSlateGray)
(draw-solid-line(make-posn 294 289)(make-posn 294 229) 'LightSlateGray)
(draw-solid-line(make-posn 295 289)(make-posn 295 229) 'LightSlateGray)
(draw-solid-line(make-posn 296 289)(make-posn 296 243) 'LightSlateGray)
(draw-solid-line(make-posn 297 289)(make-posn 297 243) 'LightSlateGray)
(draw-solid-line(make-posn 298 289)(make-posn 298 244) 'LightSlateGray)
(draw-solid-line(make-posn 299 289)(make-posn 299 245) 'LightSlateGray)
(draw-solid-line(make-posn 300 289)(make-posn 300 250) 'LightSlateGray)
(draw-solid-line(make-posn 301 289)(make-posn 301 250) 'LightSlateGray)
(draw-solid-line(make-posn 302 289)(make-posn 302 252) 'LightSlateGray)
(draw-solid-line(make-posn 303 289)(make-posn 303 252) 'LightSlateGray)
(draw-solid-line(make-posn 304 289)(make-posn 304 255) 'LightSlateGray)
(draw-solid-line(make-posn 305 289)(make-posn 305 255) 'LightSlateGray)
(draw-solid-line(make-posn 306 289)(make-posn 306 258) 'LightSlateGray)
(draw-solid-line(make-posn 307 289)(make-posn 307 260) 'LightSlateGray)
(draw-solid-line(make-posn 308 289)(make-posn 308 262) 'LightSlateGray)
(draw-solid-line(make-posn 309 289)(make-posn 309 264) 'LightSlateGray)
(draw-solid-line(make-posn 310 289)(make-posn 310 266) 'LightSlateGray)
(draw-solid-line(make-posn 311 289)(make-posn 311 268) 'LightSlateGray)
(draw-solid-line(make-posn 312 289)(make-posn 312 270) 'LightSlateGray)
(draw-solid-line(make-posn 313 289)(make-posn 313 272) 'LightSlateGray)
(draw-solid-line(make-posn 314 289)(make-posn 314 274) 'LightSlateGray)
(draw-solid-line(make-posn 315 289)(make-posn 315 276) 'LightSlateGray)
(draw-solid-line(make-posn 316 289)(make-posn 316 278) 'LightSlateGray)
(draw-solid-line(make-posn 317 289)(make-posn 317 280) 'LightSlateGray)
(draw-solid-line(make-posn 318 289)(make-posn 318 282) 'LightSlateGray)
(draw-solid-line(make-posn 319 289)(make-posn 319 284) 'LightSlateGray)
(draw-solid-line(make-posn 320 289)(make-posn 320 286) 'LightSlateGray)
(draw-solid-line(make-posn 321 289)(make-posn 321 288) 'LightSlateGray)
(draw-solid-line(make-posn 322 289)(make-posn 322 287) 'LightSlateGray)
(draw-solid-line(make-posn 323 289)(make-posn 323 287) 'LightSlateGray)



(draw-solid-line(make-posn 326 289)(make-posn 288 228) 'black);nariz lado dere
(draw-solid-line(make-posn 324 289)(make-posn 288 228) 'LightSlateGray)


(draw-solid-disk(make-posn 260 220) 25 'black) ;ojo der
(draw-solid-disk(make-posn 260 220) 24 'white) ;ojo

(draw-solid-disk(make-posn 310 220) 25 'black) ;ojo izq
(draw-solid-disk(make-posn 310 220) 24 'white) ;ojo

;Relleno rariz
(draw-solid-line(make-posn 324 289)(make-posn 288 228) 'LightSlateGray)
(draw-solid-line(make-posn 324 289)(make-posn 287 228) 'LightSlateGray)
(draw-solid-line(make-posn 324 289)(make-posn 286 228) 'LightSlateGray)
(draw-solid-line(make-posn 324 289)(make-posn 285 228) 'LightSlateGray)
(draw-solid-line(make-posn 324 289)(make-posn 284 228) 'LightSlateGray)
(draw-solid-line(make-posn 324 289)(make-posn 283 228) 'LightSlateGray)
(draw-solid-line(make-posn 323 289)(make-posn 288 228) 'LightSlateGray)
(draw-solid-line(make-posn 322 289)(make-posn 288 228) 'LightSlateGray)

(draw-solid-disk(make-posn 265 220) 3 'black) ;punto ojo
(draw-solid-disk(make-posn 315 220) 3 'black) ;punto ojo

;boca
(draw-circle(make-posn 220 310) 20 'black)
(draw-circle(make-posn 258 330) 30 'black)
(draw-solid-disk(make-posn 218 310) 21 'VioletRed)
(draw-solid-disk(make-posn 214 305) 21 'VioletRed)
(draw-solid-disk(make-posn 214 315) 21 'VioletRed)

(draw-solid-disk(make-posn 245 348) 25 'VioletRed)
(draw-solid-disk(make-posn 275 336) 30 'VioletRed)

;cejas
(draw-solid-line(make-posn 235 195)(make-posn 330 195) 'black)
(draw-solid-line(make-posn 235 194)(make-posn 330 194) 'black)

(draw-solid-line(make-posn 240 190)(make-posn 325 190) 'black)
(draw-solid-line(make-posn 240 189)(make-posn 325 189) 'black)

;reflejo
(draw-solid-disk(make-posn 310 130) 6 'white)
(draw-solid-disk(make-posn 330 140) 6 'white)
(draw-solid-disk(make-posn 334 144) 6 'white)
(draw-solid-disk(make-posn 336 146) 6 'white)
(draw-solid-disk(make-posn 340 150) 4 'white)

 
