#-asdf3.1 (error "reblocks-cms requires ASDF 3.1 because for lower versions pathname does not work for package-inferred systems.")
(defsystem "reblocks-cms"
  :description "Content management system for sites built on Reblocks web framework"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-cms"
  :source-control (:git "https://github.com/40ants/reblocks-cms
")
  :bug-tracker "https://github.com/40ants/reblocks-cms
/issues"
  :class :40ants-asdf-system
  :defsystem-depends-on ("40ants-asdf-system")
  :pathname "src"
  :depends-on ("reblocks-ui2"
               "reblocks-ui2-tailwind"
               "reblocks-cms/models/tag"
               "reblocks-cms/models/author"
               "reblocks-cms/models/content"
               "reblocks-cms/models/content-tag")
  :in-order-to ((test-op (test-op "reblocks-cms-tests"))))


(asdf:register-system-packages "mito-migration"
                               '(#:mito.migration))
(asdf:register-system-packages "3bmd"
                               '(#:3bmd-code-blocks))
