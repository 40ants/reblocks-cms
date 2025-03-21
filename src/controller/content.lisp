(uiop:define-package #:reblocks-cms/controller/content
  (:use #:cl)
  (:import-from #:mito)
  (:import-from #:reblocks-cms/models/content
                #:content
                #:content-text
                #:content-title)
  (:import-from #:reblocks-cms/controller/content-tag
                #:bind-content-to-tag)
  (:export #:find-content-by-slug
           #:update-content
           #:create-content))
(in-package #:reblocks-cms/controller/content)


(defun find-content-by-slug (slug)
  (mito:find-dao 'content
                 :slug slug))


(defun update-content (content &key title text)
  (when text
    (setf (content-text content)
          text))
  (when title
    (setf (content-title content)
          title))
  (mito:save-dao content)
  (values content))


(defun create-content (title text slug author &key (type :post) tags)
  (let ((content (mito:create-dao 'content
                                  :title title
                                  :text text
                                  :slug slug
                                  :type type
                                  :author author)))
    (loop for tag in tags
          do (bind-content-to-tag content tag))
    (values content)))
