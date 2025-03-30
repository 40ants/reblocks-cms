(uiop:define-package #:reblocks-cms/utils/markup
  (:use #:cl)
  (:import-from #:3bmd)
  (:import-from #:reblocks/html)
  (:import-from #:3bmd-code-blocks)
  (:import-from #:serapeum
                #:->)
  (:export #:markdown-to-html))
(in-package #:reblocks-cms/utils/markup)


(-> markdown-to-html (string &key (:stream stream))
    (values &optional))

(defun markdown-to-html (text &key (stream reblocks/html:*stream*))
  "Renders given markdown TEXT as HTML into the current page's stream."
  (let ((3bmd-code-blocks:*code-blocks* t))
    (3bmd:parse-string-and-print-to-stream text stream))
  (values))
