(uiop:define-package #:reblocks-cms/controller/tag
  (:use #:cl)
  (:import-from #:reblocks-cms/models/tag
                #:tag)
  (:export #:get-or-create-tag))
(in-package #:reblocks-cms/controller/tag)


(defun get-or-create-tag (name)
  (or (mito:find-dao 'tag
                     :name name)
      (mito:create-dao 'tag
                       :name name)))

