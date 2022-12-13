#lang racket
(letrec (
          (env '((a 1) (b 2) (c 3) (d 4)))
          (getVarnames
  (lambda (lst)
    (if (null? lst) '()
        (cons (car (car lst)) (getVarnames (cdr lst)))
         )
        )
    )
         (getValues
  (lambda (lst)
    (if (null? lst) '()
        (cons (car (cdr (car lst))) (getValues (cdr lst)))
        )
      )
     )

         )
  (getVarnames env)
  ;(getValues env)
  )


  