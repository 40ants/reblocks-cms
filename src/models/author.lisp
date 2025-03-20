(uiop:define-package #:reblocks-cms/models/author
  (:use #:cl)
  (:import-from #:mito
                #:deftable))
(in-package #:reblocks-cms/models/author)


(deftable author ()
  ((name :initarg :name
         :type string
         :col-type :text
         :accessor author-name)))
