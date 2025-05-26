(uiop:define-package #:reblocks-cms/widgets/utils
  (:use #:cl)
  (:import-from #:serapeum
                #:fmt
                #:soft-list-of
                #:->)
  (:import-from #:reblocks-cms/models/tag
                #:tag
                #:tag-name)
  (:import-from #:reblocks/html
                #:with-html)
  (:import-from #:reblocks-cms/widgets/vars
                #:*tag-classes*)
  (:import-from #:40ants-routes/route-url
                #:route-url)
  (:export #:render-tags))
(in-package #:reblocks-cms/widgets/utils)


(-> render-tags ((soft-list-of tag))
    (values &optional))

(defun render-tags (tags)
  (with-html ()
    (loop for tag in tags
          do (:a :class *tag-classes*
                 :href (route-url "by-tag"
                                  :tag (tag-name tag))
                 (tag-name tag))))
  (values))
