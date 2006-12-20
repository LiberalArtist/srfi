(module conversion-tests mzscheme
  
  (require (planet "test.ss" ("schematics" "schemeunit.plt" 2)))
  (require (all-except (lib "conversion.ss" "srfi" "43") vector->list)
           (rename (lib "conversion.ss" "srfi" "43") s:vector->list vector->list))
  
  (provide conversion-tests)
  
  (define conversion-tests
    (test-suite
     "All tests for conversion"
     (test-case
      "vector->list"
      (check-equal?
       (s:vector->list '#(1 2 3 4))
       '(1 2 3 4))
      (check-equal?
       (s:vector->list '#(1 2 3 4) 4)
       '())
      (check-equal?
       (s:vector->list '#(1 2 3 4) 1 3)
       '(2 3)))
     
     (test-case
      "reverse-vector->list"
      (check-equal?
       (reverse-vector->list '#(1 2 3 4))
       '(4 3 2 1))
      (check-equal?
       (reverse-vector->list '#(1 2 3 4) 4)
       '())
      (check-equal?
       (reverse-vector->list '#(1 2 3 4) 1 3)
       '(3 2)))
     
     (test-case
      "reverse-list->vector"
      (check-equal?
       (reverse-list->vector '(1 2 3 4))
       '#(4 3 2 1))
      (check-equal?
       (reverse-list->vector '())
       '#()))
     ))
  )