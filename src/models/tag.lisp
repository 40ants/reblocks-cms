(uiop:define-package #:reblocks-cms/models/tag
  (:use #:cl)
  (:import-from #:mito
                #:deftable)
  (:export #:tag
           #:tag-name))
(in-package #:reblocks-cms/models/tag)


(deftable tag ()
  ((name :initarg :name
         :type string
         :col-type :text
         :accessor tag-name)))
