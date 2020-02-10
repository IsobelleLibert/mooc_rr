(use-modules (guix packages)
             (guix download)
             (guix build-system python)
             (gnu packages python-science))

(package
 (inherit python-pandas)
 (version "0.25.1")
 (source
  (origin
   (method url-fetch)
   (uri (pypi-uri "pandas" version))
   (sha256
    (base32
     "1xm9dmbngsq46vj836csnb5j0bs88b1d713b0b5vx1q6gdxijbnb")))))
