(uiop:define-package #:reblocks-cms/controller/author
  (:use #:cl)
  (:import-from #:reblocks-cms/models/author
                #:author)
  (:export #:get-or-create-author))
(in-package #:reblocks-cms/controller/author)


(defun get-or-create-author (name)
  (or (mito:find-dao 'author
                  :name name)
      (mito:create-dao 'author
                       :name name)))
