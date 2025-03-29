(uiop:define-package #:reblocks-cms/models/content
  (:use #:cl)
  (:import-from #:mito
                #:deftable)
  (:import-from #:alexandria
                #:make-keyword)
  (:import-from #:reblocks-cms/models/author
                #:author)
  (:export #:content
           #:content-title
           #:content-text
           #:content-type
           #:content-author
           #:content-author-id
           #:content-slug))
(in-package #:reblocks-cms/models/content)


(deftable content ()
  ((title :initarg :title
          :type string
          :col-type :text
          :accessor content-title)
   (text :initarg :text
         :type string
         :col-type :text
         :accessor content-text)
   (type :initarg :type
         :type symbol
         :col-type :text
         :deflate #'symbol-name
         :inflate (lambda (value)
                    (make-keyword (string-upcase value)))
         :accessor content-type)
   (slug :initarg :slug
         :type string
         :col-type :text
         :accessor content-slug)
   (author :initarg :author
           :type author
           :col-type author
           :accessor content-author)))

(defmethod print-object ((obj content) stream)
  (print-unreadable-object (obj stream :type t)
    (format stream "~S"
            (content-title obj))))
