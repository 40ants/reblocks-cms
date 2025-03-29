(uiop:define-package #:reblocks-cms/models/author
  (:use #:cl)
  (:import-from #:mito
                #:deftable)
  (:export #:author
           #:author-name))
(in-package #:reblocks-cms/models/author)


(deftable author ()
  ((name :initarg :name
         :type string
         :col-type :text
         :accessor author-name)))
