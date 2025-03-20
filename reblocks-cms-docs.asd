(defsystem "reblocks-cms-docs"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-cms"
  :class :package-inferred-system
  :description "Provides documentation for reblocks-cms."
  :source-control (:git "https://github.com/40ants/reblocks-cms
")
  :bug-tracker "https://github.com/40ants/reblocks-cms
/issues"
  :pathname "docs"
  :depends-on ("reblocks-cms"
               "reblocks-cms-docs/index"))
