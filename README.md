colorize
========

A sed-based shell script to colorize outputs of GCC, MSVC, and PATCH to highlight errors, warnings, filenames, etc.

Usage
=====

Just pipe the output of your build tool (make, in this case) through colorize.sh. Don't forget to also redirect stderr to stdout:

``
make 2>&1 | ./colorize.sh
``
