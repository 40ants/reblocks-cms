(uiop:define-package #:reblocks-cms/widgets/content-page
  (:use #:cl)
  (:import-from #:reblocks/widget
                #:defwidget)
  (:import-from #:reblocks-ui2/widget
                #:get-dependencies
                #:ui-widget)
  (:import-from #:reblocks/html
                #:with-html)
  (:import-from #:serapeum
                #:->
                #:fmt)
  (:import-from #:reblocks-lass)
  (:import-from #:reblocks-parenscript)
  (:import-from #:parenscript
                #:chain)
  (:import-from #:reblocks/dependencies)
  (:import-from #:reblocks-cms/models/content-tag
                #:get-content-by-tag)
  (:import-from #:reblocks-cms/models/content
                #:content-title
                #:content-author
                #:content-text
                #:content-slug)
  (:import-from #:reblocks-cms/models/content
                #:content)
  (:import-from #:reblocks-cms/controller/content
                #:get-content-by-slug)
  (:import-from #:reblocks-cms/controller/content-tag
                #:get-content-tags)
  (:import-from #:reblocks-cms/models/author
                #:author-name)
  (:import-from #:mito
                #:object-updated-at)
  (:import-from #:reblocks-cms/models/tag
                #:tag-name)
  (:import-from #:reblocks-cms/widgets/vars
                #:*highlight-js-theme-path*
                #:*highlight-js-path*
                #:*tag-classes*)
  (:import-from #:reblocks-cms/widgets/utils
                #:render-tags)
  (:import-from #:anaphora
                #:it
                #:awhen)
  (:import-from #:alexandria
                #:flatten)
  (:import-from #:reblocks-cms/utils/markup
                #:markdown-to-html)
  (:export #:content-page
           #:make-content-page))
(in-package #:reblocks-cms/widgets/content-page)


(defwidget content-page (ui-widget)
  ((uri-prefix :initarg :uri-prefix
               :type string
               :reader uri-prefix)))


(-> make-content-page (string)
    (values content-page &optional))


(defun make-content-page (uri-prefix)
  (make-instance 'content-page
                 :uri-prefix uri-prefix))


(-> get-current-slug (content-page)
    (values string &optional))

(defun get-current-slug (widget)
  (let ((current-path (reblocks/request:get-path)))
    (unless (str:starts-with-p (uri-prefix widget)
                               current-path)
      (error "This widget should be used on pages with prefix ~S"
             (uri-prefix widget)))
  
    (let ((current-tag-name (subseq current-path
                                    (length (uri-prefix widget)))))
      (values current-tag-name))))


(defun content-to-html (content)
  (markdown-to-html (content-text content)))


(defmethod reblocks-ui2/widget:render ((widget content-page) (theme t))
  (let* ((slug (get-current-slug widget))
         (content (get-content-by-slug slug))
         (title (content-title content))
         (updated-at (object-updated-at content))
         (content-author (content-author content))
         (author-name (author-name content-author))
         (tags (get-content-tags content)))
    (with-html
      (:article :class "bg-white overflow-hidden p-4 w-full flex flex-col gap-4"
                (:h1 :class reblocks-cms/widgets/vars:*h1-classes*
                     title)
                
                (:div :class "flex flex-col gap-1"
                      (:div :class "flex gap-4"
                            (:div :class "flex items-center text-sm text-gray-600 mb-2"
                                  (:span (fmt "Автор: ~A"
                                              author-name)))
                            (:time :class "text-sm text-gray-500"
                                   (fmt "Опубликовано: ~A"
                                        (local-time:format-timestring nil updated-at
                                                                      :format local-time:+iso-8601-date-format+))))
                      (when tags
                        (:div :class "flex flex-wrap gap-2 mb-2"
                              (:span :class "text-sm text-gray-500"
                                     "Теги: ")
                              (render-tags tags))))
                (:div :class "content-body"
                      (content-to-html content))))))


(defmethod get-dependencies ((widget content-page) (theme t))
  (append (flatten
           (list
            (awhen *highlight-js-path*
              (list
               (reblocks/dependencies:make-dependency it)
               ;; Start the syntax highlighting
               (reblocks-parenscript:make-dependency
                 (chain window
                           (add-event-listener
                            "load"
                            (lambda (event)
                              (chain hljs (highlight-all))))))))
            
            (awhen *highlight-js-theme-path*
              (reblocks/dependencies:make-dependency it))
            
            ;; To make space between paragraphs and code blocks
            (reblocks-lass:make-dependency
              '(.content-page
                (.content-body
                 ((:or p pre)
                  :margin-bottom 1rem)
                 (pre
                  :margin-top -0.5rem))))))
         (call-next-method)))
