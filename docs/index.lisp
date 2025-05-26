(uiop:define-package #:reblocks-cms-docs/index
  (:use #:cl)
  (:import-from #:pythonic-string-reader
                #:pythonic-string-syntax)
  #+quicklisp
  (:import-from #:quicklisp)
  (:import-from #:named-readtables
                #:in-readtable)
  (:import-from #:40ants-doc
                #:defsection
                #:defsection-copy)
  (:import-from #:reblocks-cms-docs/changelog
                #:@changelog)
  (:import-from #:docs-config
                #:docs-config)
  (:import-from #:40ants-doc/autodoc
                #:starts-with-percent-p
                #:defautodoc)
  (:import-from #:str
                #:starts-with-p)
  (:import-from #:serapeum
                #:eval-always)
  (:export #:@index
           #:@readme
           #:@changelog))
(in-package #:reblocks-cms-docs/index)

(in-readtable pythonic-string-syntax)


(defmethod docs-config ((system (eql (asdf:find-system "reblocks-cms-docs"))))
  ;; 40ANTS-DOC-THEME-40ANTS system will bring
  ;; as dependency a full 40ANTS-DOC but we don't want
  ;; unnecessary dependencies here:
  #+quicklisp
  (ql:quickload "40ants-doc-theme-40ants")
  #-quicklisp
  (asdf:load-system "40ants-doc-theme-40ants")
  
  (list :theme
        (find-symbol "40ANTS-THEME"
                     (find-package "40ANTS-DOC-THEME-40ANTS")))
  )


(defsection @index (:title "reblocks-cms - Content management system for sites built on Reblocks web framework"
                    :ignore-words ("JSON"
                                   "JS"
                                   "HTML"
                                   "HTTP"
                                   "TODO"
                                   "Unlicense"
                                   "REPL"
                                   "ASDF:PACKAGE-INFERRED-SYSTEM"
                                   "ASDF"
                                   "40A"
                                   "API"
                                   "URL"
                                   "URI"
                                   "RPC"
                                   "GIT"))
  (reblocks-cms system)
  "
[![](https://github-actions.40ants.com/40ants/reblocks-cms/matrix.svg?only=ci.run-tests)](https://github.com/40ants/reblocks-cms/actions)

![Quicklisp](http://quickdocs.org/badge/reblocks-cms.svg)
"
  (@installation section)
  (@usage section)
  (@api section))


(defsection-copy @readme @index)


(defsection @installation (:title "Installation")
  """
You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :reblocks-cms)
```
""")


(defsection @usage (:title "Usage")
  "
TODO: Write a library description. Put some examples here.
")


(eval-always
  (defun model-accessor-p (symbol)
    (when (and (starts-with-p "REBLOCKS-CMS/MODELS/" (package-name (symbol-package symbol)))
               (fboundp symbol)
               (sb-introspect:find-definition-source
                (symbol-function symbol)))
      (values t)))


  (defun model-accessor-or-starts-with-percent-p (symbol)
    (or (starts-with-percent-p symbol)
        (model-accessor-p symbol))))


(defautodoc @api (:system "reblocks-cms"
                  ;; These symbols are ignored because
                  ;; 40ants-doc can't find definition of accessors created by MITO
                  :ignore-symbol-p model-accessor-or-starts-with-percent-p))
