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
           #:targeted-statement
           #:query
           #:proof
           #:contradiction
           #:difficulty
           #:resolution
           #:fixup-targets
           )
  )

(defpackage #:talmudic-debate.symbols)

