(uiop:define-package #:reblocks-cms-docs/changelog
  (:use #:cl)
  (:import-from #:40ants-doc/changelog
                #:defchangelog))
(in-package #:reblocks-cms-docs/changelog)


(defchangelog (:ignore-words ("SLY"
                              "ASDF"
                              "REPL"
                              "HTTP"))
  (0.2.0 2025-05-25
         "* Code updated for new Reblocks version.")
  (0.1.0 2023-02-05
         "* Initial version."))
