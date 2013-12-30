;;;; talmudic-debate.lisp

(in-package #:talmudic-debate)

;;; "talmudic-debate" goes here. Hacks and glory await!

(locally (declare (optimize safety))
  (defclass base-statement ()
    (
     (author :initarg :author)
     (text :initarg :text :accessor text :type string)
     )
    )

  (defclass targeted-statement (base-statement)
    (
     (target :initarg :target :initform nil :accessor target
             :type (or base-statement fixnum))
     )
    )

  (defclass statement (base-statement)
    (
     )
    )

  (defclass query (base-statement)
    (
     )
    )

  (defclass answer (targeted-statement)
    (
     (target :type (or query fixnum))
     )
    )

  (defclass proof (targeted-statement)
    (
     )
    )

  (defclass contradiction (targeted-statement)
    (
     )
    )

  (defclass difficulty (targeted-statement)
    (
     )
    )

  (defclass resolution (targeted-statement)
    (
     (target :type (or difficulty fixnum))
     )
    )

  (defun fixup-targets (statements)
    (iter
     (for statement in-sequence statements with-index index)
     (if (typep statement 'targeted-statement)
         (let ((target (target statement))
               )
           (if (typep target 'fixnum)
               (setf (target statement) (elt statements (- index target))))
           )
         )
     )
    )
  )

(defvar talmud (list))

