(uiop:define-package #:reblocks-cms/loader
  (:use #:cl)
  (:import-from #:nyaml)
  (:import-from #:str
                #:join)
  (:import-from #:schemata
                #:list-of
                #:validate-with-schema
                #:object
                #:defschema)
  (:import-from #:reblocks-cms/models/content
                #:content-title
                #:content-text)
  (:import-from #:reblocks-cms/controller/content
                #:find-content-by-slug
                #:update-content
                #:create-content)
  (:import-from #:alexandria
                #:make-keyword)
  (:import-from #:reblocks-cms/controller/tag
                #:get-or-create-tag)
  (:import-from #:reblocks-cms/controller/author
                #:get-or-create-author)
  (:export
   #:load-content-from-dir))
(in-package #:reblocks-cms/loader)


(defun parse-metadata (yaml-string)
  (let ((nyaml:*list-to-seq* #'identity))
    (nyaml:parse yaml-string )))


(defparameter *metadata-schema*
  (schemata:schema
   (hash-table ("title" string
                        "slug" string
                        "author" string
                        "tags" (list-of string)
                        "content_type" string))))


(defun validate-metadata (data)
  (validate-with-schema *metadata-schema* data))


(defun process-metadata (yaml-string)
  (let ((metadata (parse-metadata yaml-string)))
    (validate-metadata metadata)
    (values metadata)))


(defun read-markdown-file (filename)
  "Читает файл отделяя метаданные от основного содержимого."
  (loop with lines = (uiop:read-file-lines filename)
        with metadata-separator = "---"
        with metadata-lines = nil
        with content-lines = nil
        with first-line-p = t
        with metadata-parsed-p = nil
        for line in lines
        do (cond
             (first-line-p
              (unless (string= line metadata-separator)
                (error "File ~S should start with ~S line."
                       (namestring filename)
                       metadata-separator))
              (setf first-line-p nil))
             (metadata-parsed-p
              (push line content-lines))
             ;; Second metadata delimiter found
             ((string= line metadata-separator)
              (setf metadata-parsed-p t))
             (t
              (push line metadata-lines)))
        finally (return (values (process-metadata (join #\Newline (nreverse metadata-lines)))
                                (join #\Newline (nreverse content-lines))))))


(defun load-content-from-file (filename)
  (multiple-value-bind (metadata text)
      (read-markdown-file filename)
    (let* ((slug (gethash "slug" metadata))
           (title (gethash "title" metadata))
           (content-type (let ((raw-value (gethash "content_type" metadata)))
                           (make-keyword (string-upcase raw-value))))
           (author-name (gethash "author" metadata))
           (tag-names (gethash "tags" metadata))
           (existing-content
             (find-content-by-slug slug)))
      (cond
        (existing-content
         (update-content existing-content
                         :title title
                         :text text))
        ;; Creating a new content object
        (t
         (let* ((author (get-or-create-author author-name))
                (tags (mapcar #'get-or-create-tag
                              tag-names))
                (new-content
                  (create-content title
                                  text
                                  slug
                                  author
                                  :type content-type
                                  :tags tags)))
           (values new-content)))))))



(defun load-content-from-dir (path)
  (let ((path (uiop:ensure-directory-pathname path)))
    (loop for filename in (directory (merge-pathnames
                                      (make-pathname :name uiop:*wild*
                                                     :type "md")
                                      path))
          collect (load-content-from-file filename))))
