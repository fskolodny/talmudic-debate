;;;; talmudic-debate.asd

(asdf:defsystem #:talmudic-debate
  :serial t
  :description "Describe talmudic-debate here"
  :author "Fila Kolodny <fskolodny@gmail.com>"
  :license "MIT"
  :depends-on ( :cl-ppcre
                :cl-csv
                :iterate
                :utils
                )
  :components ((:file "package")
               (:file "talmudic-debate")))

