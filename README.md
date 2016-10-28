
[![Travis-CI Build Status](https://travis-ci.org/coatless/rops.svg?branch=master)](https://travis-ci.org/coatless/rops)[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/rop)](https://cran.r-project.org/package=rops)

R Ops (`rops`)
==============

The objective behind this package is to provide an extension to base *R* that supplements present operators manipulations.

Supported Functionality
=======================

Presently, the package has support for the following operators:

-   [Null coalescing operator](https://en.wikipedia.org/wiki/Null_coalescing_operator): `%??%`, `ifnull(x,y)`
    -   Operator to allow checking and substitution if a value is null without `if`/`else` structure
-   [Is Whole Number](https://en.wikipedia.org/wiki/Integer): `is_whole(x)`
    -   Vectorized boolean operator to assess whether value is an integer.
