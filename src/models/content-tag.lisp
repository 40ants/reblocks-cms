(uiop:define-package #:reblocks-cms/models/tag
  (:use #:cl)
  (:import-from #:mito
                #:deftable)
  (:import-from #:reblocks-cms/models/tag
                #:tag)
  (:import-from #:reblocks-cms/models/content
                #:content)
  (:export
   #:content-tag
   #:content-tag-tag
   #:content-tag-tag-id
   #:content-tag-content
   #:content-tag-content-id))
(in-package #:reblocks-cms/models/tag)


(deftable content-tag ()
  ((tag :initarg :tag
        :type tag
        :col-type tag
        :accessor content-tag-tag)
   (content :initarg :content
            :type content
            :col-type content
            :accessor content-tag-content)))
