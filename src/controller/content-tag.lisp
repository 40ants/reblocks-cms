(uiop:define-package #:reblocks-cms/controller/content-tag
  (:use #:cl)
  (:import-from #:reblocks-cms/models/tag
                #:content-tag)
  (:export #:bind-content-to-tag))
(in-package #:reblocks-cms/controller/content-tag)


(defun bind-content-to-tag (content tag)
  (or (mito:find-dao 'content-tag
                     :content content
                     :tag tag)
      (mito:create-dao 'content-tag
                       :content content
                       :tag tag)))
