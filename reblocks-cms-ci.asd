(defsystem "reblocks-cms-ci"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-cms"
  :class :package-inferred-system
  :description "Provides CI settings for reblocks-cms."
  :source-control (:git "https://github.com/40ants/reblocks-cms
")
  :bug-tracker "https://github.com/40ants/reblocks-cms
/issues"
  :pathname "src"
  :depends-on ("40ants-ci"
               "reblocks-cms-ci/ci"))
