(use-modules (guix profiles)
             (guix packages)
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

(define (manifest-entry->package entry)
  (car
   (find-packages-by-name
    (manifest-entry-name entry)
    (manifest-entry-version entry))))

(define (package->name-and-version entry)
  (string-append (package-name entry)
                 "@"
                 (package-version entry)
                 "\n"))

(define packages-in-manifest
  (map manifest-entry->package (manifest-entries manifest)))

(define closure-of-manifest
  (package-closure packages-in-manifest))

(define package-names-in-closure
  (stable-sort
   (delete-duplicates (map package->name-and-version closure-of-manifest))
   string<))

(format #t "~a packages:\n" (length package-names-in-closure))
(format #t "~a"
 (apply string-append package-names-in-closure))
