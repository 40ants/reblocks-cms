(uiop:define-package #:reblocks-cms/models/content
  (:use #:cl)
  (:import-from #:mito
                #:deftable)
  (:import-from #:alexandria
                #:make-keyword)
  (:import-from #:reblocks-cms/models/author
                #:author))
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
         :inflate #'symbol-name
         :deflate #'make-keyword
         :accessor content-type)
   (author :initarg :author
           :type author
           :col-type author
           :accessor content-author)))
