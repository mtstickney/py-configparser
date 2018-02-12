

(in-package #:cl-user)

(defpackage #:py-configparser-tests-system
    (:use #:cl #:asdf))

(in-package #:py-configparser-tests-system)

(defsystem py-configparser-tests
    :name "py-configparser-tests"
    :author "Erik Huelsmann"
    :version "1.0-dev"
    :license "MIT"
    :description "Tests for 'Common Lisp implementation of the Python ConfigParser module'"
    :depends-on (#:py-configparser #:rt)
    :perform (test-op (o s)
                      (funcall (find-symbol (symbol-name '#:do-tests)
                                            (find-package '#:rt))))
    :components ((:module "tests"
                          :components
                          ((:file "tests")))))
