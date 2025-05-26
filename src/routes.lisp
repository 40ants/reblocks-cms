(uiop:define-package #:reblocks-cms/routes
  (:use #:cl)
  (:import-from #:40ants-routes/routes
                #:routes)
  (:import-from #:reblocks/routes
                #:page)
  (:import-from #:reblocks-cms/widgets/posts-list
                #:make-tagged-posts-list)
  (:import-from #:reblocks-cms/widgets/content-page
                #:make-content-page)
  (:export #:cms-pages))
(in-package #:reblocks-cms/routes)


(defmacro cms-pages (namespace)
  (let ((tag-var (intern "TAG"))
        (slug-var (intern "SLUG")))
    `(routes (,namespace)
       (page ("/by-tag/<string:tag>" :name "by-tag"
                                     :title (lambda (,tag-var)
                                              (format nil "Посты с тегом \"~A\""
                                                      ,tag-var)))
         (make-tagged-posts-list ,tag-var))
       (page ("/<string:slug>" :name "page" :title "Пост")
         (make-content-page ,slug-var)))))
