(uiop:define-package #:reblocks-cms-tests/core
  (:use #:cl)
  (:import-from #:rove
                #:deftest
                #:ok
                #:testing))
(in-package #:reblocks-cms-tests/core)


(deftest test-example ()
  (ok t "Replace this test with something useful."))
