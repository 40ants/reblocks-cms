(uiop:define-package #:reblocks-cms/db
  (:use #:cl)
  (:import-from #:mito.migration)
  (:export #:apply-migrations
           #:generate-migrations))
(in-package #:reblocks-cms/db)


(defun get-migrations-dir ()
  (asdf:system-relative-pathname
   "reblocks-cms"
   (make-pathname :directory '(:relative "db"))))


(defun apply-migrations ()
  (let ((mito:*migration-keep-temp-tables* nil))
    (mito.migration:migrate (get-migrations-dir))))


(defun generate-migrations ()
  (mito.migration:generate-migrations (get-migrations-dir)))

