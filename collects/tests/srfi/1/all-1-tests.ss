(module all-1-tests mzscheme
  
  (require (planet "test.ss" ("schematics" "schemeunit.plt" 1 1)))
  (require "alist-test.ss"
           "cons-test.ss"
           "delete-test.ss"
           "filter-test.ss"
           "fold-test.ss"
           "lset-test.ss"
           "misc-test.ss"
           "predicate-test.ss"
           "search-test.ss"
           "selector-test.ss")
  
  (provide all-1-tests)
  
  (define all-1-tests
    (make-test-suite 
     "all-1-tests"
     alist-tests
     cons-tests
     delete-tests
     filter-tests
     fold-tests
     lset-tests
     misc-tests
     predicate-tests
     search-tests
     selector-tests
     ))
  )