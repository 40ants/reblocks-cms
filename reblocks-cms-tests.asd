(defsystem "reblocks-cms-tests"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-cms"
  :class :package-inferred-system
  :description "Provides tests for reblocks-cms."
  :source-control (:git "https://github.com/40ants/reblocks-cms
")
  :bug-tracker "https://github.com/40ants/reblocks-cms
/issues"
  :pathname "t"
  :depends-on ("reblocks-cms-tests/core")
  :perform (test-op (op c)
                    (unless (symbol-call :rove :run c)
                      (error "Tests failed"))))
