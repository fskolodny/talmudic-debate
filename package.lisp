;;;; package.lisp

(defpackage #:talmudic-debate
  (:use #:cl
        #:cl-ppcre
        #:iterate
        #:utils
        )
  (:export #:author
           #:text
           #:statement
           #:query
           #:proof
           #:contradiction
           #:difficulty
           #:resolution
           )
  )

(defpackage #:talmudic-debate.symbols)

