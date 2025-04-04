(uiop:define-package #:reblocks-cms/controller/content-tag
  (:use #:cl)
  (:import-from #:reblocks-cms/models/content-tag
                #:content-tag)
  (:import-from #:reblocks-cms/models/tag
                #:tag)
  (:import-from #:reblocks-cms/models/content
                #:content)
  (:import-from #:serapeum
                #:soft-list-of
                #:->)
  (:import-from #:mito
                #:object-id)
  (:export #:bind-content-to-tag
           #:get-content-tags))
(in-package #:reblocks-cms/controller/content-tag)


(-> bind-content-to-tag (content tag)
    (values &optional))

(defun bind-content-to-tag (content tag)
  (or (mito:find-dao 'content-tag
                     :content content
                     :tag tag)
      (mito:create-dao 'content-tag
                       :content content
                       :tag tag))
  (values))



(-> get-content-tags (content)
    (values (soft-list-of tag) &optional))

(defun get-content-tags (content)
  (mito:select-by-sql
   'tag
   "select t.*
      from tag as t
      join content_tag as ct on ct.tag_id = t.id
      where ct.content_id = ?"
   :binds (list (object-id content))))
