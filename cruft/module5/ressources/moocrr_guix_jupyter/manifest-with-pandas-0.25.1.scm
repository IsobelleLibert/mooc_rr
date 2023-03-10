(use-modules (guix packages)
             (guix download)
             (guix build-system python)
             (gnu packages python-science))

(define modified-python-pandas
  (package
   (inherit python-pandas)
   (version "0.25.1")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "pandas" version))
     (sha256
      (base32
       "1xm9dmbngsq46vj836csnb5j0bs88b1d713b0b5vx1q6gdxijbnb"))))))

(define standard-packages
  (map (compose list specification->package+output)
       '("jupyter"
         "python"
         "python-matplotlib"
         "python-numpy"
         "python-pandas"
         "python-statsmodels"
         "python-nbconvert")))

(packages->manifest
 (cons modified-python-pandas
       standard-packages))
