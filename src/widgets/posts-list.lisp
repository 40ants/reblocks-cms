(uiop:define-package #:reblocks-cms/widgets/posts-list
  (:use #:cl)
  (:import-from #:reblocks/widget
                #:defwidget)
  (:import-from #:reblocks-ui2/widget
                #:ui-widget)
  (:import-from #:reblocks/html
                #:with-html)
  (:import-from #:serapeum
                #:->
                #:fmt)
  (:import-from #:reblocks-cms/models/content-tag
                #:get-content-by-tag)
  (:import-from #:reblocks-cms/models/content
                #:content-title
                #:content-author
                #:content-slug)
  (:import-from #:reblocks-cms/models/content
                #:content)
  (:import-from #:reblocks-cms/controller/content-tag
                #:get-content-tags)
  (:import-from #:reblocks-cms/models/author
                #:author-name)
  (:import-from #:mito
                #:object-updated-at)
  (:import-from #:reblocks-cms/models/tag
                #:tag-name)
  (:import-from #:reblocks-cms/widgets/vars
                #:*h1-classes*
                #:*tag-classes*)
  (:import-from #:reblocks-cms/widgets/utils
                #:render-tags)
  (:export #:make-tagged-posts-list
           #:posts-list
           #:tagged-posts-list
           #:tag-name))
(in-package #:reblocks-cms/widgets/posts-list)


(defwidget posts-list (ui-widget)
  ())


(defwidget tagged-posts-list (posts-list)
  ((uri-prefix :initarg :uri-prefix
               :type string
               :reader uri-prefix)))


(defwidget posts-list-item ()
  ((content :initarg :content
            :type content
            :reader item-content)))

(-> make-posts-list-item (content)
    (values posts-list-item &optional))


(defun make-posts-list-item (content)
  (make-instance 'posts-list-item
                 :content content))


(defun make-tagged-posts-list (uri-prefix)
  (make-instance 'tagged-posts-list
                 :uri-prefix uri-prefix))


(defun get-current-tag-name (widget)
  (let ((current-path (reblocks/request:get-path)))
    (unless (str:starts-with-p (uri-prefix widget)
                               current-path)
      (error "This widget should be used on pages with prefix ~S"
             (uri-prefix widget)))
  
    (let ((current-tag-name (subseq current-path
                                    (length (uri-prefix widget)))))
      (values current-tag-name))))


(defgeneric get-posts-list (widget)
  (:documentation "Should return a list of widgets of POSTS-LIST-ITEM class.")
  
  (:method ((widget tagged-posts-list))
    (let* ((current-tag-name (get-current-tag-name widget))
           (content (get-content-by-tag current-tag-name)))
      (mapcar #'make-posts-list-item
              content))))


(defgeneric get-title (widget)
  (:documentation "Should return a string with a title for the index page.")
  
  (:method ((widget tagged-posts-list))
    (let ((current-tag-name (get-current-tag-name widget)))
      (fmt "Посты с тегом ~S"
           current-tag-name))))


(defgeneric render-no-content (widget theme)
  (:method ((widget posts-list) (theme t))
    (with-html
      (:div :class "text-center"
            "В этом разделе пока нет ни одной страницы."))))


(defmethod reblocks-ui2/widget:render ((widget posts-list) (theme t))
  (let ((posts (get-posts-list widget)))
    (with-html
      (:h1 :class *h1-classes*
           (get-title widget))
      (cond
        (posts
         (:div :class "grid gap-8 grid-cols-1 sm:grid-cols-2 lg:grid-cols-3"
               (loop for post in posts
                     do (reblocks-ui2/widget:render post theme))))
        (t
         (render-no-content widget theme))))))


(defmethod reblocks-ui2/widget:render ((widget posts-list-item) (theme t))
  (let* ((content (item-content widget))
         (title (content-title content))
         (updated-at (object-updated-at content))
         (content-author (content-author content))
         (author-name (author-name content-author))
         (slug (content-slug content))
         (content-path (fmt "/posts/~A"
                            slug))
         (tags (get-content-tags content)))
    
    (with-html
      (:article :class "bg-white rounded-lg border-1 border-slate-200 shadow-lg overflow-hidden p-4 w-full"
                (:div :class "p-6"
                      (:h2 :class "text-xl font-semibold mb-1"
                           (:a :href content-path
                               :class "hover:text-blue-600"
                               title))
                      (:div :class "flex items-center text-sm text-gray-600 mb-2"
                            (:span (fmt "Автор: ~A"
                                        author-name)))
                      (when tags
                        (:div :class "flex flex-wrap gap-2 mb-2"
                              (:span :class "text-sm text-gray-500"
                                     "Теги: ")
                              (render-tags tags)))
                      (:time :class "text-sm text-gray-500"
                             (fmt "Опубликовано: ~A"
                                  (local-time:format-timestring nil updated-at
                                                                :format local-time:+iso-8601-date-format+))))))))



