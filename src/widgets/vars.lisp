(uiop:define-package #:reblocks-cms/widgets/vars
  (:use #:cl)
  (:export #:*tag-classes*
           #:*highlight-js-path*
           #:*highlight-js-theme-path*
           #:*h1-classes*))
(in-package #:reblocks-cms/widgets/vars)


(defvar *h1-classes*
  "text-4xl sm:text-5xl font-bold text-gray-800 mb-4 leading-tight tracking-wide text-center")


(defvar *tag-classes*
  "inline-block bg-gray-200 rounded-full px-2 text-sm font-semibold text-gray-700")


(defvar *highlight-js-path* nil
  "Download the file with needed languages support and make a pathname like this:

   ```
   (asdf:system-relative-pathname :lisp-ru
                                    (make-pathname :directory '(:relative \"static\")
                                                   :name \"highlight.min\"
                                                   :type \"js\"))
   ```

   JS file can be downloaded on [official Highlight.js site](https://highlightjs.org/download).
")


(defvar *highlight-js-theme-path* nil
  "Download the file with needed languages support and make a pathname like this:

   ```
   (asdf:system-relative-pathname :lisp-ru
                                    (make-pathname :directory '(:relative \"static\")
                                                   :name \"atom-one-dark.min\"
                                                   :type \"css\"))
   ```

   JS file can be downloaded on [official Highlight.js site](https://highlightjs.org/download).
")
