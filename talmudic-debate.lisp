;;;; talmudic-debate.lisp

(in-package #:talmudic-debate)

;;; "talmudic-debate" goes here. Hacks and glory await!

(defclass base-statement ()
  (
   (author :initarg :author)
   (text :initarg :text :accessor text :type 'string)
   )
  )

(defclass targeted-statement (base-statement)
  (
   (target :initarg :target :initform nil :accessor target :type 'base-statement)
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
   )
  )

(defvar talmud (list))
(defvar csv-line-re (create-scanner "^(\\d+),([^,]*),([^,]+)$"))
(defvar statement-type-table #('statement 'query 'answer 'proof 'contradiction 'difficulty 'resolution))
(defun extract-statement-type (value)
  (read-from-string value)
  )
(defun extract-text (text)
  text
  )
(defun extract-author (author)
  author
  )
(defun decode-talmud-csv-line (line)
  (multiple-value-bind (field-0 field-2 field-3)
      (scan-to-strings csv-line-re line)
    (let* ((author (extract-author field-2))
	   (statement-type (extract-statement-type field-0))
	   (text (extract-text field-3))
	   (statement (make-instance (aref statement-type-table statement-type)
				     :author author :text text))
	   )
      statement
      )
    )
  )

(defun decode-talmud-csv (file-name)
  )

