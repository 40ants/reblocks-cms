(uiop:define-package #:reblocks-cms/models/content-tag
  (:use #:cl)
  (:import-from #:mito
                #:deftable)
  (:import-from #:reblocks-cms/models/tag
                #:tag)
  (:import-from #:reblocks-cms/models/content
                #:content)
  (:import-from #:serapeum
                #:soft-list-of
                #:->)
  (:export #:content-tag
           #:content-tag-tag
           #:content-tag-tag-id
           #:content-tag-content
           #:content-tag-content-id
           #:get-content-by-tag
           #:tag))
(in-package #:reblocks-cms/models/content-tag)


(deftable content-tag ()
  ((tag :initarg :tag
        :type tag
        :col-type tag
        :accessor content-tag-tag)
   (content :initarg :content
            :type content
            :col-type content
            :accessor content-tag-content)))


(-> get-content-by-tag (string)
    (values (soft-list-of content)))

(defun get-content-by-tag (tag-name)
  (mito:select-by-sql 'content
                      "
select c.*
  from content as c
join content_tag as ct on ct.content_id = c.id
join tag as t on t.id = ct.tag_id
where t.name = ?"
                      :binds (list tag-name)))
