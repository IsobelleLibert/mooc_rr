(use-modules (guix profiles)
             (gnu packages)
             (srfi srfi-1))

(define manifest
  (specifications->manifest
   '("jupyter"
     "python-matplotlib"
     "python-numpy"
     "python-pandas"
     "python-statsmodels"
     "python-nbconvert")))

(define (manifest-entry-name-and-version entry)
  (string-append (manifest-entry-name entry)
                 "@"
                 (manifest-entry-version entry)
                 "\n"))

(define transitive-entries
  (manifest-transitive-entries manifest))

(define transitive-packages
  (delete-duplicates
   (stable-sort
    (map manifest-entry-name-and-version transitive-entries)
    string<)))

(format #t "~a packages:\n" (length transitive-packages))
(format #t "~a"
 (apply string-append transitive-packages))
